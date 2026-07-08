--   ____  _____ ____ ______   ______ _____ _____ ____     ___     _____ _____  _______ ____    ______   __  _______  __    _    ____    _____ ____  ___ _  _____ _____ ___  _   _    _        _     _   _                  ____  _ _                       _                 _______ _____ _  __     _   _ ____      _ ____ _____ _____
--  |  _ \| ____/ ___|  _ \ \ / /  _ \_   _| ____|  _ \   ( _ )   |  ___|_ _\ \/ / ____|  _ \  | __ ) \ / / |  ___\ \/ /   / \  |  _ \  |  ___|  _ \|_ _| |/ /_ _|_   _/ _ \| \ | |  / \      | |__ | |_| |_ _ __  ___ _   / / /_| (_)___  ___ ___  _ __ __| |  __ _  __ _   / / ____|_   _| |/ /__ _| | | | ___|  __| | ___|___  |___  |
--  | | | |  _|| |   | |_) \ V /| |_) || | |  _| | | | |  / _ \/\ | |_   | | \  /|  _| | | | | |  _ \\ V /  | |_   \  /   / _ \ | |_) | | |_  | |_) || || ' / | |  | || | | |  \| | / _ \     | '_ \| __| __| '_ \/ __(_) / / / _` | / __|/ __/ _ \| '__/ _` | / _` |/ _` | / /|  _|   | | | ' // _` | |_| |___ \ / _` |___ \  / /   / /
--  | |_| | |__| |___|  _ < | | |  __/ | | | |___| |_| | | (_>  < |  _|  | | /  \| |___| |_| | | |_) || |   |  _|  /  \  / ___ \|  __/  |  _| |  _ < | || . \ | |  | || |_| | |\  |/ ___ \ _  | | | | |_| |_| |_) \__ \_ / / / (_| | \__ \ (_| (_) | | | (_| || (_| | (_| |/ / | |___  | | | . \ (_| |  _  |___) | (_| |___) |/ /   / /
--  |____/|_____\____|_| \_\|_| |_|    |_| |_____|____/   \___/\/ |_|   |___/_/\_\_____|____/  |____/ |_|   |_|   /_/\_\/_/   \_\_|     |_|   |_| \_\___|_|\_\___| |_| \___/|_| \_/_/   \_(_) |_| |_|\__|\__| .__/|___(_)_/_/ \__,_|_|___/\___\___/|_|  \__,_(_)__, |\__, /_/  |_____| |_| |_|\_\__, |_| |_|____/ \__,_|____//_/   /_/
--                                                                                                                                                                                                          |_|                                                |___/ |___/                         |_|
-- https://discord.gg/ETKqH5d577

local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
L0_1 = Config
L0_1 = L0_1.DebugHouseGaragesZones
if L0_1 then
  function L0_1()
    local L0_2, L1_2
    L0_2 = Citizen
    L0_2 = L0_2.CreateThread
    function L1_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3
      while true do
        L0_3 = PlayerPedId
        L0_3 = L0_3()
        L1_3 = GetEntityCoords
        L2_3 = L0_3
        L1_3 = L1_3(L2_3)
        L2_3 = pairs
        L3_3 = Config
        L3_3 = L3_3.HousingGarages
        L2_3, L3_3, L4_3, L5_3 = L2_3(L3_3)
        for L6_3, L7_3 in L2_3, L3_3, L4_3, L5_3 do
          L8_3 = L7_3.garageZone
          if L8_3 then
            L8_3 = 1
            L9_3 = L7_3.garageZone
            L9_3 = #L9_3
            L10_3 = 1
            for L11_3 = L8_3, L9_3, L10_3 do
              L12_3 = L7_3.garageZone
              L12_3 = #L12_3
              if L11_3 < L12_3 then
                L12_3 = _drawWall
                L13_3 = L7_3.garageZone
                L13_3 = L13_3[L11_3]
                L14_3 = L7_3.garageZone
                L15_3 = L11_3 + 1
                L14_3 = L14_3[L15_3]
                L15_3 = L7_3.minZ
                L16_3 = L7_3.maxZ
                L17_3 = 44
                L18_3 = 41
                L19_3 = 214
                L12_3(L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3)
              end
              L12_3 = L7_3.garageZone
              L12_3 = #L12_3
              if L11_3 == L12_3 then
                L12_3 = _drawWall
                L13_3 = L7_3.garageZone
                L13_3 = L13_3[L11_3]
                L14_3 = L7_3.garageZone
                L14_3 = L14_3[1]
                L15_3 = L7_3.minZ
                L16_3 = L7_3.maxZ
                L17_3 = 44
                L18_3 = 41
                L19_3 = 214
                L12_3(L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3)
              end
            end
          else
            L8_3 = L7_3.houseCoords
            L8_3 = L8_3.xyz
            L8_3 = L1_3 - L8_3
            L8_3 = #L8_3
            if L8_3 <= 100.0 then
              L9_3 = DrawMarker
              L10_3 = 28
              L11_3 = L7_3.houseCoords
              L11_3 = L11_3.xyz
              L12_3 = 0.0
              L13_3 = 0.0
              L14_3 = 0.0
              L15_3 = 0.0
              L16_3 = 0.0
              L17_3 = 0.0
              L18_3 = L7_3.zoneSize
              L19_3 = L7_3.zoneSize
              L20_3 = L7_3.zoneSize
              L21_3 = 0
              L22_3 = 230
              L23_3 = 20
              L24_3 = 160
              L25_3 = false
              L26_3 = false
              L27_3 = false
              L28_3 = false
              L29_3 = false
              L30_3 = false
              L31_3 = false
              L9_3(L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3)
            end
          end
        end
        L2_3 = Citizen
        L2_3 = L2_3.Wait
        L3_3 = 1
        L2_3(L3_3)
      end
    end
    L0_2(L1_2)
  end
  L1_1 = L0_1
  L1_1()
end
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = A0_2 or nil
  if not A0_2 then
    L1_2 = GetEntityCoords
    L2_2 = PlayerPedId
    L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L2_2()
    L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  end
  L2_2 = nil
  L3_2 = nil
  L4_2 = pairs
  L5_2 = Config
  L5_2 = L5_2.HousingGarages
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
  for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
    L10_2 = 99999.0
    L11_2 = L9_2.garageZone
    if L11_2 then
      L11_2 = isPointInPolygon
      L12_2 = L1_2.xyz
      L13_2 = L9_2.garageZone
      L11_2 = L11_2(L12_2, L13_2)
      if L11_2 then
        L11_2 = L1_2.z
        L12_2 = L9_2.minZ
        if L11_2 >= L12_2 then
          L11_2 = L1_2.z
          L12_2 = L9_2.maxZ
          if L11_2 <= L12_2 then
            L2_2 = 0.0
            L3_2 = L8_2
            break
          end
        end
      end
    else
      L11_2 = L9_2.houseCoords
      L11_2 = L11_2.xyz
      L11_2 = L1_2 - L11_2
      L10_2 = #L11_2
    end
    if nil == L2_2 or L2_2 > L10_2 then
      L2_2 = L10_2
      L3_2 = L8_2
    end
  end
  L4_2 = L3_2
  L5_2 = L2_2
  return L4_2, L5_2
end
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  if A0_2 then
    L1_2 = NetworkGetNetworkIdFromEntity
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    if L1_2 then
      goto lbl_9
    end
  end
  L1_2 = nil
  ::lbl_9::
  L2_2 = DoScreenFadeOut
  L3_2 = 350
  L2_2(L3_2)
  L2_2 = Citizen
  L2_2 = L2_2.Wait
  L3_2 = 500
  L2_2(L3_2)
  L2_2 = removeLocalVehicles
  L3_2 = garageInteriorId
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = {}
  if L1_2 then
    L3_2 = GetVehicleMaxNumberOfPassengers
    L4_2 = A0_2
    L3_2 = L3_2(L4_2)
    L3_2 = L3_2 + 1
    L4_2 = 1
    L5_2 = L3_2
    L6_2 = 1
    for L7_2 = L4_2, L5_2, L6_2 do
      L8_2 = L7_2 - 2
      L9_2 = IsVehicleSeatFree
      L10_2 = A0_2
      L11_2 = L8_2
      L9_2 = L9_2(L10_2, L11_2)
      if not L9_2 then
        L9_2 = GetPedInVehicleSeat
        L10_2 = A0_2
        L11_2 = L8_2
        L9_2 = L9_2(L10_2, L11_2)
        L10_2 = table
        L10_2 = L10_2.insert
        L11_2 = L2_2
        L12_2 = GetPlayerServerId
        L13_2 = NetworkGetPlayerIndexFromPed
        L14_2 = L9_2
        L13_2, L14_2 = L13_2(L14_2)
        L12_2, L13_2, L14_2 = L12_2(L13_2, L14_2)
        L10_2(L11_2, L12_2, L13_2, L14_2)
      end
    end
  end
  L3_2 = TriggerServerEvent
  L4_2 = "vms_garagesv2:sv:garageInterior"
  L5_2 = false
  L6_2 = garageInteriorId
  L7_2 = L1_2
  L8_2 = true
  L9_2 = nil
  L10_2 = L2_2
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  L3_2 = Wait
  L4_2 = 20
  L3_2(L4_2)
  garageInteriorId = nil
end
function L2_1()
  local L0_2, L1_2, L2_2
  L0_2 = GetGameTimer
  L0_2 = L0_2()
  L0_2 = L0_2 + 4500
  L1_2 = Citizen
  L1_2 = L1_2.CreateThread
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3, L38_3, L39_3, L40_3
    L0_3 = false
    L1_3 = false
    L2_3 = Config
    L2_3 = L2_3.HousingGarages
    L3_3 = garageInteriorId
    L2_3 = L2_3[L3_3]
    L2_3 = L2_3.exitCoords
    while true do
      L3_3 = garageInteriorId
      if not L3_3 then
        break
      end
      L0_3 = false
      L3_3 = PlayerPedId
      L3_3 = L3_3()
      L4_3 = GetEntityCoords
      L5_3 = L3_3
      L4_3 = L4_3(L5_3)
      L5_3 = nil
      L6_3 = Config
      L6_3 = L6_3.HousingGarages
      L7_3 = garageInteriorId
      L6_3 = L6_3[L7_3]
      L7_3 = GetVehiclePedIsIn
      L8_3 = L3_3
      L9_3 = false
      L7_3 = L7_3(L8_3, L9_3)
      L8_3 = GetPedInVehicleSeat
      L9_3 = L7_3
      L10_3 = -1
      L8_3 = L8_3(L9_3, L10_3)
      L8_3 = L8_3 == L3_3
      L9_3 = 0 ~= L7_3 and 0 ~= L8_3
      L10_3 = Config
      L10_3 = L10_3.Marker
      L10_3 = L10_3.exit_garage
      L11_3 = L2_3.xyz
      L11_3 = L4_3 - L11_3
      L11_3 = #L11_3
      if not L9_3 then
        L12_3 = L10_3.distanceSee
        if L11_3 <= L12_3 then
          L12_3 = Config
          L12_3 = L12_3.UseMarkers
          if L12_3 then
            L12_3 = DrawMarker
            L13_3 = L10_3.type
            L14_3 = L2_3.xyz
            L15_3 = 0.0
            L16_3 = 0.0
            L17_3 = 0.0
            L18_3 = L10_3.rotation
            L18_3 = L18_3.xyz
            L19_3 = L10_3.scale
            L19_3 = L19_3.xyz
            L20_3 = L10_3.color
            L20_3 = L20_3[1]
            L21_3 = L10_3.color
            L21_3 = L21_3[2]
            L22_3 = L10_3.color
            L22_3 = L22_3[3]
            L23_3 = L10_3.color
            L23_3 = L23_3[4]
            L24_3 = L10_3.bobUpAndDown
            L25_3 = false
            L26_3 = false
            L27_3 = L10_3.rotate
            L28_3 = L10_3.textureDict
            L29_3 = L10_3.textureName
            L30_3 = L10_3.drawOnEnts
            L12_3(L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3)
          end
          L12_3 = Config
          L12_3 = L12_3.UseText3D
          if L12_3 then
            L12_3 = CL
            L12_3 = L12_3.DrawText3D
            L13_3 = vec
            L14_3 = L2_3.xyz
            L13_3 = L13_3(L14_3)
            L14_3 = TRANSLATE
            L15_3 = "3dtext.exit_the_garage"
            L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3, L38_3, L39_3, L40_3 = L14_3(L15_3)
            L12_3(L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3, L38_3, L39_3, L40_3)
          end
          L12_3 = L10_3.distanceAccess
          if L11_3 <= L12_3 then
            L12_3 = CL
            L12_3 = L12_3.TextUI
            L12_3 = L12_3.Enabled
            if L12_3 then
              L12_3 = TRANSLATE
              L13_3 = "textui.exit_the_garage"
              L12_3 = L12_3(L13_3)
              L0_3 = L12_3
            else
              L12_3 = Config
              L12_3 = L12_3.Core
              if "ESX" == L12_3 then
                L12_3 = Config
                L12_3 = L12_3.UseHelpNotify
                if L12_3 then
                  L12_3 = ESX
                  L12_3 = L12_3.ShowHelpNotification
                  L13_3 = TRANSLATE
                  L14_3 = "help.exit_the_garage"
                  L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3, L38_3, L39_3, L40_3 = L13_3(L14_3)
                  L12_3(L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3, L38_3, L39_3, L40_3)
                end
              end
            end
            L12_3 = IsControlJustPressed
            L13_3 = 0
            L14_3 = 38
            L12_3 = L12_3(L13_3, L14_3)
            if L12_3 then
              L12_3 = L1_1
              L12_3()
            end
          end
        end
      end
      if L9_3 and L8_3 then
        L12_3 = GetGameTimer
        L12_3 = L12_3()
        L13_3 = L0_2
        if L12_3 >= L13_3 then
          L12_3 = GetEntitySpeed
          L13_3 = L7_3
          L12_3 = L12_3(L13_3)
          L13_3 = Config
          L13_3 = L13_3.MinSpeedToExitGarage
          if not L13_3 then
            L13_3 = 0.4
          end
          if L12_3 >= L13_3 then
            L13_3 = L1_1
            L14_3 = L7_3
            L13_3(L14_3)
            L13_3 = Citizen
            L13_3 = L13_3.Wait
            L14_3 = 1500
            L13_3(L14_3)
          end
        end
      end
      L12_3 = L6_3.parkingSpaces
      if L12_3 then
        L12_3 = pairs
        L13_3 = L6_3.parkingSpaces
        L12_3, L13_3, L14_3, L15_3 = L12_3(L13_3)
        for L16_3, L17_3 in L12_3, L13_3, L14_3, L15_3 do
          if L17_3 then
            L18_3 = L17_3.vehicleId
            if L18_3 then
              if 0 ~= L7_3 then
                L18_3 = L17_3.vehicleId
                if L7_3 == L18_3 then
                  L18_3 = Citizen
                  L18_3 = L18_3.Wait
                  L19_3 = 300
                  L18_3(L19_3)
                  L18_3 = spawnGlobalVehicle
                  L19_3 = L16_3
                  L20_3 = true
                  L18_3(L19_3, L20_3)
                  L18_3 = Citizen
                  L18_3 = L18_3.Wait
                  L19_3 = 1000
                  L18_3(L19_3)
                  L0_3 = nil
                end
              end
          end
          elseif 0 ~= L7_3 then
            L18_3 = GetGameTimer
            L18_3 = L18_3()
            L19_3 = L0_2
            if L18_3 >= L19_3 then
              L18_3 = L17_3.coords
              L18_3 = L18_3.xyz
              L18_3 = L4_3 - L18_3
              L18_3 = #L18_3
              L19_3 = Config
              L19_3 = L19_3.Marker
              L19_3 = L19_3.parking_space
              L20_3 = L19_3.distanceSee
              if L18_3 <= L20_3 then
                L20_3 = Config
                L20_3 = L20_3.UseMarkers
                if L20_3 then
                  L20_3 = DrawMarker
                  L21_3 = L19_3.type
                  L22_3 = L17_3.coords
                  L22_3 = L22_3.x
                  L23_3 = L17_3.coords
                  L23_3 = L23_3.y
                  L24_3 = L17_3.coords
                  L24_3 = L24_3.z
                  L24_3 = L24_3 + 1.2
                  L25_3 = 0.0
                  L26_3 = 0.0
                  L27_3 = 0.0
                  L28_3 = L19_3.rotation
                  L28_3 = L28_3.xyz
                  L29_3 = L19_3.scale
                  L29_3 = L29_3.xyz
                  L30_3 = L19_3.color
                  L30_3 = L30_3[1]
                  L31_3 = L19_3.color
                  L31_3 = L31_3[2]
                  L32_3 = L19_3.color
                  L32_3 = L32_3[3]
                  L33_3 = L19_3.color
                  L33_3 = L33_3[4]
                  L34_3 = L19_3.bobUpAndDown
                  L35_3 = false
                  L36_3 = false
                  L37_3 = L19_3.rotate
                  L38_3 = L19_3.textureDict
                  L39_3 = L19_3.textureName
                  L40_3 = L19_3.drawOnEnts
                  L20_3(L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3, L38_3, L39_3, L40_3)
                end
                L20_3 = Config
                L20_3 = L20_3.UseText3D
                if L20_3 then
                  L20_3 = CL
                  L20_3 = L20_3.DrawText3D
                  L21_3 = vec
                  L22_3 = L17_3.coords
                  L22_3 = L22_3.x
                  L23_3 = L17_3.coords
                  L23_3 = L23_3.y
                  L24_3 = L17_3.coords
                  L24_3 = L24_3.z
                  L24_3 = L24_3 + 1.7
                  L21_3 = L21_3(L22_3, L23_3, L24_3)
                  L22_3 = TRANSLATE
                  L23_3 = "3dtext.park"
                  L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3, L38_3, L39_3, L40_3 = L22_3(L23_3)
                  L20_3(L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3, L38_3, L39_3, L40_3)
                end
                L20_3 = L19_3.distanceAccess
                if L18_3 <= L20_3 then
                  L20_3 = CL
                  L20_3 = L20_3.TextUI
                  L20_3 = L20_3.Enabled
                  if L20_3 then
                    L20_3 = TRANSLATE
                    L21_3 = "textui.park"
                    L20_3 = L20_3(L21_3)
                    L0_3 = L20_3
                  else
                    L20_3 = Config
                    L20_3 = L20_3.Core
                    if "ESX" == L20_3 then
                      L20_3 = Config
                      L20_3 = L20_3.UseHelpNotify
                      if L20_3 then
                        L20_3 = ESX
                        L20_3 = L20_3.ShowHelpNotification
                        L21_3 = TRANSLATE
                        L22_3 = "help.park"
                        L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3, L38_3, L39_3, L40_3 = L21_3(L22_3)
                        L20_3(L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3, L38_3, L39_3, L40_3)
                      end
                    end
                  end
                  L20_3 = IsControlJustPressed
                  L21_3 = 0
                  L22_3 = 38
                  L20_3 = L20_3(L21_3, L22_3)
                  if L20_3 then
                    L20_3 = parkVehicle
                    L21_3 = L7_3
                    L22_3 = garageInteriorId
                    L23_3 = L16_3
                    L24_3 = true
                    L20_3(L21_3, L22_3, L23_3, L24_3)
                    L20_3 = Citizen
                    L20_3 = L20_3.Wait
                    L21_3 = 25
                    L20_3(L21_3)
                    L0_3 = nil
                  end
                end
              end
            end
          end
        end
      end
      if L0_3 and not L1_3 then
        L1_3 = true
        L12_3 = CL
        L12_3 = L12_3.TextUI
        L12_3 = L12_3.Open
        L13_3 = L0_3
        L12_3(L13_3)
      elseif not L0_3 and L1_3 then
        L1_3 = false
        L12_3 = CL
        L12_3 = L12_3.TextUI
        L12_3 = L12_3.Close
        L12_3()
      end
      L12_3 = Citizen
      L12_3 = L12_3.Wait
      L13_3 = 1
      L12_3(L13_3)
    end
    L3_3 = CL
    L3_3 = L3_3.TextUI
    L3_3 = L3_3.Enabled
    if L3_3 then
      L3_3 = CL
      L3_3 = L3_3.TextUI
      L3_3 = L3_3.Close
      L3_3()
    end
  end
  L1_2(L2_2)
end
function L3_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = GetEntityCoords
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  L2_2 = L0_1
  L3_2 = L1_2
  L2_2, L3_2 = L2_2(L3_2)
  if L2_2 and nil ~= L3_2 then
    L4_2 = Config
    L4_2 = L4_2.HousingGarages
    L4_2 = L4_2[L2_2]
    L4_2 = L4_2.zoneSize
    if L4_2 then
      L4_2 = Config
      L4_2 = L4_2.HousingGarages
      L4_2 = L4_2[L2_2]
      L4_2 = L4_2.zoneSize
    end
    if L3_2 < L4_2 or 0.0 == L3_2 then
      L4_2 = GetVehiclePedIsIn
      L5_2 = L0_2
      L6_2 = false
      L4_2 = L4_2(L5_2, L6_2)
      if L4_2 and 0 ~= L4_2 then
        L5_2 = GetPedInVehicleSeat
        L6_2 = L4_2
        L7_2 = -1
        L5_2 = L5_2(L6_2, L7_2)
        L5_2 = L5_2 == L0_2
        if not L5_2 then
          return
        end
        L6_2 = Config
        L6_2 = L6_2.HousingGarages
        L6_2 = L6_2[L2_2]
        L6_2 = L6_2.garageData
        if L6_2 then
          L6_2 = returnVehicle
          L7_2 = L4_2
          L8_2 = L2_2
          L9_2 = true
          return L6_2(L7_2, L8_2, L9_2)
        end
        canUseAgain = false
        L6_2 = {}
        L7_2 = GetVehicleMaxNumberOfPassengers
        L8_2 = L4_2
        L7_2 = L7_2(L8_2)
        L7_2 = L7_2 + 1
        L8_2 = 1
        L9_2 = L7_2
        L10_2 = 1
        for L11_2 = L8_2, L9_2, L10_2 do
          L12_2 = L11_2 - 2
          L13_2 = IsVehicleSeatFree
          L14_2 = L4_2
          L15_2 = L12_2
          L13_2 = L13_2(L14_2, L15_2)
          if not L13_2 then
            L13_2 = GetPedInVehicleSeat
            L14_2 = L4_2
            L15_2 = L12_2
            L13_2 = L13_2(L14_2, L15_2)
            L14_2 = table
            L14_2 = L14_2.insert
            L15_2 = L6_2
            L16_2 = GetPlayerServerId
            L17_2 = NetworkGetPlayerIndexFromPed
            L18_2 = L13_2
            L17_2, L18_2 = L17_2(L18_2)
            L16_2, L17_2, L18_2 = L16_2(L17_2, L18_2)
            L14_2(L15_2, L16_2, L17_2, L18_2)
          end
        end
        L8_2 = library
        L8_2 = L8_2.Callback
        L9_2 = "vms_garagesv2:getHousingGarageSpace"
        function L10_2(A0_3, A1_3)
          local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3
          if not A0_3 then
            L2_3 = CL
            L2_3 = L2_3.Notification
            L3_3 = TRANSLATE
            L4_3 = "notify.house_garage:someone_is_parking"
            L3_3 = L3_3(L4_3)
            L4_3 = 4500
            L5_3 = "info"
            return L2_3(L3_3, L4_3, L5_3)
          end
          if not A1_3 then
            L2_3 = CL
            L2_3 = L2_3.Notification
            L3_3 = TRANSLATE
            L4_3 = "notify.house_garage:no_free_space"
            L3_3 = L3_3(L4_3)
            L4_3 = 4500
            L5_3 = "error"
            return L2_3(L3_3, L4_3, L5_3)
          end
          L2_3 = L4_2
          if L2_3 then
            L2_3 = NetworkGetNetworkIdFromEntity
            L3_3 = L4_2
            L2_3 = L2_3(L3_3)
            if L2_3 then
              goto lbl_32
            end
          end
          L2_3 = nil
          ::lbl_32::
          L3_3 = L2_2
          garageInteriorId = L3_3
          L3_3 = DoScreenFadeOut
          L4_3 = 350
          L3_3(L4_3)
          L3_3 = Citizen
          L3_3 = L3_3.Wait
          L4_3 = 500
          L3_3(L4_3)
          L3_3 = TriggerServerEvent
          L4_3 = "vms_garagesv2:sv:garageInterior"
          L5_3 = true
          L6_3 = garageInteriorId
          L7_3 = L2_3
          L8_3 = true
          L9_3 = A1_3
          L10_3 = L6_2
          L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3)
          L3_3 = Citizen
          L3_3 = L3_3.Wait
          L4_3 = 1000
          L3_3(L4_3)
          L3_3 = spawnLocalVehicles
          L3_3()
          L3_3 = parkVehicle
          L4_3 = L4_2
          L5_3 = L2_2
          L6_3 = A1_3
          L7_3 = true
          L3_3(L4_3, L5_3, L6_3, L7_3)
          L3_3 = Citizen
          L3_3 = L3_3.Wait
          L4_3 = 750
          L3_3(L4_3)
          L3_3 = L2_1
          L3_3()
          L3_3 = Citizen
          L3_3 = L3_3.CreateThread
          function L4_3()
            local L0_4, L1_4
            L0_4 = Citizen
            L0_4 = L0_4.Wait
            L1_4 = 2000
            L0_4(L1_4)
            canUseAgain = true
          end
          L3_3(L4_3)
        end
        L11_2 = L2_2
        L12_2 = L6_2
        L8_2(L9_2, L10_2, L11_2, L12_2)
      else
        L5_2 = Config
        L5_2 = L5_2.HousingGarages
        L5_2 = L5_2[L2_2]
        L5_2 = L5_2.garageData
        if L5_2 then
          L5_2 = openGarage
          L6_2 = Config
          L6_2 = L6_2.HousingGarages
          L6_2 = L6_2[L2_2]
          L7_2 = false
          L8_2 = false
          L9_2 = L2_2
          L5_2(L6_2, L7_2, L8_2, L9_2)
          return
        end
        garageInteriorId = L2_2
        L5_2 = DoScreenFadeOut
        L6_2 = 350
        L5_2(L6_2)
        L5_2 = Citizen
        L5_2 = L5_2.Wait
        L6_2 = 500
        L5_2(L6_2)
        L5_2 = TriggerServerEvent
        L6_2 = "vms_garagesv2:sv:garageInterior"
        L7_2 = true
        L8_2 = garageInteriorId
        L9_2 = nil
        L10_2 = true
        L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
        L5_2 = Citizen
        L5_2 = L5_2.Wait
        L6_2 = 1000
        L5_2(L6_2)
        L5_2 = spawnLocalVehicles
        L5_2()
        L5_2 = L2_1
        L5_2()
      end
    end
  end
end
L4_1 = exports
L5_1 = "enterHouseGarage"
L6_1 = L3_1
L4_1(L5_1, L6_1)
L4_1 = RegisterNetEvent
L5_1 = "vms_garagesv2:cl:enterPassengerHouseGarage"
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  garageInteriorId = A0_2
  L1_2 = DoScreenFadeOut
  L2_2 = 350
  L1_2(L2_2)
  L1_2 = Citizen
  L1_2 = L1_2.Wait
  L2_2 = 1000
  L1_2(L2_2)
  L1_2 = spawnLocalVehicles
  L1_2()
  L1_2 = Citizen
  L1_2 = L1_2.Wait
  L2_2 = 150
  L1_2(L2_2)
  L1_2 = L2_1
  L1_2()
  L1_2 = Citizen
  L1_2 = L1_2.Wait
  L2_2 = 200
  L1_2(L2_2)
  L1_2 = DoScreenFadeIn
  L2_2 = 350
  L1_2(L2_2)
  L1_2 = GetVehiclePedIsIn
  L2_2 = PlayerPedId
  L2_2 = L2_2()
  L3_2 = false
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 then
    L2_2 = TaskLeaveVehicle
    L3_2 = PlayerPedId
    L3_2 = L3_2()
    L4_2 = L1_2
    L5_2 = 0
    L2_2(L3_2, L4_2, L5_2)
  end
end
L4_1(L5_1, L6_1)
L4_1 = RegisterNetEvent
L5_1 = "vms_garagesv2:cl:exitPassengerHouseGarage"
function L6_1()
  local L0_2, L1_2, L2_2
  L0_2 = DoScreenFadeOut
  L1_2 = 350
  L0_2(L1_2)
  L0_2 = Citizen
  L0_2 = L0_2.Wait
  L1_2 = 500
  L0_2(L1_2)
  L0_2 = removeLocalVehicles
  L1_2 = garageInteriorId
  L2_2 = true
  L0_2(L1_2, L2_2)
  L0_2 = Wait
  L1_2 = 20
  L0_2(L1_2)
  garageInteriorId = nil
  L0_2 = Citizen
  L0_2 = L0_2.Wait
  L1_2 = 500
  L0_2(L1_2)
  L0_2 = DoScreenFadeIn
  L1_2 = 350
  L0_2(L1_2)
end
L4_1(L5_1, L6_1)
--   ____  _____ ____ ______   ______ _____ _____ ____     ___     _____ _____  _______ ____    ______   __  _______  __    _    ____    _____ ____  ___ _  _____ _____ ___  _   _    _        _     _   _                  ____  _ _                       _                 _______ _____ _  __     _   _ ____      _ ____ _____ _____
--  |  _ \| ____/ ___|  _ \ \ / /  _ \_   _| ____|  _ \   ( _ )   |  ___|_ _\ \/ / ____|  _ \  | __ ) \ / / |  ___\ \/ /   / \  |  _ \  |  ___|  _ \|_ _| |/ /_ _|_   _/ _ \| \ | |  / \      | |__ | |_| |_ _ __  ___ _   / / /_| (_)___  ___ ___  _ __ __| |  __ _  __ _   / / ____|_   _| |/ /__ _| | | | ___|  __| | ___|___  |___  |
--  | | | |  _|| |   | |_) \ V /| |_) || | |  _| | | | |  / _ \/\ | |_   | | \  /|  _| | | | | |  _ \\ V /  | |_   \  /   / _ \ | |_) | | |_  | |_) || || ' / | |  | || | | |  \| | / _ \     | '_ \| __| __| '_ \/ __(_) / / / _` | / __|/ __/ _ \| '__/ _` | / _` |/ _` | / /|  _|   | | | ' // _` | |_| |___ \ / _` |___ \  / /   / /
--  | |_| | |__| |___|  _ < | | |  __/ | | | |___| |_| | | (_>  < |  _|  | | /  \| |___| |_| | | |_) || |   |  _|  /  \  / ___ \|  __/  |  _| |  _ < | || . \ | |  | || |_| | |\  |/ ___ \ _  | | | | |_| |_| |_) \__ \_ / / / (_| | \__ \ (_| (_) | | | (_| || (_| | (_| |/ / | |___  | | | . \ (_| |  _  |___) | (_| |___) |/ /   / /
--  |____/|_____\____|_| \_\|_| |_|    |_| |_____|____/   \___/\/ |_|   |___/_/\_\_____|____/  |____/ |_|   |_|   /_/\_\/_/   \_\_|     |_|   |_| \_\___|_|\_\___| |_| \___/|_| \_/_/   \_(_) |_| |_|\__|\__| .__/|___(_)_/_/ \__,_|_|___/\___\___/|_|  \__,_(_)__, |\__, /_/  |_____| |_| |_|\_\__, |_| |_|____/ \__,_|____//_/   /_/
--                                                                                                                                                                                                          |_|                                                |___/ |___/                         |_|
-- https://discord.gg/ETKqH5d577
