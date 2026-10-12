local resource = GetCurrentResourceName()
local stateKey = 'mp_halloween_prop'
local targetName = resource .. ':collect'
local busy, rankingOpen, stopped = false, false, false
local tracked = {}
local function notify(message, kind)
  lib.notify({ title = 'Halloween', description = message, type = kind or 'inform' })
end
local function ownTag(tag)
  return tag and tag.resource == resource and tag.event == Config.EventId
    and (tag.role == 'skull' or tag.role == 'hint')
end
local function configureEntity(entity, tag)
  if stopped or not DoesEntityExist(entity) or not ownTag(tag) then return end
  FreezeEntityPosition(entity, true)
  if NetworkHasControlOfEntity(entity) then
    local r = tag.rotation
    SetEntityRotation(entity, r.x, r.y, r.z, 2, true)
  end
end
local stateBagHandler = AddStateBagChangeHandler(stateKey, nil, function(bagName, _, value)
  if stopped or not ownTag(value) then return end
  CreateThread(function()
    for _ = 1, 100 do
      if stopped then return end
      local entity = GetEntityFromStateBagName(bagName)
      if entity ~= 0 and DoesEntityExist(entity) then
        local current = Entity(entity).state[stateKey]
        if ownTag(current) then
          configureEntity(entity, current)
          tracked[entity] = { generation = current.generation, controlled = NetworkHasControlOfEntity(entity) }
        end
        return
      end
      Wait(50)
    end
  end)
end)
local targets = {}
local targetsActive = false
local targetRevision = 0
local function removeTarget(id)
  local entry = targets[id]
  if not entry then return end
  if GetResourceState('ox_target') == 'started' then
    if entry.zone then pcall(function() exports.ox_target:removeZone(entry.zone) end) end
    if entry.entity then
      pcall(function() exports.ox_target:removeLocalEntity(entry.entity, targetName) end)
    end
  end
  targets[id] = nil
