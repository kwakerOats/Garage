--   ____  _____ ____ ______   ______ _____ _____ ____     ___     _____ _____  _______ ____    ______   __  _______  __    _    ____    _____ ____  ___ _  _____ _____ ___  _   _    _        _     _   _                  ____  _ _                       _                 _______ _____ _  __     _   _ ____      _ ____ _____ _____
--  |  _ \| ____/ ___|  _ \ \ / /  _ \_   _| ____|  _ \   ( _ )   |  ___|_ _\ \/ / ____|  _ \  | __ ) \ / / |  ___\ \/ /   / \  |  _ \  |  ___|  _ \|_ _| |/ /_ _|_   _/ _ \| \ | |  / \      | |__ | |_| |_ _ __  ___ _   / / /_| (_)___  ___ ___  _ __ __| |  __ _  __ _   / / ____|_   _| |/ /__ _| | | | ___|  __| | ___|___  |___  |
--  | | | |  _|| |   | |_) \ V /| |_) || | |  _| | | | |  / _ \/\ | |_   | | \  /|  _| | | | | |  _ \\ V /  | |_   \  /   / _ \ | |_) | | |_  | |_) || || ' / | |  | || | | |  \| | / _ \     | '_ \| __| __| '_ \/ __(_) / / / _` | / __|/ __/ _ \| '__/ _` | / _` |/ _` | / /|  _|   | | | ' // _` | |_| |___ \ / _` |___ \  / /   / /
--  | |_| | |__| |___|  _ < | | |  __/ | | | |___| |_| | | (_>  < |  _|  | | /  \| |___| |_| | | |_) || |   |  _|  /  \  / ___ \|  __/  |  _| |  _ < | || . \ | |  | || |_| | |\  |/ ___ \ _  | | | | |_| |_| |_) \__ \_ / / / (_| | \__ \ (_| (_) | | | (_| || (_| | (_| |/ / | |___  | | | . \ (_| |  _  |___) | (_| |___) |/ /   / /
--  |____/|_____\____|_| \_\|_| |_|    |_| |_____|____/   \___/\/ |_|   |___/_/\_\_____|____/  |____/ |_|   |_|   /_/\_\/_/   \_\_|     |_|   |_| \_\___|_|\_\___| |_| \___/|_| \_/_/   \_(_) |_| |_|\__|\__| .__/|___(_)_/_/ \__,_|_|___/\___\___/|_|  \__,_(_)__, |\__, /_/  |_____| |_| |_|\_\__, |_| |_|____/ \__,_|____//_/   /_/
--                                                                                                                                                                                                          |_|                                                |___/ |___/                         |_|
-- https://discord.gg/ETKqH5d577

local L0_1, L1_1, L2_1, L3_1
L0_1 = nil
rCamera2 = nil
rCamera1 = L0_1
L0_1 = {}
camData = L0_1
garageZone = nil
impoundZone = nil
L0_1 = false
isInImpoundZone = false
isInGarageZone = L0_1
function L0_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  if "impound" == A2_2 then
    impoundZone = A1_2
    while true do
      L3_2 = waitingForLoadAfterRestart
      if not L3_2 then
        break
      end
      L3_2 = Citizen
      L3_2 = L3_2.Wait
      L4_2 = 200
      L3_2(L4_2)
    end
    L3_2 = library
    L3_2 = L3_2.Debug
    L4_2 = "You entered the Impound Zone: %s"
    L5_2 = L4_2
    L4_2 = L4_2.format
    L6_2 = impoundZone
    L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L4_2(L5_2, L6_2)
    L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
    L3_2 = Citizen
    L3_2 = L3_2.CreateThread
    function L4_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3
      L0_3 = false
      L1_3 = false
      L2_3 = type
      L3_3 = Config
      L3_3 = L3_3.Impounds
      L4_3 = impoundZone
      L3_3 = L3_3[L4_3]
      L3_3 = L3_3.impoundPoint
      L2_3 = L2_3(L3_3)
      L2_3 = "table" == L2_3
      L3_3 = Config
      L3_3 = L3_3.Impounds
      L4_3 = impoundZone
      L3_3 = L3_3[L4_3]
      L3_3 = L3_3.npc
      if L3_3 then
        L3_3 = Config
        L3_3 = L3_3.Impounds
        L4_3 = impoundZone
        L3_3 = L3_3[L4_3]
        L3_3 = L3_3.npc
        L3_3 = L3_3.enabled
        if L3_3 then
          L3_3 = Config
          L3_3 = L3_3.Impounds
          L4_3 = impoundZone
          L3_3 = L3_3[L4_3]
          L3_3 = L3_3.npc
          L4_3 = Config
          L4_3 = L4_3.ExtremeDebug
          if L4_3 then
            L4_3 = library
            L4_3 = L4_3.Debug
            L5_3 = "Spawning NPC for Impound Zone: %s"
            L6_3 = L5_3
            L5_3 = L5_3.format
            L7_3 = impoundZone
            L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3 = L5_3(L6_3, L7_3)
            L4_3(L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3)
          end
          L4_3 = Config
          L4_3 = L4_3.Impounds
          L5_3 = impoundZone
          L4_3 = L4_3[L5_3]
          L5_3 = library
          L5_3 = L5_3.SpawnPed
          L6_3 = L3_3
          L5_3 = L5_3(L6_3)
          L4_3.npcPed = L5_3
          L4_3 = Config
          L4_3 = L4_3.ExtremeDebug
          if L4_3 then
            L4_3 = library
            L4_3 = L4_3.Debug
            L5_3 = "NPC for Impound Zone: %s spawned: %s"
            L6_3 = L5_3
            L5_3 = L5_3.format
            L7_3 = impoundZone
            L8_3 = Config
            L8_3 = L8_3.Impounds
            L9_3 = impoundZone
            L8_3 = L8_3[L9_3]
            L8_3 = L8_3.npcPed
            L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3 = L5_3(L6_3, L7_3, L8_3)
            L4_3(L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3)
          end
        end
      end
      L3_3 = Config
      L3_3 = L3_3.ExtremeDebug
      if L3_3 then
        L3_3 = library
        L3_3 = L3_3.Debug
        L4_3 = "Impound Zone: %s entered"
        L5_3 = L4_3
        L4_3 = L4_3.format
        L6_3 = impoundZone
        L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3 = L4_3(L5_3, L6_3)
        L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3)
      end
      while true do
        L3_3 = impoundZone
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
        L6_3 = L6_3.Impounds
        L7_3 = impoundZone
        L6_3 = L6_3[L7_3]
        L7_3 = impoundZone
        if L7_3 then
          L7_3 = library
          L7_3 = L7_3.IsJobAllowed
          L8_3 = L6_3
          L7_3 = L7_3(L8_3)
          if L7_3 then
            L7_3 = GetVehiclePedIsIn
            L8_3 = L3_3
            L9_3 = false
            L7_3 = L7_3(L8_3, L9_3)
            if not L7_3 or 0 == L7_3 then
              L8_3 = Config
              L8_3 = L8_3.Marker
              L8_3 = L8_3.impound
              if not L2_3 then
                L9_3 = L6_3.impoundPoint
                L9_3 = L9_3.xyz
                L9_3 = L4_3 - L9_3
                L9_3 = #L9_3
                L10_3 = L8_3.distanceSee
                if L9_3 <= L10_3 then
                  L10_3 = Config
                  L10_3 = L10_3.UseMarkers
                  if L10_3 then
                    L10_3 = DrawMarker
                    L11_3 = L8_3.type
                    L12_3 = L6_3.impoundPoint
                    L12_3 = L12_3.xyz
                    L13_3 = 0.0
                    L14_3 = 0.0
                    L15_3 = 0.0
                    L16_3 = L8_3.rotation
                    L16_3 = L16_3.xyz
                    L17_3 = L8_3.scale
                    L17_3 = L17_3.xyz
                    L18_3 = L8_3.color
                    L18_3 = L18_3[1]
                    L19_3 = L8_3.color
                    L19_3 = L19_3[2]
                    L20_3 = L8_3.color
                    L20_3 = L20_3[3]
                    L21_3 = L8_3.color
                    L21_3 = L21_3[4]
                    L22_3 = L8_3.bobUpAndDown
                    L23_3 = false
                    L24_3 = false
                    L25_3 = L8_3.rotate
                    L26_3 = L8_3.textureDict
                    L27_3 = L8_3.textureName
                    L28_3 = L8_3.drawOnEnts
                    L10_3(L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3)
                  end
                  L10_3 = Config
                  L10_3 = L10_3.UseText3D
                  if L10_3 then
                    L10_3 = CL
                    L10_3 = L10_3.DrawText3D
                    L11_3 = vec
                    L12_3 = L6_3.impoundPoint
                    L12_3 = L12_3.xyz
                    L11_3 = L11_3(L12_3)
                    L12_3 = TRANSLATE
                    L13_3 = "3dtext.impound"
                    L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3 = L12_3(L13_3)
                    L10_3(L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3)
                  end
                  L10_3 = L8_3.distanceAccess
                  if L9_3 <= L10_3 then
                    L10_3 = CL
                    L10_3 = L10_3.TextUI
                    L10_3 = L10_3.Enabled
                    if L10_3 then
                      L10_3 = TRANSLATE
                      L11_3 = "textui.impound"
                      L10_3 = L10_3(L11_3)
                      L0_3 = L10_3
                    else
                      L10_3 = Config
                      L10_3 = L10_3.Core
                      if "ESX" == L10_3 then
                        L10_3 = Config
                        L10_3 = L10_3.UseHelpNotify
                        if L10_3 then
                          L10_3 = ESX
                          L10_3 = L10_3.ShowHelpNotification
                          L11_3 = TRANSLATE
                          L12_3 = "help.impound"
                          L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3 = L11_3(L12_3)
                          L10_3(L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3)
                        end
                      end
                    end
                    L10_3 = IsControlJustPressed
                    L11_3 = 0
                    L12_3 = 38
                    L10_3 = L10_3(L11_3, L12_3)
                    if L10_3 then
                      L10_3 = openImpound
                      L11_3 = L6_3
                      L10_3(L11_3)
                    end
                  end
                end
              else
                L9_3 = ipairs
                L10_3 = L6_3.impoundPoint
                L9_3, L10_3, L11_3, L12_3 = L9_3(L10_3)
                for L13_3, L14_3 in L9_3, L10_3, L11_3, L12_3 do
                  L15_3 = L14_3.xyz
                  L15_3 = L4_3 - L15_3
                  L15_3 = #L15_3
                  L16_3 = L8_3.distanceSee
                  if L15_3 <= L16_3 then
                    L16_3 = Config
                    L16_3 = L16_3.UseMarkers
                    if L16_3 then
                      L16_3 = DrawMarker
                      L17_3 = L8_3.type
                      L18_3 = L14_3.xyz
                      L19_3 = 0.0
                      L20_3 = 0.0
                      L21_3 = 0.0
                      L22_3 = L8_3.rotation
                      L22_3 = L22_3.xyz
                      L23_3 = L8_3.scale
                      L23_3 = L23_3.xyz
                      L24_3 = L8_3.color
                      L24_3 = L24_3[1]
                      L25_3 = L8_3.color
                      L25_3 = L25_3[2]
                      L26_3 = L8_3.color
                      L26_3 = L26_3[3]
                      L27_3 = L8_3.color
                      L27_3 = L27_3[4]
                      L28_3 = L8_3.bobUpAndDown
                      L29_3 = false
                      L30_3 = false
                      L31_3 = L8_3.rotate
                      L32_3 = L8_3.textureDict
                      L33_3 = L8_3.textureName
                      L34_3 = L8_3.drawOnEnts
                      L16_3(L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3)
                    end
                    L16_3 = Config
                    L16_3 = L16_3.UseText3D
                    if L16_3 then
                      L16_3 = CL
                      L16_3 = L16_3.DrawText3D
                      L17_3 = vec
                      L18_3 = L14_3.xyz
                      L17_3 = L17_3(L18_3)
                      L18_3 = TRANSLATE
                      L19_3 = "3dtext.impound"
                      L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3 = L18_3(L19_3)
                      L16_3(L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3)
                    end
                    L16_3 = L8_3.distanceAccess
                    if L15_3 <= L16_3 then
                      L16_3 = CL
                      L16_3 = L16_3.TextUI
                      L16_3 = L16_3.Enabled
                      if L16_3 then
                        L16_3 = TRANSLATE
                        L17_3 = "textui.impound"
                        L16_3 = L16_3(L17_3)
                        L0_3 = L16_3
                      else
                        L16_3 = Config
                        L16_3 = L16_3.Core
                        if "ESX" == L16_3 then
                          L16_3 = Config
                          L16_3 = L16_3.UseHelpNotify
                          if L16_3 then
                            L16_3 = ESX
                            L16_3 = L16_3.ShowHelpNotification
                            L17_3 = TRANSLATE
                            L18_3 = "help.impound"
                            L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3 = L17_3(L18_3)
                            L16_3(L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3)
                          end
                        end
                      end
                      L16_3 = IsControlJustPressed
                      L17_3 = 0
                      L18_3 = 38
                      L16_3 = L16_3(L17_3, L18_3)
                      if L16_3 then
                        L16_3 = CL
                        L16_3 = L16_3.TextUI
                        L16_3 = L16_3.Enabled
                        if L16_3 then
                          L16_3 = CL
                          L16_3 = L16_3.TextUI
                          L16_3 = L16_3.Close
                          L16_3()
                        end
                        L16_3 = openImpound
                        L17_3 = L6_3
                        L18_3 = L13_3
                        L16_3(L17_3, L18_3)
                      end
                    end
                  end
                end
              end
            end
          else
            L7_3 = Citizen
            L7_3 = L7_3.Wait
            L8_3 = 1000
            L7_3(L8_3)
          end
        end
        if L0_3 and not L1_3 then
          L1_3 = true
          L7_3 = CL
          L7_3 = L7_3.TextUI
          L7_3 = L7_3.Open
          L8_3 = L0_3
          L7_3(L8_3)
        elseif not L0_3 and L1_3 then
          L1_3 = false
          L7_3 = CL
          L7_3 = L7_3.TextUI
          L7_3 = L7_3.Close
          L7_3()
        end
        L7_3 = Citizen
        L7_3 = L7_3.Wait
        L8_3 = 1
        L7_3(L8_3)
      end
      L3_3 = Config
      L3_3 = L3_3.ExtremeDebug
      if L3_3 then
        L3_3 = library
        L3_3 = L3_3.Debug
        L4_3 = "Impound %s Loop stopped!"
        L5_3 = L4_3
        L4_3 = L4_3.format
        L6_3 = impoundZone
        L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3 = L4_3(L5_3, L6_3)
        L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3)
      end
    end
    L3_2(L4_2)
  else
    garageZone = A1_2
    while true do
      L3_2 = waitingForLoadAfterRestart
      if not L3_2 then
        break
      end
      L3_2 = Citizen
      L3_2 = L3_2.Wait
      L4_2 = 200
      L3_2(L4_2)
    end
    L3_2 = library
    L3_2 = L3_2.Debug
    L4_2 = "You entered the Garage Zone: %s"
    L5_2 = L4_2
    L4_2 = L4_2.format
    L6_2 = garageZone
    L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L4_2(L5_2, L6_2)
    L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
    L3_2 = Config
    L3_2 = L3_2.Garages
    L4_2 = garageZone
    L3_2 = L3_2[L4_2]
    if not L3_2 then
      L4_2 = error
      L5_2 = "Zone "
      L6_2 = garageZone
      L7_2 = " is not registered with Config.Garages"
      L5_2 = L5_2 .. L6_2 .. L7_2
      return L4_2(L5_2)
    end
    L4_2 = L3_2.interior
    if L4_2 then
      L4_2 = Config
      L4_2 = L4_2.ExtremeDebug
      if L4_2 then
        L4_2 = library
        L4_2 = L4_2.Debug
        L5_2 = "Entering Interior Garage Zone"
        L4_2(L5_2)
      end
      L4_2 = enteredInteriorGarageZone
      L4_2()
      return
    end
    L4_2 = L3_2.businessGarage
    if L4_2 then
      L4_2 = Config
      L4_2 = L4_2.ExtremeDebug
      if L4_2 then
        L4_2 = library
        L4_2 = L4_2.Debug
        L5_2 = "Entering Business Garage Zone"
        L4_2(L5_2)
      end
      L4_2 = enteredBusinessParkingZone
      L4_2()
      return
    end
    L4_2 = Config
    L4_2 = L4_2.Garages
    L5_2 = garageZone
    L4_2 = L4_2[L5_2]
    L4_2 = L4_2.npc
    if L4_2 then
      L4_2 = Config
      L4_2 = L4_2.Garages
      L5_2 = garageZone
      L4_2 = L4_2[L5_2]
      L4_2 = L4_2.npc
      L4_2 = L4_2.enabled
      if L4_2 then
        L4_2 = Config
        L4_2 = L4_2.Garages
        L5_2 = garageZone
        L4_2 = L4_2[L5_2]
        L4_2 = L4_2.npc
        L5_2 = Config
        L5_2 = L5_2.ExtremeDebug
        if L5_2 then
          L5_2 = library
          L5_2 = L5_2.Debug
          L6_2 = "Spawning NPC for Garage Zone: %s"
          L7_2 = L6_2
          L6_2 = L6_2.format
          L8_2 = garageZone
          L6_2, L7_2, L8_2, L9_2, L10_2 = L6_2(L7_2, L8_2)
          L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
        end
        L5_2 = Config
        L5_2 = L5_2.Garages
        L6_2 = garageZone
        L5_2 = L5_2[L6_2]
        L6_2 = library
        L6_2 = L6_2.SpawnPed
        L7_2 = L4_2
        L6_2 = L6_2(L7_2)
        L5_2.npcPed = L6_2
        L5_2 = Config
        L5_2 = L5_2.ExtremeDebug
        if L5_2 then
          L5_2 = library
          L5_2 = L5_2.Debug
          L6_2 = "NPC for Garage Zone: %s spawned: %s"
          L7_2 = L6_2
          L6_2 = L6_2.format
          L8_2 = garageZone
          L9_2 = Config
          L9_2 = L9_2.Garages
          L10_2 = garageZone
          L9_2 = L9_2[L10_2]
          L9_2 = L9_2.npcPed
          L6_2, L7_2, L8_2, L9_2, L10_2 = L6_2(L7_2, L8_2, L9_2)
          L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
        end
      end
    end
    L4_2 = L3_2.parkingSpaces
    if L4_2 then
      L4_2 = Config
      L4_2 = L4_2.ExtremeDebug
      if L4_2 then
        L4_2 = library
        L4_2 = L4_2.Debug
        L5_2 = "Spawning vehicles for Garage Zone: %s"
        L6_2 = L5_2
        L5_2 = L5_2.format
        L7_2 = garageZone
        L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L5_2(L6_2, L7_2)
        L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
      end
      L4_2 = spawnLocalVehicles
      L4_2()
      L4_2 = Config
      L4_2 = L4_2.ExtremeDebug
      if L4_2 then
        L4_2 = library
        L4_2 = L4_2.Debug
        L5_2 = "Spawned vehicles for Garage Zone: %s"
        L6_2 = L5_2
        L5_2 = L5_2.format
        L7_2 = garageZone
        L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L5_2(L6_2, L7_2)
        L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
      end
    end
    L4_2 = L3_2.parkingObjects
    if L4_2 then
      L4_2 = Config
      L4_2 = L4_2.ExtremeDebug
      if L4_2 then
        L4_2 = library
        L4_2 = L4_2.Debug
        L5_2 = "Spawning objects for Garage Zone: %s"
        L6_2 = L5_2
        L5_2 = L5_2.format
        L7_2 = garageZone
        L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L5_2(L6_2, L7_2)
        L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
      end
      L4_2 = spawnLocalObjects
      L4_2()
      L4_2 = Config
      L4_2 = L4_2.ExtremeDebug
      if L4_2 then
        L4_2 = library
        L4_2 = L4_2.Debug
        L5_2 = "Spawned objects for Garage Zone: %s"
        L6_2 = L5_2
        L5_2 = L5_2.format
        L7_2 = garageZone
        L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L5_2(L6_2, L7_2)
        L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
      end
    end
    L4_2 = Config
    L4_2 = L4_2.ExtremeDebug
    if L4_2 then
      L4_2 = library
      L4_2 = L4_2.Debug
      L5_2 = "Garage Zone: %s entered"
      L6_2 = L5_2
      L5_2 = L5_2.format
      L7_2 = garageZone
      L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L5_2(L6_2, L7_2)
      L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
    end
    L4_2 = Citizen
    L4_2 = L4_2.CreateThread
    function L5_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3, L38_3
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
          L8_3 = L5_3.hasAccess
          if not L8_3 then
            L8_3 = true
            if L8_3 then
              goto lbl_46
            end
          end
          L8_3 = L5_3.hasAccess
          L9_3 = PlayerData
          L10_3 = myIdentifier
          L8_3 = L8_3(L9_3, L10_3)
          L8_3 = true == L8_3
          ::lbl_46::
          L9_3 = L5_3.menuPoint
          if L9_3 and 0 == L6_3 and not L7_3 and L8_3 then
            L9_3 = Config
            L9_3 = L9_3.Marker
            L9_3 = L9_3.garage_menu
            L10_3 = L5_3.menuPoint
            L10_3 = L10_3.xyz
            L10_3 = L3_3 - L10_3
            L10_3 = #L10_3
            L11_3 = L9_3.distanceSee
            if L10_3 <= L11_3 then
              L11_3 = library
              L11_3 = L11_3.IsJobAllowed
              L12_3 = L5_3
              L11_3 = L11_3(L12_3)
              if L11_3 then
                L11_3 = library
                L11_3 = L11_3.IsGangAllowed
                L12_3 = L5_3
                L11_3 = L11_3(L12_3)
              end
              if L11_3 then
                L12_3 = Config
                L12_3 = L12_3.UseMarkers
                if L12_3 then
                  L12_3 = DrawMarker
                  L13_3 = L9_3.type
                  L14_3 = L5_3.menuPoint
                  L14_3 = L14_3.xyz
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
                  L14_3 = L5_3.menuPoint
                  L14_3 = L14_3.xyz
                  L13_3 = L13_3(L14_3)
                  L14_3 = TRANSLATE
                  L15_3 = "3dtext.garage"
                  L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3, L38_3 = L14_3(L15_3)
                  L12_3(L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3, L38_3)
                end
                L12_3 = L9_3.distanceAccess
                if L10_3 <= L12_3 then
                  L12_3 = CL
                  L12_3 = L12_3.TextUI
                  L12_3 = L12_3.Enabled
                  if L12_3 then
                    L12_3 = TRANSLATE
                    L13_3 = "textui.garage"
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
                        L14_3 = "help.garage"
                        L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3, L38_3 = L13_3(L14_3)
                        L12_3(L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3, L38_3)
                      end
                    end
                  end
                  L12_3 = IsControlJustPressed
                  L13_3 = 0
                  L14_3 = 38
                  L12_3 = L12_3(L13_3, L14_3)
                  if L12_3 then
                    L12_3 = CL
                    L12_3 = L12_3.TextUI
                    L12_3 = L12_3.Enabled
                    if L12_3 then
                      L12_3 = CL
                      L12_3 = L12_3.TextUI
                      L12_3 = L12_3.Close
                      L12_3()
                    end
                    L12_3 = openGarage
                    L13_3 = L5_3
                    L12_3(L13_3)
                  end
                end
              end
            end
          end
          L9_3 = L5_3.returnVehiclePoint
          if L9_3 and L8_3 and 0 ~= L6_3 and L7_3 then
            L9_3 = Config
            L9_3 = L9_3.Marker
            L9_3 = L9_3.return_vehicle
            L10_3 = L5_3.returnVehiclePoint
            L10_3 = L10_3.xyz
            L10_3 = L3_3 - L10_3
            L10_3 = #L10_3
            L11_3 = L9_3.distanceSee
            if L10_3 <= L11_3 then
              L11_3 = library
              L11_3 = L11_3.IsJobAllowed
              L12_3 = L5_3
              L11_3 = L11_3(L12_3)
              if L11_3 then
                L11_3 = library
                L11_3 = L11_3.IsGangAllowed
                L12_3 = L5_3
                L11_3 = L11_3(L12_3)
              end
              if L11_3 then
                L12_3 = Config
                L12_3 = L12_3.UseMarkers
                if L12_3 then
                  L12_3 = DrawMarker
                  L13_3 = L9_3.type
                  L14_3 = L5_3.returnVehiclePoint
                  L14_3 = L14_3.xyz
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
                  L14_3 = L5_3.returnVehiclePoint
                  L14_3 = L14_3.xyz
                  L13_3 = L13_3(L14_3)
                  L14_3 = TRANSLATE
                  L15_3 = "3dtext.return_vehicle"
                  L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3, L38_3 = L14_3(L15_3)
                  L12_3(L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3, L38_3)
                end
                L12_3 = L9_3.distanceAccess
                if L10_3 <= L12_3 then
                  L12_3 = CL
                  L12_3 = L12_3.TextUI
                  L12_3 = L12_3.Enabled
                  if L12_3 then
                    L12_3 = TRANSLATE
                    L13_3 = "textui.return_vehicle"
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
                        L14_3 = "help.return_vehicle"
                        L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3, L38_3 = L13_3(L14_3)
                        L12_3(L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3, L38_3)
                      end
                    end
                  end
                  L12_3 = IsControlJustPressed
                  L13_3 = 0
                  L14_3 = 38
                  L12_3 = L12_3(L13_3, L14_3)
                  if L12_3 then
                    L12_3 = CL
                    L12_3 = L12_3.TextUI
                    L12_3 = L12_3.Enabled
                    if L12_3 then
                      L12_3 = CL
                      L12_3 = L12_3.TextUI
                      L12_3 = L12_3.Close
                      L12_3()
                    end
                    L12_3 = returnVehicle
                    L13_3 = L6_3
                    L12_3(L13_3)
                  end
                end
              end
            end
          end
          if L8_3 then
            L9_3 = L5_3.isPaid
            if not L9_3 then
              L9_3 = L5_3.isForRent
              if not L9_3 or L7_3 then
                goto lbl_420
              end
            end
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
                      L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3, L38_3 = L19_3(L20_3)
                      L17_3(L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3, L38_3)
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
                            L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3, L38_3 = L18_3(L19_3)
                            L17_3(L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3, L38_3)
                          end
                        end
                      end
                      L17_3 = IsControlJustPressed
                      L18_3 = 0
                      L19_3 = 38
                      L17_3 = L17_3(L18_3, L19_3)
                      if L17_3 then
                        L17_3 = CL
                        L17_3 = L17_3.TextUI
                        L17_3 = L17_3.Enabled
                        if L17_3 then
                          L17_3 = CL
                          L17_3 = L17_3.TextUI
                          L17_3 = L17_3.Close
                          L17_3()
                        end
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
          ::lbl_420::
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
                          L18_3 = GlobalState
                          L18_3 = L18_3.OS_TIME
                          if not L18_3 then
                            L18_3 = 100
                          end
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
                    L15_3 = GlobalState
                    L15_3 = L15_3.OS_TIME
                    if not L15_3 then
                    end
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
                        L18_3 = GlobalState
                        L18_3 = L18_3.OS_TIME
                        if not L18_3 then
                          L18_3 = 100
                        end
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
                        L22_3 = L22_3 + 1.4
                        L19_3 = L19_3(L20_3, L21_3, L22_3)
                        L20_3 = L16_3
                        L21_3 = Config
                        L21_3 = L21_3.ParkingTimerScale
                        L18_3(L19_3, L20_3, L21_3)
                      end
                    end
                  end
                  if 0 ~= L6_3 then
                    L15_3 = L14_3.vehicleId
                    if L6_3 == L15_3 then
                      L15_3 = Config
                      L15_3 = L15_3.AllowLockpickParkedVehicle
                      if not L15_3 then
                        L15_3 = isPlayerAllowedToGetVehicle
                        L16_3 = L14_3.data
                        L15_3 = L15_3(L16_3)
                        if not L15_3 then
                          L15_3 = Citizen
                          L15_3 = L15_3.Wait
                          L16_3 = 100
                          L15_3(L16_3)
                          L15_3 = TaskLeaveVehicle
                          L16_3 = PlayerPedId
                          L16_3 = L16_3()
                          L17_3 = L6_3
                          L18_3 = 1
                          L15_3(L16_3, L17_3, L18_3)
                          L15_3 = Citizen
                          L15_3 = L15_3.Wait
                          L16_3 = 700
                          L15_3(L16_3)
                          break
                        end
                      end
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
              elseif 0 ~= L6_3 and L7_3 and L8_3 then
                L15_3 = L14_3.coords
                L15_3 = L15_3.xyz
                L15_3 = L3_3 - L15_3
                L15_3 = #L15_3
                L16_3 = Config
                L16_3 = L16_3.Marker
                L16_3 = L16_3.parking_space
                L17_3 = library
                L17_3 = L17_3.IsJobAllowed
                L18_3 = L5_3
                L17_3 = L17_3(L18_3)
                if L17_3 then
                  L17_3 = library
                  L17_3 = L17_3.IsGangAllowed
                  L18_3 = L5_3
                  L17_3 = L17_3(L18_3)
                end
                if L17_3 then
                  L18_3 = L16_3.distanceSee
                  if L15_3 <= L18_3 then
                    L18_3 = L5_3.isForRent
                    if L18_3 then
                      L18_3 = library
                      L18_3 = L18_3.IsMyParkingSpace
                      L19_3 = L5_3
                      L20_3 = L14_3
                      L18_3 = L18_3(L19_3, L20_3)
                      if L18_3 then
                        L18_3 = Config
                        L18_3 = L18_3.UseMarkers
                        if L18_3 then
                          L18_3 = DrawMarker
                          L19_3 = L16_3.type
                          L20_3 = L14_3.coords
                          L20_3 = L20_3.x
                          L21_3 = L14_3.coords
                          L21_3 = L21_3.y
                          L22_3 = L14_3.coords
                          L22_3 = L22_3.z
                          L22_3 = L22_3 + 0.9
                          L23_3 = 0.0
                          L24_3 = 0.0
                          L25_3 = 0.0
                          L26_3 = L16_3.rotation
                          L26_3 = L26_3.xyz
                          L27_3 = L16_3.scale
                          L27_3 = L27_3.xyz
                          L28_3 = L16_3.color
                          L28_3 = L28_3[1]
                          L29_3 = L16_3.color
                          L29_3 = L29_3[2]
                          L30_3 = L16_3.color
                          L30_3 = L30_3[3]
                          L31_3 = L16_3.color
                          L31_3 = L31_3[4]
                          L32_3 = L16_3.bobUpAndDown
                          L33_3 = false
                          L34_3 = false
                          L35_3 = L16_3.rotate
                          L36_3 = L16_3.textureDict
                          L37_3 = L16_3.textureName
                          L38_3 = L16_3.drawOnEnts
                          L18_3(L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3, L38_3)
                        end
                        L18_3 = Config
                        L18_3 = L18_3.UseText3D
                        if L18_3 then
                          L18_3 = CL
                          L18_3 = L18_3.DrawText3D
                          L19_3 = vec
                          L20_3 = L14_3.coords
                          L20_3 = L20_3.x
                          L21_3 = L14_3.coords
                          L21_3 = L21_3.y
                          L22_3 = L14_3.coords
                          L22_3 = L22_3.z
                          L22_3 = L22_3 + 1.4
                          L19_3 = L19_3(L20_3, L21_3, L22_3)
                          L20_3 = TRANSLATE
                          L21_3 = "3dtext.park"
                          L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3, L38_3 = L20_3(L21_3)
                          L18_3(L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3, L38_3)
                        end
                        L18_3 = L16_3.distanceAccess
                        if L15_3 <= L18_3 then
                          L18_3 = CL
                          L18_3 = L18_3.TextUI
                          L18_3 = L18_3.Enabled
                          if L18_3 then
                            L18_3 = TRANSLATE
                            L19_3 = "textui.park"
                            L18_3 = L18_3(L19_3)
                            L0_3 = L18_3
                          else
                            L18_3 = Config
                            L18_3 = L18_3.Core
                            if "ESX" == L18_3 then
                              L18_3 = Config
                              L18_3 = L18_3.UseHelpNotify
                              if L18_3 then
                                L18_3 = ESX
                                L18_3 = L18_3.ShowHelpNotification
                                L19_3 = TRANSLATE
                                L20_3 = "help.park"
                                L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3, L38_3 = L19_3(L20_3)
                                L18_3(L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3, L38_3)
                              end
                            end
                          end
                          L18_3 = IsControlJustPressed
                          L19_3 = 0
                          L20_3 = 38
                          L18_3 = L18_3(L19_3, L20_3)
                          if L18_3 then
                            L18_3 = CL
                            L18_3 = L18_3.TextUI
                            L18_3 = L18_3.Enabled
                            if L18_3 then
                              L18_3 = CL
                              L18_3 = L18_3.TextUI
                              L18_3 = L18_3.Close
                              L18_3()
                            end
                            L18_3 = parkVehicle
                            L19_3 = L6_3
                            L20_3 = garageZone
                            L21_3 = L13_3
                            L18_3(L19_3, L20_3, L21_3)
                            L18_3 = Citizen
                            L18_3 = L18_3.Wait
                            L19_3 = 25
                            L18_3(L19_3)
                          end
                        end
                      end
                    else
                      L18_3 = Config
                      L18_3 = L18_3.UseMarkers
                      if L18_3 then
                        L18_3 = DrawMarker
                        L19_3 = L16_3.type
                        L20_3 = L14_3.coords
                        L20_3 = L20_3.x
                        L21_3 = L14_3.coords
                        L21_3 = L21_3.y
                        L22_3 = L14_3.coords
                        L22_3 = L22_3.z
                        L22_3 = L22_3 + 1.2
                        L23_3 = 0.0
                        L24_3 = 0.0
                        L25_3 = 0.0
                        L26_3 = L16_3.rotation
                        L26_3 = L26_3.xyz
                        L27_3 = L16_3.scale
                        L27_3 = L27_3.xyz
                        L28_3 = L16_3.color
                        L28_3 = L28_3[1]
                        L29_3 = L16_3.color
                        L29_3 = L29_3[2]
                        L30_3 = L16_3.color
                        L30_3 = L30_3[3]
                        L31_3 = L16_3.color
                        L31_3 = L31_3[4]
                        L32_3 = L16_3.bobUpAndDown
                        L33_3 = false
                        L34_3 = false
                        L35_3 = L16_3.rotate
                        L36_3 = L16_3.textureDict
                        L37_3 = L16_3.textureName
                        L38_3 = L16_3.drawOnEnts
                        L18_3(L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3, L38_3)
                      end
                      L18_3 = Config
                      L18_3 = L18_3.UseText3D
                      if L18_3 then
                        L18_3 = CL
                        L18_3 = L18_3.DrawText3D
                        L19_3 = vec
                        L20_3 = L14_3.coords
                        L20_3 = L20_3.x
                        L21_3 = L14_3.coords
                        L21_3 = L21_3.y
                        L22_3 = L14_3.coords
                        L22_3 = L22_3.z
                        L22_3 = L22_3 + 1.7
                        L19_3 = L19_3(L20_3, L21_3, L22_3)
                        L20_3 = TRANSLATE
                        L21_3 = "3dtext.park"
                        L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3, L38_3 = L20_3(L21_3)
                        L18_3(L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3, L38_3)
                      end
                      L18_3 = L16_3.distanceAccess
                      if L15_3 <= L18_3 then
                        L18_3 = CL
                        L18_3 = L18_3.TextUI
                        L18_3 = L18_3.Enabled
                        if L18_3 then
                          L18_3 = TRANSLATE
                          L19_3 = "textui.park"
                          L18_3 = L18_3(L19_3)
                          L0_3 = L18_3
                        else
                          L18_3 = Config
                          L18_3 = L18_3.Core
                          if "ESX" == L18_3 then
                            L18_3 = Config
                            L18_3 = L18_3.UseHelpNotify
                            if L18_3 then
                              L18_3 = ESX
                              L18_3 = L18_3.ShowHelpNotification
                              L19_3 = TRANSLATE
                              L20_3 = "help.park"
                              L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3, L38_3 = L19_3(L20_3)
                              L18_3(L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3, L38_3)
                            end
                          end
                        end
                        L18_3 = IsControlJustPressed
                        L19_3 = 0
                        L20_3 = 38
                        L18_3 = L18_3(L19_3, L20_3)
                        if L18_3 then
                          L18_3 = CL
                          L18_3 = L18_3.TextUI
                          L18_3 = L18_3.Enabled
                          if L18_3 then
                            L18_3 = CL
                            L18_3 = L18_3.TextUI
                            L18_3 = L18_3.Close
                            L18_3()
                          end
                          L18_3 = parkVehicle
                          L19_3 = L6_3
                          L20_3 = garageZone
                          L21_3 = L13_3
                          L18_3(L19_3, L20_3, L21_3)
                          L18_3 = Citizen
                          L18_3 = L18_3.Wait
                          L19_3 = 25
                          L18_3(L19_3)
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
      L2_3 = Config
      L2_3 = L2_3.ExtremeDebug
      if L2_3 then
        L2_3 = library
        L2_3 = L2_3.Debug
        L3_3 = "Garage %s Loop stopped!"
        L4_3 = L3_3
        L3_3 = L3_3.format
        L5_3 = garageZone
        L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3, L38_3 = L3_3(L4_3, L5_3)
        L2_3(L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3, L38_3)
      end
    end
    L4_2(L5_2)
  end
end
EnterZone = L0_1
function L0_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  if "impound" == A2_2 then
    L3_2 = Config
    L3_2 = L3_2.Impounds
    L4_2 = impoundZone
    L3_2 = L3_2[L4_2]
    L3_2 = L3_2.npcPed
    if L3_2 then
      L3_2 = DeletePed
      L4_2 = Config
      L4_2 = L4_2.Impounds
      L5_2 = impoundZone
      L4_2 = L4_2[L5_2]
      L4_2 = L4_2.npcPed
      L3_2(L4_2)
      L3_2 = Config
      L3_2 = L3_2.Impounds
      L4_2 = impoundZone
      L3_2 = L3_2[L4_2]
      L3_2.npcPed = nil
      L3_2 = removeLocalObjects
      L4_2 = impoundZone
      L3_2(L4_2)
    end
    L3_2 = library
    L3_2 = L3_2.Debug
    L4_2 = "You have left the Impound Zone: %s"
    L5_2 = L4_2
    L4_2 = L4_2.format
    L6_2 = impoundZone
    L4_2, L5_2, L6_2 = L4_2(L5_2, L6_2)
    L3_2(L4_2, L5_2, L6_2)
    impoundZone = nil
  else
    L3_2 = Config
    L3_2 = L3_2.Garages
    L4_2 = garageZone
    L3_2 = L3_2[L4_2]
    L3_2 = L3_2.npcPed
    if L3_2 then
      L3_2 = DeletePed
      L4_2 = Config
      L4_2 = L4_2.Garages
      L5_2 = garageZone
      L4_2 = L4_2[L5_2]
      L4_2 = L4_2.npcPed
      L3_2(L4_2)
      L3_2 = Config
      L3_2 = L3_2.Garages
      L4_2 = garageZone
      L3_2 = L3_2[L4_2]
      L3_2.npcPed = nil
    end
    L3_2 = library
    L3_2 = L3_2.Debug
    L4_2 = "You have left the Garage Zone: %s"
    L5_2 = L4_2
    L4_2 = L4_2.format
    L6_2 = garageZone
    L4_2, L5_2, L6_2 = L4_2(L5_2, L6_2)
    L3_2(L4_2, L5_2, L6_2)
    L3_2 = isEnteringToIPL
    if not L3_2 then
      L3_2 = removeLocalVehicles
      L4_2 = garageZone
      L3_2(L4_2)
      L3_2 = removeLocalObjects
      L4_2 = garageZone
      L3_2(L4_2)
    end
    isEnteringToIPL = false
    garageZone = nil
  end
end
ExitZone = L0_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2.owner
  L2_2 = myIdentifier
  if L1_2 == L2_2 then
    L1_2 = true
    return L1_2
  end
  L1_2 = CL
  L1_2 = L1_2.GetPlayerJob
  L2_2 = "name"
  L1_2 = L1_2(L2_2)
  L2_2 = CL
  L2_2 = L2_2.GetPlayerJob
  L3_2 = "grade"
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2.company
  if L3_2 then
    L3_2 = library
    L3_2 = L3_2.HasGroupAccess
    L4_2 = {}
    L5_2 = A0_2.owner
    L4_2.vehicleOwner = L5_2
    L4_2.groupType = "company"
    L5_2 = A0_2.company
    L4_2.requiredGroupName = L5_2
    L4_2.groupName = L1_2
    L4_2.groupGrade = L2_2
    L3_2 = L3_2(L4_2)
    if L3_2 then
      L3_2 = true
      return L3_2
    end
  end
  L3_2 = CL
  L3_2 = L3_2.GetPlayerGang
  L4_2 = "name"
  L3_2 = L3_2(L4_2)
  L4_2 = CL
  L4_2 = L4_2.GetPlayerGang
  L5_2 = "grade"
  L4_2 = L4_2(L5_2)
  L5_2 = A0_2.gang
  if L5_2 then
    L5_2 = library
    L5_2 = L5_2.HasGroupAccess
    L6_2 = {}
    L7_2 = A0_2.owner
    L6_2.vehicleOwner = L7_2
    L6_2.groupType = "gang"
    L7_2 = A0_2.gang
    L6_2.requiredGroupName = L7_2
    L6_2.groupName = L3_2
    L6_2.groupGrade = L4_2
    L5_2 = L5_2(L6_2)
    if L5_2 then
      L5_2 = true
      return L5_2
    end
  end
end
isPlayerAllowedToGetVehicle = L0_1
function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L2_2 = 0
  L3_2 = #A1_2
  L4_2 = A0_2.x
  L5_2 = A0_2.y
  L6_2 = 1
  L7_2 = L3_2
  L8_2 = 1
  for L9_2 = L6_2, L7_2, L8_2 do
    L10_2 = L9_2 % L3_2
    L10_2 = L10_2 + 1
    L11_2 = A1_2[L9_2]
    L12_2 = A1_2[L10_2]
    L13_2 = L11_2.y
    L13_2 = L5_2 < L13_2
    L14_2 = L12_2.y
    L14_2 = L5_2 < L14_2
    if L13_2 ~= L14_2 then
      L13_2 = L12_2.x
      L14_2 = L11_2.x
      L13_2 = L13_2 - L14_2
      L14_2 = L11_2.y
      L14_2 = L5_2 - L14_2
      L13_2 = L13_2 * L14_2
      L14_2 = L12_2.y
      L15_2 = L11_2.y
      L14_2 = L14_2 - L15_2
      L13_2 = L13_2 / L14_2
      L14_2 = L11_2.x
      L13_2 = L13_2 + L14_2
      if L4_2 < L13_2 then
        L2_2 = L2_2 + 1
      end
    end
  end
  L6_2 = L2_2 % 2
  L6_2 = 1 == L6_2
  return L6_2
end
isPointInPolygon = L0_1
function L0_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2)
  local L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L7_2 = vector3
  L8_2 = A0_2.x
  L9_2 = A0_2.y
  L10_2 = A2_2
  L7_2 = L7_2(L8_2, L9_2, L10_2)
  L8_2 = vector3
  L9_2 = A0_2.x
  L10_2 = A0_2.y
  L11_2 = A3_2
  L8_2 = L8_2(L9_2, L10_2, L11_2)
  L9_2 = vector3
  L10_2 = A1_2.x
  L11_2 = A1_2.y
  L12_2 = A2_2
  L9_2 = L9_2(L10_2, L11_2, L12_2)
  L10_2 = vector3
  L11_2 = A1_2.x
  L12_2 = A1_2.y
  L13_2 = A3_2
  L10_2 = L10_2(L11_2, L12_2, L13_2)
  L11_2 = DrawPoly
  L12_2 = L7_2
  L13_2 = L8_2
  L14_2 = L9_2
  L15_2 = A4_2
  L16_2 = A5_2
  L17_2 = A6_2
  L18_2 = 70
  L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
  L11_2 = DrawPoly
  L12_2 = L8_2
  L13_2 = L10_2
  L14_2 = L9_2
  L15_2 = A4_2
  L16_2 = A5_2
  L17_2 = A6_2
  L18_2 = 70
  L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
  L11_2 = DrawPoly
  L12_2 = L9_2
  L13_2 = L10_2
  L14_2 = L8_2
  L15_2 = A4_2
  L16_2 = A5_2
  L17_2 = A6_2
  L18_2 = 70
  L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
  L11_2 = DrawPoly
  L12_2 = L9_2
  L13_2 = L8_2
  L14_2 = L7_2
  L15_2 = A4_2
  L16_2 = A5_2
  L17_2 = A6_2
  L18_2 = 70
  L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
end
_drawWall = L0_1
L0_1 = Citizen
L0_1 = L0_1.CreateThread
function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2
  while true do
    L0_2 = waitingForLoadAfterRestart
    if not L0_2 then
      break
    end
    L0_2 = Citizen
    L0_2 = L0_2.Wait
    L1_2 = 200
    L0_2(L1_2)
  end
  L0_2 = true
  while true do
    L1_2 = PlayerPedId
    L1_2 = L1_2()
    L2_2 = GetEntityCoords
    L3_2 = L1_2
    L2_2 = L2_2(L3_2)
    L3_2 = vec2
    L4_2 = L2_2.x
    L5_2 = L2_2.y
    L3_2 = L3_2(L4_2, L5_2)
    L0_2 = true
    L4_2 = pairs
    L5_2 = Config
    L5_2 = L5_2.Garages
    L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
    for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
      L10_2 = Config
      L10_2 = L10_2.DebugPolyZone
      if L10_2 then
        L0_2 = false
        L10_2 = L9_2.garageZone
        if L10_2 then
          L10_2 = 1
          L11_2 = L9_2.garageZone
          L11_2 = #L11_2
          L12_2 = 1
          for L13_2 = L10_2, L11_2, L12_2 do
            L14_2 = L9_2.garageZone
            L14_2 = #L14_2
            if L13_2 < L14_2 then
              L14_2 = _drawWall
              L15_2 = L9_2.garageZone
              L15_2 = L15_2[L13_2]
              L16_2 = L9_2.garageZone
              L17_2 = L13_2 + 1
              L16_2 = L16_2[L17_2]
              L17_2 = L9_2.minZ
              L18_2 = L9_2.maxZ
              L19_2 = 114
              L20_2 = 49
              L21_2 = 212
              L14_2(L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
            end
            L14_2 = L9_2.garageZone
            L14_2 = #L14_2
            if L13_2 == L14_2 then
              L14_2 = _drawWall
              L15_2 = L9_2.garageZone
              L15_2 = L15_2[L13_2]
              L16_2 = L9_2.garageZone
              L16_2 = L16_2[1]
              L17_2 = L9_2.minZ
              L18_2 = L9_2.maxZ
              L19_2 = 114
              L20_2 = 49
              L21_2 = 212
              L14_2(L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
            end
          end
        end
      end
      L10_2 = L9_2.garageZone
      if L10_2 then
        L10_2 = isPointInPolygon
        L11_2 = L3_2
        L12_2 = L9_2.garageZone
        L10_2 = L10_2(L11_2, L12_2)
        if L10_2 then
          L10_2 = L2_2.z
          L11_2 = L9_2.minZ
          if L10_2 >= L11_2 then
            L10_2 = L2_2.z
            L11_2 = L9_2.maxZ
            if L10_2 <= L11_2 then
              L10_2 = isInGarageZone
              if not L10_2 then
                isInGarageZone = true
                L10_2 = EnterZone
                L11_2 = true
                L12_2 = L8_2
                L13_2 = "garage"
                L10_2(L11_2, L12_2, L13_2)
                L10_2 = Citizen
                L10_2 = L10_2.Wait
                L11_2 = 150
                L10_2(L11_2)
              end
              L0_2 = false
              break
            end
          end
        end
      end
    end
    L4_2 = isInGarageZone
    if L4_2 then
      L4_2 = garageZone
      if L4_2 then
        L4_2 = Config
        L4_2 = L4_2.Garages
        L5_2 = garageZone
        L4_2 = L4_2[L5_2]
        L4_2 = L4_2.garageZone
        if L4_2 then
          L5_2 = isPointInPolygon
          L6_2 = L3_2
          L7_2 = L4_2
          L5_2 = L5_2(L6_2, L7_2)
          if not L5_2 then
            isInGarageZone = false
            L5_2 = isEnteringToIPL
            if L5_2 then
              L5_2 = Wait
              L6_2 = 3000
              L5_2(L6_2)
            end
            L5_2 = ExitZone
            L6_2 = true
            L7_2 = garageZone
            L8_2 = "garage"
            L5_2(L6_2, L7_2, L8_2)
            L5_2 = Citizen
            L5_2 = L5_2.Wait
            L6_2 = 150
            L5_2(L6_2)
          end
        end
      end
    end
    L4_2 = pairs
    L5_2 = Config
    L5_2 = L5_2.Impounds
    L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
    for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
      L10_2 = Config
      L10_2 = L10_2.DebugPolyZone
      if L10_2 then
        L0_2 = false
        L10_2 = L9_2.garageZone
        if L10_2 then
          L10_2 = 1
          L11_2 = L9_2.garageZone
          L11_2 = #L11_2
          L12_2 = 1
          for L13_2 = L10_2, L11_2, L12_2 do
            L14_2 = L9_2.garageZone
            L14_2 = #L14_2
            if L13_2 < L14_2 then
              L14_2 = _drawWall
              L15_2 = L9_2.garageZone
              L15_2 = L15_2[L13_2]
              L16_2 = L9_2.garageZone
              L17_2 = L13_2 + 1
              L16_2 = L16_2[L17_2]
              L17_2 = L9_2.minZ
              L18_2 = L9_2.maxZ
              L19_2 = 44
              L20_2 = 41
              L21_2 = 214
              L14_2(L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
            end
            L14_2 = L9_2.garageZone
            L14_2 = #L14_2
            if L13_2 == L14_2 then
              L14_2 = _drawWall
              L15_2 = L9_2.garageZone
              L15_2 = L15_2[L13_2]
              L16_2 = L9_2.garageZone
              L16_2 = L16_2[1]
              L17_2 = L9_2.minZ
              L18_2 = L9_2.maxZ
              L19_2 = 44
              L20_2 = 41
              L21_2 = 214
              L14_2(L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
            end
          end
        end
      end
      L10_2 = L9_2.garageZone
      if L10_2 then
        L10_2 = isPointInPolygon
        L11_2 = L3_2
        L12_2 = L9_2.garageZone
        L10_2 = L10_2(L11_2, L12_2)
        if L10_2 then
          L10_2 = L2_2.z
          L11_2 = L9_2.minZ
          if L10_2 >= L11_2 then
            L10_2 = L2_2.z
            L11_2 = L9_2.maxZ
            if L10_2 <= L11_2 then
              L10_2 = isInImpoundZone
              if not L10_2 then
                isInImpoundZone = true
                L10_2 = EnterZone
                L11_2 = true
                L12_2 = L8_2
                L13_2 = "impound"
                L10_2(L11_2, L12_2, L13_2)
                L10_2 = Citizen
                L10_2 = L10_2.Wait
                L11_2 = 150
                L10_2(L11_2)
              end
              L0_2 = false
              break
            end
          end
        end
      end
    end
    L4_2 = isInImpoundZone
    if L4_2 then
      L4_2 = impoundZone
      if L4_2 then
        L4_2 = Config
        L4_2 = L4_2.Impounds
        L5_2 = impoundZone
        L4_2 = L4_2[L5_2]
        L4_2 = L4_2.garageZone
        if L4_2 then
          L5_2 = isPointInPolygon
          L6_2 = L3_2
          L7_2 = L4_2
          L5_2 = L5_2(L6_2, L7_2)
          if not L5_2 then
            isInImpoundZone = false
            L5_2 = ExitZone
            L6_2 = true
            L7_2 = impoundZone
            L8_2 = "impound"
            L5_2(L6_2, L7_2, L8_2)
            L5_2 = Citizen
            L5_2 = L5_2.Wait
            L6_2 = 150
            L5_2(L6_2)
          end
        end
      end
    end
    L4_2 = Citizen
    L4_2 = L4_2.Wait
    if L0_2 then
      L5_2 = 800
      if L5_2 then
        goto lbl_264
      end
    end
    L5_2 = 1
    ::lbl_264::
    L4_2(L5_2)
  end
end
L0_1(L1_1)
L0_1 = Citizen
L0_1 = L0_1.CreateThread
function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L0_2 = pairs
  L1_2 = Config
  L1_2 = L1_2.Garages
  L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
  for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
    L6_2 = nil
    L7_2 = {}
    L8_2 = L5_2.showBlip
    if L8_2 then
      L8_2 = L5_2.nameBlip
      if L8_2 then
        L8_2 = L5_2.requiredJob
        if not L8_2 then
          L8_2 = L5_2.requiredGang
          if not L8_2 then
            L8_2 = L5_2.hasAccess
            if not L8_2 then
              L8_2 = Config
              L8_2 = L8_2.Blips
              L9_2 = L5_2.nameBlip
              L8_2 = L8_2[L9_2]
              L9_2 = AddBlipForCoord
              L10_2 = L5_2.blipCoords
              L9_2 = L9_2(L10_2)
              L5_2.blip = L9_2
              L9_2 = SetBlipSprite
              L10_2 = L5_2.blip
              L11_2 = L8_2.sprite
              L9_2(L10_2, L11_2)
              L9_2 = SetBlipDisplay
              L10_2 = L5_2.blip
              L11_2 = L8_2.display
              L9_2(L10_2, L11_2)
              L9_2 = SetBlipScale
              L10_2 = L5_2.blip
              L11_2 = L8_2.scale
              L9_2(L10_2, L11_2)
              L9_2 = SetBlipColour
              L10_2 = L5_2.blip
              L11_2 = L8_2.color
              L9_2(L10_2, L11_2)
              L9_2 = SetBlipAsShortRange
              L10_2 = L5_2.blip
              L11_2 = true
              L9_2(L10_2, L11_2)
              L9_2 = BeginTextCommandSetBlipName
              L10_2 = "STRING"
              L9_2(L10_2)
              L9_2 = AddTextComponentString
              L10_2 = L8_2.name
              L9_2(L10_2)
              L9_2 = EndTextCommandSetBlipName
              L10_2 = L5_2.blip
              L9_2(L10_2)
            end
          end
        end
      end
    end
  end
  L0_2 = pairs
  L1_2 = Config
  L1_2 = L1_2.Impounds
  L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
  for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
    L6_2 = nil
    L7_2 = {}
    L8_2 = L5_2.showBlip
    if L8_2 then
      L8_2 = L5_2.nameBlip
      if L8_2 then
        L8_2 = L5_2.jobImpound
        if not L8_2 then
          L8_2 = Config
          L8_2 = L8_2.Blips
          L9_2 = L5_2.nameBlip
          L8_2 = L8_2[L9_2]
          L9_2 = AddBlipForCoord
          L10_2 = L5_2.blipCoords
          L9_2 = L9_2(L10_2)
          L5_2.blip = L9_2
          L9_2 = SetBlipSprite
          L10_2 = L5_2.blip
          L11_2 = L8_2.sprite
          L9_2(L10_2, L11_2)
          L9_2 = SetBlipDisplay
          L10_2 = L5_2.blip
          L11_2 = L8_2.display
          L9_2(L10_2, L11_2)
          L9_2 = SetBlipScale
          L10_2 = L5_2.blip
          L11_2 = L8_2.scale
          L9_2(L10_2, L11_2)
          L9_2 = SetBlipColour
          L10_2 = L5_2.blip
          L11_2 = L8_2.color
          L9_2(L10_2, L11_2)
          L9_2 = SetBlipAsShortRange
          L10_2 = L5_2.blip
          L11_2 = true
          L9_2(L10_2, L11_2)
          L9_2 = BeginTextCommandSetBlipName
          L10_2 = "STRING"
          L9_2(L10_2)
          L9_2 = AddTextComponentString
          L10_2 = L8_2.name
          L9_2(L10_2)
          L9_2 = EndTextCommandSetBlipName
          L10_2 = L5_2.blip
          L9_2(L10_2)
        end
      end
    end
  end
end
L0_1(L1_1)
function L0_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L0_2 = pairs
  L1_2 = Config
  L1_2 = L1_2.Garages
  L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
  for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
    L6_2 = L5_2.requiredJob
    if not L6_2 then
      L6_2 = L5_2.requiredGang
      if not L6_2 then
        L6_2 = L5_2.hasAccess
        if not L6_2 then
          goto lbl_150
        end
      end
    end
    L6_2 = L5_2.blip
    if L6_2 then
      L6_2 = RemoveBlip
      L7_2 = L5_2.blip
      L6_2(L7_2)
      L5_2.blip = nil
    end
    L6_2 = L5_2.showBlip
    if L6_2 then
      L6_2 = L5_2.nameBlip
      if L6_2 then
        L6_2 = L5_2.hasAccess
        if L6_2 then
          L6_2 = L5_2.hasAccess
          L7_2 = PlayerData
          L8_2 = myIdentifier
          L6_2 = L6_2(L7_2, L8_2)
          L6_2 = true == L6_2
        end
        L7_2 = CL
        L7_2 = L7_2.GetPlayerJob
        L8_2 = "name"
        L7_2 = L7_2(L8_2)
        L8_2 = CL
        L8_2 = L8_2.GetPlayerJob
        L9_2 = "grade"
        L8_2 = L8_2(L9_2)
        if L7_2 then
          L9_2 = L5_2.requiredJob
          if L9_2 then
            L9_2 = L5_2.requiredJob
            L9_2 = L9_2[L7_2]
            if L9_2 then
              L9_2 = type
              L10_2 = L5_2.requiredJob
              L10_2 = L10_2[L7_2]
              L9_2 = L9_2(L10_2)
              if "table" == L9_2 then
                L9_2 = ipairs
                L10_2 = L5_2.requiredJob
                L10_2 = L10_2[L7_2]
                L9_2, L10_2, L11_2, L12_2 = L9_2(L10_2)
                for L13_2, L14_2 in L9_2, L10_2, L11_2, L12_2 do
                  if L8_2 == L14_2 then
                    L6_2 = true
                  end
                end
              else
                L6_2 = true
              end
            end
          end
        end
        L9_2 = CL
        L9_2 = L9_2.GetPlayerGang
        L10_2 = "name"
        L9_2 = L9_2(L10_2)
        L10_2 = CL
        L10_2 = L10_2.GetPlayerGang
        L11_2 = "grade"
        L10_2 = L10_2(L11_2)
        if L9_2 then
          L11_2 = L5_2.requiredGang
          if L11_2 then
            L11_2 = L5_2.requiredGang
            L11_2 = L11_2[L9_2]
            if L11_2 then
              L11_2 = type
              L12_2 = L5_2.requiredGang
              L12_2 = L12_2[L9_2]
              L11_2 = L11_2(L12_2)
              if "table" == L11_2 then
                L11_2 = ipairs
                L12_2 = L5_2.requiredGang
                L12_2 = L12_2[L9_2]
                L11_2, L12_2, L13_2, L14_2 = L11_2(L12_2)
                for L15_2, L16_2 in L11_2, L12_2, L13_2, L14_2 do
                  if L8_2 == L16_2 then
                    L6_2 = true
                  end
                end
              else
                L6_2 = true
              end
            end
          end
        end
        if L6_2 then
          L11_2 = Config
          L11_2 = L11_2.Blips
          L12_2 = L5_2.nameBlip
          L11_2 = L11_2[L12_2]
          L12_2 = AddBlipForCoord
          L13_2 = L5_2.blipCoords
          L12_2 = L12_2(L13_2)
          L5_2.blip = L12_2
          L12_2 = SetBlipSprite
          L13_2 = L5_2.blip
          L14_2 = L11_2.sprite
          L12_2(L13_2, L14_2)
          L12_2 = SetBlipDisplay
          L13_2 = L5_2.blip
          L14_2 = L11_2.display
          L12_2(L13_2, L14_2)
          L12_2 = SetBlipScale
          L13_2 = L5_2.blip
          L14_2 = L11_2.scale
          L12_2(L13_2, L14_2)
          L12_2 = SetBlipColour
          L13_2 = L5_2.blip
          L14_2 = L11_2.color
          L12_2(L13_2, L14_2)
          L12_2 = SetBlipAsShortRange
          L13_2 = L5_2.blip
          L14_2 = true
          L12_2(L13_2, L14_2)
          L12_2 = BeginTextCommandSetBlipName
          L13_2 = "STRING"
          L12_2(L13_2)
          L12_2 = AddTextComponentString
          L13_2 = L11_2.name
          L12_2(L13_2)
          L12_2 = EndTextCommandSetBlipName
          L13_2 = L5_2.blip
          L12_2(L13_2)
        end
      end
    end
    ::lbl_150::
  end
end
refreshBlips = L0_1
function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L2_2 = garageInteriorId
  if not L2_2 then
    L2_2 = garageZone
  end
  if not L2_2 then
    return
  end
  L3_2 = string
  L3_2 = L3_2.find
  L4_2 = L2_2
  L5_2 = "HouseGarage:"
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 then
    L4_2 = Config
    L4_2 = L4_2.HousingGarages
    L4_2 = L4_2[L2_2]
    if L4_2 then
      goto lbl_23
    end
  end
  L4_2 = Config
  L4_2 = L4_2.Garages
  L4_2 = L4_2[L2_2]
  ::lbl_23::
  L6_2 = A0_2
  L5_2 = A0_2.match
  L7_2 = "^%s*(.-)%s*$"
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = false
  L7_2 = 1
  L8_2 = L4_2.parkingSpaces
  L8_2 = #L8_2
  L9_2 = 1
  for L10_2 = L7_2, L8_2, L9_2 do
    L11_2 = L4_2.parkingSpaces
    L11_2 = L11_2[L10_2]
    if L11_2 then
      L11_2 = L4_2.parkingSpaces
      L11_2 = L11_2[L10_2]
      L11_2 = L11_2.data
      if L11_2 then
        L11_2 = L4_2.parkingSpaces
        L11_2 = L11_2[L10_2]
        L11_2 = L11_2.data
        L11_2 = L11_2.mods
        if L11_2 then
          L11_2 = L4_2.parkingSpaces
          L11_2 = L11_2[L10_2]
          L11_2 = L11_2.data
          L11_2 = L11_2.mods
          L11_2 = L11_2.plate
          if L11_2 == L5_2 then
            L11_2 = SetVehicleDoorsLocked
            L12_2 = L4_2.parkingSpaces
            L12_2 = L12_2[L10_2]
            L12_2 = L12_2.vehicleId
            if A1_2 then
              L13_2 = 1
              if L13_2 then
                goto lbl_64
              end
            end
            L13_2 = 2
            ::lbl_64::
            L11_2(L12_2, L13_2)
            L6_2 = true
            break
          end
        end
      end
    end
  end
  return L6_2
end
L1_1 = exports
L2_1 = "unlockVehicle"
L3_1 = L0_1
L1_1(L2_1, L3_1)
function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L0_2 = garageZone
  if not L0_2 then
    L0_2 = impoundZone
  end
  L1_2 = false
  L2_2 = Config
  L2_2 = L2_2.Impounds
  L2_2 = L2_2[L0_2]
  if L2_2 then
    L1_2 = true
  end
  if L0_2 then
    if L1_2 then
      L2_2 = Config
      L2_2 = L2_2.Impounds
      L2_2 = L2_2[L0_2]
      if L2_2 then
        goto lbl_24
      end
    end
    L2_2 = Config
    L2_2 = L2_2.Garages
    L2_2 = L2_2[L0_2]
    ::lbl_24::
    L3_2 = L2_2.parkingObjects
    if L3_2 then
      L3_2 = 1
      L4_2 = L2_2.parkingObjects
      L4_2 = #L4_2
      L5_2 = 1
      for L6_2 = L3_2, L4_2, L5_2 do
        L7_2 = L2_2.parkingObjects
        L7_2 = L7_2[L6_2]
        L7_2 = L7_2.model
        if L7_2 then
          L7_2 = L2_2.parkingObjects
          L7_2 = L7_2[L6_2]
          L7_2 = L7_2.coords
          if L7_2 then
            L7_2 = L2_2.parkingObjects
            L7_2 = L7_2[L6_2]
            L8_2 = library
            L8_2 = L8_2.SpawnProp
            L9_2 = GetHashKey
            L10_2 = L2_2.parkingObjects
            L10_2 = L10_2[L6_2]
            L10_2 = L10_2.model
            L9_2 = L9_2(L10_2)
            L10_2 = L2_2.parkingObjects
            L10_2 = L10_2[L6_2]
            L10_2 = L10_2.coords
            L10_2 = L10_2.xyz
            L11_2 = false
            L8_2 = L8_2(L9_2, L10_2, L11_2)
            L7_2.entity = L8_2
            L7_2 = SetEntityCoords
            L8_2 = L2_2.parkingObjects
            L8_2 = L8_2[L6_2]
            L8_2 = L8_2.entity
            L9_2 = L2_2.parkingObjects
            L9_2 = L9_2[L6_2]
            L9_2 = L9_2.coords
            L9_2 = L9_2.xyz
            L7_2(L8_2, L9_2)
            L7_2 = SetEntityHeading
            L8_2 = L2_2.parkingObjects
            L8_2 = L8_2[L6_2]
            L8_2 = L8_2.entity
            L9_2 = L2_2.parkingObjects
            L9_2 = L9_2[L6_2]
            L9_2 = L9_2.coords
            L9_2 = L9_2.w
            L7_2(L8_2, L9_2)
          end
        end
      end
    end
  end
end
spawnLocalObjects = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L1_2 = A0_2 or nil
  if not A0_2 then
    L1_2 = garageInteriorId
    if not L1_2 then
      L1_2 = garageZone
    end
  end
  if L1_2 then
    L2_2 = string
    L2_2 = L2_2.find
    L3_2 = L1_2
    L4_2 = "HouseGarage:"
    L2_2 = L2_2(L3_2, L4_2)
    if L2_2 then
      L3_2 = Config
      L3_2 = L3_2.HousingGarages
      L3_2 = L3_2[L1_2]
      if L3_2 then
        goto lbl_24
      end
    end
    L3_2 = Config
    L3_2 = L3_2.Garages
    L3_2 = L3_2[L1_2]
    ::lbl_24::
    L4_2 = CL
    L4_2 = L4_2.GetPlayerJob
    L5_2 = "name"
    L4_2 = L4_2(L5_2)
    L5_2 = CL
    L5_2 = L5_2.GetPlayerJob
    L6_2 = "grade"
    L5_2 = L5_2(L6_2)
    L6_2 = CL
    L6_2 = L6_2.GetPlayerGang
    L7_2 = "name"
    L6_2 = L6_2(L7_2)
    L7_2 = CL
    L7_2 = L7_2.GetPlayerGang
    L8_2 = "grade"
    L7_2 = L7_2(L8_2)
    L8_2 = 1
    L9_2 = L3_2.parkingSpaces
    L9_2 = #L9_2
    L10_2 = 1
    for L11_2 = L8_2, L9_2, L10_2 do
      if L1_2 then
        L12_2 = L3_2.parkingSpaces
        L12_2 = L12_2[L11_2]
        L12_2 = L12_2.data
        if L12_2 then
          L12_2 = L3_2.parkingSpaces
          L12_2 = L12_2[L11_2]
          L12_2 = L12_2.data
          L12_2 = L12_2.mods
          if L12_2 then
            function L12_2()
              local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3
              L0_3 = false
              L1_3 = L3_2.parkingSpaces
              L2_3 = L11_2
              L1_3 = L1_3[L2_3]
              L2_3 = L1_3.data
              L2_3 = L2_3.mods
              L2_3 = L2_3.model
              L3_3 = L1_3.data
              L3_3 = L3_3.mods
              L3_3 = L3_3.plate
              L4_3 = L1_3.coords
              L5_3 = library
              L5_3 = L5_3.Debug
              L6_3 = "^4[REQUESTING]^7 Vehicle %s [%s] on %s space"
              L7_3 = L6_3
              L6_3 = L6_3.format
              L8_3 = L2_3
              L9_3 = L3_3
              L10_3 = L11_2
              L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3 = L6_3(L7_3, L8_3, L9_3, L10_3)
              L5_3(L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3)
              L5_3 = Config
              L5_3 = L5_3.ShowLoadingText
              if L5_3 then
                L5_3 = CreateThread
                function L6_3()
                  local L0_4, L1_4, L2_4, L3_4
                  while true do
                    L0_4 = L0_3
                    if L0_4 then
                      break
                    end
                    L0_4 = garageInteriorId
                    if not L0_4 then
                      L0_4 = garageZone
                      if not L0_4 then
                        break
                      end
                    end
                    L0_4 = CL
                    L0_4 = L0_4.DrawText3D
                    L1_4 = L4_3.xyz
                    L2_4 = TRANSLATE
                    L3_4 = "3dtext.loading"
                    L2_4 = L2_4(L3_4)
                    L3_4 = Config
                    L3_4 = L3_4.LoadingTextScale
                    L0_4(L1_4, L2_4, L3_4)
                    L0_4 = Wait
                    L1_4 = 1
                    L0_4(L1_4)
                  end
                end
                L5_3(L6_3)
              end
              L5_3 = 3
              L6_3 = false
              L7_3 = 1
              L8_3 = L5_3
              L9_3 = 1
              for L10_3 = L7_3, L8_3, L9_3 do
                if L10_3 > 1 then
                  L11_3 = library
                  L11_3 = L11_3.Debug
                  L12_3 = "^3[REQUESTING]^7 Attempt %s of requesting model %s [%s] on %s space"
                  L13_3 = L12_3
                  L12_3 = L12_3.format
                  L14_3 = L10_3
                  L15_3 = L2_3
                  L16_3 = L3_3
                  L17_3 = L11_2
                  L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3 = L12_3(L13_3, L14_3, L15_3, L16_3, L17_3)
                  L11_3(L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3)
                end
                L11_3 = library
                L11_3 = L11_3.RequestEntity
                L12_3 = L2_3
                L11_3 = L11_3(L12_3)
                L6_3 = L11_3
                L11_3 = garageInteriorId
                if not L11_3 then
                  L11_3 = garageZone
                  if not L11_3 then
                    return
                  end
                end
                if L6_3 then
                  break
                end
                L11_3 = Wait
                L12_3 = 100
                L11_3(L12_3)
              end
              L0_3 = true
              if not L6_3 then
                L7_3 = library
                L7_3 = L7_3.Debug
                L8_3 = "^1[REQUESTING]^7 Failed to load vehicle model %s after %s attempts"
                L9_3 = L8_3
                L8_3 = L8_3.format
                L10_3 = L2_3
                L11_3 = L5_3
                L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3 = L8_3(L9_3, L10_3, L11_3)
                return L7_3(L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3)
              end
              L7_3 = nil
              L8_3 = 1
              L9_3 = L5_3
              L10_3 = 1
              for L11_3 = L8_3, L9_3, L10_3 do
                if L11_3 > 1 then
                  L12_3 = library
                  L12_3 = L12_3.Debug
                  L13_3 = "^3[LOAD]^7 Attempt %s of creating model %s [%s] on %s space"
                  L14_3 = L13_3
                  L13_3 = L13_3.format
                  L15_3 = L11_3
                  L16_3 = L2_3
                  L17_3 = L3_3
                  L18_3 = L11_2
                  L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3 = L13_3(L14_3, L15_3, L16_3, L17_3, L18_3)
                  L12_3(L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3)
                end
                L12_3 = CreateVehicle
                L13_3 = L2_3
                L14_3 = L4_3.x
                L15_3 = L4_3.y
                L16_3 = L4_3.z
                L17_3 = L4_3.w
                L18_3 = false
                L19_3 = true
                L12_3 = L12_3(L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3)
                L7_3 = L12_3
                L12_3 = 0
                while true do
                  L13_3 = DoesEntityExist
                  L14_3 = L7_3
                  L13_3 = L13_3(L14_3)
                  if L13_3 then
                    break
                  end
                  L13_3 = Config
                  L13_3 = L13_3.ShowLoadingText
                  if L13_3 then
                    L13_3 = CL
                    L13_3 = L13_3.DrawText3D
                    L14_3 = L4_3.xyz
                    L15_3 = TRANSLATE
                    L16_3 = "3dtext.waiting"
                    L15_3 = L15_3(L16_3)
                    L16_3 = Config
                    L16_3 = L16_3.LoadingTextScale
                    L13_3(L14_3, L15_3, L16_3)
                  end
                  L12_3 = L12_3 + 1
                  L13_3 = garageInteriorId
                  if not L13_3 then
                    L13_3 = garageZone
                    if not L13_3 then
                      return
                    end
                  end
                  L13_3 = 1000
                  if L12_3 >= L13_3 then
                    break
                  end
                  L13_3 = Wait
                  L14_3 = 1
                  L13_3(L14_3)
                end
                if L7_3 and 0 ~= L7_3 then
                  L13_3 = DoesEntityExist
                  L14_3 = L7_3
                  L13_3 = L13_3(L14_3)
                  if L13_3 then
                    break
                  end
                end
                L13_3 = Wait
                L14_3 = 100
                L13_3(L14_3)
              end
              if L7_3 and 0 ~= L7_3 then
                L8_3 = DoesEntityExist
                L9_3 = L7_3
                L8_3 = L8_3(L9_3)
                if L8_3 then
                  goto lbl_169
                end
              end
              L8_3 = library
              L8_3 = L8_3.Debug
              L9_3 = "^1[LOAD]^7 Failed to create vehicle after %s attempts (%s)"
              L10_3 = L9_3
              L9_3 = L9_3.format
              L11_3 = L5_3
              L12_3 = L2_3
              L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3 = L9_3(L10_3, L11_3, L12_3)
              do return L8_3(L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3) end
              ::lbl_169::
              L1_3.vehicleId = L7_3
              L8_3 = Config
              L8_3 = L8_3.ClearCacheOfVehicleModels
              if L8_3 then
                L8_3 = SetModelAsNoLongerNeeded
                L9_3 = L2_3
                L8_3(L9_3)
              end
              L8_3 = library
              L8_3 = L8_3.Debug
              L9_3 = "^2[LOAD]^7 Created vehicle %s [%s] on %s space"
              L10_3 = L9_3
              L9_3 = L9_3.format
              L11_3 = L2_3
              L12_3 = L3_3
              L13_3 = L11_2
              L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3 = L9_3(L10_3, L11_3, L12_3, L13_3)
              L8_3(L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3)
              L8_3 = SetEntityCoords
              L9_3 = L1_3.vehicleId
              L10_3 = L4_3.xyz
              L8_3(L9_3, L10_3)
              L8_3 = SetEntityHeading
              L9_3 = L1_3.vehicleId
              L10_3 = L4_3.w
              L8_3(L9_3, L10_3)
              L8_3 = L1_3.rotation
              if L8_3 then
                L8_3 = SetEntityRotation
                L9_3 = L1_3.vehicleId
                L10_3 = L1_3.rotation
                L10_3 = L10_3.x
                L11_3 = L1_3.rotation
                L11_3 = L11_3.y
                L12_3 = L1_3.rotation
                L12_3 = L12_3.z
                L13_3 = 2
                L14_3 = false
                L8_3(L9_3, L10_3, L11_3, L12_3, L13_3, L14_3)
              end
              L8_3 = CL
              L8_3 = L8_3.SetVehicleProperties
              L9_3 = L1_3.vehicleId
              L10_3 = L1_3.data
              L10_3 = L10_3.mods
              L8_3(L9_3, L10_3)
              L8_3 = FreezeEntityPosition
              L9_3 = L1_3.vehicleId
              L10_3 = true
              L8_3(L9_3, L10_3)
              L8_3 = SetEntityLodDist
              L9_3 = L1_3.vehicleId
              L10_3 = math
              L10_3 = L10_3.floor
              L11_3 = Config
              L11_3 = L11_3.VehiclesLoadDistance
              if not L11_3 then
                L11_3 = 25
              end
              L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3 = L10_3(L11_3)
              L8_3(L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3)
              L8_3 = L2_2
              if L8_3 then
                L8_3 = L2_2
                if not L8_3 then
                  goto lbl_248
                end
                L8_3 = Config
                L8_3 = L8_3.VehiclesHouseGaragesAlwaysOpen
                if L8_3 then
                  goto lbl_248
                end
              end
              L8_3 = L1_3.data
              L8_3 = L8_3.owner
              L9_3 = myIdentifier
              if L8_3 ~= L9_3 then
                L8_3 = SetVehicleDoorsLocked
                L9_3 = L1_3.vehicleId
                L10_3 = 2
                L8_3(L9_3, L10_3)
              end
              ::lbl_248::
              L8_3 = CL
              L8_3 = L8_3.SetOnVehicleSpawnLocally
              L9_3 = L1_3.vehicleId
              L10_3 = L1_3.data
              L10_3 = L10_3.mods
              L8_3(L9_3, L10_3)
              L8_3 = L1_3.data
              L8_3 = L8_3.company
              if L8_3 then
                L8_3 = library
                L8_3 = L8_3.HasGroupAccess
                L9_3 = {}
                L10_3 = L1_3.data
                L10_3 = L10_3.owner
                L9_3.vehicleOwner = L10_3
                L9_3.groupType = "company"
                L10_3 = L1_3.data
                L10_3 = L10_3.company
                L9_3.requiredGroupName = L10_3
                L10_3 = L4_2
                L9_3.groupName = L10_3
                L10_3 = L5_2
                L9_3.groupGrade = L10_3
                L8_3 = L8_3(L9_3)
                if L8_3 then
                  L8_3 = SetVehicleDoorsLocked
                  L9_3 = L7_3
                  L10_3 = 1
                  L8_3(L9_3, L10_3)
                end
              end
              L8_3 = L1_3.data
              L8_3 = L8_3.gang
              if L8_3 then
                L8_3 = library
                L8_3 = L8_3.HasGroupAccess
                L9_3 = {}
                L10_3 = L1_3.data
                L10_3 = L10_3.owner
                L9_3.vehicleOwner = L10_3
                L9_3.groupType = "gang"
                L10_3 = L1_3.data
                L10_3 = L10_3.gang
                L9_3.requiredGroupName = L10_3
                L10_3 = L6_2
                L9_3.groupName = L10_3
                L10_3 = L7_2
                L9_3.groupGrade = L10_3
                L8_3 = L8_3(L9_3)
                if L8_3 then
                  L8_3 = SetVehicleDoorsLocked
                  L9_3 = L7_3
                  L10_3 = 1
                  L8_3(L9_3, L10_3)
                end
              end
            end
            L13_2 = Config
            L13_2 = L13_2.InstantVehicleLoading
            if L13_2 then
              L13_2 = Citizen
              L13_2 = L13_2.CreateThread
              L14_2 = L12_2
              L13_2(L14_2)
            else
              L13_2 = L12_2
              L13_2()
            end
            L13_2 = Citizen
            L13_2 = L13_2.Wait
            L14_2 = 5
            L13_2(L14_2)
          end
        end
      end
    end
  end
end
spawnLocalVehicles = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  L2_2 = garageZone
  if not L2_2 then
    L2_2 = garageInteriorId
  end
  if L2_2 then
    L3_2 = CL
    L3_2 = L3_2.GetPlayerJob
    L4_2 = "name"
    L3_2 = L3_2(L4_2)
    L4_2 = CL
    L4_2 = L4_2.GetPlayerJob
    L5_2 = "grade"
    L4_2 = L4_2(L5_2)
    L5_2 = CL
    L5_2 = L5_2.GetPlayerGang
    L6_2 = "name"
    L5_2 = L5_2(L6_2)
    L6_2 = CL
    L6_2 = L6_2.GetPlayerGang
    L7_2 = "grade"
    L6_2 = L6_2(L7_2)
    if A1_2 then
      L7_2 = Config
      L7_2 = L7_2.HousingGarages
      L7_2 = L7_2[L2_2]
      if L7_2 then
        goto lbl_33
      end
    end
    L7_2 = Config
    L7_2 = L7_2.Garages
    L7_2 = L7_2[L2_2]
    ::lbl_33::
    L8_2 = L7_2.parkingSpaces
    L8_2 = L8_2[A0_2]
    L9_2 = L8_2.data
    L9_2 = L9_2.mods
    L9_2 = L9_2.plate
    L10_2 = L8_2.coords
    L11_2 = L8_2.data
    L11_2 = L11_2.mods
    L11_2 = L11_2.model
    L12_2 = library
    L12_2 = L12_2.RequestEntity
    L13_2 = L8_2.data
    L13_2 = L13_2.mods
    L13_2 = L13_2.model
    L12_2(L13_2)
    L12_2 = library
    L12_2 = L12_2.Debug
    L13_2 = "^5[LOAD]^7 Vehicle %s [%s] on %s space"
    L14_2 = L13_2
    L13_2 = L13_2.format
    L15_2 = L11_2
    L16_2 = L9_2
    L17_2 = A0_2
    L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2 = L13_2(L14_2, L15_2, L16_2, L17_2)
    L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
    L12_2 = CreateVehicle
    L13_2 = L11_2
    L14_2 = L10_2.xyz
    L15_2 = L10_2.w
    L16_2 = false
    L17_2 = true
    L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2, L17_2)
    while true do
      L13_2 = DoesEntityExist
      L14_2 = L12_2
      L13_2 = L13_2(L14_2)
      if L13_2 then
        break
      end
      L13_2 = Wait
      L14_2 = 1
      L13_2(L14_2)
    end
    L8_2.vehicleId = L12_2
    L13_2 = library
    L13_2 = L13_2.Debug
    L14_2 = "^2[LOAD]^7 Vehicle %s [%s] on %s space"
    L15_2 = L14_2
    L14_2 = L14_2.format
    L16_2 = L11_2
    L17_2 = L9_2
    L18_2 = A0_2
    L14_2, L15_2, L16_2, L17_2, L18_2, L19_2 = L14_2(L15_2, L16_2, L17_2, L18_2)
    L13_2(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
    L13_2 = SetEntityCoords
    L14_2 = L8_2.vehicleId
    L15_2 = L10_2.xyz
    L13_2(L14_2, L15_2)
    L13_2 = SetEntityHeading
    L14_2 = L8_2.vehicleId
    L15_2 = L10_2.w
    L13_2(L14_2, L15_2)
    L13_2 = L8_2.rotation
    if L13_2 then
      L13_2 = SetEntityRotation
      L14_2 = L8_2.vehicleId
      L15_2 = L8_2.rotation
      L15_2 = L15_2.x
      L16_2 = L8_2.rotation
      L16_2 = L16_2.y
      L17_2 = L8_2.rotation
      L17_2 = L17_2.z
      L18_2 = 2
      L19_2 = false
      L13_2(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
    end
    L13_2 = CL
    L13_2 = L13_2.SetVehicleProperties
    L14_2 = L8_2.vehicleId
    L15_2 = L8_2.data
    L15_2 = L15_2.mods
    L13_2(L14_2, L15_2)
    L13_2 = FreezeEntityPosition
    L14_2 = L8_2.vehicleId
    L15_2 = true
    L13_2(L14_2, L15_2)
    L13_2 = SetEntityLodDist
    L14_2 = L8_2.vehicleId
    L15_2 = math
    L15_2 = L15_2.floor
    L16_2 = Config
    L16_2 = L16_2.VehiclesLoadDistance
    if not L16_2 then
      L16_2 = 25
    end
    L15_2, L16_2, L17_2, L18_2, L19_2 = L15_2(L16_2)
    L13_2(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
    if A1_2 then
      if not A1_2 then
        goto lbl_143
      end
      L13_2 = Config
      L13_2 = L13_2.VehiclesHouseGaragesAlwaysOpen
      if L13_2 then
        goto lbl_143
      end
    end
    L13_2 = L8_2.data
    L13_2 = L13_2.owner
    L14_2 = myIdentifier
    if L13_2 ~= L14_2 then
      L13_2 = SetVehicleDoorsLocked
      L14_2 = L8_2.vehicleId
      L15_2 = 2
      L13_2(L14_2, L15_2)
    end
    ::lbl_143::
    L13_2 = CL
    L13_2 = L13_2.SetOnVehicleSpawnLocally
    L14_2 = L8_2.vehicleId
    L15_2 = L8_2.data
    L15_2 = L15_2.mods
    L13_2(L14_2, L15_2)
    L13_2 = L8_2.data
    L13_2 = L13_2.company
    if L13_2 then
      L13_2 = library
      L13_2 = L13_2.HasGroupAccess
      L14_2 = {}
      L15_2 = L8_2.data
      L15_2 = L15_2.owner
      L14_2.vehicleOwner = L15_2
      L14_2.groupType = "company"
      L15_2 = L8_2.data
      L15_2 = L15_2.company
      L14_2.requiredGroupName = L15_2
      L14_2.groupName = L3_2
      L14_2.groupGrade = L4_2
      L13_2 = L13_2(L14_2)
      if L13_2 then
        L13_2 = SetVehicleDoorsLocked
        L14_2 = L8_2.vehicleId
        L15_2 = 1
        L13_2(L14_2, L15_2)
      end
    end
    L13_2 = L8_2.data
    L13_2 = L13_2.gang
    if L13_2 then
      L13_2 = library
      L13_2 = L13_2.HasGroupAccess
      L14_2 = {}
      L15_2 = L8_2.data
      L15_2 = L15_2.owner
      L14_2.vehicleOwner = L15_2
      L14_2.groupType = "gang"
      L15_2 = L8_2.data
      L15_2 = L15_2.gang
      L14_2.requiredGroupName = L15_2
      L14_2.groupName = L5_2
      L14_2.groupGrade = L6_2
      L13_2 = L13_2(L14_2)
      if L13_2 then
        L13_2 = SetVehicleDoorsLocked
        L14_2 = L8_2.vehicleId
        L15_2 = 1
        L13_2(L14_2, L15_2)
      end
    end
  end
end
spawnLocalVehicle = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = garageZone
  if not L2_2 then
    L2_2 = garageInteriorId
  end
  if L2_2 then
    if A1_2 then
      L3_2 = Config
      L3_2 = L3_2.HousingGarages
      L3_2 = L3_2[L2_2]
      L3_2 = L3_2.parkingSpaces
      L3_2 = L3_2[A0_2]
      if L3_2 then
        goto lbl_21
      end
    end
    L3_2 = Config
    L3_2 = L3_2.Garages
    L3_2 = L3_2[L2_2]
    L3_2 = L3_2.parkingSpaces
    L3_2 = L3_2[A0_2]
    ::lbl_21::
    if L3_2 then
      L4_2 = library
      L4_2 = L4_2.Callback
      L5_2 = "vms_garagesv2:takeVehicle"
      function L6_2(A0_3, A1_3, A2_3, A3_3)
        local L4_3, L5_3, L6_3, L7_3, L8_3
        if A0_3 and A2_3 then
          L4_3 = NetToVeh
          L5_3 = A2_3
          L4_3 = L4_3(L5_3)
          L5_3 = FreezeEntityPosition
          L6_3 = L4_3
          L7_3 = false
          L5_3(L6_3, L7_3)
          L5_3 = TaskWarpPedIntoVehicle
          L6_3 = PlayerPedId
          L6_3 = L6_3()
          L7_3 = L4_3
          L8_3 = -1
          L5_3(L6_3, L7_3, L8_3)
          L5_3 = L3_2.coords
          if L5_3 then
            L5_3 = SetEntityCoords
            L6_3 = L4_3
            L7_3 = L3_2.coords
            L7_3 = L7_3.xyz
            L5_3(L6_3, L7_3)
            L5_3 = SetEntityHeading
            L6_3 = L4_3
            L7_3 = L3_2.coords
            L7_3 = L7_3.w
            L5_3(L6_3, L7_3)
          end
          L5_3 = CL
          L5_3 = L5_3.SetOnVehicleSpawn
          L6_3 = L4_3
          L7_3 = A1_3.mods
          L5_3(L6_3, L7_3)
          L5_3 = Config
          L5_3 = L5_3.AddVehicleKeysOn
          L5_3 = L5_3[A3_3]
          if L5_3 then
            L5_3 = CL
            L5_3 = L5_3.GiveVehicleKeys
            L6_3 = L4_3
            L7_3 = A1_3.mods
            L7_3 = L7_3.plate
            L5_3(L6_3, L7_3)
          end
        end
      end
      L7_2 = L2_2
      L8_2 = A0_2
      L9_2 = A1_2
      L10_2 = L3_2.data
      L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
    end
  end
end
spawnGlobalVehicle = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = false
  L2_2 = Config
  L2_2 = L2_2.Impounds
  L2_2 = L2_2[A0_2]
  if L2_2 then
    L1_2 = true
  end
  if A0_2 then
    if L1_2 then
      L2_2 = Config
      L2_2 = L2_2.Impounds
      L2_2 = L2_2[A0_2]
      if L2_2 then
        goto lbl_20
      end
    end
    L2_2 = Config
    L2_2 = L2_2.Garages
    L2_2 = L2_2[A0_2]
    ::lbl_20::
    L3_2 = L2_2.parkingObjects
    if L3_2 then
      L3_2 = 1
      L4_2 = L2_2.parkingObjects
      L4_2 = #L4_2
      L5_2 = 1
      for L6_2 = L3_2, L4_2, L5_2 do
        L7_2 = L2_2.parkingObjects
        L7_2 = L7_2[L6_2]
        L7_2 = L7_2.entity
        if L7_2 then
          L7_2 = DoesEntityExist
          L8_2 = L2_2.parkingObjects
          L8_2 = L8_2[L6_2]
          L8_2 = L8_2.entity
          L7_2 = L7_2(L8_2)
          if L7_2 then
            L7_2 = DeleteEntity
            L8_2 = L2_2.parkingObjects
            L8_2 = L8_2[L6_2]
            L8_2 = L8_2.entity
            L7_2(L8_2)
            L7_2 = L2_2.parkingObjects
            L7_2 = L7_2[L6_2]
            L7_2.entity = nil
          end
        end
      end
    end
  end
end
removeLocalObjects = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  if A1_2 then
    L2_2 = Config
    L2_2 = L2_2.HousingGarages
    L2_2 = L2_2[A0_2]
    if L2_2 then
      goto lbl_11
    end
  end
  L2_2 = Config
  L2_2 = L2_2.Garages
  L2_2 = L2_2[A0_2]
  ::lbl_11::
  if not L2_2 then
    return
  end
  L3_2 = L2_2.parkingSpaces
  if L3_2 then
    L3_2 = 1
    L4_2 = L2_2.parkingSpaces
    L4_2 = #L4_2
    L5_2 = 1
    for L6_2 = L3_2, L4_2, L5_2 do
      L7_2 = L2_2.parkingSpaces
      L7_2 = L7_2[L6_2]
      L7_2 = L7_2.vehicleId
      if L7_2 then
        L7_2 = DeleteEntity
        L8_2 = L2_2.parkingSpaces
        L8_2 = L8_2[L6_2]
        L8_2 = L8_2.vehicleId
        L7_2(L8_2)
        L7_2 = L2_2.parkingSpaces
        L7_2 = L7_2[L6_2]
        L7_2.vehicleId = nil
      end
    end
  end
end
removeLocalVehicles = L1_1
function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L0_2 = garageZone
  if not L0_2 then
    return
  end
  L0_2 = Config
  L0_2 = L0_2.Garages
  L1_2 = garageZone
  L0_2 = L0_2[L1_2]
  if not L0_2 then
    return
  end
  L1_2 = L0_2.parkingSpaces
  if not L1_2 then
    return
  end
  L1_2 = CL
  L1_2 = L1_2.GetPlayerJob
  L2_2 = "name"
  L1_2 = L1_2(L2_2)
  L2_2 = CL
  L2_2 = L2_2.GetPlayerJob
  L3_2 = "grade"
  L2_2 = L2_2(L3_2)
  L3_2 = CL
  L3_2 = L3_2.GetPlayerGang
  L4_2 = "name"
  L3_2 = L3_2(L4_2)
  L4_2 = CL
  L4_2 = L4_2.GetPlayerGang
  L5_2 = "grade"
  L4_2 = L4_2(L5_2)
  L5_2 = 1
  L6_2 = L0_2.parkingSpaces
  L6_2 = #L6_2
  L7_2 = 1
  for L8_2 = L5_2, L6_2, L7_2 do
    L9_2 = L0_2.parkingSpaces
    L9_2 = L9_2[L8_2]
    L10_2 = L9_2.vehicleId
    if L10_2 then
      L10_2 = DoesEntityExist
      L11_2 = L9_2.vehicleId
      L10_2 = L10_2(L11_2)
      if L10_2 then
        L10_2 = L9_2.data
        L10_2 = L10_2.owner
        L11_2 = myIdentifier
        if L10_2 ~= L11_2 then
          L10_2 = SetVehicleDoorsLocked
          L11_2 = L9_2.vehicleId
          L12_2 = 2
          L10_2(L11_2, L12_2)
        end
        L10_2 = L9_2.data
        L10_2 = L10_2.company
        if L10_2 then
          L10_2 = library
          L10_2 = L10_2.HasGroupAccess
          L11_2 = {}
          L12_2 = L9_2.data
          L12_2 = L12_2.owner
          L11_2.vehicleOwner = L12_2
          L11_2.groupType = "company"
          L12_2 = L9_2.data
          L12_2 = L12_2.company
          L11_2.requiredGroupName = L12_2
          L11_2.groupName = L1_2
          L11_2.groupGrade = L2_2
          L10_2 = L10_2(L11_2)
          if L10_2 then
            L10_2 = SetVehicleDoorsLocked
            L11_2 = L9_2.vehicleId
            L12_2 = 1
            L10_2(L11_2, L12_2)
          end
        end
        L10_2 = L9_2.data
        L10_2 = L10_2.gang
        if L10_2 then
          L10_2 = library
          L10_2 = L10_2.HasGroupAccess
          L11_2 = {}
          L12_2 = L9_2.data
          L12_2 = L12_2.owner
          L11_2.vehicleOwner = L12_2
          L11_2.groupType = "gang"
          L12_2 = L9_2.data
          L12_2 = L12_2.gang
          L11_2.requiredGroupName = L12_2
          L11_2.groupName = L3_2
          L11_2.groupGrade = L4_2
          L10_2 = L10_2(L11_2)
          if L10_2 then
            L10_2 = SetVehicleDoorsLocked
            L11_2 = L9_2.vehicleId
            L12_2 = 1
            L10_2(L11_2, L12_2)
          end
        end
      end
    end
  end
end
refreshVehiclesAccess = L1_1
L1_1 = false
function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  L4_2 = A0_2
  L5_2 = GetVehicleNumberPlateText
  L6_2 = L4_2
  L5_2 = L5_2(L6_2)
  L6_2 = A1_2
  L7_2 = A2_2
  if A3_2 then
    L8_2 = Config
    L8_2 = L8_2.HousingGarages
    L8_2 = L8_2[L6_2]
    L8_2 = L8_2.parkingSpaces
    L8_2 = L8_2[L7_2]
    if L8_2 then
      goto lbl_21
    end
  end
  L8_2 = Config
  L8_2 = L8_2.Garages
  L8_2 = L8_2[L6_2]
  L8_2 = L8_2.parkingSpaces
  L8_2 = L8_2[L7_2]
  ::lbl_21::
  L9_2 = L8_2.occupied
  if L9_2 then
    return
  end
  if not A3_2 then
    L9_2 = library
    L9_2 = L9_2.IsModelAllowed
    L10_2 = Config
    L10_2 = L10_2.Garages
    L10_2 = L10_2[L6_2]
    L11_2 = L4_2
    L9_2 = L9_2(L10_2, L11_2)
    if not L9_2 then
      L9_2 = CL
      L9_2 = L9_2.Notification
      L10_2 = TRANSLATE
      L11_2 = "notify.model_is_not_allowed"
      L10_2 = L10_2(L11_2)
      L11_2 = 4500
      L12_2 = "error"
      return L9_2(L10_2, L11_2, L12_2)
    end
    L9_2 = library
    L9_2 = L9_2.IsJobAllowed
    L10_2 = Config
    L10_2 = L10_2.Garages
    L10_2 = L10_2[L6_2]
    L9_2 = L9_2(L10_2)
    if not L9_2 then
      L9_2 = CL
      L9_2 = L9_2.Notification
      L10_2 = TRANSLATE
      L11_2 = "notify.job_is_not_allowed"
      L10_2 = L10_2(L11_2)
      L11_2 = 4500
      L12_2 = "error"
      return L9_2(L10_2, L11_2, L12_2)
    end
    L9_2 = library
    L9_2 = L9_2.IsGangAllowed
    L10_2 = Config
    L10_2 = L10_2.Garages
    L10_2 = L10_2[L6_2]
    L9_2 = L9_2(L10_2)
    if not L9_2 then
      L9_2 = CL
      L9_2 = L9_2.Notification
      L10_2 = TRANSLATE
      L11_2 = "notify.gang_is_not_allowed"
      L10_2 = L10_2(L11_2)
      L11_2 = 4500
      L12_2 = "error"
      return L9_2(L10_2, L11_2, L12_2)
    end
    L9_2 = library
    L9_2 = L9_2.IsAllowedToPark
    L10_2 = L4_2
    L11_2 = Config
    L11_2 = L11_2.Garages
    L11_2 = L11_2[L6_2]
    L12_2 = L8_2
    L9_2 = L9_2(L10_2, L11_2, L12_2)
    if not L9_2 then
      return
    end
  end
  L9_2 = L1_1
  if L9_2 then
    return
  end
  L9_2 = true
  L1_1 = L9_2
  L9_2 = Citizen
  L9_2 = L9_2.CreateThread
  function L10_2()
    local L0_3, L1_3
    L0_3 = Citizen
    L0_3 = L0_3.Wait
    L1_3 = 3500
    L0_3(L1_3)
    L0_3 = false
    L1_1 = L0_3
  end
  L9_2(L10_2)
  L9_2 = CL
  L9_2 = L9_2.GetVehicleProperties
  L10_2 = L4_2
  L9_2 = L9_2(L10_2)
  L10_2 = library
  L10_2 = L10_2.Callback
  L11_2 = "vms_garagesv2:parkVehicle"
  function L12_2(A0_3, A1_3, A2_3)
    local L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3
    if not A0_3 then
      if "not_owner" == A1_3 then
        L3_3 = CL
        L3_3 = L3_3.Notification
        L4_3 = TRANSLATE
        L5_3 = "notify.you_are_not_owner_of_vehicle"
        L4_3 = L4_3(L5_3)
        L5_3 = 4500
        L6_3 = "error"
        L3_3(L4_3, L5_3, L6_3)
      elseif "wrong_type" == A1_3 then
        L3_3 = CL
        L3_3 = L3_3.Notification
        L4_3 = TRANSLATE
        L5_3 = "notify.wrong_parking_type"
        L4_3 = L4_3(L5_3)
        L5_3 = 4500
        L6_3 = "error"
        L3_3(L4_3, L5_3, L6_3)
      elseif "not_company_vehicle" == A1_3 then
        L3_3 = CL
        L3_3 = L3_3.Notification
        L4_3 = TRANSLATE
        L5_3 = "notify.not_company_vehicle"
        L4_3 = L4_3(L5_3)
        L5_3 = 4500
        L6_3 = "error"
        L3_3(L4_3, L5_3, L6_3)
      elseif "not_company_garage" == A1_3 then
        L3_3 = CL
        L3_3 = L3_3.Notification
        L4_3 = TRANSLATE
        L5_3 = "notify.not_company_garage"
        L4_3 = L4_3(L5_3)
        L5_3 = 4500
        L6_3 = "error"
        L3_3(L4_3, L5_3, L6_3)
      elseif "not_gang_vehicle" == A1_3 then
        L3_3 = CL
        L3_3 = L3_3.Notification
        L4_3 = TRANSLATE
        L5_3 = "notify.not_gang_vehicle"
        L4_3 = L4_3(L5_3)
        L5_3 = 4500
        L6_3 = "error"
        L3_3(L4_3, L5_3, L6_3)
      elseif "not_gang_garage" == A1_3 then
        L3_3 = CL
        L3_3 = L3_3.Notification
        L4_3 = TRANSLATE
        L5_3 = "notify.not_gang_garage"
        L4_3 = L4_3(L5_3)
        L5_3 = 4500
        L6_3 = "error"
        L3_3(L4_3, L5_3, L6_3)
      end
      return
    end
    L3_3 = library
    L3_3 = L3_3.Debug
    L4_3 = "^2[PARKED]^7 Garage: "
    L5_3 = L6_2
    L6_3 = ":"
    L7_3 = L7_2
    L8_3 = " - ^4"
    L9_3 = L5_2
    L4_3 = L4_3 .. L5_3 .. L6_3 .. L7_3 .. L8_3 .. L9_3
    L3_3(L4_3)
    L3_3 = Config
    L3_3 = L3_3.RemoveVehicleKeysOn
    L3_3 = L3_3[A2_3]
    if L3_3 then
      L3_3 = CL
      L3_3 = L3_3.RemoveVehicleKeys
      L4_3 = L4_2
      L5_3 = L9_2.plate
      L3_3(L4_3, L5_3)
    end
    L3_3 = TaskLeaveVehicle
    L4_3 = PlayerPedId
    L4_3 = L4_3()
    L5_3 = L4_2
    L6_3 = 0
    L3_3(L4_3, L5_3, L6_3)
    L3_3 = Citizen
    L3_3 = L3_3.Wait
    L4_3 = 1200
    L3_3(L4_3)
    L3_3 = DeleteEntity
    L4_3 = L4_2
    L3_3(L4_3)
  end
  L13_2 = "parking"
  L14_2 = NetworkGetNetworkIdFromEntity
  L15_2 = L4_2
  L14_2 = L14_2(L15_2)
  L15_2 = L5_2
  L16_2 = L9_2
  L17_2 = L6_2
  L18_2 = L7_2
  L19_2 = A3_2
  L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
end
parkVehicle = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  currentMenu = "paystation"
  L1_2 = CL
  L1_2 = L1_2.Hud
  L1_2 = L1_2.Disable
  L1_2()
  L1_2 = SetNuiFocus
  L2_2 = true
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = SendNUIMessage
  L2_2 = {}
  L2_2.action = "openPayStation"
  L3_2 = A0_2.pricePerHour
  L2_2.pricePerHour = L3_2
  L3_2 = A0_2.label
  L2_2.label = L3_2
  L1_2(L2_2)
end
openPayStation = L2_1
function L2_1()
  local L0_2, L1_2
  L0_2 = SendNUIMessage
  L1_2 = {}
  L1_2.action = "closePayStation"
  L0_2(L1_2)
end
closePayStation = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  currentMenu = "parkingRent"
  L1_2 = CL
  L1_2 = L1_2.Hud
  L1_2 = L1_2.Disable
  L1_2()
  L1_2 = Config
  L1_2 = L1_2.Garages
  L2_2 = garageZone
  L1_2 = L1_2[L2_2]
  L2_2 = {}
  L2_2.currentSlotId = 1
  L3_2 = A0_2.parkingSpaces
  L2_2.parkingSlots = L3_2
  camData = L2_2
  L2_2 = DoScreenFadeOut
  L3_2 = 350
  L2_2(L3_2)
  L2_2 = Citizen
  L2_2 = L2_2.Wait
  L3_2 = 500
  L2_2(L3_2)
  L2_2 = library
  L2_2 = L2_2.ParkingCamera
  L3_2 = "create"
  L4_2 = {}
  L5_2 = camData
  L5_2 = L5_2.parkingSlots
  L6_2 = camData
  L6_2 = L6_2.currentSlotId
  L5_2 = L5_2[L6_2]
  L5_2 = L5_2.camCoords
  L4_2.camCoords = L5_2
  L5_2 = camData
  L5_2 = L5_2.parkingSlots
  L6_2 = camData
  L6_2 = L6_2.currentSlotId
  L5_2 = L5_2[L6_2]
  L5_2 = L5_2.coords
  L4_2.coords = L5_2
  L2_2, L3_2 = L2_2(L3_2, L4_2)
  rCamera2 = L3_2
  rCamera1 = L2_2
  L2_2 = SetNuiFocus
  L3_2 = true
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = L1_2.parkingSpaces
  L3_2 = camData
  L3_2 = L3_2.currentSlotId
  L2_2 = L2_2[L3_2]
  L2_2 = L2_2.data
  L3_2 = L1_2.pricePerDay
  L4_2 = L1_2.priceForInfinity
  L5_2 = garageZone
  if L5_2 then
    L5_2 = businessGarages
    L6_2 = garageZone
    L5_2 = L5_2[L6_2]
    if L5_2 then
      L5_2 = businessGarages
      L6_2 = garageZone
      L5_2 = L5_2[L6_2]
      L5_2 = L5_2.data
      if L5_2 then
        L5_2 = businessGarages
        L6_2 = garageZone
        L5_2 = L5_2[L6_2]
        L5_2 = L5_2.data
        L5_2 = L5_2.pricePerDay
        if nil ~= L5_2 then
          L5_2 = businessGarages
          L6_2 = garageZone
          L5_2 = L5_2[L6_2]
          L5_2 = L5_2.data
          L3_2 = L5_2.pricePerDay
        end
        L5_2 = businessGarages
        L6_2 = garageZone
        L5_2 = L5_2[L6_2]
        L5_2 = L5_2.data
        L5_2 = L5_2.priceForInfinity
        if nil ~= L5_2 then
          L5_2 = businessGarages
          L6_2 = garageZone
          L5_2 = L5_2[L6_2]
          L5_2 = L5_2.data
          L4_2 = L5_2.priceForInfinity
        end
      end
    end
  end
  L5_2 = SendNUIMessage
  L6_2 = {}
  L6_2.action = "openParkingRent"
  L7_2 = L1_2.label
  L6_2.garageLabel = L7_2
  L7_2 = L1_2.rentDays
  L6_2.rentDays = L7_2
  L6_2.pricePerDay = L3_2
  L6_2.priceForInfinity = L4_2
  L7_2 = camData
  L7_2 = L7_2.currentSlotId
  L6_2.parkingId = L7_2
  L7_2 = L1_2.parkingSpaces
  L7_2 = #L7_2
  L6_2.maxParkingSpaces = L7_2
  if L2_2 then
    L7_2 = L2_2.isRented
    if L7_2 then
      L7_2 = true
      if L7_2 then
        goto lbl_119
      end
    end
  end
  L7_2 = false
  ::lbl_119::
  L6_2.isRented = L7_2
  if L2_2 then
    L7_2 = L2_2.isRented
    L8_2 = myIdentifier
  end
  L7_2 = L7_2 == L8_2 or L7_2
  L6_2.isMySpace = L7_2
  if L2_2 then
    L7_2 = L2_2.time
    if L7_2 then
      goto lbl_137
    end
  end
  L7_2 = nil
  ::lbl_137::
  L6_2.rentTime = L7_2
  L5_2(L6_2)
  L5_2 = Citizen
  L5_2 = L5_2.Wait
  L6_2 = 400
  L5_2(L6_2)
  L5_2 = DoScreenFadeIn
  L6_2 = 350
  L5_2(L6_2)
end
openParkingRent = L2_1
function L2_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = DoScreenFadeOut
  L1_2 = 350
  L0_2(L1_2)
  L0_2 = Citizen
  L0_2 = L0_2.Wait
  L1_2 = 500
  L0_2(L1_2)
  L0_2 = library
  L0_2 = L0_2.ParkingCamera
  L1_2 = "remove"
  L2_2 = {}
  L3_2 = rCamera1
  L2_2.cam1 = L3_2
  L3_2 = rCamera2
  L2_2.cam2 = L3_2
  L0_2, L1_2 = L0_2(L1_2, L2_2)
  rCamera2 = L1_2
  rCamera1 = L0_2
  L0_2 = SendNUIMessage
  L1_2 = {}
  L1_2.action = "closeParkingRent"
  L0_2(L1_2)
  L0_2 = Citizen
  L0_2 = L0_2.Wait
  L1_2 = 400
  L0_2(L1_2)
  L0_2 = {}
  camData = L0_2
  L0_2 = DoScreenFadeIn
  L1_2 = 350
  L0_2(L1_2)
end
closeParkingRent = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = {}
  L3_2 = library
  L3_2 = L3_2.Callback
  L4_2 = "vms_garagesv2:getImpoundedVehicles"
  function L5_2(A0_3, A1_3)
    if not A0_3 then
      return
    end
    L2_2 = A1_3
  end
  L6_2 = impoundZone
  L3_2(L4_2, L5_2, L6_2)
  currentMenu = "impound"
  L3_2 = CL
  L3_2 = L3_2.Hud
  L3_2 = L3_2.Disable
  L3_2()
  L3_2 = A0_2
  L4_2 = L3_2.impoundData
  if L4_2 then
    L4_2 = DoScreenFadeOut
    L5_2 = 350
    L4_2(L5_2)
  end
  L4_2 = Citizen
  L4_2 = L4_2.Wait
  L5_2 = 500
  L4_2(L5_2)
  L4_2 = {}
  L4_2.isImpound = true
  L4_2.myVehicles = L2_2
  L4_2.currentImpound = L3_2
  L5_2 = GetEntityCoords
  L6_2 = PlayerPedId
  L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L6_2()
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L4_2.lastCoords = L5_2
  camData = L4_2
  L4_2 = Citizen
  L4_2 = L4_2.Wait
  L5_2 = 5
  L4_2(L5_2)
  L4_2 = pairs
  L5_2 = camData
  L5_2 = L5_2.myVehicles
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
  for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
    L10_2 = CL
    L10_2 = L10_2.GetVehicleLabel
    L11_2 = tonumber
    L12_2 = L9_2.vehicle
    L12_2 = L12_2.model
    L11_2, L12_2 = L11_2(L12_2)
    L10_2 = L10_2(L11_2, L12_2)
    L9_2.label = L10_2
    L10_2 = L9_2.impound_data
    if L10_2 then
      L10_2 = L9_2.impound_data
      L10_2 = L10_2.fine_amount
      if L10_2 then
        goto lbl_61
      end
    end
    L10_2 = 0
    ::lbl_61::
    L11_2 = camData
    L11_2 = L11_2.currentImpound
    L11_2 = L11_2.priceForImpound
    if L11_2 then
      L11_2 = camData
      L11_2 = L11_2.currentImpound
      L11_2 = L11_2.priceForImpound
      L10_2 = L10_2 + L11_2
    else
      L11_2 = camData
      L11_2 = L11_2.currentImpound
      L11_2 = L11_2.priceForImpoundPerDay
      if L11_2 then
        L11_2 = L9_2.impound_date
        if L11_2 then
          L11_2 = library
          L11_2 = L11_2.GetDays
          L12_2 = L9_2.impound_date
          L11_2 = L11_2(L12_2)
          if L11_2 >= 1 then
            L12_2 = camData
            L12_2 = L12_2.currentImpound
            L12_2 = L12_2.priceForImpoundPerDay
            L12_2 = L11_2 * L12_2
            if L12_2 then
              goto lbl_94
            end
          end
          L12_2 = 0
          ::lbl_94::
          L10_2 = L10_2 + L12_2
        end
      end
    end
    L9_2.price = L10_2
  end
  L4_2 = L3_2.impoundData
  if L4_2 then
    L4_2 = SetEntityCoords
    L5_2 = PlayerPedId
    L5_2 = L5_2()
    L6_2 = L3_2.impoundData
    L6_2 = L6_2.pedCoords
    L6_2 = L6_2.xyz
    L4_2(L5_2, L6_2)
    L4_2 = SetEntityHeading
    L5_2 = PlayerPedId
    L5_2 = L5_2()
    L6_2 = L3_2.impoundData
    L6_2 = L6_2.pedCoords
    L6_2 = L6_2.w
    L4_2(L5_2, L6_2)
    L4_2 = Config
    L4_2 = L4_2.RandomGarageAnims
    L4_2 = L4_2[1]
    if L4_2 then
      L4_2 = math
      L4_2 = L4_2.random
      L5_2 = 1
      L6_2 = Config
      L6_2 = L6_2.RandomGarageAnims
      L6_2 = #L6_2
      L4_2 = L4_2(L5_2, L6_2)
      L5_2 = Config
      L5_2 = L5_2.RandomGarageAnims
      L5_2 = L5_2[L4_2]
      L6_2 = library
      L6_2 = L6_2.PlayAnimation
      L7_2 = PlayerPedId
      L7_2 = L7_2()
      L8_2 = L5_2[1]
      L9_2 = L5_2[2]
      L10_2 = -1
      L11_2 = 1
      L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
    end
    L4_2 = library
    L4_2 = L4_2.ParkingCamera
    L5_2 = "create"
    L6_2 = {}
    L7_2 = L3_2.impoundData
    L7_2 = L7_2.cameraCoords
    L6_2.camCoords = L7_2
    L7_2 = L3_2.impoundData
    L7_2 = L7_2.cameraFov
    L6_2.camFov = L7_2
    L7_2 = L3_2.impoundData
    L7_2 = L7_2.vehicleCoords
    L6_2.coords = L7_2
    L4_2, L5_2 = L4_2(L5_2, L6_2)
    rCamera2 = L5_2
    rCamera1 = L4_2
  end
  L4_2 = SetNuiFocus
  L5_2 = true
  L6_2 = true
  L4_2(L5_2, L6_2)
  L4_2 = SendNUIMessage
  L5_2 = {}
  L5_2.action = "openImpound"
  L6_2 = L3_2.label
  L5_2.impoundLabel = L6_2
  L6_2 = L3_2.requiredJob
  L5_2.requiredJob = L6_2
  L6_2 = L3_2.allowLocateByPlate
  L5_2.allowLocateByPlate = L6_2
  L6_2 = camData
  L6_2 = L6_2.myVehicles
  L5_2.vehiclesList = L6_2
  L4_2(L5_2)
  L4_2 = A0_2.impoundData
  if L4_2 then
    L4_2 = Citizen
    L4_2 = L4_2.Wait
    L5_2 = 400
    L4_2(L5_2)
    L4_2 = DoScreenFadeIn
    L5_2 = 350
    L4_2(L5_2)
  end
end
openImpound = L2_1
function L2_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = CL
  L0_2 = L0_2.Hud
  L0_2 = L0_2.Enable
  L0_2()
  L0_2 = camData
  L0_2 = L0_2.currentImpound
  L0_2 = L0_2.impoundData
  if L0_2 then
    L0_2 = DoScreenFadeOut
    L1_2 = 350
    L0_2(L1_2)
    L0_2 = Citizen
    L0_2 = L0_2.Wait
    L1_2 = 500
    L0_2(L1_2)
    L0_2 = camData
    L0_2 = L0_2.lastCoords
    if L0_2 then
      L0_2 = camData
      L0_2 = L0_2.lastCoords
      L0_2 = L0_2.x
      if L0_2 then
        L0_2 = SetEntityCoords
        L1_2 = PlayerPedId
        L1_2 = L1_2()
        L2_2 = camData
        L2_2 = L2_2.lastCoords
        L2_2 = L2_2.xyz
        L0_2(L1_2, L2_2)
      end
    end
    L0_2 = Citizen
    L0_2 = L0_2.Wait
    L1_2 = 20
    L0_2(L1_2)
    L0_2 = library
    L0_2 = L0_2.ParkingCamera
    L1_2 = "remove"
    L2_2 = {}
    L3_2 = rCamera1
    L2_2.cam1 = L3_2
    L3_2 = rCamera2
    L2_2.cam2 = L3_2
    L0_2, L1_2 = L0_2(L1_2, L2_2)
    rCamera2 = L1_2
    rCamera1 = L0_2
    L0_2 = viewVehicle
    if L0_2 then
      L0_2 = DeleteEntity
      L1_2 = viewVehicle
      L0_2(L1_2)
      L0_2 = Citizen
      L0_2 = L0_2.Wait
      L1_2 = 5
      L0_2(L1_2)
      viewVehicle = nil
    end
    L0_2 = library
    L0_2 = L0_2.StopAnimation
    L1_2 = PlayerPedId
    L1_2, L2_2, L3_2 = L1_2()
    L0_2(L1_2, L2_2, L3_2)
  end
  L0_2 = TriggerServerEvent
  L1_2 = "vms_garagesv2:sv:closedImpound"
  L0_2(L1_2)
  L0_2 = SendNUIMessage
  L1_2 = {}
  L1_2.action = "closeImpound"
  L0_2(L1_2)
  L0_2 = {}
  camData = L0_2
  L0_2 = Citizen
  L0_2 = L0_2.CreateThread
  function L1_2()
    local L0_3, L1_3
    L0_3 = Citizen
    L0_3 = L0_3.Wait
    L1_3 = 400
    L0_3(L1_3)
    L0_3 = DoScreenFadeIn
    L1_3 = 350
    L0_3(L1_3)
  end
  L0_2(L1_2)
end
closeImpound = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2
  L4_2 = {}
  L5_2 = false
  L6_2 = A3_2 or L6_2
  if not A3_2 then
    L6_2 = garageZone
  end
  garageZone = L6_2
  L7_2 = Config
  L7_2 = L7_2.HousingGarages
  L8_2 = garageZone
  L7_2 = L7_2[L8_2]
  if L7_2 then
    L5_2 = true
  end
  L7_2 = A0_2.availableVehicles
  if L7_2 then
    L4_2 = A0_2.availableVehicles
    L7_2 = TriggerServerEvent
    L8_2 = "vms_garagesv2:enteredJobGarage"
    L7_2(L8_2)
  else
    L7_2 = library
    L7_2 = L7_2.Callback
    L8_2 = "vms_garagesv2:getGarageVehicles"
    function L9_2(A0_3, A1_3)
      if not A0_3 then
        return
      end
      L4_2 = A1_3
    end
    L10_2 = L6_2
    L11_2 = transfersGaragesList
    L7_2(L8_2, L9_2, L10_2, L11_2)
  end
  currentMenu = "garage"
  L7_2 = CL
  L7_2 = L7_2.Hud
  L7_2 = L7_2.Disable
  L7_2()
  if A2_2 then
    L7_2 = DoScreenFadeOut
    L8_2 = 350
    L7_2(L8_2)
    L7_2 = Citizen
    L7_2 = L7_2.Wait
    L8_2 = 500
    L7_2(L8_2)
    L7_2 = camData
    L7_2.myVehicles = L4_2
  elseif not A1_2 then
    L7_2 = DoScreenFadeOut
    L8_2 = 350
    L7_2(L8_2)
    L7_2 = Citizen
    L7_2 = L7_2.Wait
    L8_2 = 500
    L7_2(L8_2)
    L7_2 = {}
    L7_2.myVehicles = L4_2
    L7_2.currentGarage = A0_2
    L8_2 = GetEntityCoords
    L9_2 = PlayerPedId
    L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2 = L9_2()
    L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
    L7_2.lastCoords = L8_2
    camData = L7_2
  else
    L7_2 = Citizen
    L7_2 = L7_2.Wait
    L8_2 = 250
    L7_2(L8_2)
    L7_2 = camData
    L7_2.myVehicles = L4_2
  end
  L7_2 = nil
  L8_2 = CL
  L8_2 = L8_2.GetPlayerJob
  L9_2 = "name"
  L8_2 = L8_2(L9_2)
  L9_2 = CL
  L9_2 = L9_2.GetPlayerJob
  L10_2 = "grade"
  L9_2 = L9_2(L10_2)
  L10_2 = CL
  L10_2 = L10_2.GetPlayerGang
  L11_2 = "name"
  L10_2 = L10_2(L11_2)
  L11_2 = CL
  L11_2 = L11_2.GetPlayerGang
  L12_2 = "grade"
  L11_2 = L11_2(L12_2)
  L12_2 = A0_2.availableVehicles
  if L12_2 then
    L12_2 = pairs
    L13_2 = camData
    L13_2 = L13_2.myVehicles
    L12_2, L13_2, L14_2, L15_2 = L12_2(L13_2)
    for L16_2, L17_2 in L12_2, L13_2, L14_2, L15_2 do
      L18_2 = CL
      L18_2 = L18_2.GetVehicleLabel
      L19_2 = L17_2.model
      L18_2 = L18_2(L19_2)
      L17_2.label = L18_2
      L17_2.hasAccess = false
      L18_2 = L17_2.gradesAccess
      if L18_2 then
        L18_2 = A0_2.requiredJob
        if L18_2 then
          L18_2 = ipairs
          L19_2 = L17_2.gradesAccess
          L18_2, L19_2, L20_2, L21_2 = L18_2(L19_2)
          for L22_2, L23_2 in L18_2, L19_2, L20_2, L21_2 do
            if L9_2 == L23_2 then
              L17_2.hasAccess = true
              break
            end
          end
        else
          L18_2 = A0_2.requiredGang
          if L18_2 then
            L18_2 = ipairs
            L19_2 = L17_2.gradesAccess
            L18_2, L19_2, L20_2, L21_2 = L18_2(L19_2)
            for L22_2, L23_2 in L18_2, L19_2, L20_2, L21_2 do
              if L11_2 == L23_2 then
                L17_2.hasAccess = true
                break
              end
            end
          end
        end
      else
        L17_2.hasAccess = true
      end
    end
  else
    L12_2 = pairs
    L13_2 = camData
    L13_2 = L13_2.myVehicles
    L12_2, L13_2, L14_2, L15_2 = L12_2(L13_2)
    for L16_2, L17_2 in L12_2, L13_2, L14_2, L15_2 do
      L18_2 = CL
      L18_2 = L18_2.GetVehicleLabel
      L19_2 = tonumber
      L20_2 = L17_2.vehicle
      L20_2 = L20_2.model
      L19_2, L20_2, L21_2, L22_2, L23_2, L24_2 = L19_2(L20_2)
      L18_2 = L18_2(L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
      L17_2.label = L18_2
    end
  end
  if L8_2 then
    L12_2 = A0_2.requiredJob
    if L12_2 then
      L12_2 = A0_2.requiredJob
      L12_2 = L12_2[L8_2]
      if L12_2 then
        L12_2 = Config
        L12_2 = L12_2.CompanyGrades
        L12_2 = L12_2[L8_2]
        if L12_2 then
          L12_2 = Config
          L12_2 = L12_2.CompanyGrades
          L12_2 = L12_2[L8_2]
          L13_2 = tostring
          L14_2 = L9_2
          L13_2 = L13_2(L14_2)
          L12_2 = L12_2[L13_2]
          if L12_2 then
            L12_2 = Config
            L12_2 = L12_2.CompanyGrades
            L12_2 = L12_2[L8_2]
            L13_2 = tostring
            L14_2 = L9_2
            L13_2 = L13_2(L14_2)
            L12_2 = L12_2[L13_2]
            L12_2 = L12_2.isBoss
            if L12_2 then
              L12_2 = Config
              L12_2 = L12_2.CompanyGrades
              L7_2 = L12_2[L8_2]
            end
          end
        end
      end
    end
  end
  if L10_2 then
    L12_2 = A0_2.requiredGang
    if L12_2 then
      L12_2 = A0_2.requiredGang
      L12_2 = L12_2[L10_2]
      if L12_2 then
        L12_2 = Config
        L12_2 = L12_2.GangGrades
        L12_2 = L12_2[L10_2]
        if L12_2 then
          L12_2 = Config
          L12_2 = L12_2.GangGrades
          L12_2 = L12_2[L10_2]
          L13_2 = tostring
          L14_2 = L11_2
          L13_2 = L13_2(L14_2)
          L12_2 = L12_2[L13_2]
          if L12_2 then
            L12_2 = Config
            L12_2 = L12_2.GangGrades
            L12_2 = L12_2[L10_2]
            L13_2 = tostring
            L14_2 = L11_2
            L13_2 = L13_2(L14_2)
            L12_2 = L12_2[L13_2]
            L12_2 = L12_2.isBoss
            if L12_2 then
              L12_2 = Config
              L12_2 = L12_2.GangGrades
              L7_2 = L12_2[L10_2]
            end
          end
        end
      end
    end
  end
  if not A1_2 then
    L12_2 = SetEntityCoords
    L13_2 = PlayerPedId
    L13_2 = L13_2()
    L14_2 = A0_2.garageData
    L14_2 = L14_2.pedCoords
    L14_2 = L14_2.xyz
    L12_2(L13_2, L14_2)
    L12_2 = SetEntityHeading
    L13_2 = PlayerPedId
    L13_2 = L13_2()
    L14_2 = A0_2.garageData
    L14_2 = L14_2.pedCoords
    L14_2 = L14_2.w
    L12_2(L13_2, L14_2)
    L12_2 = Config
    L12_2 = L12_2.RandomGarageAnims
    L12_2 = L12_2[1]
    if L12_2 then
      L12_2 = math
      L12_2 = L12_2.random
      L13_2 = 1
      L14_2 = Config
      L14_2 = L14_2.RandomGarageAnims
      L14_2 = #L14_2
      L12_2 = L12_2(L13_2, L14_2)
      L13_2 = Config
      L13_2 = L13_2.RandomGarageAnims
      L13_2 = L13_2[L12_2]
      L14_2 = library
      L14_2 = L14_2.PlayAnimation
      L15_2 = PlayerPedId
      L15_2 = L15_2()
      L16_2 = L13_2[1]
      L17_2 = L13_2[2]
      L18_2 = -1
      L19_2 = 1
      L14_2(L15_2, L16_2, L17_2, L18_2, L19_2)
    end
    L12_2 = library
    L12_2 = L12_2.ParkingCamera
    L13_2 = "create"
    L14_2 = {}
    L15_2 = A0_2.garageData
    L15_2 = L15_2.cameraCoords
    L14_2.camCoords = L15_2
    L15_2 = A0_2.garageData
    L15_2 = L15_2.cameraFov
    L14_2.camFov = L15_2
    L15_2 = A0_2.garageData
    L15_2 = L15_2.vehicleCoords
    L14_2.coords = L15_2
    L12_2, L13_2 = L12_2(L13_2, L14_2)
    rCamera2 = L13_2
    rCamera1 = L12_2
  end
  L12_2 = SetNuiFocus
  L13_2 = true
  L14_2 = true
  L12_2(L13_2, L14_2)
  L12_2 = SendNUIMessage
  L13_2 = {}
  L13_2.action = "openGarage"
  L13_2.currentGarage = L6_2
  L14_2 = transfersGaragesList
  L13_2.transfersGaragesList = L14_2
  L14_2 = A0_2.requiredJob
  if not L14_2 then
    L14_2 = A0_2.requiredGang
  end
  L13_2.isJobGarage = L14_2
  L14_2 = A0_2.requiredGang
  L14_2 = nil ~= L14_2
  L13_2.isGangGarage = L14_2
  L13_2.jobGrades = L7_2
  L14_2 = A0_2.vehiclesToOrder
  L13_2.vehiclesToOrder = L14_2
  L14_2 = A0_2.label
  L13_2.garageLabel = L14_2
  L14_2 = camData
  L14_2 = L14_2.myVehicles
  L13_2.vehiclesList = L14_2
  L13_2.isHousing = L5_2
  L12_2(L13_2)
  if not A1_2 then
    L12_2 = Citizen
    L12_2 = L12_2.Wait
    L13_2 = 400
    L12_2(L13_2)
    L12_2 = DoScreenFadeIn
    L13_2 = 350
    L12_2(L13_2)
  end
end
openGarage = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = camData
  L1_2 = L1_2.lastCoords
  if L1_2 then
    L1_2 = CL
    L1_2 = L1_2.Hud
    L1_2 = L1_2.Enable
    L1_2()
    L1_2 = DoScreenFadeOut
    L2_2 = 350
    L1_2(L2_2)
    L1_2 = Citizen
    L1_2 = L1_2.Wait
    L2_2 = 500
    L1_2(L2_2)
    L1_2 = camData
    L1_2 = L1_2.lastCoords
    if L1_2 then
      L1_2 = camData
      L1_2 = L1_2.lastCoords
      L1_2 = L1_2.x
      if L1_2 then
        L1_2 = SetEntityCoords
        L2_2 = PlayerPedId
        L2_2 = L2_2()
        L3_2 = camData
        L3_2 = L3_2.lastCoords
        L3_2 = L3_2.xyz
        L1_2(L2_2, L3_2)
      end
    end
    L1_2 = Citizen
    L1_2 = L1_2.Wait
    L2_2 = 20
    L1_2(L2_2)
    L1_2 = library
    L1_2 = L1_2.ParkingCamera
    L2_2 = "remove"
    L3_2 = {}
    L4_2 = rCamera1
    L3_2.cam1 = L4_2
    L4_2 = rCamera2
    L3_2.cam2 = L4_2
    L1_2, L2_2 = L1_2(L2_2, L3_2)
    rCamera2 = L2_2
    rCamera1 = L1_2
    L1_2 = viewVehicle
    if L1_2 then
      L1_2 = DeleteEntity
      L2_2 = viewVehicle
      L1_2(L2_2)
      L1_2 = Citizen
      L1_2 = L1_2.Wait
      L2_2 = 5
      L1_2(L2_2)
      viewVehicle = nil
    end
    L1_2 = library
    L1_2 = L1_2.StopAnimation
    L2_2 = PlayerPedId
    L2_2, L3_2, L4_2 = L2_2()
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = TriggerServerEvent
    L2_2 = "vms_garagesv2:sv:closedImpound"
    L1_2(L2_2)
    L1_2 = SendNUIMessage
    L2_2 = {}
    L2_2.action = "closeGarage"
    L1_2(L2_2)
    L1_2 = Citizen
    L1_2 = L1_2.Wait
    L2_2 = 400
    L1_2(L2_2)
    L1_2 = {}
    camData = L1_2
    L1_2 = DoScreenFadeIn
    L2_2 = 350
    L1_2(L2_2)
  end
end
closeGarage = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L3_2 = A1_2 or nil
  if not A1_2 then
    L3_2 = garageZone
  end
  if A1_2 then
    L4_2 = Config
    L4_2 = L4_2.HousingGarages
    L4_2 = L4_2[L3_2]
    if L4_2 then
      goto lbl_14
    end
  end
  L4_2 = Config
  L4_2 = L4_2.Garages
  L4_2 = L4_2[L3_2]
  ::lbl_14::
  if not L4_2 then
    return
  end
  L5_2 = GetVehicleNumberPlateText
  L6_2 = A0_2
  L5_2 = L5_2(L6_2)
  L6_2 = library
  L6_2 = L6_2.IsModelAllowed
  L7_2 = L4_2
  L8_2 = A0_2
  L6_2 = L6_2(L7_2, L8_2)
  if not L6_2 then
    L6_2 = CL
    L6_2 = L6_2.Notification
    L7_2 = TRANSLATE
    L8_2 = "notify.model_is_not_allowed"
    L7_2 = L7_2(L8_2)
    L8_2 = 4500
    L9_2 = "error"
    return L6_2(L7_2, L8_2, L9_2)
  end
  L6_2 = library
  L6_2 = L6_2.IsJobAllowed
  L7_2 = L4_2
  L6_2 = L6_2(L7_2)
  if not L6_2 then
    L6_2 = CL
    L6_2 = L6_2.Notification
    L7_2 = TRANSLATE
    L8_2 = "notify.job_is_not_allowed"
    L7_2 = L7_2(L8_2)
    L8_2 = 4500
    L9_2 = "error"
    return L6_2(L7_2, L8_2, L9_2)
  end
  L6_2 = library
  L6_2 = L6_2.IsGangAllowed
  L7_2 = L4_2
  L6_2 = L6_2(L7_2)
  if not L6_2 then
    L6_2 = CL
    L6_2 = L6_2.Notification
    L7_2 = TRANSLATE
    L8_2 = "notify.gang_is_not_allowed"
    L7_2 = L7_2(L8_2)
    L8_2 = 4500
    L9_2 = "error"
    return L6_2(L7_2, L8_2, L9_2)
  end
  L6_2 = L4_2.requiredJob
  if L6_2 then
    L6_2 = L4_2.availableVehicles
    if L6_2 then
      L6_2 = Config
      L6_2 = L6_2.RemoveVehicleKeysOn
      L6_2 = L6_2.companyVehToGarage
      if L6_2 then
        L6_2 = CL
        L6_2 = L6_2.RemoveVehicleKeys
        L7_2 = A0_2
        L8_2 = GetVehicleNumberPlateText
        L9_2 = A0_2
        L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L8_2(L9_2)
        L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
      end
      L6_2 = TaskLeaveVehicle
      L7_2 = PlayerPedId
      L7_2 = L7_2()
      L8_2 = A0_2
      L9_2 = 0
      L6_2(L7_2, L8_2, L9_2)
      L6_2 = Citizen
      L6_2 = L6_2.Wait
      L7_2 = 1200
      L6_2(L7_2)
      L6_2 = DeleteEntity
      L7_2 = A0_2
      L6_2(L7_2)
  end
  else
    L6_2 = L4_2.requiredGang
    if L6_2 then
      L6_2 = L4_2.availableVehicles
      if L6_2 then
        L6_2 = Config
        L6_2 = L6_2.RemoveVehicleKeysOn
        L6_2 = L6_2.gangVehToGarage
        if L6_2 then
          L6_2 = CL
          L6_2 = L6_2.RemoveVehicleKeys
          L7_2 = A0_2
          L8_2 = GetVehicleNumberPlateText
          L9_2 = A0_2
          L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L8_2(L9_2)
          L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
        end
        L6_2 = TaskLeaveVehicle
        L7_2 = PlayerPedId
        L7_2 = L7_2()
        L8_2 = A0_2
        L9_2 = 0
        L6_2(L7_2, L8_2, L9_2)
        L6_2 = Citizen
        L6_2 = L6_2.Wait
        L7_2 = 1200
        L6_2(L7_2)
        L6_2 = DeleteEntity
        L7_2 = A0_2
        L6_2(L7_2)
    end
    else
      L6_2 = CL
      L6_2 = L6_2.GetVehicleProperties
      L7_2 = A0_2
      L6_2 = L6_2(L7_2)
      L7_2 = library
      L7_2 = L7_2.Callback
      L8_2 = "vms_garagesv2:parkVehicle"
      function L9_2(A0_3, A1_3, A2_3)
        local L3_3, L4_3, L5_3, L6_3
        if not A0_3 then
          if "not_owner" == A1_3 then
            L3_3 = CL
            L3_3 = L3_3.Notification
            L4_3 = TRANSLATE
            L5_3 = "notify.you_are_not_owner_of_vehicle"
            L4_3 = L4_3(L5_3)
            L5_3 = 4500
            L6_3 = "error"
            L3_3(L4_3, L5_3, L6_3)
          elseif "wrong_type" == A1_3 then
            L3_3 = CL
            L3_3 = L3_3.Notification
            L4_3 = TRANSLATE
            L5_3 = "notify.wrong_parking_type"
            L4_3 = L4_3(L5_3)
            L5_3 = 4500
            L6_3 = "error"
            L3_3(L4_3, L5_3, L6_3)
          elseif "not_company_vehicle" == A1_3 then
            L3_3 = CL
            L3_3 = L3_3.Notification
            L4_3 = TRANSLATE
            L5_3 = "notify.not_company_vehicle"
            L4_3 = L4_3(L5_3)
            L5_3 = 4500
            L6_3 = "error"
            L3_3(L4_3, L5_3, L6_3)
          elseif "not_company_garage" == A1_3 then
            L3_3 = CL
            L3_3 = L3_3.Notification
            L4_3 = TRANSLATE
            L5_3 = "notify.not_company_garage"
            L4_3 = L4_3(L5_3)
            L5_3 = 4500
            L6_3 = "error"
            L3_3(L4_3, L5_3, L6_3)
          elseif "not_gang_vehicle" == A1_3 then
            L3_3 = CL
            L3_3 = L3_3.Notification
            L4_3 = TRANSLATE
            L5_3 = "notify.not_gang_vehicle"
            L4_3 = L4_3(L5_3)
            L5_3 = 4500
            L6_3 = "error"
            L3_3(L4_3, L5_3, L6_3)
          elseif "not_gang_garage" == A1_3 then
            L3_3 = CL
            L3_3 = L3_3.Notification
            L4_3 = TRANSLATE
            L5_3 = "notify.not_gang_garage"
            L4_3 = L4_3(L5_3)
            L5_3 = 4500
            L6_3 = "error"
            L3_3(L4_3, L5_3, L6_3)
          elseif "vehicles_limit" == A1_3 then
            L3_3 = CL
            L3_3 = L3_3.Notification
            L4_3 = TRANSLATE
            L5_3 = "notify.vehicles_limit"
            L4_3 = L4_3(L5_3)
            L5_3 = 4500
            L6_3 = "error"
            L3_3(L4_3, L5_3, L6_3)
          end
          return
        end
        L3_3 = library
        L3_3 = L3_3.Debug
        L4_3 = "^2[PARKED]^7 - Vehicle ^4"
        L5_3 = L5_2
        L4_3 = L4_3 .. L5_3
        L3_3(L4_3)
        L3_3 = Config
        L3_3 = L3_3.RemoveVehicleKeysOn
        L3_3 = L3_3[A2_3]
        if L3_3 then
          L3_3 = CL
          L3_3 = L3_3.RemoveVehicleKeys
          L4_3 = A0_2
          L5_3 = L6_2.plate
          L3_3(L4_3, L5_3)
        end
        L3_3 = TaskLeaveVehicle
        L4_3 = PlayerPedId
        L4_3 = L4_3()
        L5_3 = A0_2
        L6_3 = 0
        L3_3(L4_3, L5_3, L6_3)
        L3_3 = Citizen
        L3_3 = L3_3.Wait
        L4_3 = 1200
        L3_3(L4_3)
        L3_3 = DeleteEntity
        L4_3 = A0_2
        L3_3(L4_3)
      end
      L10_2 = "garage"
      L11_2 = NetworkGetNetworkIdFromEntity
      L12_2 = A0_2
      L11_2 = L11_2(L12_2)
      L12_2 = L5_2
      L13_2 = L6_2
      L14_2 = L3_2
      L15_2 = nil
      L16_2 = A2_2
      L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
    end
  end
end
returnVehicle = L2_1
L2_1 = false
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = L2_1
  if L3_2 then
    L3_2 = CL
    L3_2 = L3_2.Notification
    L4_2 = TRANSLATE
    L5_2 = "notify.locator:locating_the_vehicle_in_progress"
    L4_2 = L4_2(L5_2)
    L5_2 = 4500
    L6_2 = "error"
    return L3_2(L4_2, L5_2, L6_2)
  end
  L3_2 = CL
  L3_2 = L3_2.Notification
  L4_2 = TRANSLATE
  L5_2 = "notify.locator:locating_the_vehicle"
  L4_2 = L4_2(L5_2)
  L5_2 = 10000
  L6_2 = "info"
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = true
  L2_1 = L3_2
  L3_2 = Citizen
  L3_2 = L3_2.Wait
  L4_2 = 10000
  L3_2(L4_2)
  L3_2 = TriggerServerEvent
  L4_2 = "vms_garagesv2:sv:locateVehicle"
  L5_2 = impoundZone
  L6_2 = A0_2
  L7_2 = A1_2
  L8_2 = A2_2
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  L3_2 = false
  L2_1 = L3_2
end
locateVehicle = L3_1
--   ____  _____ ____ ______   ______ _____ _____ ____     ___     _____ _____  _______ ____    ______   __  _______  __    _    ____    _____ ____  ___ _  _____ _____ ___  _   _    _        _     _   _                  ____  _ _                       _                 _______ _____ _  __     _   _ ____      _ ____ _____ _____
--  |  _ \| ____/ ___|  _ \ \ / /  _ \_   _| ____|  _ \   ( _ )   |  ___|_ _\ \/ / ____|  _ \  | __ ) \ / / |  ___\ \/ /   / \  |  _ \  |  ___|  _ \|_ _| |/ /_ _|_   _/ _ \| \ | |  / \      | |__ | |_| |_ _ __  ___ _   / / /_| (_)___  ___ ___  _ __ __| |  __ _  __ _   / / ____|_   _| |/ /__ _| | | | ___|  __| | ___|___  |___  |
--  | | | |  _|| |   | |_) \ V /| |_) || | |  _| | | | |  / _ \/\ | |_   | | \  /|  _| | | | | |  _ \\ V /  | |_   \  /   / _ \ | |_) | | |_  | |_) || || ' / | |  | || | | |  \| | / _ \     | '_ \| __| __| '_ \/ __(_) / / / _` | / __|/ __/ _ \| '__/ _` | / _` |/ _` | / /|  _|   | | | ' // _` | |_| |___ \ / _` |___ \  / /   / /
--  | |_| | |__| |___|  _ < | | |  __/ | | | |___| |_| | | (_>  < |  _|  | | /  \| |___| |_| | | |_) || |   |  _|  /  \  / ___ \|  __/  |  _| |  _ < | || . \ | |  | || |_| | |\  |/ ___ \ _  | | | | |_| |_| |_) \__ \_ / / / (_| | \__ \ (_| (_) | | | (_| || (_| | (_| |/ / | |___  | | | . \ (_| |  _  |___) | (_| |___) |/ /   / /
--  |____/|_____\____|_| \_\|_| |_|    |_| |_____|____/   \___/\/ |_|   |___/_/\_\_____|____/  |____/ |_|   |_|   /_/\_\/_/   \_\_|     |_|   |_| \_\___|_|\_\___| |_| \___/|_| \_/_/   \_(_) |_| |_|\__|\__| .__/|___(_)_/_/ \__,_|_|___/\___\___/|_|  \__,_(_)__, |\__, /_/  |_____| |_| |_|\_\__, |_| |_|____/ \__,_|____//_/   /_/
--                                                                                                                                                                                                          |_|                                                |___/ |___/                         |_|
-- https://discord.gg/ETKqH5d577
