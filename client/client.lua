RegisterCommand('test', function()
  print('[Prop-Test] Befehl ausgeführt')

  local modelHash = `prop_mp_skull`

  if not IsModelInCdimage(modelHash) or not IsModelValid(modelHash) then
    print('[Prop-Test] Modell nicht verfügbar: prop_mp_skull')
    return
  end

  RequestModel(modelHash)
  local startedAt = GetGameTimer()

  while not HasModelLoaded(modelHash) do
    if GetGameTimer() - startedAt > 5000 then
      print('[Prop-Test] Modell konnte nicht geladen werden')
      SetModelAsNoLongerNeeded(modelHash)
      return
    end
    Wait(10)
  end

  local coords = GetOffsetFromEntityInWorldCoords(
    PlayerPedId(), 0.0, 2.0, 0.0
  )

  local obj = CreateObject(
    modelHash,
    coords.x, coords.y, coords.z,
    true, true, false
  )

  SetModelAsNoLongerNeeded(modelHash)

  if obj == 0 or not DoesEntityExist(obj) then
    print('[Prop-Test] Objekt konnte nicht erstellt werden')
    return
  end

  PlaceObjectOnGroundProperly(obj)
  FreezeEntityPosition(obj, true)

  print(('[Prop-Test] Objekt erstellt: %s'):format(obj))
end, false)