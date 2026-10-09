local skullDebugBlips = {}

CreateThread(function()
  if not Config.enabled or Config.Debug ~= true then return end

  for index, placement in ipairs(Config.CollectablePlacement or {}) do
    local coords = placement.coords
    local prop = placement.prop

    if prop and prop.propname == 'prop_mp_skull'
      and coords
      and not (coords.x == 0.0 and coords.y == 0.0 and coords.z == 0.0)
    then
      local blip = AddBlipForCoord(coords.x, coords.y, coords.z)

      SetBlipSprite(blip, 1)
      SetBlipColour(blip,  orange or 47)
      SetBlipScale(blip, 0.7)
      SetBlipDisplay(blip, 4)
      SetBlipAsShortRange(blip, false)

      BeginTextCommandSetBlipName('STRING')
      AddTextComponentString(('Skull: %s'):format(
        placement.id or tostring(index)
      ))
      EndTextCommandSetBlipName(blip)

      skullDebugBlips[#skullDebugBlips + 1] = blip
    end
  end
end)

AddEventHandler('onResourceStop', function(resourceName)
  if resourceName ~= GetCurrentResourceName() then return end

  for _, blip in ipairs(skullDebugBlips) do
    if DoesBlipExist(blip) then
      RemoveBlip(blip)
    end
  end

  skullDebugBlips = {}
end)