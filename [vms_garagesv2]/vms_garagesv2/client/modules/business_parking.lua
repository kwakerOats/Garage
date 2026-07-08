--   ____  _____ ____ ______   ______ _____ _____ ____     ___     _____ _____  _______ ____    ______   __  _______  __    _    ____    _____ ____  ___ _  _____ _____ ___  _   _    _        _     _   _                  ____  _ _                       _                 _______ _____ _  __     _   _ ____      _ ____ _____ _____
--  |  _ \| ____/ ___|  _ \ \ / /  _ \_   _| ____|  _ \   ( _ )   |  ___|_ _\ \/ / ____|  _ \  | __ ) \ / / |  ___\ \/ /   / \  |  _ \  |  ___|  _ \|_ _| |/ /_ _|_   _/ _ \| \ | |  / \      | |__ | |_| |_ _ __  ___ _   / / /_| (_)___  ___ ___  _ __ __| |  __ _  __ _   / / ____|_   _| |/ /__ _| | | | ___|  __| | ___|___  |___  |
--  | | | |  _|| |   | |_) \ V /| |_) || | |  _| | | | |  / _ \/\ | |_   | | \  /|  _| | | | | |  _ \\ V /  | |_   \  /   / _ \ | |_) | | |_  | |_) || || ' / | |  | || | | |  \| | / _ \     | '_ \| __| __| '_ \/ __(_) / / / _` | / __|/ __/ _ \| '__/ _` | / _` |/ _` | / /|  _|   | | | ' // _` | |_| |___ \ / _` |___ \  / /   / /
--  | |_| | |__| |___|  _ < | | |  __/ | | | |___| |_| | | (_>  < |  _|  | | /  \| |___| |_| | | |_) || |   |  _|  /  \  / ___ \|  __/  |  _| |  _ < | || . \ | |  | || |_| | |\  |/ ___ \ _  | | | | |_| |_| |_) \__ \_ / / / (_| | \__ \ (_| (_) | | | (_| || (_| | (_| |/ / | |___  | | | . \ (_| |  _  |___) | (_| |___) |/ /   / /
--  |____/|_____\____|_| \_\|_| |_|    |_| |_____|____/   \___/\/ |_|   |___/_/\_\_____|____/  |____/ |_|   |_|   /_/\_\/_/   \_\_|     |_|   |_| \_\___|_|\_\___| |_| \___/|_| \_/_/   \_(_) |_| |_|\__|\__| .__/|___(_)_/_/ \__,_|_|___/\___\___/|_|  \__,_(_)__, |\__, /_/  |_____| |_| |_|\_\__, |_| |_|____/ \__,_|____//_/   /_/
--                                                                                                                                                                                                          |_|                                                |___/ |___/                         |_|
-- https://discord.gg/ETKqH5d577

local L0_1, L1_1
L0_1 = {}
businessGarages = L0_1
function L0_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = Config
  L0_2 = L0_2.Garages
  L1_2 = garageZone
  L0_2 = L0_2[L1_2]
  L1_2 = 0
  L2_2 = 0
  L3_2 = 1
  L4_2 = L0_2.parkingSpaces
  L4_2 = #L4_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = L0_2.parkingSpaces
    L7_2 = L7_2[L6_2]
    L7_2 = L7_2.data
    if L7_2 then
      L7_2 = L0_2.parkingSpaces
      L7_2 = L7_2[L6_2]
      L7_2 = L7_2.data
      L7_2 = L7_2.isRented
      if L7_2 then
        L2_2 = L2_2 + 1
    end
    else
      L1_2 = L1_2 + 1
    end
  end
  L3_2 = SendNUIMessage
  L4_2 = {}
  L4_2.action = "openManagementMenu"
  L5_2 = playerName
  L4_2.playerName = L5_2
  L5_2 = businessGarages
  L6_2 = garageZone
  L5_2 = L5_2[L6_2]
  L4_2.garageData = L5_2
  L4_2.garageCfg = L0_2
  L4_2.freeParkingSpaces = L1_2
  L4_2.occupiedParkingSpaces = L2_2
  L3_2(L4_2)
  L3_2 = SetNuiFocus
  L4_2 = true
  L5_2 = true
  L3_2(L4_2, L5_2)
  currentMenu = "management"
end
openManagementMenu = L0_1
function L0_1()
  local L0_2, L1_2, L2_2
  L0_2 = library
  L0_2 = L0_2.StopAnimation
  L1_2 = PlayerPedId
  L1_2, L2_2 = L1_2()
  L0_2(L1_2, L2_2)
  L0_2 = SetNuiFocus
  L1_2 = false
  L2_2 = false
  L0_2(L1_2, L2_2)
  L0_2 = SendNUIMessage
  L1_2 = {}
  L1_2.action = "closeManagementMenu"
  L0_2(L1_2)
end
closeManagementMenu = L0_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2
  currentMenu = "purchase"
  L1_2 = SetNuiFocus
  L2_2 = true
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = SendNUIMessage
  L2_2 = {}
  L2_2.action = "openPurchaseMenu"
  L3_2 = A0_2.label
  L2_2.label = L3_2
  L3_2 = A0_2.parkingSpaces
  L3_2 = #L3_2
  L2_2.parking_spaces = L3_2
  L3_2 = A0_2.purchasePrice
  L2_2.price = L3_2
  L1_2(L2_2)
end
openPurchaseMenu = L0_1
function L0_1()
  local L0_2, L1_2, L2_2
  L0_2 = SetNuiFocus
  L1_2 = false
  L2_2 = false
  L0_2(L1_2, L2_2)
  L0_2 = SendNUIMessage
  L1_2 = {}
  L1_2.action = "closePurchaseMenu"
  L0_2(L1_2)
end
closePurchaseMenu = L0_1
function L0_1()
  local L0_2, L1_2
  L0_2 = Config
  L0_2 = L0_2.Garages
  L1_2 = garageZone
  L0_2 = L0_2[L1_2]
  L0_2 = L0_2.parkingSpaces
  if L0_2 then
    L0_2 = spawnLocalVehicles
    L0_2()
  end
  L0_2 = Citizen
  L0_2 = L0_2.CreateThread
  function L1_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3
    L0_3 = false
    L1_3 = false
    while true do
      L2_3 = garageZone
      if not L2_3 then
        break
      end
      L0_3 = false
      L2_3 = PlayerPedId
      L2_3 = L2_3()
      L3_3 = GetEntityCoords
      L4_3 = L2_3
      L3_3 = L3_3(L4_3)
      L4_3 = nil
      L5_3 = Config
      L5_3 = L5_3.Garages
      L6_3 = garageZone
      L5_3 = L5_3[L6_3]
      L6_3 = garageZone
      if L6_3 then
        L6_3 = GetVehiclePedIsIn
        L7_3 = L2_3
        L8_3 = false
        L6_3 = L6_3(L7_3, L8_3)
        L7_3 = GetPedInVehicleSeat
        L8_3 = L6_3
        L9_3 = -1
        L7_3 = L7_3(L8_3, L9_3)
        L7_3 = L7_3 == L2_3
        L8_3 = 0 ~= L6_3 and 0 ~= L7_3
        if not L8_3 then
          L9_3 = businessGarages
          L10_3 = garageZone
          L9_3 = L9_3[L10_3]
          if L9_3 then
            L9_3 = businessGarages
            L10_3 = garageZone
            L9_3 = L9_3[L10_3]
            L9_3 = L9_3.owner
            if L9_3 then
              L9_3 = businessGarages
              L10_3 = garageZone
              L9_3 = L9_3[L10_3]
              L9_3 = L9_3.owner
              L10_3 = CL
              L10_3 = L10_3.GetPlayerIdentifier
              L10_3 = L10_3()
              if L9_3 == L10_3 then
                L9_3 = L5_3.managementPoint
                L9_3 = L9_3.xyz
                L9_3 = L3_3 - L9_3
                L9_3 = #L9_3
                L10_3 = Config
                L10_3 = L10_3.Marker
                L10_3 = L10_3.management_business
                L11_3 = L10_3.distanceSee
                if L9_3 <= L11_3 then
                  L11_3 = Config
                  L11_3 = L11_3.UseMarkers
                  if L11_3 then
                    L11_3 = DrawMarker
                    L12_3 = L10_3.type
                    L13_3 = L5_3.managementPoint
                    L13_3 = L13_3.xyz
                    L14_3 = 0.0
                    L15_3 = 0.0
                    L16_3 = 0.0
                    L17_3 = L10_3.rotation
                    L18_3 = L10_3.scale
                    L19_3 = L10_3.color
                    L19_3 = L19_3[1]
                    L20_3 = L10_3.color
                    L20_3 = L20_3[2]
                    L21_3 = L10_3.color
                    L21_3 = L21_3[3]
                    L22_3 = L10_3.color
                    L22_3 = L22_3[4]
                    L23_3 = L10_3.bobUpAndDown
                    L24_3 = false
                    L25_3 = false
                    L26_3 = L10_3.rotate
                    L27_3 = nil
                    L28_3 = nil
                    L29_3 = nil
                    L11_3(L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3)
                  end
                  L11_3 = Config
                  L11_3 = L11_3.UseText3D
                  if L11_3 then
                    L11_3 = CL
                    L11_3 = L11_3.DrawText3D
                    L12_3 = L5_3.managementPoint
                    L12_3 = L12_3.xyz
                    L13_3 = TRANSLATE
                    L14_3 = "3dtext.management"
                    L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3 = L13_3(L14_3)
                    L11_3(L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3)
                  end
                  L11_3 = L10_3.distanceAccess
                  if L9_3 <= L11_3 then
                    L11_3 = CL
                    L11_3 = L11_3.TextUI
                    L11_3 = L11_3.Enabled
                    if L11_3 then
                      L11_3 = TRANSLATE
                      L12_3 = "textui.management"
                      L11_3 = L11_3(L12_3)
                      L0_3 = L11_3
                    else
                      L11_3 = Config
                      L11_3 = L11_3.Core
                      if "ESX" == L11_3 then
                        L11_3 = Config
                        L11_3 = L11_3.UseHelpNotify
                        if L11_3 then
                          L11_3 = ESX
                          L11_3 = L11_3.ShowHelpNotification
                          L12_3 = TRANSLATE
                          L13_3 = "help.management"
                          L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3 = L12_3(L13_3)
                          L11_3(L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3)
                        end
                      end
                    end
                    L11_3 = IsControlJustPressed
                    L12_3 = 0
                    L13_3 = 38
                    L11_3 = L11_3(L12_3, L13_3)
                    if L11_3 then
                      L11_3 = openManagementMenu
                      L11_3()
                    end
                  end
                end
              end
          end
          else
            L9_3 = L5_3.managementPoint
            L9_3 = L9_3.xyz
            L9_3 = L3_3 - L9_3
            L9_3 = #L9_3
            L10_3 = Config
            L10_3 = L10_3.Marker
            L10_3 = L10_3.management_business
            L11_3 = L10_3.distanceSee
            if L9_3 <= L11_3 then
              L11_3 = Config
              L11_3 = L11_3.UseMarkers
              if L11_3 then
                L11_3 = DrawMarker
                L12_3 = L10_3.type
                L13_3 = L5_3.managementPoint
                L13_3 = L13_3.xyz
                L14_3 = 0.0
                L15_3 = 0.0
                L16_3 = 0.0
                L17_3 = L10_3.rotation
                L18_3 = L10_3.scale
                L19_3 = L10_3.color
                L19_3 = L19_3[1]
                L20_3 = L10_3.color
                L20_3 = L20_3[2]
                L21_3 = L10_3.color
                L21_3 = L21_3[3]
                L22_3 = L10_3.color
                L22_3 = L22_3[4]
                L23_3 = L10_3.bobUpAndDown
                L24_3 = false
                L25_3 = false
                L26_3 = L10_3.rotate
                L27_3 = nil
                L28_3 = nil
                L29_3 = nil
                L11_3(L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3)
              end
              L11_3 = Config
              L11_3 = L11_3.UseText3D
              if L11_3 then
                L11_3 = CL
                L11_3 = L11_3.DrawText3D
                L12_3 = L5_3.managementPoint
                L12_3 = L12_3.xyz
                L13_3 = TRANSLATE
                L14_3 = "3dtext.purchase"
                L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3 = L13_3(L14_3)
                L11_3(L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3)
              end
              L11_3 = L10_3.distanceAccess
              if L9_3 <= L11_3 then
                L11_3 = CL
                L11_3 = L11_3.TextUI
                L11_3 = L11_3.Enabled
                if L11_3 then
                  L11_3 = TRANSLATE
                  L12_3 = "textui.purchase"
                  L11_3 = L11_3(L12_3)
                  L0_3 = L11_3
                else
                  L11_3 = Config
                  L11_3 = L11_3.Core
                  if "ESX" == L11_3 then
                    L11_3 = Config
                    L11_3 = L11_3.UseHelpNotify
                    if L11_3 then
                      L11_3 = ESX
                      L11_3 = L11_3.ShowHelpNotification
                      L12_3 = TRANSLATE
                      L13_3 = "help.purchase"
                      L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3 = L12_3(L13_3)
                      L11_3(L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3)
                    end
                  end
                end
                L11_3 = IsControlJustPressed
                L12_3 = 0
                L13_3 = 38
                L11_3 = L11_3(L12_3, L13_3)
                if L11_3 then
                  L11_3 = openPurchaseMenu
                  L12_3 = L5_3
                  L11_3(L12_3)
                end
              end
            end
          end
          L9_3 = L5_3.isPaid
          if not L9_3 then
            L9_3 = L5_3.isForRent
          end
          if L9_3 then
            L9_3 = L5_3.payStations
            if L9_3 then
              L9_3 = next
              L10_3 = L5_3.payStations
              L9_3 = L9_3(L10_3)
              if L9_3 then
                L9_3 = Config
                L9_3 = L9_3.Marker
                L9_3 = L9_3.pay_station
                L10_3 = ipairs
                L11_3 = L5_3.payStations
                L10_3, L11_3, L12_3, L13_3 = L10_3(L11_3)
                for L14_3, L15_3 in L10_3, L11_3, L12_3, L13_3 do
                  L16_3 = L15_3.xyz
                  L16_3 = L3_3 - L16_3
                  L16_3 = #L16_3
                  L17_3 = L9_3.distanceSee
                  if L16_3 <= L17_3 then
                    L17_3 = Config
                    L17_3 = L17_3.UseMarkers
                    if L17_3 then
                      L17_3 = DrawMarker
                      L18_3 = L9_3.type
                      L19_3 = L15_3.xyz
                      L20_3 = 0.0
                      L21_3 = 0.0
                      L22_3 = 0.0
                      L23_3 = L9_3.rotation
                      L23_3 = L23_3.xyz
                      L24_3 = L9_3.scale
                      L24_3 = L24_3.xyz
                      L25_3 = L9_3.color
                      L25_3 = L25_3[1]
                      L26_3 = L9_3.color
                      L26_3 = L26_3[2]
                      L27_3 = L9_3.color
                      L27_3 = L27_3[3]
                      L28_3 = L9_3.color
                      L28_3 = L28_3[4]
                      L29_3 = L9_3.bobUpAndDown
                      L30_3 = false
                      L31_3 = false
                      L32_3 = L9_3.rotate
                      L33_3 = L9_3.textureDict
                      L34_3 = L9_3.textureName
                      L35_3 = L9_3.drawOnEnts
                      L17_3(L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3)
                    end
                    L17_3 = Config
                    L17_3 = L17_3.UseText3D
                    if L17_3 then
                      L17_3 = CL
                      L17_3 = L17_3.DrawText3D
                      L18_3 = vec
                      L19_3 = L15_3.xyz
                      L18_3 = L18_3(L19_3)
                      L19_3 = TRANSLATE
                      L20_3 = "3dtext.pay_station"
                      L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3 = L19_3(L20_3)
                      L17_3(L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3)
                    end
                    L17_3 = L9_3.distanceAccess
                    if L16_3 <= L17_3 then
                      L17_3 = CL
                      L17_3 = L17_3.TextUI
                      L17_3 = L17_3.Enabled
                      if L17_3 then
                        L17_3 = TRANSLATE
                        L18_3 = "textui.pay_station"
                        L17_3 = L17_3(L18_3)
                        L0_3 = L17_3
                      else
                        L17_3 = Config
                        L17_3 = L17_3.Core
                        if "ESX" == L17_3 then
                          L17_3 = Config
                          L17_3 = L17_3.UseHelpNotify
                          if L17_3 then
                            L17_3 = ESX
                            L17_3 = L17_3.ShowHelpNotification
                            L18_3 = TRANSLATE
                            L19_3 = "help.pay_station"
                            L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3 = L18_3(L19_3)
                            L17_3(L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3)
                          end
                        end
                      end
                      L17_3 = IsControlJustPressed
                      L18_3 = 0
                      L19_3 = 38
                      L17_3 = L17_3(L18_3, L19_3)
                      if L17_3 then
                        L17_3 = L5_3.isForRent
                        if L17_3 then
                          L17_3 = openParkingRent
                          L18_3 = L5_3
                          L17_3(L18_3)
                        else
                          L17_3 = openPayStation
                          L18_3 = L5_3
                          L17_3(L18_3)
                        end
                      end
                    end
                  end
                end
              end
            end
          end
        else
          L9_3 = L5_3.parkingSpaces
          if L9_3 then
            L9_3 = pairs
            L10_3 = L5_3.parkingSpaces
            L9_3, L10_3, L11_3, L12_3 = L9_3(L10_3)
            for L13_3, L14_3 in L9_3, L10_3, L11_3, L12_3 do
              if L14_3 then
                L15_3 = L14_3.vehicleId
                if L15_3 then
                  L15_3 = L5_3.isPaid
                  if L15_3 then
                    L15_3 = Config
                    L15_3 = L15_3.NeedPayForParking
                    if L15_3 then
                      L15_3 = GetVehiclePedIsTryingToEnter
                      L16_3 = L2_3
                      L15_3 = L15_3(L16_3)
                      if L15_3 then
                        L16_3 = L14_3.vehicleId
                        if L15_3 == L16_3 then
                          L16_3 = library
                          L16_3 = L16_3.FormatParkedTime
                          L17_3 = tonumber
                          L18_3 = OS_TIME
                          L17_3 = L17_3(L18_3)
                          L18_3 = tonumber
                          L19_3 = L14_3.data
                          L19_3 = L19_3.parking_date
                          L18_3 = L18_3(L19_3)
                          L17_3 = L17_3 - L18_3
                          L16_3, L17_3 = L16_3(L17_3)
                          if not L17_3 then
                            L18_3 = ClearPedTasks
                            L19_3 = L2_3
                            L18_3(L19_3)
                            L18_3 = CL
                            L18_3 = L18_3.Notification
                            L19_3 = TRANSLATE
                            L20_3 = "notify.first_pay_for_parking"
                            L19_3 = L19_3(L20_3)
                            L20_3 = 4000
                            L21_3 = "info"
                            L18_3(L19_3, L20_3, L21_3)
                          end
                        end
                      end
                    end
                  end
                  L15_3 = Config
                  L15_3 = L15_3.DisplayParkingTimer
                  if L15_3 then
                    L15_3 = OS_TIME
                    if L15_3 then
                      L15_3 = L14_3.coords
                      L15_3 = L15_3.xyz
                      L15_3 = L3_3 - L15_3
                      L15_3 = #L15_3
                      if L15_3 <= 5.0 then
                        L16_3 = L14_3.data
                        L16_3 = L16_3.parking_date
                        if L16_3 then
                          L16_3 = library
                          L16_3 = L16_3.FormatParkedTime
                          L17_3 = tonumber
                          L18_3 = OS_TIME
                          L17_3 = L17_3(L18_3)
                          L18_3 = tonumber
                          L19_3 = L14_3.data
                          L19_3 = L19_3.parking_date
                          L18_3 = L18_3(L19_3)
                          L17_3 = L17_3 - L18_3
                          L16_3, L17_3 = L16_3(L17_3)
                          L18_3 = CL
                          L18_3 = L18_3.DrawText3D
                          L19_3 = vec
                          L20_3 = L14_3.coords
                          L20_3 = L20_3.x
                          L21_3 = L14_3.coords
                          L21_3 = L21_3.y
                          L22_3 = L14_3.coords
                          L22_3 = L22_3.z
                          L22_3 = L22_3 + 1.55
                          L19_3 = L19_3(L20_3, L21_3, L22_3)
                          L20_3 = L16_3
                          L21_3 = Config
                          L21_3 = L21_3.ParkingTimerScale
                          L18_3(L19_3, L20_3, L21_3)
                        end
                      end
                    end
                  end
                  if 0 ~= L6_3 then
                    L15_3 = L14_3.vehicleId
                    if L6_3 == L15_3 then
                      L15_3 = Citizen
                      L15_3 = L15_3.Wait
                      L16_3 = 300
                      L15_3(L16_3)
                      L15_3 = spawnGlobalVehicle
                      L16_3 = L13_3
                      L15_3(L16_3)
                      L15_3 = Citizen
                      L15_3 = L15_3.Wait
                      L16_3 = 1000
                      L15_3(L16_3)
                    end
                  end
              end
              elseif 0 ~= L6_3 and L7_3 then
                L15_3 = L14_3.coords
                L15_3 = L15_3.xyz
                L15_3 = L3_3 - L15_3
                L15_3 = #L15_3
                L16_3 = Config
                L16_3 = L16_3.Marker
                L16_3 = L16_3.parking_space
                L17_3 = L16_3.distanceSee
                if L15_3 <= L17_3 then
                  L17_3 = L5_3.isForRent
                  if L17_3 then
                    L17_3 = library
                    L17_3 = L17_3.IsMyParkingSpace
                    L18_3 = L5_3
                    L19_3 = L14_3
                    L17_3 = L17_3(L18_3, L19_3)
                    if L17_3 then
                      L17_3 = Config
                      L17_3 = L17_3.UseMarkers
                      if L17_3 then
                        L17_3 = DrawMarker
                        L18_3 = L16_3.type
                        L19_3 = L14_3.coords
                        L19_3 = L19_3.x
                        L20_3 = L14_3.coords
                        L20_3 = L20_3.y
                        L21_3 = L14_3.coords
                        L21_3 = L21_3.z
                        L21_3 = L21_3 + 1.2
                        L22_3 = 0.0
                        L23_3 = 0.0
                        L24_3 = 0.0
                        L25_3 = L16_3.rotation
                        L25_3 = L25_3.xyz
                        L26_3 = L16_3.scale
                        L26_3 = L26_3.xyz
                        L27_3 = L16_3.color
                        L27_3 = L27_3[1]
                        L28_3 = L16_3.color
                        L28_3 = L28_3[2]
                        L29_3 = L16_3.color
                        L29_3 = L29_3[3]
                        L30_3 = L16_3.color
                        L30_3 = L30_3[4]
                        L31_3 = L16_3.bobUpAndDown
                        L32_3 = false
                        L33_3 = false
                        L34_3 = L16_3.rotate
                        L35_3 = L16_3.textureDict
                        L36_3 = L16_3.textureName
                        L37_3 = L16_3.drawOnEnts
                        L17_3(L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3)
                      end
                      L17_3 = Config
                      L17_3 = L17_3.UseText3D
                      if L17_3 then
                        L17_3 = CL
                        L17_3 = L17_3.DrawText3D
                        L18_3 = vec
                        L19_3 = L14_3.coords
                        L19_3 = L19_3.x
                        L20_3 = L14_3.coords
                        L20_3 = L20_3.y
                        L21_3 = L14_3.coords
                        L21_3 = L21_3.z
                        L21_3 = L21_3 + 1.7
                        L18_3 = L18_3(L19_3, L20_3, L21_3)
                        L19_3 = TRANSLATE
                        L20_3 = "3dtext.park"
                        L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3 = L19_3(L20_3)
                        L17_3(L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3)
                      end
                      L17_3 = L16_3.distanceAccess
                      if L15_3 <= L17_3 then
                        L17_3 = CL
                        L17_3 = L17_3.TextUI
                        L17_3 = L17_3.Enabled
                        if L17_3 then
                          L17_3 = TRANSLATE
                          L18_3 = "textui.park"
                          L17_3 = L17_3(L18_3)
                          L0_3 = L17_3
                        else
                          L17_3 = Config
                          L17_3 = L17_3.Core
                          if "ESX" == L17_3 then
                            L17_3 = Config
                            L17_3 = L17_3.UseHelpNotify
                            if L17_3 then
                              L17_3 = ESX
                              L17_3 = L17_3.ShowHelpNotification
                              L18_3 = TRANSLATE
                              L19_3 = "help.park"
                              L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3 = L18_3(L19_3)
                              L17_3(L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3)
                            end
                          end
                        end
                        L17_3 = IsControlJustPressed
                        L18_3 = 0
                        L19_3 = 38
                        L17_3 = L17_3(L18_3, L19_3)
                        if L17_3 then
                          L17_3 = parkVehicle
                          L18_3 = L6_3
                          L19_3 = garageZone
                          L20_3 = L13_3
                          L17_3(L18_3, L19_3, L20_3)
                          L17_3 = Citizen
                          L17_3 = L17_3.Wait
                          L18_3 = 25
                          L17_3(L18_3)
                        end
                      end
                    end
                  else
                    L17_3 = Config
                    L17_3 = L17_3.UseMarkers
                    if L17_3 then
                      L17_3 = DrawMarker
                      L18_3 = L16_3.type
                      L19_3 = L14_3.coords
                      L19_3 = L19_3.x
                      L20_3 = L14_3.coords
                      L20_3 = L20_3.y
                      L21_3 = L14_3.coords
                      L21_3 = L21_3.z
                      L21_3 = L21_3 + 1.2
                      L22_3 = 0.0
                      L23_3 = 0.0
                      L24_3 = 0.0
                      L25_3 = L16_3.rotation
                      L25_3 = L25_3.xyz
                      L26_3 = L16_3.scale
                      L26_3 = L26_3.xyz
                      L27_3 = L16_3.color
                      L27_3 = L27_3[1]
                      L28_3 = L16_3.color
                      L28_3 = L28_3[2]
                      L29_3 = L16_3.color
                      L29_3 = L29_3[3]
                      L30_3 = L16_3.color
                      L30_3 = L30_3[4]
                      L31_3 = L16_3.bobUpAndDown
                      L32_3 = false
                      L33_3 = false
                      L34_3 = L16_3.rotate
                      L35_3 = L16_3.textureDict
                      L36_3 = L16_3.textureName
                      L37_3 = L16_3.drawOnEnts
                      L17_3(L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3)
                    end
                    L17_3 = Config
                    L17_3 = L17_3.UseText3D
                    if L17_3 then
                      L17_3 = CL
                      L17_3 = L17_3.DrawText3D
                      L18_3 = vec
                      L19_3 = L14_3.coords
                      L19_3 = L19_3.x
                      L20_3 = L14_3.coords
                      L20_3 = L20_3.y
                      L21_3 = L14_3.coords
                      L21_3 = L21_3.z
                      L21_3 = L21_3 + 1.7
                      L18_3 = L18_3(L19_3, L20_3, L21_3)
                      L19_3 = TRANSLATE
                      L20_3 = "3dtext.park"
                      L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3 = L19_3(L20_3)
                      L17_3(L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3)
                    end
                    L17_3 = L16_3.distanceAccess
                    if L15_3 <= L17_3 then
                      L17_3 = CL
                      L17_3 = L17_3.TextUI
                      L17_3 = L17_3.Enabled
                      if L17_3 then
                        L17_3 = TRANSLATE
                        L18_3 = "textui.park"
                        L17_3 = L17_3(L18_3)
                        L0_3 = L17_3
                      else
                        L17_3 = Config
                        L17_3 = L17_3.Core
                        if "ESX" == L17_3 then
                          L17_3 = Config
                          L17_3 = L17_3.UseHelpNotify
                          if L17_3 then
                            L17_3 = ESX
                            L17_3 = L17_3.ShowHelpNotification
                            L18_3 = TRANSLATE
                            L19_3 = "help.park"
                            L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3 = L18_3(L19_3)
                            L17_3(L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3)
                          end
                        end
                      end
                      L17_3 = IsControlJustPressed
                      L18_3 = 0
                      L19_3 = 38
                      L17_3 = L17_3(L18_3, L19_3)
                      if L17_3 then
                        L17_3 = parkVehicle
                        L18_3 = L6_3
                        L19_3 = garageZone
                        L20_3 = L13_3
                        L17_3(L18_3, L19_3, L20_3)
                        L17_3 = Citizen
                        L17_3 = L17_3.Wait
                        L18_3 = 25
                        L17_3(L18_3)
                      end
                    end
                  end
                end
              end
            end
          end
        end
      end
      if L0_3 and not L1_3 then
        L1_3 = true
        L6_3 = CL
        L6_3 = L6_3.TextUI
        L6_3 = L6_3.Open
        L7_3 = L0_3
        L6_3(L7_3)
      elseif not L0_3 and L1_3 then
        L1_3 = false
        L6_3 = CL
        L6_3 = L6_3.TextUI
        L6_3 = L6_3.Close
        L6_3()
      end
      L6_3 = Citizen
      L6_3 = L6_3.Wait
      L7_3 = 1
      L6_3(L7_3)
    end
  end
  L0_2(L1_2)
end
enteredBusinessParkingZone = L0_1
--   ____  _____ ____ ______   ______ _____ _____ ____     ___     _____ _____  _______ ____    ______   __  _______  __    _    ____    _____ ____  ___ _  _____ _____ ___  _   _    _        _     _   _                  ____  _ _                       _                 _______ _____ _  __     _   _ ____      _ ____ _____ _____
--  |  _ \| ____/ ___|  _ \ \ / /  _ \_   _| ____|  _ \   ( _ )   |  ___|_ _\ \/ / ____|  _ \  | __ ) \ / / |  ___\ \/ /   / \  |  _ \  |  ___|  _ \|_ _| |/ /_ _|_   _/ _ \| \ | |  / \      | |__ | |_| |_ _ __  ___ _   / / /_| (_)___  ___ ___  _ __ __| |  __ _  __ _   / / ____|_   _| |/ /__ _| | | | ___|  __| | ___|___  |___  |
--  | | | |  _|| |   | |_) \ V /| |_) || | |  _| | | | |  / _ \/\ | |_   | | \  /|  _| | | | | |  _ \\ V /  | |_   \  /   / _ \ | |_) | | |_  | |_) || || ' / | |  | || | | |  \| | / _ \     | '_ \| __| __| '_ \/ __(_) / / / _` | / __|/ __/ _ \| '__/ _` | / _` |/ _` | / /|  _|   | | | ' // _` | |_| |___ \ / _` |___ \  / /   / /
--  | |_| | |__| |___|  _ < | | |  __/ | | | |___| |_| | | (_>  < |  _|  | | /  \| |___| |_| | | |_) || |   |  _|  /  \  / ___ \|  __/  |  _| |  _ < | || . \ | |  | || |_| | |\  |/ ___ \ _  | | | | |_| |_| |_) \__ \_ / / / (_| | \__ \ (_| (_) | | | (_| || (_| | (_| |/ / | |___  | | | . \ (_| |  _  |___) | (_| |___) |/ /   / /
--  |____/|_____\____|_| \_\|_| |_|    |_| |_____|____/   \___/\/ |_|   |___/_/\_\_____|____/  |____/ |_|   |_|   /_/\_\/_/   \_\_|     |_|   |_| \_\___|_|\_\___| |_| \___/|_| \_/_/   \_(_) |_| |_|\__|\__| .__/|___(_)_/_/ \__,_|_|___/\___\___/|_|  \__,_(_)__, |\__, /_/  |_____| |_| |_|\_\__, |_| |_|____/ \__,_|____//_/   /_/
--                                                                                                                                                                                                          |_|                                                |___/ |___/                         |_|
-- https://discord.gg/ETKqH5d577
