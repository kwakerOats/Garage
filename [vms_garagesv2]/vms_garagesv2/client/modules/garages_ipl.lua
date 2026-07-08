--   ____  _____ ____ ______   ______ _____ _____ ____     ___     _____ _____  _______ ____    ______   __  _______  __    _    ____    _____ ____  ___ _  _____ _____ ___  _   _    _        _     _   _                  ____  _ _                       _                 _______ _____ _  __     _   _ ____      _ ____ _____ _____
--  |  _ \| ____/ ___|  _ \ \ / /  _ \_   _| ____|  _ \   ( _ )   |  ___|_ _\ \/ / ____|  _ \  | __ ) \ / / |  ___\ \/ /   / \  |  _ \  |  ___|  _ \|_ _| |/ /_ _|_   _/ _ \| \ | |  / \      | |__ | |_| |_ _ __  ___ _   / / /_| (_)___  ___ ___  _ __ __| |  __ _  __ _   / / ____|_   _| |/ /__ _| | | | ___|  __| | ___|___  |___  |
--  | | | |  _|| |   | |_) \ V /| |_) || | |  _| | | | |  / _ \/\ | |_   | | \  /|  _| | | | | |  _ \\ V /  | |_   \  /   / _ \ | |_) | | |_  | |_) || || ' / | |  | || | | |  \| | / _ \     | '_ \| __| __| '_ \/ __(_) / / / _` | / __|/ __/ _ \| '__/ _` | / _` |/ _` | / /|  _|   | | | ' // _` | |_| |___ \ / _` |___ \  / /   / /
--  | |_| | |__| |___|  _ < | | |  __/ | | | |___| |_| | | (_>  < |  _|  | | /  \| |___| |_| | | |_) || |   |  _|  /  \  / ___ \|  __/  |  _| |  _ < | || . \ | |  | || |_| | |\  |/ ___ \ _  | | | | |_| |_| |_) \__ \_ / / / (_| | \__ \ (_| (_) | | | (_| || (_| | (_| |/ / | |___  | | | . \ (_| |  _  |___) | (_| |___) |/ /   / /
--  |____/|_____\____|_| \_\|_| |_|    |_| |_____|____/   \___/\/ |_|   |___/_/\_\_____|____/  |____/ |_|   |_|   /_/\_\/_/   \_\_|     |_|   |_| \_\___|_|\_\___| |_| \___/|_| \_/_/   \_(_) |_| |_|\__|\__| .__/|___(_)_/_/ \__,_|_|___/\___\___/|_|  \__,_(_)__, |\__, /_/  |_____| |_| |_|\_\__, |_| |_|____/ \__,_|____//_/   /_/
--                                                                                                                                                                                                          |_|                                                |___/ |___/                         |_|
-- https://discord.gg/ETKqH5d577

local L0_1, L1_1, L2_1, L3_1
garageInteriorId = nil
isEnteringToIPL = false
function L0_1()
  local L0_2, L1_2
  L0_2 = Citizen
  L0_2 = L0_2.CreateThread
  function L1_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3
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
        L9_3 = L5_3.hasAccess
        if not L9_3 then
          L9_3 = true
          if L9_3 then
            goto lbl_52
          end
        end
        L9_3 = L5_3.hasAccess
        L10_3 = PlayerData
        L11_3 = myIdentifier
        L9_3 = L9_3(L10_3, L11_3)
        L9_3 = true == L9_3
        ::lbl_52::
        if L8_3 then
          L10_3 = Config
          L10_3 = L10_3.Marker
          L10_3 = L10_3.enter_garage_veh
          if L10_3 then
            goto lbl_62
          end
        end
        L10_3 = Config
        L10_3 = L10_3.Marker
        L10_3 = L10_3.enter_garage
        ::lbl_62::
        if L8_3 then
          L11_3 = L5_3.interior
          L11_3 = L11_3.enterWithVehicle
          if L11_3 then
            goto lbl_70
          end
        end
        L11_3 = L5_3.interior
        L11_3 = L11_3.enterOnFoot
        ::lbl_70::
        L12_3 = L11_3.xyz
        L12_3 = L3_3 - L12_3
        L12_3 = #L12_3
        L13_3 = L10_3.distanceSee
        if L12_3 <= L13_3 then
          L13_3 = library
          L13_3 = L13_3.IsJobAllowed
          L14_3 = L5_3
          L13_3 = L13_3(L14_3)
          if L13_3 then
            L13_3 = library
            L13_3 = L13_3.IsGangAllowed
            L14_3 = L5_3
            L13_3 = L13_3(L14_3)
            if L13_3 then
              L13_3 = L9_3
            end
          end
          if L13_3 then
            L14_3 = Config
            L14_3 = L14_3.UseMarkers
            if L14_3 then
              L14_3 = DrawMarker
              L15_3 = L10_3.type
              L16_3 = L11_3.xyz
              L17_3 = 0.0
              L18_3 = 0.0
              L19_3 = 0.0
              L20_3 = L10_3.rotation
              L20_3 = L20_3.xyz
              L21_3 = L10_3.scale
              L21_3 = L21_3.xyz
              L22_3 = L10_3.color
              L22_3 = L22_3[1]
              L23_3 = L10_3.color
              L23_3 = L23_3[2]
              L24_3 = L10_3.color
              L24_3 = L24_3[3]
              L25_3 = L10_3.color
              L25_3 = L25_3[4]
              L26_3 = L10_3.bobUpAndDown
              L27_3 = false
              L28_3 = false
              L29_3 = L10_3.rotate
              L30_3 = L10_3.textureDict
              L31_3 = L10_3.textureName
              L32_3 = L10_3.drawOnEnts
              L14_3(L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3)
            end
            L14_3 = Config
            L14_3 = L14_3.UseText3D
            if L14_3 then
              L14_3 = CL
              L14_3 = L14_3.DrawText3D
              L15_3 = vec
              L16_3 = L11_3.xyz
              L15_3 = L15_3(L16_3)
              L16_3 = TRANSLATE
              if L8_3 then
                L17_3 = "3dtext.enter_the_garage_with_veh"
                if L17_3 then
                  goto lbl_138
                end
              end
              L17_3 = "3dtext.enter_the_garage"
              ::lbl_138::
              L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3 = L16_3(L17_3)
              L14_3(L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3)
            end
            L14_3 = L10_3.distanceAccess
            if L12_3 <= L14_3 then
              L14_3 = CL
              L14_3 = L14_3.TextUI
              L14_3 = L14_3.Enabled
              if L14_3 then
                L14_3 = TRANSLATE
                if L8_3 then
                  L15_3 = "textui.enter_the_garage_with_veh"
                  if L15_3 then
                    goto lbl_155
                  end
                end
                L15_3 = "textui.enter_the_garage"
                ::lbl_155::
                L14_3 = L14_3(L15_3)
                L0_3 = L14_3
              else
                L14_3 = Config
                L14_3 = L14_3.Core
                if "ESX" == L14_3 then
                  L14_3 = Config
                  L14_3 = L14_3.UseHelpNotify
                  if L14_3 then
                    L14_3 = ESX
                    L14_3 = L14_3.ShowHelpNotification
                    L15_3 = TRANSLATE
                    if L8_3 then
                      L16_3 = "help.enter_the_garage_with_veh"
                      if L16_3 then
                        goto lbl_175
                      end
                    end
                    L16_3 = "help.enter_the_garage"
                    ::lbl_175::
                    L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3 = L15_3(L16_3)
                    L14_3(L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3)
                  end
                end
              end
              L14_3 = IsControlJustPressed
              L15_3 = 0
              L16_3 = 38
              L14_3 = L14_3(L15_3, L16_3)
              if L14_3 then
                isEnteringToIPL = true
                L14_3 = garageZone
                garageInteriorId = L14_3
                L14_3 = garageInteriorId
                if not L14_3 then
                  L14_3 = Citizen
                  L14_3 = L14_3.Wait
                  L15_3 = 100
                  L14_3(L15_3)
                  L14_3 = garageZone
                  garageInteriorId = L14_3
                  L14_3 = Citizen
                  L14_3 = L14_3.Wait
                  L15_3 = 10
                  L14_3(L15_3)
                  L14_3 = garageZone
                  garageInteriorId = L14_3
                end
                L14_3 = enterInteriorGarage
                L15_3 = L6_3 or L15_3
                if not L8_3 or not L6_3 then
                  L15_3 = nil
                end
                L14_3(L15_3)
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
enteredInteriorGarageZone = L0_1
function L0_1()
  local L0_2, L1_2
  L0_2 = Citizen
  L0_2 = L0_2.CreateThread
  function L1_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3, L38_3, L39_3, L40_3, L41_3
    L0_3 = false
    L1_3 = false
    L2_3 = garageInteriorId
    if not L2_3 then
      L2_3 = library
      L2_3 = L2_3.Debug
      L3_3 = "Attempt to enter garage unsuccessful, garage: %s"
      L4_3 = L3_3
      L3_3 = L3_3.format
      L5_3 = garageInteriorId
      L3_3 = L3_3(L4_3, L5_3)
      L4_3 = "error"
      L2_3(L3_3, L4_3)
    else
      L2_3 = library
      L2_3 = L2_3.Debug
      L3_3 = "Entering to the garage: %s"
      L4_3 = L3_3
      L3_3 = L3_3.format
      L5_3 = garageInteriorId
      L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3, L38_3, L39_3, L40_3, L41_3 = L3_3(L4_3, L5_3)
      L2_3(L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3, L38_3, L39_3, L40_3, L41_3)
    end
    while true do
      L2_3 = garageInteriorId
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
      L6_3 = garageInteriorId
      L5_3 = L5_3[L6_3]
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
      if L8_3 then
        L9_3 = Config
        L9_3 = L9_3.Marker
        L9_3 = L9_3.exit_garage_veh
        if L9_3 then
          goto lbl_64
        end
      end
      L9_3 = Config
      L9_3 = L9_3.Marker
      L9_3 = L9_3.exit_garage
      ::lbl_64::
      if L8_3 then
        L10_3 = L5_3.interior
        L10_3 = L10_3.exitWithVehicle
        if L10_3 then
          goto lbl_72
        end
      end
      L10_3 = L5_3.interior
      L10_3 = L10_3.exitOnFoot
      ::lbl_72::
      L11_3 = L10_3.xyz
      L11_3 = L3_3 - L11_3
      L11_3 = #L11_3
      L12_3 = L9_3.distanceSee
      if L11_3 <= L12_3 then
        L12_3 = Config
        L12_3 = L12_3.UseMarkers
        if L12_3 then
          L12_3 = DrawMarker
          L13_3 = L9_3.type
          L14_3 = L10_3.xyz
          L15_3 = 0.0
          L16_3 = 0.0
          L17_3 = 0.0
          L18_3 = L9_3.rotation
          L18_3 = L18_3.xyz
          L19_3 = L9_3.scale
          L19_3 = L19_3.xyz
          L20_3 = L9_3.color
          L20_3 = L20_3[1]
          L21_3 = L9_3.color
          L21_3 = L21_3[2]
          L22_3 = L9_3.color
          L22_3 = L22_3[3]
          L23_3 = L9_3.color
          L23_3 = L23_3[4]
          L24_3 = L9_3.bobUpAndDown
          L25_3 = false
          L26_3 = false
          L27_3 = L9_3.rotate
          L28_3 = L9_3.textureDict
          L29_3 = L9_3.textureName
          L30_3 = L9_3.drawOnEnts
          L12_3(L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3)
        end
        L12_3 = Config
        L12_3 = L12_3.UseText3D
        if L12_3 then
          L12_3 = CL
          L12_3 = L12_3.DrawText3D
          L13_3 = vec
          L14_3 = L10_3.xyz
          L13_3 = L13_3(L14_3)
          L14_3 = TRANSLATE
          if L8_3 then
            L15_3 = "3dtext.exit_the_garage_with_veh"
            if L15_3 then
              goto lbl_125
            end
          end
          L15_3 = "3dtext.exit_the_garage"
          ::lbl_125::
          L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3, L38_3, L39_3, L40_3, L41_3 = L14_3(L15_3)
          L12_3(L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3, L38_3, L39_3, L40_3, L41_3)
        end
        L12_3 = L9_3.distanceAccess
        if L11_3 <= L12_3 then
          L12_3 = CL
          L12_3 = L12_3.TextUI
          L12_3 = L12_3.Enabled
          if L12_3 then
            L12_3 = TRANSLATE
            if L8_3 then
              L13_3 = "textui.exit_the_garage_with_veh"
              if L13_3 then
                goto lbl_142
              end
            end
            L13_3 = "textui.exit_the_garage"
            ::lbl_142::
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
                if L8_3 then
                  L14_3 = "help.exit_the_garage_with_veh"
                  if L14_3 then
                    goto lbl_162
                  end
                end
                L14_3 = "help.exit_the_garage"
                ::lbl_162::
                L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3, L38_3, L39_3, L40_3, L41_3 = L13_3(L14_3)
                L12_3(L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3, L38_3, L39_3, L40_3, L41_3)
              end
            end
          end
          L12_3 = IsControlJustPressed
          L13_3 = 0
          L14_3 = 38
          L12_3 = L12_3(L13_3, L14_3)
          if L12_3 then
            L12_3 = exitInteriorGarage
            L13_3 = L6_3 or L13_3
            if not L8_3 or not L6_3 then
              L13_3 = nil
            end
            L12_3(L13_3)
          end
        end
      end
      L12_3 = L5_3.parkingSpaces
      if L12_3 then
        L12_3 = pairs
        L13_3 = L5_3.parkingSpaces
        L12_3, L13_3, L14_3, L15_3 = L12_3(L13_3)
        for L16_3, L17_3 in L12_3, L13_3, L14_3, L15_3 do
          L18_3 = L17_3.hasAccess
          if not L18_3 then
            L18_3 = true
            if L18_3 then
              goto lbl_198
            end
          end
          L18_3 = L17_3.hasAccess
          L19_3 = PlayerData
          L20_3 = myIdentifier
          L18_3 = L18_3(L19_3, L20_3)
          L18_3 = true == L18_3
          ::lbl_198::
          if L18_3 then
            if L17_3 then
              L19_3 = L17_3.vehicleId
              if L19_3 then
                L19_3 = L5_3.isPaid
                if L19_3 then
                  L19_3 = Config
                  L19_3 = L19_3.NeedPayForParking
                  if L19_3 then
                    L19_3 = GetVehiclePedIsTryingToEnter
                    L20_3 = L2_3
                    L19_3 = L19_3(L20_3)
                    if L19_3 then
                      L20_3 = L17_3.vehicleId
                      if L19_3 == L20_3 then
                        L20_3 = library
                        L20_3 = L20_3.FormatParkedTime
                        L21_3 = tonumber
                        L22_3 = OS_TIME
                        L21_3 = L21_3(L22_3)
                        L22_3 = tonumber
                        L23_3 = L17_3.data
                        L23_3 = L23_3.parking_date
                        L22_3 = L22_3(L23_3)
                        L21_3 = L21_3 - L22_3
                        L20_3, L21_3 = L20_3(L21_3)
                        if not L21_3 then
                          L22_3 = ClearPedTasks
                          L23_3 = L2_3
                          L22_3(L23_3)
                          L22_3 = CL
                          L22_3 = L22_3.Notification
                          L23_3 = TRANSLATE
                          L24_3 = "notify.first_pay_for_parking"
                          L23_3 = L23_3(L24_3)
                          L24_3 = 4000
                          L25_3 = "info"
                          L22_3(L23_3, L24_3, L25_3)
                        end
                      end
                    end
                  end
                end
                L19_3 = Config
                L19_3 = L19_3.DisplayParkingTimer
                if L19_3 then
                  L19_3 = OS_TIME
                  if L19_3 then
                    L19_3 = L17_3.coords
                    L19_3 = L19_3.xyz
                    L19_3 = L3_3 - L19_3
                    L19_3 = #L19_3
                    if L19_3 <= 5.0 then
                      L20_3 = L17_3.data
                      L20_3 = L20_3.parking_date
                      if L20_3 then
                        L20_3 = library
                        L20_3 = L20_3.FormatParkedTime
                        L21_3 = tonumber
                        L22_3 = OS_TIME
                        L21_3 = L21_3(L22_3)
                        L22_3 = tonumber
                        L23_3 = L17_3.data
                        L23_3 = L23_3.parking_date
                        L22_3 = L22_3(L23_3)
                        L21_3 = L21_3 - L22_3
                        L20_3, L21_3 = L20_3(L21_3)
                        L22_3 = CL
                        L22_3 = L22_3.DrawText3D
                        L23_3 = vec
                        L24_3 = L17_3.coords
                        L24_3 = L24_3.x
                        L25_3 = L17_3.coords
                        L25_3 = L25_3.y
                        L26_3 = L17_3.coords
                        L26_3 = L26_3.z
                        L26_3 = L26_3 + 1.55
                        L23_3 = L23_3(L24_3, L25_3, L26_3)
                        L24_3 = L20_3
                        L25_3 = Config
                        L25_3 = L25_3.ParkingTimerScale
                        L22_3(L23_3, L24_3, L25_3)
                      end
                    end
                  end
                end
                if 0 ~= L6_3 then
                  L19_3 = L17_3.vehicleId
                  if L6_3 == L19_3 then
                    L19_3 = Config
                    L19_3 = L19_3.AllowLockpickParkedVehicle
                    if not L19_3 then
                      L19_3 = isPlayerAllowedToGetVehicle
                      L20_3 = L17_3.data
                      L19_3 = L19_3(L20_3)
                      if not L19_3 then
                        L19_3 = Citizen
                        L19_3 = L19_3.Wait
                        L20_3 = 100
                        L19_3(L20_3)
                        L19_3 = TaskLeaveVehicle
                        L20_3 = PlayerPedId
                        L20_3 = L20_3()
                        L21_3 = L6_3
                        L22_3 = 1
                        L19_3(L20_3, L21_3, L22_3)
                        L19_3 = Citizen
                        L19_3 = L19_3.Wait
                        L20_3 = 700
                        L19_3(L20_3)
                        break
                      end
                    end
                    L19_3 = Citizen
                    L19_3 = L19_3.Wait
                    L20_3 = 300
                    L19_3(L20_3)
                    L19_3 = spawnGlobalVehicle
                    L20_3 = L16_3
                    L19_3(L20_3)
                    L19_3 = Citizen
                    L19_3 = L19_3.Wait
                    L20_3 = 1000
                    L19_3(L20_3)
                  end
                end
            end
            elseif 0 ~= L6_3 and L7_3 then
              L19_3 = L17_3.coords
              L19_3 = L19_3.xyz
              L19_3 = L3_3 - L19_3
              L19_3 = #L19_3
              L20_3 = Config
              L20_3 = L20_3.Marker
              L20_3 = L20_3.parking_space
              L21_3 = L20_3.distanceSee
              if L19_3 <= L21_3 then
                L21_3 = L5_3.isForRent
                if L21_3 then
                  L21_3 = library
                  L21_3 = L21_3.IsMyParkingSpace
                  L22_3 = L5_3
                  L23_3 = L17_3
                  L21_3 = L21_3(L22_3, L23_3)
                  if L21_3 then
                    L21_3 = Config
                    L21_3 = L21_3.UseMarkers
                    if L21_3 then
                      L21_3 = DrawMarker
                      L22_3 = L20_3.type
                      L23_3 = L17_3.coords
                      L23_3 = L23_3.x
                      L24_3 = L17_3.coords
                      L24_3 = L24_3.y
                      L25_3 = L17_3.coords
                      L25_3 = L25_3.z
                      L25_3 = L25_3 + 1.2
                      L26_3 = 0.0
                      L27_3 = 0.0
                      L28_3 = 0.0
                      L29_3 = L20_3.rotation
                      L29_3 = L29_3.xyz
                      L30_3 = L20_3.scale
                      L30_3 = L30_3.xyz
                      L31_3 = L20_3.color
                      L31_3 = L31_3[1]
                      L32_3 = L20_3.color
                      L32_3 = L32_3[2]
                      L33_3 = L20_3.color
                      L33_3 = L33_3[3]
                      L34_3 = L20_3.color
                      L34_3 = L34_3[4]
                      L35_3 = L20_3.bobUpAndDown
                      L36_3 = false
                      L37_3 = false
                      L38_3 = L20_3.rotate
                      L39_3 = L20_3.textureDict
                      L40_3 = L20_3.textureName
                      L41_3 = L20_3.drawOnEnts
                      L21_3(L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3, L38_3, L39_3, L40_3, L41_3)
                    end
                    L21_3 = Config
                    L21_3 = L21_3.UseText3D
                    if L21_3 then
                      L21_3 = CL
                      L21_3 = L21_3.DrawText3D
                      L22_3 = vec
                      L23_3 = L17_3.coords
                      L23_3 = L23_3.x
                      L24_3 = L17_3.coords
                      L24_3 = L24_3.y
                      L25_3 = L17_3.coords
                      L25_3 = L25_3.z
                      L25_3 = L25_3 + 1.7
                      L22_3 = L22_3(L23_3, L24_3, L25_3)
                      L23_3 = TRANSLATE
                      L24_3 = "3dtext.park"
                      L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3, L38_3, L39_3, L40_3, L41_3 = L23_3(L24_3)
                      L21_3(L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3, L38_3, L39_3, L40_3, L41_3)
                    end
                    L21_3 = L20_3.distanceAccess
                    if L19_3 <= L21_3 then
                      L21_3 = CL
                      L21_3 = L21_3.TextUI
                      L21_3 = L21_3.Enabled
                      if L21_3 then
                        L21_3 = TRANSLATE
                        L22_3 = "textui.park"
                        L21_3 = L21_3(L22_3)
                        L0_3 = L21_3
                      else
                        L21_3 = Config
                        L21_3 = L21_3.Core
                        if "ESX" == L21_3 then
                          L21_3 = Config
                          L21_3 = L21_3.UseHelpNotify
                          if L21_3 then
                            L21_3 = ESX
                            L21_3 = L21_3.ShowHelpNotification
                            L22_3 = TRANSLATE
                            L23_3 = "help.park"
                            L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3, L38_3, L39_3, L40_3, L41_3 = L22_3(L23_3)
                            L21_3(L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3, L38_3, L39_3, L40_3, L41_3)
                          end
                        end
                      end
                      L21_3 = IsControlJustPressed
                      L22_3 = 0
                      L23_3 = 38
                      L21_3 = L21_3(L22_3, L23_3)
                      if L21_3 then
                        L21_3 = parkVehicle
                        L22_3 = L6_3
                        L23_3 = garageInteriorId
                        L24_3 = L16_3
                        L21_3(L22_3, L23_3, L24_3)
                        L21_3 = Citizen
                        L21_3 = L21_3.Wait
                        L22_3 = 25
                        L21_3(L22_3)
                      end
                    end
                  end
                else
                  L21_3 = Config
                  L21_3 = L21_3.UseMarkers
                  if L21_3 then
                    L21_3 = DrawMarker
                    L22_3 = L20_3.type
                    L23_3 = L17_3.coords
                    L23_3 = L23_3.x
                    L24_3 = L17_3.coords
                    L24_3 = L24_3.y
                    L25_3 = L17_3.coords
                    L25_3 = L25_3.z
                    L25_3 = L25_3 + 1.2
                    L26_3 = 0.0
                    L27_3 = 0.0
                    L28_3 = 0.0
                    L29_3 = L20_3.rotation
                    L29_3 = L29_3.xyz
                    L30_3 = L20_3.scale
                    L30_3 = L30_3.xyz
                    L31_3 = L20_3.color
                    L31_3 = L31_3[1]
                    L32_3 = L20_3.color
                    L32_3 = L32_3[2]
                    L33_3 = L20_3.color
                    L33_3 = L33_3[3]
                    L34_3 = L20_3.color
                    L34_3 = L34_3[4]
                    L35_3 = L20_3.bobUpAndDown
                    L36_3 = false
                    L37_3 = false
                    L38_3 = L20_3.rotate
                    L39_3 = L20_3.textureDict
                    L40_3 = L20_3.textureName
                    L41_3 = L20_3.drawOnEnts
                    L21_3(L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3, L38_3, L39_3, L40_3, L41_3)
                  end
                  L21_3 = Config
                  L21_3 = L21_3.UseText3D
                  if L21_3 then
                    L21_3 = CL
                    L21_3 = L21_3.DrawText3D
                    L22_3 = vec
                    L23_3 = L17_3.coords
                    L23_3 = L23_3.x
                    L24_3 = L17_3.coords
                    L24_3 = L24_3.y
                    L25_3 = L17_3.coords
                    L25_3 = L25_3.z
                    L25_3 = L25_3 + 1.7
                    L22_3 = L22_3(L23_3, L24_3, L25_3)
                    L23_3 = TRANSLATE
                    L24_3 = "3dtext.park"
                    L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3, L38_3, L39_3, L40_3, L41_3 = L23_3(L24_3)
                    L21_3(L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3, L38_3, L39_3, L40_3, L41_3)
                  end
                  L21_3 = L20_3.distanceAccess
                  if L19_3 <= L21_3 then
                    L21_3 = CL
                    L21_3 = L21_3.TextUI
                    L21_3 = L21_3.Enabled
                    if L21_3 then
                      L21_3 = TRANSLATE
                      L22_3 = "textui.park"
                      L21_3 = L21_3(L22_3)
                      L0_3 = L21_3
                    else
                      L21_3 = Config
                      L21_3 = L21_3.Core
                      if "ESX" == L21_3 then
                        L21_3 = Config
                        L21_3 = L21_3.UseHelpNotify
                        if L21_3 then
                          L21_3 = ESX
                          L21_3 = L21_3.ShowHelpNotification
                          L22_3 = TRANSLATE
                          L23_3 = "help.park"
                          L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3, L38_3, L39_3, L40_3, L41_3 = L22_3(L23_3)
                          L21_3(L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3, L38_3, L39_3, L40_3, L41_3)
                        end
                      end
                    end
                    L21_3 = IsControlJustPressed
                    L22_3 = 0
                    L23_3 = 38
                    L21_3 = L21_3(L22_3, L23_3)
                    if L21_3 then
                      L21_3 = parkVehicle
                      L22_3 = L6_3
                      L23_3 = garageInteriorId
                      L24_3 = L16_3
                      L21_3(L22_3, L23_3, L24_3)
                      L21_3 = Citizen
                      L21_3 = L21_3.Wait
                      L22_3 = 25
                      L21_3(L22_3)
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
  end
  L0_2(L1_2)
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
  L5_2 = true
  L6_2 = garageInteriorId
  L7_2 = L1_2
  L8_2 = false
  L9_2 = nil
  L10_2 = L2_2
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  L3_2 = Citizen
  L3_2 = L3_2.Wait
  L4_2 = 1000
  L3_2(L4_2)
  L3_2 = spawnLocalVehicles
  L3_2()
  L3_2 = L0_1
  L3_2()
end
enterInteriorGarage = L1_1
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
  L8_2 = false
  L9_2 = nil
  L10_2 = L2_2
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  L3_2 = removeLocalVehicles
  L4_2 = garageInteriorId
  L3_2(L4_2)
  L3_2 = Wait
  L4_2 = 20
  L3_2(L4_2)
  garageInteriorId = nil
end
exitInteriorGarage = L1_1
L1_1 = RegisterNetEvent
L2_1 = "vms_garagesv2:cl:garageInteriorFadeIn"
function L3_1()
  local L0_2, L1_2
  L0_2 = Citizen
  L0_2 = L0_2.Wait
  L1_2 = 500
  L0_2(L1_2)
  L0_2 = DoScreenFadeIn
  L1_2 = 350
  L0_2(L1_2)
end
L1_1(L2_1, L3_1)
L1_1 = RegisterNetEvent
L2_1 = "vms_garagesv2:cl:enterPassengerInteriorGarage"
function L3_1(A0_2)
  local L1_2, L2_2
  garageInteriorId = A0_2
  L1_2 = DoScreenFadeOut
  L2_2 = 350
  L1_2(L2_2)
  L1_2 = Citizen
  L1_2 = L1_2.Wait
  L2_2 = 1200
  L1_2(L2_2)
  L1_2 = spawnLocalVehicles
  L1_2()
  L1_2 = L0_1
  L1_2()
  L1_2 = Citizen
  L1_2 = L1_2.Wait
  L2_2 = 200
  L1_2(L2_2)
  L1_2 = DoScreenFadeIn
  L2_2 = 350
  L1_2(L2_2)
end
L1_1(L2_1, L3_1)
L1_1 = RegisterNetEvent
L2_1 = "vms_garagesv2:cl:exitPassengerInteriorGarage"
function L3_1()
  local L0_2, L1_2
  L0_2 = DoScreenFadeOut
  L1_2 = 350
  L0_2(L1_2)
  L0_2 = Citizen
  L0_2 = L0_2.Wait
  L1_2 = 500
  L0_2(L1_2)
  L0_2 = removeLocalVehicles
  L1_2 = garageInteriorId
  L0_2(L1_2)
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
L1_1(L2_1, L3_1)
L1_1 = exports
L2_1 = "enterApartmentParking"
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = GetVehiclePedIsIn
  L3_2 = L1_2
  L4_2 = false
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = GetPedInVehicleSeat
  L4_2 = L2_2
  L5_2 = -1
  L3_2 = L3_2(L4_2, L5_2)
  L3_2 = L3_2 == L1_2
  L4_2 = 0 ~= L2_2 and 0 ~= L3_2
  isEnteringToIPL = true
  garageInteriorId = A0_2
  L5_2 = garageInteriorId
  if not L5_2 then
    L5_2 = Citizen
    L5_2 = L5_2.Wait
    L6_2 = 100
    L5_2(L6_2)
    garageInteriorId = A0_2
    L5_2 = Citizen
    L5_2 = L5_2.Wait
    L6_2 = 10
    L5_2(L6_2)
    garageInteriorId = A0_2
  end
  L5_2 = enterInteriorGarage
  L6_2 = L2_2 or L6_2
  if not L4_2 or not L2_2 then
    L6_2 = nil
  end
  L7_2 = A0_2
  L5_2(L6_2, L7_2)
end
L1_1(L2_1, L3_1)
--   ____  _____ ____ ______   ______ _____ _____ ____     ___     _____ _____  _______ ____    ______   __  _______  __    _    ____    _____ ____  ___ _  _____ _____ ___  _   _    _        _     _   _                  ____  _ _                       _                 _______ _____ _  __     _   _ ____      _ ____ _____ _____
--  |  _ \| ____/ ___|  _ \ \ / /  _ \_   _| ____|  _ \   ( _ )   |  ___|_ _\ \/ / ____|  _ \  | __ ) \ / / |  ___\ \/ /   / \  |  _ \  |  ___|  _ \|_ _| |/ /_ _|_   _/ _ \| \ | |  / \      | |__ | |_| |_ _ __  ___ _   / / /_| (_)___  ___ ___  _ __ __| |  __ _  __ _   / / ____|_   _| |/ /__ _| | | | ___|  __| | ___|___  |___  |
--  | | | |  _|| |   | |_) \ V /| |_) || | |  _| | | | |  / _ \/\ | |_   | | \  /|  _| | | | | |  _ \\ V /  | |_   \  /   / _ \ | |_) | | |_  | |_) || || ' / | |  | || | | |  \| | / _ \     | '_ \| __| __| '_ \/ __(_) / / / _` | / __|/ __/ _ \| '__/ _` | / _` |/ _` | / /|  _|   | | | ' // _` | |_| |___ \ / _` |___ \  / /   / /
--  | |_| | |__| |___|  _ < | | |  __/ | | | |___| |_| | | (_>  < |  _|  | | /  \| |___| |_| | | |_) || |   |  _|  /  \  / ___ \|  __/  |  _| |  _ < | || . \ | |  | || |_| | |\  |/ ___ \ _  | | | | |_| |_| |_) \__ \_ / / / (_| | \__ \ (_| (_) | | | (_| || (_| | (_| |/ / | |___  | | | . \ (_| |  _  |___) | (_| |___) |/ /   / /
--  |____/|_____\____|_| \_\|_| |_|    |_| |_____|____/   \___/\/ |_|   |___/_/\_\_____|____/  |____/ |_|   |_|   /_/\_\/_/   \_\_|     |_|   |_| \_\___|_|\_\___| |_| \___/|_| \_/_/   \_(_) |_| |_|\__|\__| .__/|___(_)_/_/ \__,_|_|___/\___\___/|_|  \__,_(_)__, |\__, /_/  |_____| |_| |_|\_\__, |_| |_|____/ \__,_|____//_/   /_/
--                                                                                                                                                                                                          |_|                                                |___/ |___/                         |_|
-- https://discord.gg/ETKqH5d577