end
local function clearTargets()
  local ids = {}
  for id in pairs(targets) do ids[#ids + 1] = id end
  for _, id in ipairs(ids) do removeTarget(id) end
end
local function canCollect(entry)
  if stopped or busy or not targetsActive or targets[entry.id] ~= entry
    or IsEntityDead(PlayerPedId()) then return false end
  local p, c = GetEntityCoords(PlayerPedId()), entry.coords
  local dx, dy, dz = p.x - c.x, p.y - c.y, p.z - c.z
  return dx * dx + dy * dy + dz * dz <= Config.TargetDistance * Config.TargetDistance
end
local function collectTarget(entry)
  if not canCollect(entry) then return end
  busy = true
  local ok, result = pcall(lib.callback.await, 'mp_halloween:collect', false,
    entry.id, entry.netId, entry.generation)
  busy = false
  if stopped then return end
  if not ok or not result then
    notify('Keine Bestätigung erhalten. Prüfe deinen Stand mit /' .. Config.Commands.leaderboard .. '.', 'error')
  elseif result.ok then
    if targets[entry.id] == entry then removeTarget(entry.id) end
    notify(result.count and ('Totenkopf gesammelt! Dein Stand: %s'):format(result.count)
      or 'Totenkopf gesammelt und gespeichert!', 'success')
  else
    notify(result.message or 'Einsammeln nicht möglich.', 'error')
  end
end
local function targetOption(entry, zone)
  return {
    name = targetName,
    label = 'Totenkopf einsammeln',
    icon = 'fa-solid fa-skull',
    distance = Config.TargetDistance,
    canInteract = function(entity)
      -- Bei direktem Schädel-Treffer nur eine Option anzeigen.
      return canCollect(entry) and (not zone or entity ~= entry.entity)
    end,
    onSelect = function() collectTarget(entry) end
  }
end
local function syncTargets()
  if stopped or GetResourceState('ox_target') ~= 'started' then return end
  local revision = targetRevision
  local ok, snapshot = pcall(lib.callback.await, 'mp_halloween:targets', false)
  if stopped or revision ~= targetRevision or GetResourceState('ox_target') ~= 'started' then return end
  targetsActive = ok and type(snapshot) == 'table' and snapshot.active == true
  if not targetsActive then clearTargets(); return end
  local found = {}
  for _, item in ipairs(snapshot.items or {}) do
    found[item.id] = true
    local entry = targets[item.id]
    if entry and (entry.netId ~= item.netId or entry.generation ~= item.generation) then
      removeTarget(item.id)
      entry = nil
    end
    if not entry then
      entry = item
      targets[item.id] = entry
      entry.zone = exports.ox_target:addSphereZone({
        name = resource .. ':skull:' .. entry.id,
        coords = vector3(entry.coords.x, entry.coords.y, entry.coords.z),
        radius = Config.TargetRadius or 0.65,
        debug = Config.DebugTargets == true,
        drawSprite = false,
        options = { targetOption(entry, true) }
      })
    end
    local entity = NetworkDoesEntityExistWithNetworkId(entry.netId)
      and NetworkGetEntityFromNetworkId(entry.netId) or 0
    if entry.entity and entry.entity ~= entity then
      exports.ox_target:removeLocalEntity(entry.entity, targetName)
      entry.entity = nil
    end
    if entity ~= 0 and DoesEntityExist(entity) and not entry.entity then
      entry.entity = entity
      exports.ox_target:addLocalEntity(entity, { targetOption(entry, false) })
    end
  end
  local obsolete = {}
  for id in pairs(targets) do if not found[id] then obsolete[#obsolete + 1] = id end end
  for _, id in ipairs(obsolete) do removeTarget(id) end
end
CreateThread(function()
  while not stopped do
    syncTargets()
    Wait(2000)
  end
end)
RegisterCommand(Config.Commands.leaderboard, function()
  if rankingOpen then return end
  rankingOpen = true
  local ok, result = pcall(lib.callback.await, 'mp_halloween:leaderboard', false)
  rankingOpen = false
  if not ok or not result then notify('Rangliste konnte nicht geladen werden.', 'error'); return end
  if not result.ok then notify(result.message, 'error'); return end
  local own = result.own
  local options = {
    {
      title = ('Dein Stand: %s Totenköpfe'):format(own.skull_count),
      description = own.rank and ('Platz %s | Noch versteckt: %s'):format(own.rank, result.remaining)
        or ('Noch keine Funde | Noch versteckt: %s'):format(result.remaining),
      icon = 'skull',
      readOnly = true
    }
  }
  for _, row in ipairs(result.rows or {}) do
    options[#options + 1] = {
      title = ('%s. %s'):format(row.rank, row.display_name),
      description = ('%s Totenköpfe gesammelt'):format(row.skull_count),
      icon = 'trophy',
      readOnly = true
    }
  end
  if #options == 1 then
    options[#options + 1] = { title = 'Bisher wurde kein Totenkopf gefunden.', readOnly = true }
  end
  lib.registerContext({ id = resource .. ':ranking', title = 'Halloween · Rangliste', options = options })
  lib.showContext(resource .. ':ranking')
end, false)
RegisterNetEvent('mp_halloween:reset', function()
  lib.hideContext(false)
  notify('Die Halloween-Suche wurde zurückgesetzt. Alle Punktestände beginnen wieder bei 0.')
end)
CreateThread(function()
  -- Diagnose fehlender Modelle; erzeugt keine Objekte auf dem Client.
  for key, prop in pairs(Config.Props or {}) do
    if not IsModelInCdimage(joaat(prop.propname)) then
      print(('[%s] Modell nicht verfügbar: %s (%s). Stream-Dateien/Game-Build prüfen.'):format(resource, prop.propname, key))
    end
  end
  -- Bereits gestreamte Objekte beim Resource-Neustart erfassen.
  while not stopped do
    for _, entity in ipairs(GetGamePool('CObject')) do
      local tag = Entity(entity).state[stateKey]
      if ownTag(tag) then
        local previous = tracked[entity]
        local controlled = NetworkHasControlOfEntity(entity)
        if not previous or previous.generation ~= tag.generation or previous.controlled ~= controlled then
          configureEntity(entity, tag)
          tracked[entity] = { generation = tag.generation, controlled = controlled }
        end
      end
    end
    for entity in pairs(tracked) do
      if not DoesEntityExist(entity) or not ownTag(Entity(entity).state[stateKey]) then tracked[entity] = nil end
    end
    Wait(2000)
  end
end)

CreateThread(function()
  while true do
    local sleep = 500
    local light = Config.SkullLight

    if Config.enabled and light and light.enabled then
      local playerCoords = GetEntityCoords(PlayerPedId())

      for _, placement in ipairs(Config.CollectablePlacement or {}) do
        local coords = placement.coords
        local prop = placement.prop

        if prop and prop.propname == 'prop_mp_skull'
          and coords
          and not (coords.x == 0.0 and coords.y == 0.0 and coords.z == 0.0)
        then
          local position = vector3(coords.x, coords.y, coords.z)

          if #(playerCoords - position) <= light.drawDistance then
            sleep = 0

            DrawLightWithRange(
              coords.x,
              coords.y,
              coords.z + light.offsetZ,
              light.colour.r,
              light.colour.g,
              light.colour.b,
              light.range,
              light.intensity
            )
          end
        end
      end
    end

    Wait(sleep)
  end
end)

AddEventHandler('onClientResourceStart', function(name)
  if name == 'ox_target' then
    targetRevision = targetRevision + 1
    targets = {}
  end
end)
AddEventHandler('onResourceStop', function(name)
  if name == 'ox_target' then
    targetRevision = targetRevision + 1
    targetsActive = false
    targets = {}
    return
  end
  if name ~= resource then return end
  stopped = true
  targetsActive = false
  clearTargets()
  tracked = {}
  if stateBagHandler then
    RemoveStateBagChangeHandler(stateBagHandler)
    stateBagHandler = nil
  end
  if GetResourceState('ox_lib') == 'started' then
    if lib.getOpenContextMenu() == resource .. ':ranking' then lib.hideContext(false) end
  end
end)
