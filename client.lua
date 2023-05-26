local function DrawText3D(x, y, z, text)
    SetTextScale(0.35, 0.35)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 215)
    SetTextEntry("STRING")
    SetTextCentre(true)
    AddTextComponentString(text)
    SetDrawOrigin(x, y, z, 0)
    DrawText(0.0, 0.0)
    local factor = string.len(text) / 370
    DrawRect(0.0 + 0.0125, 0.017 + factor, 0.03, 41, 11, 41, 60)
    ClearDrawOrigin()
  end
  
  local locations = {
    {
      ['name'] = 'Location1',
      ['coords'] = vector3(2049.74, 2949.87, 47.74),
      ['label'] = "~r~Testing 1"
    },
    {
      ['name'] = 'Location2',
      ['coords'] = vector3(-1048.14, -238.02, 44.02),
      ['label'] = "~g~Testing 2"
    }
  }
  
  CreateThread(function()
    while true do
      Wait(1)
      for key, value in pairs(locations) do
        local coords = value.coords
        local label = value.label
        if #(coords - GetEntityCoords(PlayerPedId())) <= 3 then
          DrawText3D(coords.x, coords.y, coords.z, label)
        end
      end
    end
  end)

