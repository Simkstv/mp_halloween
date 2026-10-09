local resource = GetCurrentResourceName()
local stateKey = 'mp_halloween_prop'
local ready, resetting, stopping = false, false, false
local placements, collected, groups, locks = {}, {}, {}, {}
local activeClaims, generation = 0, 0
local collectCooldown, rankingCooldown = {}, {}
local garbage = {}
local function log(message)
  print(('[%s] %s'):format(resource, message))
end
local function validId(id)
  return type(id) == 'string' and #id > 0 and #id <= 64
    and id:match('^[%w_-]+$') ~= nil
end
local function usableCoords(coords)
  return coords and type(coords.x) == 'number' and type(coords.y) == 'number'
    and type(coords.z) == 'number' and type(coords.w) == 'number'
    and (coords.x ~= 0 or coords.y ~= 0 or coords.z ~= 0)
end
local function publishActive()
  GlobalState[resource .. ':active'] = ready and Config.enabled and not resetting and not stopping
end
local function fail(message)
  return { ok = false, message = message }
end
local function dropEntity(entity)
  if not entity or not DoesEntityExist(entity) then return end
  Entity(entity).state:set(stateKey, { resource = resource, role = 'deleted' }, true)
  DeleteEntity(entity)
  if DoesEntityExist(entity) then garbage[entity] = true end
end
local function deleteGroup(id)
  local group = groups[id]
  if not group then return end
  groups[id] = nil
  dropEntity(group.skull)
  for _, entity in pairs(group.hints) do dropEntity(entity) end
end
local function deleteAll()
  local ids = {}
  for id in pairs(groups) do ids[#ids + 1] = id end
  for _, id in ipairs(ids) do deleteGroup(id) end
end
local function createProp(id, role, prop, coords, rotation)
  if stopping then return nil end
  local entity = CreateObjectNoOffset(joaat(prop.propname), coords.x, coords.y, coords.z, true, true, false)
  if entity == 0 or not DoesEntityExist(entity) then
    log(('Spawn fehlgeschlagen: %s (%s, %s)'):format(id, role, prop.propname))
    return nil
  end
  local rx, ry, rz = 0.0, 0.0, coords.w
  if type(rotation) == 'number' then
    rz = rz + rotation
  elseif rotation then
    rx, ry, rz = rotation.x or 0.0, rotation.y or 0.0, rz + (rotation.z or 0.0)
  end
  SetEntityOrphanMode(entity, 2)
  SetEntityRoutingBucket(entity, Config.RoutingBucket)
  SetEntityHeading(entity, rz)
  FreezeEntityPosition(entity, true)
  Entity(entity).state:set(stateKey, {
    resource = resource, event = Config.EventId, id = id,
    role = role, generation = generation, rotation = { x = rx, y = ry, z = rz }
  }, true)
  return entity
end
local function spawnGroup(id)
  if stopping or not Config.enabled or collected[id] or groups[id] then return end
  local placement = placements[id]
  if not placement then return end
  local entity = createProp(id, 'skull', placement.prop, placement.coords)
  if not entity then return end
  local group = { skull = entity, hints = {} }
  groups[id] = group
  if placement.hints then
    for index, hint in ipairs(placement.hints.coords or {}) do
      if usableCoords(hint[1]) then
        group.hints[index] = createProp(id, 'hint', placement.hints.prop, hint[1], hint.rot)
      end
    end
  end
end
local function spawnAll()
  for id in pairs(placements) do
    if stopping then return end
    spawnGroup(id)
    Wait(0)
  end
end
local function buildPlacements()
  assert(validId(Config.EventId), 'Ungültige Config.EventId')
  assert(type(Config.ServerDistance) == 'number' and Config.ServerDistance > 0)
  assert(type(Config.TargetDistance) == 'number' and Config.TargetDistance > 0)
  assert(type(Config.RoutingBucket) == 'number' and Config.RoutingBucket >= 0)
  local seen, positions = {}, {}
  for index, placement in ipairs(Config.CollectablePlacement or {}) do
    assert(validId(placement.id), ('Fehlende/ungültige feste ID bei Eintrag %s'):format(index))
    assert(not seen[placement.id], 'Doppelte ID: ' .. placement.id)
    seen[placement.id] = true
    assert(placement.prop and type(placement.prop.propname) == 'string', 'Ungültiges Modell: ' .. placement.id)
    if placement.hints then
      assert(placement.hints.prop and type(placement.hints.prop.propname) == 'string',
        'Ungültiges Hinweis-Modell: ' .. placement.id .. ' (Config.Props-Schlüssel prüfen)')
    end
    if usableCoords(placement.coords) then
      local c = placement.coords
      local positionKey = ('%.6f/%.6f/%.6f'):format(c.x, c.y, c.z)
      if positions[positionKey] and not Config.AllowDuplicatePositions then
        log(('Uebersprungen: %s hat dieselbe Position wie %s. Eigene Koordinaten eintragen.'):format(
          placement.id, positions[positionKey]))
      else
        positions[positionKey] = positions[positionKey] or placement.id
        placements[placement.id] = placement
      end
    else
      log(('Übersprungen: %s – gültige Koordinaten statt 0/0/0 eintragen.'):format(placement.id))
    end
  end
end
local function accountOf(source)
  return GetPlayerIdentifierByType(source, 'license')
end
local function displayName(source)
  local name = (GetPlayerName(source) or 'Unbekannt'):gsub('%^%d', ''):gsub('[%c]', '')
  -- Verhindert Formatierung in Markdown-fähigen Menütexten.
  name = name:gsub('[<>%[%]`*_#|]', '')
  local offset = utf8.offset(name, 65)
  return offset and name:sub(1, offset - 1) or name
end
local function remainingCount()
  local count = 0
  for id in pairs(placements) do if not collected[id] then count = count + 1 end end
  return count
end
-- Autoritative Target-Liste; keine Abhängigkeit von verzögerten Client-Statebags.
lib.callback.register('mp_halloween:targets', function(source)
  local active = ready and Config.enabled and not resetting and not stopping
    and GetPlayerRoutingBucket(source) == Config.RoutingBucket
  local items = {}
  if active then
    for id, group in pairs(groups) do
      if not collected[id] and DoesEntityExist(group.skull) then
        local c = placements[id].coords
        items[#items + 1] = {
          id = id, netId = NetworkGetNetworkIdFromEntity(group.skull),
          generation = generation, coords = { x = c.x, y = c.y, z = c.z }
        }
      end
    end
  end
  return { active = active, items = items }
end)
lib.callback.register('mp_halloween:collect', function(source, id, netId, requestGeneration)
  if not ready or resetting or stopping or not Config.enabled then
    return fail('Das Halloween-Event ist momentan nicht verfügbar.')
  end
  if not validId(id) or type(netId) ~= 'number' or requestGeneration ~= generation then
    return fail('Dieses Sammelobjekt ist nicht mehr verfügbar.')
  end
  local now = GetGameTimer()
  if collectCooldown[source] and now - collectCooldown[source] < 800 then
    return fail('Bitte warte einen Moment.')
  end
  collectCooldown[source] = now
  local placement, group = placements[id], groups[id]
  if not placement or collected[id] or locks[id] or not group or not DoesEntityExist(group.skull) then
    return fail('Dieser Totenkopf wurde bereits eingesammelt oder ist nicht verfügbar.')
  end
  if NetworkGetNetworkIdFromEntity(group.skull) ~= netId then return fail('Ungültiges Sammelobjekt.') end
  local ped = GetPlayerPed(source)
  if ped == 0 or not DoesEntityExist(ped) or GetEntityHealth(ped) <= 0 then
    return fail('Du kannst gerade nichts einsammeln.')
  end
  if GetPlayerRoutingBucket(source) ~= Config.RoutingBucket then return fail('Falsche Spielinstanz.') end
  local pos, target = GetEntityCoords(ped), placement.coords
  local dx, dy, dz = pos.x - target.x, pos.y - target.y, pos.z - target.z
  if dx * dx + dy * dy + dz * dz > Config.ServerDistance * Config.ServerDistance then
    return fail('Du bist zu weit vom Totenkopf entfernt.')
  end
  local account = accountOf(source)
  if not account then return fail('Deine Rockstar-Lizenz konnte nicht ermittelt werden.') end
  -- Bis hierhin keine asynchrone Operation: Sperre verhindert zwei Gewinner.
  locks[id] = true
  activeClaims = activeClaims + 1
  local committed = false
  local ok, result = xpcall(function()
    committed = MySQL.transaction.await({
      {
        query = 'INSERT INTO mp_halloween_collections (event_id, skull_id, account_id) VALUES (?, ?, ?)',
        values = { Config.EventId, id, account }
      },
      {
        query = [[INSERT INTO mp_halloween_scores (event_id, account_id, display_name, skull_count)
          VALUES (?, ?, ?, 1)
          ON DUPLICATE KEY UPDATE display_name = VALUES(display_name), skull_count = skull_count + 1]],
        values = { Config.EventId, account, displayName(source) }
      }
    })
    if not committed then return fail('Speichern fehlgeschlagen. Bitte erneut versuchen.') end
    collected[id] = true
    deleteGroup(id)
    local score = MySQL.scalar.await(
      'SELECT skull_count FROM mp_halloween_scores WHERE event_id = ? AND account_id = ?',
      { Config.EventId, account }
    )
    return { ok = true, count = tonumber(score) }
  end, debug.traceback)
  -- Auch bei Fehlern nach DB-Commit bleibt der Fund dauerhaft verbucht.
  if committed then
    collected[id] = true
    if groups[id] then pcall(deleteGroup, id) end
  end
  locks[id] = nil
  activeClaims = activeClaims - 1
  if not ok then
    log('Fehler beim Einsammeln: ' .. tostring(result))
    if committed then return { ok = true } end
    return fail('Datenbankfehler. Es wurde kein Punkt vergeben.')
  end
  return result
end)
lib.callback.register('mp_halloween:leaderboard', function(source)
  if not ready or resetting or stopping then return fail('Rangliste momentan nicht verfügbar.') end
  local now = GetGameTimer()
  if rankingCooldown[source] and now - rankingCooldown[source] < 3000 then
    return fail('Bitte warte kurz, bevor du die Rangliste erneut öffnest.')
  end
  rankingCooldown[source] = now
  local account = accountOf(source)
  if not account then return fail('Dein Account konnte nicht ermittelt werden.') end
  local version = generation
  local ok, response = xpcall(function()
    local limit = math.max(1, math.min(50, math.floor(tonumber(Config.LeaderboardLimit) or 10)))
    local rows = MySQL.query.await(([[SELECT display_name, skull_count,
      1 + (SELECT COUNT(*) FROM mp_halloween_scores b
        WHERE b.event_id = a.event_id AND b.skull_count > a.skull_count) AS rank
      FROM mp_halloween_scores a WHERE event_id = ?
      ORDER BY skull_count DESC, display_name ASC, account_id ASC LIMIT %d]]):format(limit), { Config.EventId })
    local own = MySQL.single.await([[SELECT skull_count,
      1 + (SELECT COUNT(*) FROM mp_halloween_scores b
        WHERE b.event_id = a.event_id AND b.skull_count > a.skull_count) AS rank
      FROM mp_halloween_scores a WHERE event_id = ? AND account_id = ?]], { Config.EventId, account })
    if resetting or generation ~= version then return fail('Event wurde zurückgesetzt. Bitte erneut öffnen.') end
    return { ok = true, rows = rows, own = own or { skull_count = 0 }, remaining = remainingCount() }
  end, debug.traceback)
  if not ok then log(tostring(response)); return fail('Rangliste konnte nicht geladen werden.') end
  return response
end)
local function adminReply(source, message, kind)
  log(message)
  if source ~= 0 then
    TriggerClientEvent('ox_lib:notify', source, { title = 'Halloween', description = message, type = kind or 'inform' })
  end
end
RegisterCommand(Config.Commands.reset, function(source)
  -- Zusätzlich zur restricted-Registrierung explizit prüfen.
  if source ~= 0 and not IsPlayerAceAllowed(source, 'command.' .. Config.Commands.reset) then return end
  if not ready or resetting then adminReply(source, 'Event ist noch nicht bereit oder wird bereits zurückgesetzt.', 'error'); return end
  resetting = true
  publishActive()
  CreateThread(function()
    -- Bereits begonnene DB-Transaktionen abschließen, keine neuen zulassen.
    local started = GetGameTimer()
    while activeClaims > 0 do
      if GetGameTimer() - started > 30000 then
        resetting = false; publishActive()
        adminReply(source, 'Reset abgebrochen: Ein Speichervorgang läuft noch.', 'error')
        return
      end
      Wait(50)
    end
    local ok, success = pcall(MySQL.transaction.await, {
      { query = 'DELETE FROM mp_halloween_collections WHERE event_id = ?', values = { Config.EventId } },
      { query = 'DELETE FROM mp_halloween_scores WHERE event_id = ?', values = { Config.EventId } }
    })
    if not ok or not success then
      resetting = false; publishActive()
      adminReply(source, 'Reset fehlgeschlagen. Daten wurden nicht zurückgesetzt.', 'error')
      return
    end
    generation = generation + 1
    deleteAll()
    collected, locks = {}, {}
    collectCooldown, rankingCooldown = {}, {}
    spawnAll()
    resetting = false
    publishActive()
    TriggerClientEvent('mp_halloween:reset', -1)
    adminReply(source, 'Event zurückgesetzt: Alle Funde und Punktestände dieses Events wurden gelöscht.', 'success')
  end)
end, true)
AddEventHandler('playerDropped', function()
  collectCooldown[source], rankingCooldown[source] = nil, nil
end)
AddEventHandler('onResourceStop', function(name)
  if name ~= resource then return end
  stopping = true
  publishActive()
  deleteAll()
  for entity in pairs(garbage) do if DoesEntityExist(entity) then DeleteEntity(entity) end end
end)
MySQL.ready(function()
  local ok, err = xpcall(function()
    buildPlacements()
    local sql = assert(LoadResourceFile(resource, 'sql/install.sql'), 'sql/install.sql fehlt')
    for statement in sql:gmatch('([^;]+);') do MySQL.query.await(statement) end
    local rows = MySQL.query.await('SELECT skull_id FROM mp_halloween_collections WHERE event_id = ?', { Config.EventId })
    for _, row in ipairs(rows) do collected[row.skull_id] = true end
    -- Vom vorigen Resource-Abbruch übrig gebliebene eigene Objekte aufräumen.
    for _, entity in ipairs(GetAllObjects()) do
      local tag = Entity(entity).state[stateKey]
      if tag and tag.resource == resource then dropEntity(entity) end
    end
    generation = os.time()
    spawnAll()
    if stopping then return end
    ready = true
    publishActive()
    log(('Bereit. %s noch nicht gesammelte Totenköpfe konfiguriert.'):format(remainingCount()))
  end, debug.traceback)
  if not ok then
    ready = false; publishActive(); deleteAll()
    log('Start abgebrochen: ' .. tostring(err))
  end
end)
-- Bereinigung verzögerter Löschungen und Wiederherstellung ungesammelter Props.
CreateThread(function()
  while not stopping do
    Wait(10000)
    for entity in pairs(garbage) do
      if DoesEntityExist(entity) then
        local tag = Entity(entity).state[stateKey]
        if tag and tag.resource == resource and tag.role == 'deleted' then
          DeleteEntity(entity)
        else
          garbage[entity] = nil
        end
      else
        garbage[entity] = nil
      end
    end
    if ready and Config.enabled and not resetting then
      for id in pairs(placements) do
        if not collected[id] and not locks[id] then
          local group = groups[id]
          if group and not DoesEntityExist(group.skull) then deleteGroup(id) end
          if not groups[id] then spawnGroup(id) end
        end
      end
    end
  end
end)
