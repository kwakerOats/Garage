--   ____  _____ ____ ______   ______ _____ _____ ____     ___     _____ _____  _______ ____    ______   __  _______  __    _    ____    _____ ____  ___ _  _____ _____ ___  _   _    _        _     _   _                  ____  _ _                       _                 _______ _____ _  __     _   _ ____      _ ____ _____ _____
--  |  _ \| ____/ ___|  _ \ \ / /  _ \_   _| ____|  _ \   ( _ )   |  ___|_ _\ \/ / ____|  _ \  | __ ) \ / / |  ___\ \/ /   / \  |  _ \  |  ___|  _ \|_ _| |/ /_ _|_   _/ _ \| \ | |  / \      | |__ | |_| |_ _ __  ___ _   / / /_| (_)___  ___ ___  _ __ __| |  __ _  __ _   / / ____|_   _| |/ /__ _| | | | ___|  __| | ___|___  |___  |
--  | | | |  _|| |   | |_) \ V /| |_) || | |  _| | | | |  / _ \/\ | |_   | | \  /|  _| | | | | |  _ \\ V /  | |_   \  /   / _ \ | |_) | | |_  | |_) || || ' / | |  | || | | |  \| | / _ \     | '_ \| __| __| '_ \/ __(_) / / / _` | / __|/ __/ _ \| '__/ _` | / _` |/ _` | / /|  _|   | | | ' // _` | |_| |___ \ / _` |___ \  / /   / /
--  | |_| | |__| |___|  _ < | | |  __/ | | | |___| |_| | | (_>  < |  _|  | | /  \| |___| |_| | | |_) || |   |  _|  /  \  / ___ \|  __/  |  _| |  _ < | || . \ | |  | || |_| | |\  |/ ___ \ _  | | | | |_| |_| |_) \__ \_ / / / (_| | \__ \ (_| (_) | | | (_| || (_| | (_| |/ / | |___  | | | . \ (_| |  _  |___) | (_| |___) |/ /   / /
--  |____/|_____\____|_| \_\|_| |_|    |_| |_____|____/   \___/\/ |_|   |___/_/\_\_____|____/  |____/ |_|   |_|   /_/\_\/_/   \_\_|     |_|   |_| \_\___|_|\_\___| |_| \___/|_| \_/_/   \_(_) |_| |_|\__|\__| .__/|___(_)_/_/ \__,_|_|___/\___\___/|_|  \__,_(_)__, |\__, /_/  |_____| |_| |_|\_\__, |_| |_|____/ \__,_|____//_/   /_/
--                                                                                                                                                                                                          |_|                                                |___/ |___/                         |_|
-- https://discord.gg/ETKqH5d577

local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1, L22_1, L23_1, L24_1, L25_1, L26_1, L27_1, L28_1, L29_1, L30_1, L31_1, L32_1, L33_1, L34_1, L35_1
L0_1 = GlobalState
L0_1.OS_TIME = nil
L0_1 = {}
vehsNetIds = L0_1
L0_1 = {}
businessGarages = L0_1
L0_1 = {}
L1_1 = {}
L2_1 = {}
L3_1 = {}
L4_1 = {}
L5_1 = {}
L6_1 = {}
L7_1 = {}
L8_1 = Config
L8_1 = L8_1.CoreExport
L8_1 = L8_1()
Core = L8_1
L8_1 = RegisterNetEvent
L9_1 = "vms_garagesv2:fetchData"
L8_1(L9_1)
L8_1 = AddEventHandler
L9_1 = "vms_garagesv2:fetchData"
function L10_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L0_2 = source
  L1_2 = SV
  L1_2 = L1_2.getPlayer
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  L2_2 = TriggerClientEvent
  L3_2 = "vms_garagesv2:fetchedData"
  L4_2 = L0_2
  L5_2 = L1_1
  L6_2 = businessGarages
  if L1_2 then
    L7_2 = SV
    L7_2 = L7_2.getCharacterName
    L8_2 = L1_2
    L7_2 = L7_2(L8_2)
    if L7_2 then
      goto lbl_20
    end
  end
  L7_2 = "UNKNOWN"
  ::lbl_20::
  L8_2 = vehiclesPersistedClient
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
end
L8_1(L9_1, L10_1)
function L8_1()
  local L0_2, L1_2
  L0_2 = Config
  L0_2 = L0_2.Garages
  return L0_2
end
function L9_1()
  local L0_2, L1_2
  L0_2 = Config
  L0_2 = L0_2.Impounds
  return L0_2
end
function L10_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L2_2 = false
  if not A0_2 or not A1_2 then
    return
  end
  L3_2 = nil
  L4_2 = nil
  L5_2 = pairs
  L6_2 = L1_1
  L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
  for L9_2, L10_2 in L5_2, L6_2, L7_2, L8_2 do
    if L10_2 then
      L11_2 = next
      L12_2 = L10_2
      L11_2 = L11_2(L12_2)
      if L11_2 then
        L11_2 = pairs
        L12_2 = L10_2
        L11_2, L12_2, L13_2, L14_2 = L11_2(L12_2)
        for L15_2, L16_2 in L11_2, L12_2, L13_2, L14_2 do
          L17_2 = L16_2.plate
          if L17_2 == A0_2 then
            L3_2 = L9_2
            L4_2 = L15_2
            L16_2.plate = A1_2
            L17_2 = L16_2.mods
            L17_2.plate = A1_2
            L2_2 = true
            break
          end
        end
      end
    end
    if L2_2 then
      break
    end
  end
  if L2_2 then
    L5_2 = Config
    L5_2 = L5_2.HousingGarages
    L5_2 = L5_2[L3_2]
    if not L5_2 then
      L5_2 = Config
      L5_2 = L5_2.Garages
      L5_2 = L5_2[L3_2]
    end
    L6_2 = TriggerClientEvent
    L7_2 = "vms_garagesv2:updateParkingSpot"
    L8_2 = -1
    L9_2 = L3_2
    L10_2 = L4_2
    L11_2 = L5_2
    L12_2 = {}
    L12_2.plate = A1_2
    L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  end
end
function L11_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2, A7_2, A8_2)
  local L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2
  L9_2 = A0_2
  L10_2 = DoesEntityExist
  L11_2 = L9_2
  L10_2 = L10_2(L11_2)
  if not L10_2 then
    L10_2 = NetworkGetEntityFromNetworkId
    L11_2 = A0_2
    L10_2 = L10_2(L11_2)
    L9_2 = L10_2
  end
  L10_2 = A1_2
  if not L10_2 then
    L11_2 = GetVehicleNumberPlateText
    L12_2 = L9_2
    L11_2 = L11_2(L12_2)
    L10_2 = L11_2
    if not L10_2 then
      if A8_2 then
        L11_2 = A8_2
        L12_2 = {}
        L13_2 = TRANSLATE
        L14_2 = "notify.tow:not_found_vehicle"
        L13_2 = L13_2(L14_2)
        L14_2 = 4500
        L15_2 = "info"
        L12_2[1] = L13_2
        L12_2[2] = L14_2
        L12_2[3] = L15_2
        L11_2(L12_2)
      end
      return
    end
  end
  L11_2 = Config
  L11_2 = L11_2.Impounds
  L11_2 = L11_2[A2_2]
  if not L11_2 then
    L11_2 = library
    L11_2 = L11_2.Debug
    L12_2 = "Impound \"%s\" does not exist"
    L13_2 = L12_2
    L12_2 = L12_2.format
    L14_2 = A2_2
    L12_2 = L12_2(L13_2, L14_2)
    L13_2 = "warning"
    L11_2(L12_2, L13_2)
    return
  end
  if A4_2 then
    L11_2 = math
    L11_2 = L11_2.abs
    L12_2 = A4_2
    L11_2 = L11_2(L12_2)
    if L11_2 then
      goto lbl_56
    end
  end
  L11_2 = false
  ::lbl_56::
  if L11_2 then
    L12_2 = Config
    L12_2 = L12_2.MaxTowFineAmount
    if L11_2 > L12_2 then
      if A8_2 then
        L12_2 = A8_2
        L13_2 = {}
        L14_2 = TRANSLATE
        L15_2 = "notify.tow:fine_amount_is_too_big"
        L14_2 = L14_2(L15_2)
        L15_2 = 4500
        L16_2 = "info"
        L13_2[1] = L14_2
        L13_2[2] = L15_2
        L13_2[3] = L16_2
        L12_2(L13_2)
      end
      return
    end
    L12_2 = Config
    L12_2 = L12_2.MinTowFineAmount
    if L11_2 < L12_2 then
      if A8_2 then
        L12_2 = A8_2
        L13_2 = {}
        L14_2 = TRANSLATE
        L15_2 = "notify.tow:fine_amount_is_too_small"
        L14_2 = L14_2(L15_2)
        L15_2 = 4500
        L16_2 = "info"
        L13_2[1] = L14_2
        L13_2[2] = L15_2
        L13_2[3] = L16_2
        L12_2(L13_2)
      end
      return
    end
  end
  L12_2 = A3_2 or L12_2
  if not A3_2 or "" == A3_2 or not A3_2 then
    L12_2 = nil
  end
  if L12_2 then
    L13_2 = string
    L13_2 = L13_2.len
    L14_2 = L12_2
    L13_2 = L13_2(L14_2)
    L14_2 = Config
    L14_2 = L14_2.MaxTowFineCharacters
    if L13_2 > L14_2 then
      if A8_2 then
        L14_2 = A8_2
        L15_2 = {}
        L16_2 = TRANSLATE
        L17_2 = "notify.tow:fine_has_too_many_characters"
        L16_2 = L16_2(L17_2)
        L17_2 = 4500
        L18_2 = "info"
        L15_2[1] = L16_2
        L15_2[2] = L17_2
        L15_2[3] = L18_2
        L14_2(L15_2)
      end
      return
    end
    L14_2 = Config
    L14_2 = L14_2.MinTowFineCharacters
    if L13_2 < L14_2 then
      if A8_2 then
        L14_2 = A8_2
        L15_2 = {}
        L16_2 = TRANSLATE
        L17_2 = "notify.tow:fine_has_too_few_characters"
        L16_2 = L16_2(L17_2)
        L17_2 = 4500
        L18_2 = "info"
        L15_2[1] = L16_2
        L15_2[2] = L17_2
        L15_2[3] = L18_2
        L14_2(L15_2)
      end
      return
    end
  end
  L13_2 = {}
  if L12_2 and L11_2 then
    L13_2.fine_title = L12_2
    L14_2 = math
    L14_2 = L14_2.floor
    L15_2 = L11_2
    L14_2 = L14_2(L15_2)
    L13_2.fine_amount = L14_2
  end
  L13_2.impounded_by = A5_2
  L14_2 = Config
  L14_2 = L14_2.VehiclePersistence
  if L14_2 then
    L14_2 = VehiclePersistence
    L15_2 = L9_2
    L16_2 = false
    L14_2(L15_2, L16_2)
  end
  L14_2 = DeleteEntity
  L15_2 = L9_2
  L14_2(L15_2)
  L14_2 = DoesEntityExist
  L15_2 = L9_2
  L14_2 = L14_2(L15_2)
  if L14_2 then
    L14_2 = DeleteEntity
    L15_2 = L9_2
    L14_2(L15_2)
    L14_2 = Citizen
    L14_2 = L14_2.CreateThread
    function L15_2()
      local L0_3, L1_3, L2_3
      L0_3 = GetGameTimer
      L0_3 = L0_3()
      L0_3 = L0_3 + 5000
      L1_3 = DoesEntityExist
      L2_3 = L9_2
      L1_3 = L1_3(L2_3)
      if L1_3 then
        L1_3 = DeleteEntity
        L2_3 = L9_2
        L1_3(L2_3)
        while true do
          L1_3 = DoesEntityExist
          L2_3 = L9_2
          L1_3 = L1_3(L2_3)
          if not L1_3 then
            break
          end
          L1_3 = DeleteEntity
          L2_3 = L9_2
          L1_3(L2_3)
          L1_3 = GetGameTimer
          L1_3 = L1_3()
          if L0_3 <= L1_3 then
            break
          end
          L1_3 = Citizen
          L1_3 = L1_3.Wait
          L2_3 = 100
          L1_3(L2_3)
        end
      end
    end
    L14_2(L15_2)
  end
  if A7_2 then
    L14_2 = A7_2[1]
    if L14_2 then
      L14_2 = A7_2[2]
      if L14_2 then
        L14_2 = TriggerClientEvent
        L15_2 = "vms_garagesv2:deleteTakenVehicle"
        L16_2 = -1
        L17_2 = A7_2[1]
        L18_2 = A7_2[2]
        L19_2 = false
        L20_2 = {}
        L22_2 = A7_2[1]
        L21_2 = L1_1
        L21_2 = L21_2[L22_2]
        L22_2 = A7_2[2]
        L21_2 = L21_2[L22_2]
        L21_2 = L21_2.isRented
        if not L21_2 then
          L21_2 = nil
        end
        L20_2.isRented = L21_2
        L22_2 = A7_2[1]
        L21_2 = L1_1
        L21_2 = L21_2[L22_2]
        L22_2 = A7_2[2]
        L21_2 = L21_2[L22_2]
        L21_2 = L21_2.ownerName
        if not L21_2 then
          L21_2 = nil
        end
        L20_2.ownerName = L21_2
        L22_2 = A7_2[1]
        L21_2 = L1_1
        L21_2 = L21_2[L22_2]
        L22_2 = A7_2[2]
        L21_2 = L21_2[L22_2]
        L21_2 = L21_2.time
        if not L21_2 then
          L21_2 = nil
        end
        L20_2.time = L21_2
        L14_2(L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
        L15_2 = A7_2[1]
        L14_2 = L1_1
        L14_2 = L14_2[L15_2]
        L15_2 = A7_2[2]
        L14_2 = L14_2[L15_2]
        L14_2.owner = nil
        L15_2 = A7_2[1]
        L14_2 = L1_1
        L14_2 = L14_2[L15_2]
        L15_2 = A7_2[2]
        L14_2 = L14_2[L15_2]
        L14_2.plate = nil
        L15_2 = A7_2[1]
        L14_2 = L1_1
        L14_2 = L14_2[L15_2]
        L15_2 = A7_2[2]
        L14_2 = L14_2[L15_2]
        L14_2.parking_date = nil
        L15_2 = A7_2[1]
        L14_2 = L1_1
        L14_2 = L14_2[L15_2]
        L15_2 = A7_2[2]
        L14_2 = L14_2[L15_2]
        L14_2.mods = nil
      end
    end
  end
  if A6_2 then
    L14_2 = SV
    L14_2 = L14_2.Webhook
    L15_2 = "TOW_VEHICLE"
    L16_2 = SV
    L16_2 = L16_2.WebhookText
    L16_2 = L16_2["TITLE.TOW_VEHICLE"]
    L17_2 = SV
    L17_2 = L17_2.WebhookText
    L17_2 = L17_2["DESCRIPTION.TOW_VEHICLE"]
    L18_2 = L17_2
    L17_2 = L17_2.format
    L19_2 = SV
    L19_2 = L19_2.getCharacterName
    L20_2 = A6_2.player
    L19_2 = L19_2(L20_2)
    L20_2 = A6_2.source
    L21_2 = L10_2
    L22_2 = A2_2
    L23_2 = L13_2.impounded_by
    L24_2 = L13_2.fine_title
    if not L24_2 then
      L24_2 = ""
    end
    L25_2 = L13_2.fine_amount
    if not L25_2 then
      L25_2 = "0"
    end
    L17_2 = L17_2(L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
    L18_2 = 16053285
    L19_2 = A6_2.identifier
    L14_2(L15_2, L16_2, L17_2, L18_2, L19_2)
  else
    L14_2 = SV
    L14_2 = L14_2.Webhook
    L15_2 = "TOW_VEHICLE"
    L16_2 = SV
    L16_2 = L16_2.WebhookText
    L16_2 = L16_2["TITLE.TOW_VEHICLE"]
    L17_2 = SV
    L17_2 = L17_2.WebhookText
    L17_2 = L17_2["DESCRIPTION.TOW_VEHICLE"]
    L18_2 = L17_2
    L17_2 = L17_2.format
    L19_2 = "VMS_GARAGESV2 EXPORT"
    L20_2 = "0"
    L21_2 = L10_2
    L22_2 = A2_2
    L23_2 = L13_2.impounded_by
    L24_2 = L13_2.fine_title
    if not L24_2 then
      L24_2 = ""
    end
    L25_2 = L13_2.fine_amount
    if not L25_2 then
      L25_2 = "0"
    end
    L17_2 = L17_2(L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
    L18_2 = 16053285
    L19_2 = ""
    L14_2(L15_2, L16_2, L17_2, L18_2, L19_2)
  end
  L14_2 = tostring
  L15_2 = L10_2
  L14_2 = L14_2(L15_2)
  L15_2 = L14_2
  L14_2 = L14_2.match
  L16_2 = "^%s*(.-)%s*$"
  L14_2 = L14_2(L15_2, L16_2)
  L15_2 = "UPDATE `%s` SET netid = NULL, position = NULL, garage = @garage, garageSpotID = NULL, parking_date = NULL, impound_date = @impound_date, impound_data = @impound_data WHERE (`%s` LIKE @cleanedPlate OR `%s` LIKE @plate)"
  L16_2 = L15_2
  L15_2 = L15_2.format
  L17_2 = SV
  L17_2 = L17_2.Database
  L17_2 = L17_2["table:owned_vehicles"]
  L18_2 = SV
  L18_2 = L18_2.Database
  L18_2 = L18_2["column:plate"]
  L19_2 = SV
  L19_2 = L19_2.Database
  L19_2 = L19_2["column:plate"]
  L15_2 = L15_2(L16_2, L17_2, L18_2, L19_2)
  L16_2 = MySQL
  L16_2 = L16_2.Async
  L16_2 = L16_2.execute
  L17_2 = L15_2
  L18_2 = {}
  L18_2["@garage"] = A2_2
  L19_2 = os
  L19_2 = L19_2.time
  L19_2 = L19_2()
  L18_2["@impound_date"] = L19_2
  L19_2 = json
  L19_2 = L19_2.encode
  L20_2 = L13_2
  L19_2 = L19_2(L20_2)
  L18_2["@impound_data"] = L19_2
  L18_2["@cleanedPlate"] = L14_2
  L18_2["@plate"] = L10_2
  L16_2(L17_2, L18_2)
  L16_2 = A8_2
  L17_2 = {}
  L18_2 = TRANSLATE
  L19_2 = "notify.tow:successful_towed"
  L20_2 = L10_2
  L18_2 = L18_2(L19_2, L20_2)
  L19_2 = 4500
  L20_2 = "success"
  L17_2[1] = L18_2
  L17_2[2] = L19_2
  L17_2[3] = L20_2
  L16_2(L17_2)
end
function L12_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L5_2 = A1_2
  if not L5_2 then
    if A0_2 then
      L6_2 = TriggerClientEvent
      L7_2 = "vms_garagesv2:notification"
      L8_2 = A0_2
      L9_2 = TRANSLATE
      L10_2 = "notify.cmd_givecar:owner_not_specified"
      L9_2 = L9_2(L10_2)
      L10_2 = 5000
      L11_2 = "error"
      L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
    end
    return
  end
  L6_2 = tonumber
  L7_2 = L5_2
  L6_2 = L6_2(L7_2)
  if L6_2 then
    L6_2 = SV
    L6_2 = L6_2.getPlayer
    L7_2 = tonumber
    L8_2 = L5_2
    L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L7_2(L8_2)
    L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
    if L6_2 then
      goto lbl_30
    end
  end
  L6_2 = nil
  ::lbl_30::
  L7_2 = tonumber
  L8_2 = L5_2
  L7_2 = L7_2(L8_2)
  if L7_2 and not L6_2 then
    if A0_2 then
      L7_2 = TriggerClientEvent
      L8_2 = "vms_garagesv2:notification"
      L9_2 = A0_2
      L10_2 = TRANSLATE
      L11_2 = "notify.cmd_givecar:owner_not_online"
      L10_2 = L10_2(L11_2)
      L11_2 = 5000
      L12_2 = "error"
      L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
    end
    return
  end
  L7_2 = A2_2
  if L7_2 then
    L8_2 = Config
    L8_2 = L8_2.VehicleTypes
    L8_2 = L8_2[L7_2]
    if L8_2 then
      goto lbl_69
    end
  end
  if A0_2 then
    L8_2 = TriggerClientEvent
    L9_2 = "vms_garagesv2:notification"
    L10_2 = A0_2
    L11_2 = TRANSLATE
    L12_2 = "notify.cmd_givecar:type_not_exist"
    L11_2 = L11_2(L12_2)
    L12_2 = 5000
    L13_2 = "error"
    L8_2(L9_2, L10_2, L11_2, L12_2, L13_2)
  end
  do return end
  ::lbl_69::
  L8_2 = Config
  L8_2 = L8_2.Impounds
  L9_2 = Config
  L9_2 = L9_2.VehicleTypes
  L9_2 = L9_2[L7_2]
  L9_2 = L9_2.defaultImpound
  L8_2 = L8_2[L9_2]
  if not L8_2 then
    if A0_2 then
      L8_2 = TriggerClientEvent
      L9_2 = "vms_garagesv2:notification"
      L10_2 = A0_2
      L11_2 = TRANSLATE
      L12_2 = "notify.cmd_givecar:impound_does_not_exist"
      L11_2 = L11_2(L12_2)
      L12_2 = 5000
      L13_2 = "error"
      L8_2(L9_2, L10_2, L11_2, L12_2, L13_2)
    end
    return
  end
  L8_2 = A3_2
  if not L8_2 then
    if A0_2 then
      L9_2 = TriggerClientEvent
      L10_2 = "vms_garagesv2:notification"
      L11_2 = A0_2
      L12_2 = TRANSLATE
      L13_2 = "notify.cmd_givecar:model_not_specified"
      L12_2 = L12_2(L13_2)
      L13_2 = 5000
      L14_2 = "error"
      L9_2(L10_2, L11_2, L12_2, L13_2, L14_2)
    end
    return
  end
  L9_2 = A4_2
  if not L9_2 then
    if A0_2 then
      L10_2 = TriggerClientEvent
      L11_2 = "vms_garagesv2:notification"
      L12_2 = A0_2
      L13_2 = TRANSLATE
      L14_2 = "notify.cmd_givecar:plate_not_specified"
      L13_2 = L13_2(L14_2)
      L14_2 = 5000
      L15_2 = "error"
      L10_2(L11_2, L12_2, L13_2, L14_2, L15_2)
    end
    return
  end
  L10_2 = string
  L10_2 = L10_2.gsub
  L11_2 = string
  L11_2 = L11_2.upper
  L12_2 = L9_2
  L11_2 = L11_2(L12_2)
  L12_2 = "_"
  L13_2 = " "
  L10_2 = L10_2(L11_2, L12_2, L13_2)
  L11_2 = string
  L11_2 = L11_2.upper
  L12_2 = tostring
  L13_2 = L10_2
  L12_2 = L12_2(L13_2)
  L13_2 = L12_2
  L12_2 = L12_2.match
  L14_2 = "^%s*(.-)%s*$"
  L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L12_2(L13_2, L14_2)
  L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
  L12_2 = string
  L12_2 = L12_2.len
  L13_2 = L11_2
  L12_2 = L12_2(L13_2)
  if L12_2 > 8 then
    if A0_2 then
      L12_2 = TriggerClientEvent
      L13_2 = "vms_garagesv2:notification"
      L14_2 = A0_2
      L15_2 = TRANSLATE
      L16_2 = "notify.cmd_givecar:plate_too_long"
      L15_2 = L15_2(L16_2)
      L16_2 = 5000
      L17_2 = "error"
      L12_2(L13_2, L14_2, L15_2, L16_2, L17_2)
    end
    return
  end
  L12_2 = "SELECT `%s` FROM `%s` WHERE (`%s` LIKE @plate)"
  L13_2 = L12_2
  L12_2 = L12_2.format
  L14_2 = SV
  L14_2 = L14_2.Database
  L14_2 = L14_2["column:plate"]
  L15_2 = SV
  L15_2 = L15_2.Database
  L15_2 = L15_2["table:owned_vehicles"]
  L16_2 = SV
  L16_2 = L16_2.Database
  L16_2 = L16_2["column:plate"]
  L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2)
  L13_2 = MySQL
  L13_2 = L13_2.Async
  L13_2 = L13_2.fetchAll
  L14_2 = L12_2
  L15_2 = {}
  L15_2["@cleanedPlate"] = L11_2
  L15_2["@plate"] = L10_2
  function L16_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3
    L1_3 = A0_3[1]
    if L1_3 then
      L2_3 = L1_3.plate
      if L2_3 then
        L2_3 = A0_2
        if L2_3 then
          L2_3 = TriggerClientEvent
          L3_3 = "vms_garagesv2:notification"
          L4_3 = A0_2
          L5_3 = TRANSLATE
          L6_3 = "notify.cmd_givecar:plate_already_exist"
          L5_3 = L5_3(L6_3)
          L6_3 = 5000
          L7_3 = "error"
          L2_3(L3_3, L4_3, L5_3, L6_3, L7_3)
        end
        return
      end
    end
    L2_3 = SV
    L2_3 = L2_3.GiveCar
    L3_3 = L6_2
    L4_3 = L5_2
    L5_3 = L8_2
    L6_3 = L11_2
    L7_3 = L7_2
    L2_3(L3_3, L4_3, L5_3, L6_3, L7_3)
    L2_3 = A0_2
    if L2_3 then
      L2_3 = TriggerClientEvent
      L3_3 = "vms_garagesv2:notification"
      L4_3 = A0_2
      L5_3 = TRANSLATE
      L6_3 = "notify.cmd_givecar:successful_registered"
      L7_3 = L8_2
      L8_3 = L11_2
      L9_3 = L5_2
      L10_3 = Config
      L10_3 = L10_3.Impounds
      L11_3 = Config
      L11_3 = L11_3.VehicleTypes
      L12_3 = L7_2
      L11_3 = L11_3[L12_3]
      L11_3 = L11_3.defaultImpound
      L10_3 = L10_3[L11_3]
      L10_3 = L10_3.label
      L5_3 = L5_3(L6_3, L7_3, L8_3, L9_3, L10_3)
      L6_3 = 5000
      L7_3 = "success"
      L2_3(L3_3, L4_3, L5_3, L6_3, L7_3)
    end
  end
  L13_2(L14_2, L15_2, L16_2)
end
function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = Config
  L1_2 = L1_2.VehiclePersistence
  if L1_2 then
    L1_2 = Entity
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    L1_2 = L1_2.state
    L1_2 = L1_2.VehiclePersistence
    if L1_2 then
      L2_2 = GetVehicleNumberPlateText
      L3_2 = A0_2
      L2_2 = L2_2(L3_2)
      L3_2 = tostring
      L4_2 = L2_2
      L3_2 = L3_2(L4_2)
      L4_2 = L3_2
      L3_2 = L3_2.match
      L5_2 = "^%s*(.-)%s*$"
      L3_2 = L3_2(L4_2, L5_2)
      L4_2 = "UPDATE `%s` SET netid = NULL, position = NULL WHERE (`%s` LIKE @cleanedPlate OR `%s` LIKE @plate)"
      L5_2 = L4_2
      L4_2 = L4_2.format
      L6_2 = SV
      L6_2 = L6_2.Database
      L6_2 = L6_2["table:owned_vehicles"]
      L7_2 = SV
      L7_2 = L7_2.Database
      L7_2 = L7_2["column:plate"]
      L8_2 = SV
      L8_2 = L8_2.Database
      L8_2 = L8_2["column:plate"]
      L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
      L5_2 = MySQL
      L5_2 = L5_2.Async
      L5_2 = L5_2.execute
      L6_2 = L4_2
      L7_2 = {}
      L7_2["@cleanedPlate"] = L3_2
      L7_2["@plate"] = L2_2
      L5_2(L6_2, L7_2)
    end
    L2_2 = Entity
    L3_2 = A0_2
    L2_2 = L2_2(L3_2)
    L2_2 = L2_2.state
    L3_2 = L2_2
    L2_2 = L2_2.set
    L4_2 = "VehiclePersistence"
    L5_2 = false
    L6_2 = true
    L2_2(L3_2, L4_2, L5_2, L6_2)
  end
  L1_2 = DeleteEntity
  L2_2 = A0_2
  L1_2(L2_2)
end
function L14_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L6_1
  L1_2 = L1_2[A0_2]
  if L1_2 then
    L1_2 = Config
    L1_2 = L1_2.HousingGarages
    L2_2 = L6_1
    L2_2 = L2_2[A0_2]
    L1_2 = L1_2[L2_2]
    if L1_2 then
      L2_2 = L6_1
      L2_2 = L2_2[A0_2]
      L3_2 = L1_2.houseCoords
      return L2_2, L3_2
    end
    L2_2 = Config
    L2_2 = L2_2.Garages
    L3_2 = L6_1
    L3_2 = L3_2[A0_2]
    L2_2 = L2_2[L3_2]
    if L2_2 then
      L3_2 = L2_2.interior
      if L3_2 then
        L3_2 = L6_1
        L3_2 = L3_2[A0_2]
        L4_2 = L2_2.interior
        L4_2 = L4_2.enterOnFoot
        return L3_2, L4_2
      else
        L3_2 = L6_1
        L3_2 = L3_2[A0_2]
        L4_2 = nil
        return L3_2, L4_2
      end
    end
    return
  end
  L1_2 = false
  return L1_2
end
isInInterior = L14_1
function L14_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2
  if not A0_2 or not A1_2 then
    return
  end
  if A0_2 == A1_2 then
    return
  end
  L3_2 = pairs
  L4_2 = L1_1
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = pairs
    L10_2 = L8_2
    L9_2, L10_2, L11_2, L12_2 = L9_2(L10_2)
    for L13_2, L14_2 in L9_2, L10_2, L11_2, L12_2 do
      L15_2 = L14_2.plate
      if L15_2 then
        L15_2 = L14_2.plate
        if A0_2 == L15_2 then
          L14_2.plate = A1_2
          L15_2 = L14_2.mods
          if L15_2 then
            L15_2 = L14_2.mods
            L15_2.plate = A1_2
            if A2_2 then
              L15_2 = "UPDATE `%s` SET `%s` = @properties, `%s` = @newPlate WHERE `%s` = @lastPlate"
              L16_2 = L15_2
              L15_2 = L15_2.format
              L17_2 = SV
              L17_2 = L17_2.Database
              L17_2 = L17_2["table:owned_vehicles"]
              L18_2 = SV
              L18_2 = L18_2.Database
              L18_2 = L18_2["column:vehicle"]
              L19_2 = SV
              L19_2 = L19_2.Database
              L19_2 = L19_2["column:plate"]
              L20_2 = SV
              L20_2 = L20_2.Database
              L20_2 = L20_2["column:plate"]
              L15_2 = L15_2(L16_2, L17_2, L18_2, L19_2, L20_2)
              L16_2 = MySQL
              L16_2 = L16_2.Async
              L16_2 = L16_2.execute
              L17_2 = L15_2
              L18_2 = {}
              L19_2 = json
              L19_2 = L19_2.encode
              L20_2 = L14_2.mods
              L19_2 = L19_2(L20_2)
              L18_2["@properties"] = L19_2
              L18_2["@newPlate"] = A1_2
              L18_2["@lastPlate"] = A0_2
              L16_2(L17_2, L18_2)
            end
            L15_2 = TriggerClientEvent
            L16_2 = "vms_garagesv2:deleteTakenVehicle"
            L17_2 = -1
            L18_2 = L7_2
            L19_2 = L13_2
            L20_2 = false
            L21_2 = {}
            L22_2 = L1_1
            L22_2 = L22_2[L7_2]
            L22_2 = L22_2[L13_2]
            L22_2 = L22_2.isRented
            if not L22_2 then
              L22_2 = nil
            end
            L21_2.isRented = L22_2
            L22_2 = L1_1
            L22_2 = L22_2[L7_2]
            L22_2 = L22_2[L13_2]
            L22_2 = L22_2.ownerName
            if not L22_2 then
              L22_2 = nil
            end
            L21_2.ownerName = L22_2
            L22_2 = L1_1
            L22_2 = L22_2[L7_2]
            L22_2 = L22_2[L13_2]
            L22_2 = L22_2.time
            if not L22_2 then
              L22_2 = nil
            end
            L21_2.time = L22_2
            L15_2(L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
            L15_2 = TriggerClientEvent
            L16_2 = "vms_garagesv2:parkedVehicle"
            L17_2 = -1
            L18_2 = L7_2
            L19_2 = L13_2
            L20_2 = false
            L21_2 = {}
            L22_2 = L14_2.owner
            L21_2.owner = L22_2
            L22_2 = L14_2.plate
            L21_2.plate = L22_2
            L22_2 = L14_2.company
            L21_2.company = L22_2
            L22_2 = L14_2.gang
            L21_2.gang = L22_2
            L22_2 = L14_2.parking_date
            L21_2.parking_date = L22_2
            L22_2 = L14_2.mods
            L21_2.mods = L22_2
            L22_2 = L1_1
            L22_2 = L22_2[L7_2]
            L22_2 = L22_2[L13_2]
            L22_2 = L22_2.isRented
            if not L22_2 then
              L22_2 = nil
            end
            L21_2.isRented = L22_2
            L22_2 = L1_1
            L22_2 = L22_2[L7_2]
            L22_2 = L22_2[L13_2]
            L22_2 = L22_2.ownerName
            if not L22_2 then
              L22_2 = nil
            end
            L21_2.ownerName = L22_2
            L22_2 = L1_1
            L22_2 = L22_2[L7_2]
            L22_2 = L22_2[L13_2]
            L22_2 = L22_2.time
            if not L22_2 then
              L22_2 = nil
            end
            L21_2.time = L22_2
            L15_2(L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
          end
        end
      end
    end
  end
end
function L15_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = Config
  L1_2 = L1_2.Impounds
  L1_2 = L1_2[A0_2]
  L2_2 = Config
  L2_2 = L2_2.Garages
  L2_2 = L2_2[A0_2]
  L3_2 = Config
  L3_2 = L3_2.HousingGarages
  L3_2 = L3_2[A0_2]
  if L1_2 then
    L4_2 = L1_2.label
    L5_2 = L1_2.blipCoords
    if not L5_2 then
      L6_2 = library
      L6_2 = L6_2.GetZoneCenter
      L7_2 = L1_2.garageZone
      L8_2 = L1_2.minZ
      L9_2 = L1_2.maxZ
      L6_2 = L6_2(L7_2, L8_2, L9_2)
      L5_2 = L6_2
    end
    L6_2 = L4_2
    L7_2 = L5_2
    return L6_2, L7_2
  elseif L2_2 then
    L4_2 = L2_2.label
    L5_2 = L2_2.blipCoords
    if not L5_2 then
      L6_2 = library
      L6_2 = L6_2.GetZoneCenter
      L7_2 = L2_2.garageZone
      L8_2 = L2_2.minZ
      L9_2 = L2_2.maxZ
      L6_2 = L6_2(L7_2, L8_2, L9_2)
      L5_2 = L6_2
    end
    L6_2 = L4_2
    L7_2 = L5_2
    return L6_2, L7_2
  elseif L3_2 then
    L4_2 = "house"
    L5_2 = L3_2.houseCoords
    L6_2 = L4_2
    L7_2 = L5_2
    return L6_2, L7_2
  end
  L4_2 = nil
  return L4_2
end
function L16_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L5_2 = L1_1
  L5_2 = L5_2[A0_2]
  if L5_2 then
    L5_2 = L1_1
    L5_2 = L5_2[A0_2]
    L5_2 = L5_2[A1_2]
    if L5_2 then
      if A3_2 then
        L5_2 = L1_1
        L5_2 = L5_2[A0_2]
        L5_2 = L5_2[A1_2]
        L5_2.owner = nil
        L5_2 = L1_1
        L5_2 = L5_2[A0_2]
        L5_2 = L5_2[A1_2]
        L5_2.company = A3_2
      elseif A4_2 then
        L5_2 = L1_1
        L5_2 = L5_2[A0_2]
        L5_2 = L5_2[A1_2]
        L5_2.owner = nil
        L5_2 = L1_1
        L5_2 = L5_2[A0_2]
        L5_2 = L5_2[A1_2]
        L5_2.gang = A4_2
      else
        L5_2 = L1_1
        L5_2 = L5_2[A0_2]
        L5_2 = L5_2[A1_2]
        L5_2.owner = A2_2
        L5_2 = L1_1
        L5_2 = L5_2[A0_2]
        L5_2 = L5_2[A1_2]
        L5_2.company = nil
        L5_2 = L1_1
        L5_2 = L5_2[A0_2]
        L5_2 = L5_2[A1_2]
        L5_2.gang = nil
      end
      L5_2 = TriggerClientEvent
      L6_2 = "vms_garagesv2:cl:newVehicleOwner"
      L7_2 = -1
      L8_2 = A0_2
      L9_2 = A1_2
      L10_2 = L1_1
      L10_2 = L10_2[A0_2]
      L10_2 = L10_2[A1_2]
      L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
    end
  end
end
function L17_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2
  L5_2 = Config
  L5_2 = L5_2.ParkingCreator
  L5_2 = L5_2.HouseGarageInteriors
  L5_2 = L5_2[A4_2]
  if not L5_2 then
    L5_2 = Config
    L5_2 = L5_2.ParkingCreator
    L5_2 = L5_2.HouseGarageInteriors
    L5_2 = L5_2[1]
  end
  L6_2 = "HouseGarage:"
  L7_2 = A0_2
  L6_2 = L6_2 .. L7_2
  L7_2 = Config
  L7_2 = L7_2.HousingGarages
  L7_2 = L7_2[L6_2]
  L7_2 = nil ~= L7_2
  L8_2 = {}
  L9_2 = table
  L9_2 = L9_2.insert
  L10_2 = L8_2
  L11_2 = "Config = Config or {}"
  L9_2(L10_2, L11_2)
  L9_2 = table
  L9_2 = L9_2.insert
  L10_2 = L8_2
  L11_2 = ""
  L9_2(L10_2, L11_2)
  L9_2 = table
  L9_2 = L9_2.insert
  L10_2 = L8_2
  L11_2 = "while not Config.HousingGarages do"
  L9_2(L10_2, L11_2)
  L9_2 = table
  L9_2 = L9_2.insert
  L10_2 = L8_2
  L11_2 = "   Citizen.Wait(100)"
  L9_2(L10_2, L11_2)
  L9_2 = table
  L9_2 = L9_2.insert
  L10_2 = L8_2
  L11_2 = "end"
  L9_2(L10_2, L11_2)
  L9_2 = table
  L9_2 = L9_2.insert
  L10_2 = L8_2
  L11_2 = ""
  L9_2(L10_2, L11_2)
  L9_2 = table
  L9_2 = L9_2.insert
  L10_2 = L8_2
  L11_2 = "Config.HousingGarages['%s'] = {"
  L12_2 = L11_2
  L11_2 = L11_2.format
  L13_2 = L6_2
  L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2 = L11_2(L12_2, L13_2)
  L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2)
  if A2_2 then
    L9_2 = tonumber
    L10_2 = A2_2
    L9_2 = L9_2(L10_2)
    if L9_2 then
      L9_2 = table
      L9_2 = L9_2.insert
      L10_2 = L8_2
      L11_2 = "   routingBucket = %s,"
      L12_2 = L11_2
      L11_2 = L11_2.format
      L13_2 = tonumber
      L14_2 = A2_2
      L13_2 = L13_2(L14_2)
      L13_2 = 100 + L13_2
      L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2 = L11_2(L12_2, L13_2)
      L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2)
  end
  else
    L9_2 = nil
    L10_2 = nil
    L11_2 = 1001
    L12_2 = 15000
    L13_2 = 1
    for L14_2 = L11_2, L12_2, L13_2 do
      L15_2 = pairs
      L16_2 = Config
      L16_2 = L16_2.HousingGarages
      L15_2, L16_2, L17_2, L18_2 = L15_2(L16_2)
      for L19_2, L20_2 in L15_2, L16_2, L17_2, L18_2 do
        L10_2 = L14_2
        L21_2 = L20_2.routingBucket
        if L21_2 == L14_2 then
          L10_2 = false
          break
        end
      end
      if L10_2 then
        L9_2 = L10_2
        break
      end
    end
    L11_2 = table
    L11_2 = L11_2.insert
    L12_2 = L8_2
    L13_2 = "   routingBucket = %s,"
    L14_2 = L13_2
    L13_2 = L13_2.format
    L15_2 = L9_2
    L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2 = L13_2(L14_2, L15_2)
    L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2)
  end
  L9_2 = table
  L9_2 = L9_2.insert
  L10_2 = L8_2
  L11_2 = ""
  L9_2(L10_2, L11_2)
  L9_2 = table
  L9_2 = L9_2.insert
  L10_2 = L8_2
  L11_2 = "   zoneSize = 6.0,"
  L9_2(L10_2, L11_2)
  L9_2 = table
  L9_2 = L9_2.insert
  L10_2 = L8_2
  L11_2 = "   houseCoords = vector4(%s, %s, %s, %s),"
  L12_2 = L11_2
  L11_2 = L11_2.format
  L13_2 = A3_2.x
  L14_2 = A3_2.y
  L15_2 = A3_2.z
  L16_2 = A3_2.w
  if not L16_2 then
    L16_2 = 0.0
  end
  L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2 = L11_2(L12_2, L13_2, L14_2, L15_2, L16_2)
  L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2)
  L9_2 = table
  L9_2 = L9_2.insert
  L10_2 = L8_2
  L11_2 = "   exitCoords = vector4(%s, %s, %s, %s),"
  L12_2 = L11_2
  L11_2 = L11_2.format
  L13_2 = L5_2.exitCoords
  L13_2 = L13_2.x
  L14_2 = L5_2.exitCoords
  L14_2 = L14_2.y
  L15_2 = L5_2.exitCoords
  L15_2 = L15_2.z
  L16_2 = L5_2.exitCoords
  L16_2 = L16_2.w
  if not L16_2 then
    L16_2 = 0.0
  end
  L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2 = L11_2(L12_2, L13_2, L14_2, L15_2, L16_2)
  L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2)
  L9_2 = table
  L9_2 = L9_2.insert
  L10_2 = L8_2
  L11_2 = ""
  L9_2(L10_2, L11_2)
  L9_2 = table
  L9_2 = L9_2.insert
  L10_2 = L8_2
  L11_2 = "   parkingSpaces = {"
  L9_2(L10_2, L11_2)
  L9_2 = pairs
  L10_2 = L5_2.parkingSpaces
  L9_2, L10_2, L11_2, L12_2 = L9_2(L10_2)
  for L13_2, L14_2 in L9_2, L10_2, L11_2, L12_2 do
    L15_2 = L14_2.coords
    if L15_2 then
      L15_2 = "      [%s] = {coords = vec4(%s, %s, %s, %s)"
      L16_2 = L15_2
      L15_2 = L15_2.format
      L17_2 = L13_2
      L18_2 = L14_2.coords
      L18_2 = L18_2.x
      L19_2 = L14_2.coords
      L19_2 = L19_2.y
      L20_2 = L14_2.coords
      L20_2 = L20_2.z
      L21_2 = L14_2.coords
      L21_2 = L21_2.w
      L15_2 = L15_2(L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
      L16_2 = L14_2.rotation
      if L16_2 then
        L16_2 = L14_2.rotation
        L16_2 = L16_2.x
        if L16_2 then
          L16_2 = L15_2
          L17_2 = ", rotation = vector3("
          L18_2 = L14_2.rotation
          L18_2 = L18_2.x
          L19_2 = ", "
          L20_2 = L14_2.rotation
          L20_2 = L20_2.y
          L21_2 = ", "
          L22_2 = L14_2.rotation
          L22_2 = L22_2.z
          L23_2 = ")"
          L16_2 = L16_2 .. L17_2 .. L18_2 .. L19_2 .. L20_2 .. L21_2 .. L22_2 .. L23_2
          L15_2 = L16_2
        end
      end
      L16_2 = L15_2
      L17_2 = "},"
      L16_2 = L16_2 .. L17_2
      L15_2 = L16_2
      L16_2 = table
      L16_2 = L16_2.insert
      L17_2 = L8_2
      L18_2 = L15_2
      L16_2(L17_2, L18_2)
    end
  end
  L9_2 = table
  L9_2 = L9_2.insert
  L10_2 = L8_2
  L11_2 = "   },"
  L9_2(L10_2, L11_2)
  L9_2 = table
  L9_2 = L9_2.insert
  L10_2 = L8_2
  L11_2 = "}"
  L9_2(L10_2, L11_2)
  L9_2 = table
  L9_2 = L9_2.concat
  L10_2 = L8_2
  L11_2 = "\n"
  L9_2 = L9_2(L10_2, L11_2)
  L10_2 = GetCurrentResourceName
  L10_2 = L10_2()
  L11_2 = SaveResourceFile
  L12_2 = L10_2
  L13_2 = "CREATED_PARKINGS/"
  L14_2 = A0_2
  L15_2 = ".lua"
  L13_2 = L13_2 .. L14_2 .. L15_2
  L14_2 = L9_2
  L15_2 = -1
  L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2)
  if not L11_2 then
    L12_2 = library
    L12_2 = L12_2.Debug
    L13_2 = "You cannot save the file with the configured parking - make sure you have such a path on your server: "
    L14_2 = L10_2
    L15_2 = "/CREATED_PARKINGS/"
    L13_2 = L13_2 .. L14_2 .. L15_2
    L14_2 = "warn"
    L12_2(L13_2, L14_2)
  else
    L12_2 = load
    L13_2 = L9_2
    L12_2 = L12_2(L13_2)
    L12_2()
    L12_2 = Config
    L12_2 = L12_2.ParkingCreator
    L12_2 = L12_2.AutomaticLoad
    if L12_2 then
      L12_2 = TriggerClientEvent
      L13_2 = "vms_garagesv2:createdNewGarage"
      L14_2 = -1
      L15_2 = json
      L15_2 = L15_2.encode
      L16_2 = L9_2
      L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2 = L15_2(L16_2)
      L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2)
    end
  end
  L12_2 = MySQL
  L12_2 = L12_2.Async
  L12_2 = L12_2.fetchAll
  L13_2 = "SELECT * FROM `%s` WHERE garage = @garage"
  L14_2 = L13_2
  L13_2 = L13_2.format
  L15_2 = SV
  L15_2 = L15_2.Database
  L15_2 = L15_2["table:owned_vehicles"]
  L13_2 = L13_2(L14_2, L15_2)
  L14_2 = {}
  L14_2["@garage"] = L6_2
  function L15_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3
    if A0_3 then
      L1_3 = A0_3[1]
      if L1_3 then
        L1_3 = pairs
        L2_3 = A0_3
        L1_3, L2_3, L3_3, L4_3 = L1_3(L2_3)
        for L5_3, L6_3 in L1_3, L2_3, L3_3, L4_3 do
          L7_3 = L6_3.garageSpotID
          if L7_3 then
            L8_3 = L6_2
            L7_3 = L1_1
            L7_3 = L7_3[L8_3]
            if not L7_3 then
              L8_3 = L6_2
              L7_3 = L1_1
              L9_3 = {}
              L7_3[L8_3] = L9_3
            end
            L8_3 = L6_2
            L7_3 = L1_1
            L7_3 = L7_3[L8_3]
            L8_3 = L6_3.garageSpotID
            L7_3 = L7_3[L8_3]
            if not L7_3 then
              L8_3 = L6_2
              L7_3 = L1_1
              L7_3 = L7_3[L8_3]
              L8_3 = L6_3.garageSpotID
              L9_3 = {}
              L10_3 = SV
              L10_3 = L10_3.Database
              L10_3 = L10_3["column:owner"]
              L10_3 = L6_3[L10_3]
              L9_3.owner = L10_3
              L10_3 = SV
              L10_3 = L10_3.Database
              L10_3 = L10_3["column:company"]
              L10_3 = L6_3[L10_3]
              L9_3.company = L10_3
              L10_3 = SV
              L10_3 = L10_3.Database
              L10_3 = L10_3["column:gang"]
              L10_3 = L6_3[L10_3]
              L9_3.gang = L10_3
              L10_3 = SV
              L10_3 = L10_3.Database
              L10_3 = L10_3["column:plate"]
              L10_3 = L6_3[L10_3]
              L9_3.plate = L10_3
              L10_3 = tonumber
              L11_3 = L6_3.parking_date
              L10_3 = L10_3(L11_3)
              L9_3.parking_date = L10_3
              L10_3 = json
              L10_3 = L10_3.decode
              L11_3 = SV
              L11_3 = L11_3.Database
              L11_3 = L11_3["column:vehicle"]
              L11_3 = L6_3[L11_3]
              L10_3 = L10_3(L11_3)
              L9_3.mods = L10_3
              L7_3[L8_3] = L9_3
            end
          end
        end
        L1_3 = TriggerClientEvent
        L2_3 = "vms_garagesv2:fetchedGarageData"
        L3_3 = -1
        L4_3 = L6_2
        L6_3 = L6_2
        L5_3 = L1_1
        L5_3 = L5_3[L6_3]
        L1_3(L2_3, L3_3, L4_3, L5_3)
      end
    end
  end
  L12_2(L13_2, L14_2, L15_2)
end
function L18_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  if not A0_2 then
    L1_2 = false
    return L1_2
  end
  L1_2 = Config
  L1_2 = L1_2.Garages
  L1_2 = L1_2[A0_2]
  if not L1_2 then
    L1_2 = Config
    L1_2 = L1_2.HousingGarages
    L1_2 = L1_2[A0_2]
    if not L1_2 then
      L1_2 = library
      L1_2 = L1_2.Debug
      L2_2 = "Attempt to use `refreshVehicles` failed - garage \"%s\" does not exist."
      L3_2 = L2_2
      L2_2 = L2_2.format
      L4_2 = A0_2
      L2_2 = L2_2(L3_2, L4_2)
      L3_2 = "warn"
      L1_2(L2_2, L3_2)
      return
    end
  end
  L1_2 = MySQL
  L1_2 = L1_2.Async
  L1_2 = L1_2.fetchAll
  L2_2 = "SELECT * FROM `%s` WHERE garage IS NOT NULL AND impound_date IS NULL AND garage = @garage"
  L3_2 = L2_2
  L2_2 = L2_2.format
  L4_2 = SV
  L4_2 = L4_2.Database
  L4_2 = L4_2["table:owned_vehicles"]
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = {}
  L3_2["@garage"] = A0_2
  function L4_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3
    if A0_3 then
      L1_3 = A0_3[1]
      if L1_3 then
        L1_3 = A0_2
        if L1_3 then
          L2_3 = A0_2
          L1_3 = L1_1
          L3_3 = {}
          L1_3[L2_3] = L3_3
        end
        L1_3 = pairs
        L2_3 = A0_3
        L1_3, L2_3, L3_3, L4_3 = L1_3(L2_3)
        for L5_3, L6_3 in L1_3, L2_3, L3_3, L4_3 do
          L8_3 = L6_3.garage
          L7_3 = L1_1
          L7_3 = L7_3[L8_3]
          if not L7_3 then
            L8_3 = L6_3.garage
            L7_3 = L1_1
            L9_3 = {}
            L7_3[L8_3] = L9_3
          end
          L7_3 = L6_3.garageSpotID
          if L7_3 then
            L8_3 = L6_3.garage
            L7_3 = L1_1
            L7_3 = L7_3[L8_3]
            L8_3 = L6_3.garageSpotID
            L9_3 = {}
            L10_3 = SV
            L10_3 = L10_3.Database
            L10_3 = L10_3["column:owner"]
            L10_3 = L6_3[L10_3]
            L9_3.owner = L10_3
            L10_3 = SV
            L10_3 = L10_3.Database
            L10_3 = L10_3["column:company"]
            L10_3 = L6_3[L10_3]
            L9_3.company = L10_3
            L10_3 = SV
            L10_3 = L10_3.Database
            L10_3 = L10_3["column:gang"]
            L10_3 = L6_3[L10_3]
            L9_3.gang = L10_3
            L10_3 = SV
            L10_3 = L10_3.Database
            L10_3 = L10_3["column:plate"]
            L10_3 = L6_3[L10_3]
            L9_3.plate = L10_3
            L10_3 = tonumber
            L11_3 = L6_3.parking_date
            L10_3 = L10_3(L11_3)
            L9_3.parking_date = L10_3
            L10_3 = json
            L10_3 = L10_3.decode
            L11_3 = SV
            L11_3 = L11_3.Database
            L11_3 = L11_3["column:vehicle"]
            L11_3 = L6_3[L11_3]
            L10_3 = L10_3(L11_3)
            L9_3.mods = L10_3
            L7_3[L8_3] = L9_3
          end
        end
        L1_3 = TriggerClientEvent
        L2_3 = "vms_garagesv2:fetchedGarageData"
        L3_3 = -1
        L4_3 = A0_2
        L6_3 = A0_2
        L5_3 = L1_1
        L5_3 = L5_3[L6_3]
        L1_3(L2_3, L3_3, L4_3, L5_3)
      end
    end
  end
  L1_2(L2_2, L3_2, L4_2)
end
function L19_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  L4_2 = {}
  L5_2 = table
  L5_2 = L5_2.insert
  L6_2 = L4_2
  L7_2 = "-- File generated with VMS Housing for VMS Garages V2."
  L5_2(L6_2, L7_2)
  L5_2 = table
  L5_2 = L5_2.insert
  L6_2 = L4_2
  L7_2 = ""
  L5_2(L6_2, L7_2)
  L5_2 = table
  L5_2 = L5_2.insert
  L6_2 = L4_2
  L7_2 = "Config = Config or {}"
  L5_2(L6_2, L7_2)
  L5_2 = table
  L5_2 = L5_2.insert
  L6_2 = L4_2
  L7_2 = ""
  L5_2(L6_2, L7_2)
  L5_2 = table
  L5_2 = L5_2.insert
  L6_2 = L4_2
  L7_2 = "while not Config.Garages do"
  L5_2(L6_2, L7_2)
  L5_2 = table
  L5_2 = L5_2.insert
  L6_2 = L4_2
  L7_2 = "    Citizen.Wait(100)"
  L5_2(L6_2, L7_2)
  L5_2 = table
  L5_2 = L5_2.insert
  L6_2 = L4_2
  L7_2 = "end"
  L5_2(L6_2, L7_2)
  L5_2 = table
  L5_2 = L5_2.insert
  L6_2 = L4_2
  L7_2 = ""
  L5_2(L6_2, L7_2)
  L5_2 = table
  L5_2 = L5_2.insert
  L6_2 = L4_2
  L7_2 = "Config.Garages['vms_housing:parking:%s'] = {"
  L8_2 = L7_2
  L7_2 = L7_2.format
  L9_2 = A0_2
  L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2 = L7_2(L8_2, L9_2)
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
  L5_2 = table
  L5_2 = L5_2.insert
  L6_2 = L4_2
  L7_2 = "    label = '%s',"
  L8_2 = L7_2
  L7_2 = L7_2.format
  L9_2 = A1_2
  L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2 = L7_2(L8_2, L9_2)
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
  L5_2 = table
  L5_2 = L5_2.insert
  L6_2 = L4_2
  L7_2 = "    type = '%s',"
  L8_2 = L7_2
  L7_2 = L7_2.format
  L9_2 = Config
  L9_2 = L9_2.HousingGaragesType
  if not L9_2 then
    L9_2 = "vehicle"
  end
  L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2 = L7_2(L8_2, L9_2)
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
  L5_2 = table
  L5_2 = L5_2.insert
  L6_2 = L4_2
  L7_2 = ""
  L5_2(L6_2, L7_2)
  L5_2 = table
  L5_2 = L5_2.insert
  L6_2 = L4_2
  L7_2 = "    garageZone = {"
  L5_2(L6_2, L7_2)
  L5_2 = pairs
  L6_2 = A2_2.points
  L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
  for L9_2, L10_2 in L5_2, L6_2, L7_2, L8_2 do
    L11_2 = table
    L11_2 = L11_2.insert
    L12_2 = L4_2
    L13_2 = "        vec2(%s, %s),"
    L14_2 = L13_2
    L13_2 = L13_2.format
    L15_2 = L10_2.x
    L16_2 = L10_2.y
    L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2 = L13_2(L14_2, L15_2, L16_2)
    L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
  end
  L5_2 = table
  L5_2 = L5_2.insert
  L6_2 = L4_2
  L7_2 = "    },"
  L5_2(L6_2, L7_2)
  L5_2 = table
  L5_2 = L5_2.insert
  L6_2 = L4_2
  L7_2 = "    minZ = %s,"
  L8_2 = L7_2
  L7_2 = L7_2.format
  L9_2 = A2_2.minZ
  L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2 = L7_2(L8_2, L9_2)
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
  L5_2 = table
  L5_2 = L5_2.insert
  L6_2 = L4_2
  L7_2 = "    maxZ = %s,"
  L8_2 = L7_2
  L7_2 = L7_2.format
  L9_2 = A2_2.maxZ
  L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2 = L7_2(L8_2, L9_2)
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
  L5_2 = table
  L5_2 = L5_2.insert
  L6_2 = L4_2
  L7_2 = ""
  L5_2(L6_2, L7_2)
  L5_2 = table
  L5_2 = L5_2.insert
  L6_2 = L4_2
  L7_2 = "    hasAccess = function()"
  L5_2(L6_2, L7_2)
  L5_2 = table
  L5_2 = L5_2.insert
  L6_2 = L4_2
  L7_2 = "        if GetResourceState('vms_housing') == 'started' and exports['vms_housing']:HasAnyPermission('%s') then"
  L8_2 = L7_2
  L7_2 = L7_2.format
  L9_2 = A0_2
  L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2 = L7_2(L8_2, L9_2)
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
  L5_2 = table
  L5_2 = L5_2.insert
  L6_2 = L4_2
  L7_2 = "            return true"
  L5_2(L6_2, L7_2)
  L5_2 = table
  L5_2 = L5_2.insert
  L6_2 = L4_2
  L7_2 = "        end"
  L5_2(L6_2, L7_2)
  L5_2 = table
  L5_2 = L5_2.insert
  L6_2 = L4_2
  L7_2 = "        return false"
  L5_2(L6_2, L7_2)
  L5_2 = table
  L5_2 = L5_2.insert
  L6_2 = L4_2
  L7_2 = "    end,"
  L5_2(L6_2, L7_2)
  L5_2 = table
  L5_2 = L5_2.insert
  L6_2 = L4_2
  L7_2 = ""
  L5_2(L6_2, L7_2)
  L5_2 = table
  L5_2 = L5_2.insert
  L6_2 = L4_2
  L7_2 = "    parkingSpaces = {"
  L5_2(L6_2, L7_2)
  L5_2 = pairs
  L6_2 = A3_2
  L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
  for L9_2, L10_2 in L5_2, L6_2, L7_2, L8_2 do
    L11_2 = L10_2.coords
    if L11_2 then
      L11_2 = "        [%s] = {coords = vec4(%s, %s, %s, %s)"
      L12_2 = L11_2
      L11_2 = L11_2.format
      L13_2 = L9_2
      L14_2 = L10_2.coords
      L14_2 = L14_2.x
      L15_2 = L10_2.coords
      L15_2 = L15_2.y
      L16_2 = L10_2.coords
      L16_2 = L16_2.z
      L17_2 = L10_2.coords
      L17_2 = L17_2.w
      L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
      L12_2 = L10_2.rotation
      if L12_2 then
        L12_2 = L10_2.rotation
        L12_2 = L12_2.x
        if L12_2 then
          L12_2 = L11_2
          L13_2 = ", rotation = vector3("
          L14_2 = L10_2.rotation
          L14_2 = L14_2.x
          L15_2 = ", "
          L16_2 = L10_2.rotation
          L16_2 = L16_2.y
          L17_2 = ", "
          L18_2 = L10_2.rotation
          L18_2 = L18_2.z
          L19_2 = ")"
          L12_2 = L12_2 .. L13_2 .. L14_2 .. L15_2 .. L16_2 .. L17_2 .. L18_2 .. L19_2
          L11_2 = L12_2
        end
      end
      L12_2 = L11_2
      L13_2 = "},"
      L12_2 = L12_2 .. L13_2
      L11_2 = L12_2
      L12_2 = table
      L12_2 = L12_2.insert
      L13_2 = L4_2
      L14_2 = L11_2
      L12_2(L13_2, L14_2)
    end
  end
  L5_2 = table
  L5_2 = L5_2.insert
  L6_2 = L4_2
  L7_2 = "    },"
  L5_2(L6_2, L7_2)
  L5_2 = table
  L5_2 = L5_2.insert
  L6_2 = L4_2
  L7_2 = "}"
  L5_2(L6_2, L7_2)
  L5_2 = table
  L5_2 = L5_2.concat
  L6_2 = L4_2
  L7_2 = "\n"
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = GetCurrentResourceName
  L6_2 = L6_2()
  L7_2 = SaveResourceFile
  L8_2 = L6_2
  L9_2 = "CREATED_PARKINGS/vms_housing.parking."
  L10_2 = A0_2
  L11_2 = ".lua"
  L9_2 = L9_2 .. L10_2 .. L11_2
  L10_2 = L5_2
  L11_2 = -1
  L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2)
  if not L7_2 then
    L8_2 = library
    L8_2 = L8_2.Debug
    L9_2 = "You cannot save the file with the configured parking - make sure you have such a path on your server: "
    L10_2 = L6_2
    L11_2 = "/CREATED_PARKINGS/"
    L9_2 = L9_2 .. L10_2 .. L11_2
    L10_2 = "warn"
    L8_2(L9_2, L10_2)
  else
    L8_2 = load
    L9_2 = L5_2
    L8_2 = L8_2(L9_2)
    L8_2()
    L8_2 = Config
    L8_2 = L8_2.ParkingCreator
    L8_2 = L8_2.AutomaticLoad
    if L8_2 then
      L8_2 = TriggerClientEvent
      L9_2 = "vms_garagesv2:createdNewGarage"
      L10_2 = -1
      L11_2 = json
      L11_2 = L11_2.encode
      L12_2 = L5_2
      L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2 = L11_2(L12_2)
      L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
    end
  end
end
function L20_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2
  L5_2 = {}
  L6_2 = {}
  L7_2 = Config
  L7_2 = L7_2.Garages
  L8_2 = "vms_housing:parking:%s:%s"
  L9_2 = L8_2
  L8_2 = L8_2.format
  L10_2 = A0_2
  L11_2 = A1_2
  L8_2 = L8_2(L9_2, L10_2, L11_2)
  L7_2 = L7_2[L8_2]
  function L8_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
    L1_3 = A4_2
    L1_3 = L1_3[A0_3]
    L2_3 = {}
    L3_3 = "            hasAccess = function()"
    L4_3 = "                if GetResourceState('vms_housing') == 'started' then"
    L5_3 = "                    return exports['vms_housing']:HasAnyPermission('%s')"
    L6_3 = L5_3
    L5_3 = L5_3.format
    L7_3 = L1_3
    L5_3 = L5_3(L6_3, L7_3)
    L6_3 = "                end"
    L7_3 = "                return false"
    L8_3 = "            end,"
    L2_3[1] = L3_3
    L2_3[2] = L4_3
    L2_3[3] = L5_3
    L2_3[4] = L6_3
    L2_3[5] = L7_3
    L2_3[6] = L8_3
    return L2_3
  end
  L9_2 = table
  L9_2 = L9_2.insert
  L10_2 = L5_2
  L11_2 = "-- File generated with VMS Housing for VMS Garages V2."
  L9_2(L10_2, L11_2)
  L9_2 = table
  L9_2 = L9_2.insert
  L10_2 = L5_2
  L11_2 = ""
  L9_2(L10_2, L11_2)
  L9_2 = table
  L9_2 = L9_2.insert
  L10_2 = L5_2
  L11_2 = "Config = Config or {}"
  L9_2(L10_2, L11_2)
  L9_2 = table
  L9_2 = L9_2.insert
  L10_2 = L5_2
  L11_2 = ""
  L9_2(L10_2, L11_2)
  L9_2 = table
  L9_2 = L9_2.insert
  L10_2 = L5_2
  L11_2 = "while not Config.Garages do"
  L9_2(L10_2, L11_2)
  L9_2 = table
  L9_2 = L9_2.insert
  L10_2 = L5_2
  L11_2 = "    Citizen.Wait(100)"
  L9_2(L10_2, L11_2)
  L9_2 = table
  L9_2 = L9_2.insert
  L10_2 = L5_2
  L11_2 = "end"
  L9_2(L10_2, L11_2)
  L9_2 = table
  L9_2 = L9_2.insert
  L10_2 = L5_2
  L11_2 = ""
  L9_2(L10_2, L11_2)
  L9_2 = table
  L9_2 = L9_2.insert
  L10_2 = L5_2
  L11_2 = "Config.Garages['vms_housing:parking:%s:%s'] = {"
  L12_2 = L11_2
  L11_2 = L11_2.format
  L13_2 = A0_2
  L14_2 = A1_2
  L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2 = L11_2(L12_2, L13_2, L14_2)
  L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
  L9_2 = table
  L9_2 = L9_2.insert
  L10_2 = L5_2
  L11_2 = "    label = '%s',"
  L12_2 = L11_2
  L11_2 = L11_2.format
  L13_2 = A2_2
  L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2 = L11_2(L12_2, L13_2)
  L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
  L9_2 = table
  L9_2 = L9_2.insert
  L10_2 = L5_2
  L11_2 = "    type = '%s',"
  L12_2 = L11_2
  L11_2 = L11_2.format
  L13_2 = Config
  L13_2 = L13_2.HousingGaragesType
  if not L13_2 then
    L13_2 = "vehicle"
  end
  L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2 = L11_2(L12_2, L13_2)
  L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
  L9_2 = table
  L9_2 = L9_2.insert
  L10_2 = L5_2
  L11_2 = ""
  L9_2(L10_2, L11_2)
  L9_2 = table
  L9_2 = L9_2.insert
  L10_2 = L5_2
  L11_2 = "    interior = {"
  L9_2(L10_2, L11_2)
  L9_2 = nil
  if L7_2 then
    L10_2 = L7_2.interior
    if L10_2 then
      L10_2 = L7_2.interior
      L10_2 = L10_2.routingBucket
      if L10_2 then
        L10_2 = L7_2.interior
        L9_2 = L10_2.routingBucket
      end
    end
  end
  L10_2 = nil
  if not L9_2 then
    L11_2 = 1001
    L12_2 = 15000
    L13_2 = 1
    for L14_2 = L11_2, L12_2, L13_2 do
      L15_2 = pairs
      L16_2 = Config
      L16_2 = L16_2.Garages
      L15_2, L16_2, L17_2, L18_2 = L15_2(L16_2)
      for L19_2, L20_2 in L15_2, L16_2, L17_2, L18_2 do
        L10_2 = L14_2
        L21_2 = L20_2.interior
        if L21_2 then
          L21_2 = L20_2.interior
          L21_2 = L21_2.routingBucket
          if L21_2 == L14_2 then
            L10_2 = false
            break
          end
        end
      end
      if L10_2 then
        L9_2 = L10_2
        break
      end
    end
  end
  L11_2 = table
  L11_2 = L11_2.insert
  L12_2 = L5_2
  L13_2 = "        routingBucket = %s,"
  L14_2 = L13_2
  L13_2 = L13_2.format
  L15_2 = L9_2
  L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2 = L13_2(L14_2, L15_2)
  L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
  L11_2 = table
  L11_2 = L11_2.insert
  L12_2 = L5_2
  L13_2 = ""
  L11_2(L12_2, L13_2)
  L11_2 = table
  L11_2 = L11_2.insert
  L12_2 = L5_2
  L13_2 = "        enterOnFoot = vec4(%s, %s, %s, %s),"
  L14_2 = L13_2
  L13_2 = L13_2.format
  L15_2 = A3_2.enterOnFoot
  L15_2 = L15_2.x
  L16_2 = A3_2.enterOnFoot
  L16_2 = L16_2.y
  L17_2 = A3_2.enterOnFoot
  L17_2 = L17_2.z
  L18_2 = A3_2.enterOnFoot
  L18_2 = L18_2.w
  L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2 = L13_2(L14_2, L15_2, L16_2, L17_2, L18_2)
  L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
  L11_2 = table
  L11_2 = L11_2.insert
  L12_2 = L5_2
  L13_2 = "        exitOnFoot = vec4(1380.2, 178.5, -48.99, 358.12),"
  L11_2(L12_2, L13_2)
  L11_2 = table
  L11_2 = L11_2.insert
  L12_2 = L5_2
  L13_2 = ""
  L11_2(L12_2, L13_2)
  L11_2 = table
  L11_2 = L11_2.insert
  L12_2 = L5_2
  L13_2 = "        enterWithVehicle = vec4(%s, %s, %s, %s),"
  L14_2 = L13_2
  L13_2 = L13_2.format
  L15_2 = A3_2.enterWithVehicle
  L15_2 = L15_2.x
  L16_2 = A3_2.enterWithVehicle
  L16_2 = L16_2.y
  L17_2 = A3_2.enterWithVehicle
  L17_2 = L17_2.z
  L18_2 = A3_2.enterWithVehicle
  L18_2 = L18_2.w
  L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2 = L13_2(L14_2, L15_2, L16_2, L17_2, L18_2)
  L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
  L11_2 = table
  L11_2 = L11_2.insert
  L12_2 = L5_2
  L13_2 = "        exitWithVehicle = vec4(1339.74, 190.82, -48.31, 269.62),"
  L11_2(L12_2, L13_2)
  L11_2 = table
  L11_2 = L11_2.insert
  L12_2 = L5_2
  L13_2 = "    },"
  L11_2(L12_2, L13_2)
  L11_2 = table
  L11_2 = L11_2.insert
  L12_2 = L5_2
  L13_2 = ""
  L11_2(L12_2, L13_2)
  L11_2 = table
  L11_2 = L11_2.insert
  L12_2 = L5_2
  L13_2 = "    parkingSpaces = {"
  L11_2(L12_2, L13_2)
  L11_2 = table
  L11_2 = L11_2.insert
  L12_2 = L5_2
  L13_2 = "        [1] = {"
  L11_2(L12_2, L13_2)
  L11_2 = table
  L11_2 = L11_2.insert
  L12_2 = L5_2
  L13_2 = "            coords = vector4(1366.35, 200.26, -50.41, 89.89),"
  L11_2(L12_2, L13_2)
  if A4_2 then
    L11_2 = A4_2["1"]
    if L11_2 then
      L11_2 = L8_2
      L12_2 = "1"
      L11_2 = L11_2(L12_2)
      L12_2 = 1
      L13_2 = #L11_2
      L14_2 = 1
      for L15_2 = L12_2, L13_2, L14_2 do
        L16_2 = table
        L16_2 = L16_2.insert
        L17_2 = L5_2
        L18_2 = L11_2[L15_2]
        L16_2(L17_2, L18_2)
      end
    end
  end
  L11_2 = table
  L11_2 = L11_2.insert
  L12_2 = L5_2
  L13_2 = "        },"
  L11_2(L12_2, L13_2)
  L11_2 = table
  L11_2 = L11_2.insert
  L12_2 = L5_2
  L13_2 = "        [2] = {"
  L11_2(L12_2, L13_2)
  L11_2 = table
  L11_2 = L11_2.insert
  L12_2 = L5_2
  L13_2 = "            coords = vector4(1366.19, 204.52, -50.41, 90.23),"
  L11_2(L12_2, L13_2)
  if A4_2 then
    L11_2 = A4_2["2"]
    if L11_2 then
      L11_2 = L8_2
      L12_2 = "2"
      L11_2 = L11_2(L12_2)
      L12_2 = 1
      L13_2 = #L11_2
      L14_2 = 1
      for L15_2 = L12_2, L13_2, L14_2 do
        L16_2 = table
        L16_2 = L16_2.insert
        L17_2 = L5_2
        L18_2 = L11_2[L15_2]
        L16_2(L17_2, L18_2)
      end
    end
  end
  L11_2 = table
  L11_2 = L11_2.insert
  L12_2 = L5_2
  L13_2 = "        },"
  L11_2(L12_2, L13_2)
  L11_2 = table
  L11_2 = L11_2.insert
  L12_2 = L5_2
  L13_2 = "        [3] = {"
  L11_2(L12_2, L13_2)
  L11_2 = table
  L11_2 = L11_2.insert
  L12_2 = L5_2
  L13_2 = "            coords = vector4(1366.29, 208.72, -50.41, 89.73),"
  L11_2(L12_2, L13_2)
  if A4_2 then
    L11_2 = A4_2["3"]
    if L11_2 then
      L11_2 = L8_2
      L12_2 = "3"
      L11_2 = L11_2(L12_2)
      L12_2 = 1
      L13_2 = #L11_2
      L14_2 = 1
      for L15_2 = L12_2, L13_2, L14_2 do
        L16_2 = table
        L16_2 = L16_2.insert
        L17_2 = L5_2
        L18_2 = L11_2[L15_2]
        L16_2(L17_2, L18_2)
      end
    end
  end
  L11_2 = table
  L11_2 = L11_2.insert
  L12_2 = L5_2
  L13_2 = "        },"
  L11_2(L12_2, L13_2)
  L11_2 = table
  L11_2 = L11_2.insert
  L12_2 = L5_2
  L13_2 = "        [4] = {"
  L11_2(L12_2, L13_2)
  L11_2 = table
  L11_2 = L11_2.insert
  L12_2 = L5_2
  L13_2 = "            coords = vector4(1366.17, 212.78, -50.41, 90.47),"
  L11_2(L12_2, L13_2)
  if A4_2 then
    L11_2 = A4_2["4"]
    if L11_2 then
      L11_2 = L8_2
      L12_2 = "4"
      L11_2 = L11_2(L12_2)
      L12_2 = 1
      L13_2 = #L11_2
      L14_2 = 1
      for L15_2 = L12_2, L13_2, L14_2 do
        L16_2 = table
        L16_2 = L16_2.insert
        L17_2 = L5_2
        L18_2 = L11_2[L15_2]
        L16_2(L17_2, L18_2)
      end
    end
  end
  L11_2 = table
  L11_2 = L11_2.insert
  L12_2 = L5_2
  L13_2 = "        },"
  L11_2(L12_2, L13_2)
  L11_2 = table
  L11_2 = L11_2.insert
  L12_2 = L5_2
  L13_2 = "        [5] = {"
  L11_2(L12_2, L13_2)
  L11_2 = table
  L11_2 = L11_2.insert
  L12_2 = L5_2
  L13_2 = "            coords = vector4(1366.24, 217.12, -50.41, 90.5),"
  L11_2(L12_2, L13_2)
  if A4_2 then
    L11_2 = A4_2["5"]
    if L11_2 then
      L11_2 = L8_2
      L12_2 = "5"
      L11_2 = L11_2(L12_2)
      L12_2 = 1
      L13_2 = #L11_2
      L14_2 = 1
      for L15_2 = L12_2, L13_2, L14_2 do
        L16_2 = table
        L16_2 = L16_2.insert
        L17_2 = L5_2
        L18_2 = L11_2[L15_2]
        L16_2(L17_2, L18_2)
      end
    end
  end
  L11_2 = table
  L11_2 = L11_2.insert
  L12_2 = L5_2
  L13_2 = "        },"
  L11_2(L12_2, L13_2)
  L11_2 = table
  L11_2 = L11_2.insert
  L12_2 = L5_2
  L13_2 = "        [6] = {"
  L11_2(L12_2, L13_2)
  L11_2 = table
  L11_2 = L11_2.insert
  L12_2 = L5_2
  L13_2 = "            coords = vector4(1366.29, 221.18, -50.41, 90.51),"
  L11_2(L12_2, L13_2)
  if A4_2 then
    L11_2 = A4_2["6"]
    if L11_2 then
      L11_2 = L8_2
      L12_2 = "6"
      L11_2 = L11_2(L12_2)
      L12_2 = 1
      L13_2 = #L11_2
      L14_2 = 1
      for L15_2 = L12_2, L13_2, L14_2 do
        L16_2 = table
        L16_2 = L16_2.insert
        L17_2 = L5_2
        L18_2 = L11_2[L15_2]
        L16_2(L17_2, L18_2)
      end
    end
  end
  L11_2 = table
  L11_2 = L11_2.insert
  L12_2 = L5_2
  L13_2 = "        },"
  L11_2(L12_2, L13_2)
  L11_2 = table
  L11_2 = L11_2.insert
  L12_2 = L5_2
  L13_2 = "        [7] = {"
  L11_2(L12_2, L13_2)
  L11_2 = table
  L11_2 = L11_2.insert
  L12_2 = L5_2
  L13_2 = "            coords = vector4(1366.4, 225.26, -50.41, 90.71),"
  L11_2(L12_2, L13_2)
  if A4_2 then
    L11_2 = A4_2["7"]
    if L11_2 then
      L11_2 = L8_2
      L12_2 = "7"
      L11_2 = L11_2(L12_2)
      L12_2 = 1
      L13_2 = #L11_2
      L14_2 = 1
      for L15_2 = L12_2, L13_2, L14_2 do
        L16_2 = table
        L16_2 = L16_2.insert
        L17_2 = L5_2
        L18_2 = L11_2[L15_2]
        L16_2(L17_2, L18_2)
      end
    end
  end
  L11_2 = table
  L11_2 = L11_2.insert
  L12_2 = L5_2
  L13_2 = "        },"
  L11_2(L12_2, L13_2)
  L11_2 = table
  L11_2 = L11_2.insert
  L12_2 = L5_2
  L13_2 = "        [8] = {"
  L11_2(L12_2, L13_2)
  L11_2 = table
  L11_2 = L11_2.insert
  L12_2 = L5_2
  L13_2 = "            coords = vector4(1366.32, 229.57, -50.41, 89.25),"
  L11_2(L12_2, L13_2)
  if A4_2 then
    L11_2 = A4_2["8"]
    if L11_2 then
      L11_2 = L8_2
      L12_2 = "8"
      L11_2 = L11_2(L12_2)
      L12_2 = 1
      L13_2 = #L11_2
      L14_2 = 1
      for L15_2 = L12_2, L13_2, L14_2 do
        L16_2 = table
        L16_2 = L16_2.insert
        L17_2 = L5_2
        L18_2 = L11_2[L15_2]
        L16_2(L17_2, L18_2)
      end
    end
  end
  L11_2 = table
  L11_2 = L11_2.insert
  L12_2 = L5_2
  L13_2 = "        },"
  L11_2(L12_2, L13_2)
  L11_2 = table
  L11_2 = L11_2.insert
  L12_2 = L5_2
  L13_2 = "        [9] = {"
  L11_2(L12_2, L13_2)
  L11_2 = table
  L11_2 = L11_2.insert
  L12_2 = L5_2
  L13_2 = "            coords = vector4(1366.11, 233.65, -50.41, 90.8),"
  L11_2(L12_2, L13_2)
  if A4_2 then
    L11_2 = A4_2["9"]
    if L11_2 then
      L11_2 = L8_2
      L12_2 = "9"
      L11_2 = L11_2(L12_2)
      L12_2 = 1
      L13_2 = #L11_2
      L14_2 = 1
      for L15_2 = L12_2, L13_2, L14_2 do
        L16_2 = table
        L16_2 = L16_2.insert
        L17_2 = L5_2
        L18_2 = L11_2[L15_2]
        L16_2(L17_2, L18_2)
      end
    end
  end
  L11_2 = table
  L11_2 = L11_2.insert
  L12_2 = L5_2
  L13_2 = "        },"
  L11_2(L12_2, L13_2)
  L11_2 = table
  L11_2 = L11_2.insert
  L12_2 = L5_2
  L13_2 = "        [10] = {"
  L11_2(L12_2, L13_2)
  L11_2 = table
  L11_2 = L11_2.insert
  L12_2 = L5_2
  L13_2 = "            coords = vector4(1366.32, 237.86, -50.41, 90.33),"
  L11_2(L12_2, L13_2)
  if A4_2 then
    L11_2 = A4_2["10"]
    if L11_2 then
      L11_2 = L8_2
      L12_2 = "10"
      L11_2 = L11_2(L12_2)
      L12_2 = 1
      L13_2 = #L11_2
      L14_2 = 1
      for L15_2 = L12_2, L13_2, L14_2 do
        L16_2 = table
        L16_2 = L16_2.insert
        L17_2 = L5_2
        L18_2 = L11_2[L15_2]
        L16_2(L17_2, L18_2)
      end
    end
  end
  L11_2 = table
  L11_2 = L11_2.insert
  L12_2 = L5_2
  L13_2 = "        },"
  L11_2(L12_2, L13_2)
  L11_2 = table
  L11_2 = L11_2.insert
  L12_2 = L5_2
  L13_2 = "        [11] = {"
  L11_2(L12_2, L13_2)
  L11_2 = table
  L11_2 = L11_2.insert
  L12_2 = L5_2
  L13_2 = "            coords = vector4(1366.51, 242.11, -50.41, 90.15),"
  L11_2(L12_2, L13_2)
  if A4_2 then
    L11_2 = A4_2["11"]
    if L11_2 then
      L11_2 = L8_2
      L12_2 = "11"
      L11_2 = L11_2(L12_2)
      L12_2 = 1
      L13_2 = #L11_2
      L14_2 = 1
      for L15_2 = L12_2, L13_2, L14_2 do
        L16_2 = table
        L16_2 = L16_2.insert
        L17_2 = L5_2
        L18_2 = L11_2[L15_2]
        L16_2(L17_2, L18_2)
      end
    end
  end
  L11_2 = table
  L11_2 = L11_2.insert
  L12_2 = L5_2
  L13_2 = "        },"
  L11_2(L12_2, L13_2)
  L11_2 = table
  L11_2 = L11_2.insert
  L12_2 = L5_2
  L13_2 = "        [12] = {"
  L11_2(L12_2, L13_2)
  L11_2 = table
  L11_2 = L11_2.insert
  L12_2 = L5_2
  L13_2 = "            coords = vector4(1366.17, 246.21, -50.41, 90.67),"
  L11_2(L12_2, L13_2)
  if A4_2 then
    L11_2 = A4_2["12"]
    if L11_2 then
      L11_2 = L8_2
      L12_2 = "12"
      L11_2 = L11_2(L12_2)
      L12_2 = 1
      L13_2 = #L11_2
      L14_2 = 1
      for L15_2 = L12_2, L13_2, L14_2 do
        L16_2 = table
        L16_2 = L16_2.insert
        L17_2 = L5_2
        L18_2 = L11_2[L15_2]
        L16_2(L17_2, L18_2)
      end
    end
  end
  L11_2 = table
  L11_2 = L11_2.insert
  L12_2 = L5_2
  L13_2 = "        },"
  L11_2(L12_2, L13_2)
  L11_2 = table
  L11_2 = L11_2.insert
  L12_2 = L5_2
  L13_2 = "        [13] = {"
  L11_2(L12_2, L13_2)
  L11_2 = table
  L11_2 = L11_2.insert
  L12_2 = L5_2
  L13_2 = "            coords = vector4(1365.58, 250.31, -50.41, 90.67),"
  L11_2(L12_2, L13_2)
  if A4_2 then
    L11_2 = A4_2["13"]
    if L11_2 then
      L11_2 = L8_2
      L12_2 = "13"
      L11_2 = L11_2(L12_2)
      L12_2 = 1
      L13_2 = #L11_2
      L14_2 = 1
      for L15_2 = L12_2, L13_2, L14_2 do
        L16_2 = table
        L16_2 = L16_2.insert
        L17_2 = L5_2
        L18_2 = L11_2[L15_2]
        L16_2(L17_2, L18_2)
      end
    end
  end
  L11_2 = table
  L11_2 = L11_2.insert
  L12_2 = L5_2
  L13_2 = "        },"
  L11_2(L12_2, L13_2)
  L11_2 = table
  L11_2 = L11_2.insert
  L12_2 = L5_2
  L13_2 = "        [14] = {"
  L11_2(L12_2, L13_2)
  L11_2 = table
  L11_2 = L11_2.insert
  L12_2 = L5_2
  L13_2 = "            coords = vector4(1366.25, 254.62, -50.41, 90.19),"
  L11_2(L12_2, L13_2)
  if A4_2 then
    L11_2 = A4_2["14"]
    if L11_2 then
      L11_2 = L8_2
      L12_2 = "14"
      L11_2 = L11_2(L12_2)
      L12_2 = 1
      L13_2 = #L11_2
      L14_2 = 1
      for L15_2 = L12_2, L13_2, L14_2 do
        L16_2 = table
        L16_2 = L16_2.insert
        L17_2 = L5_2
        L18_2 = L11_2[L15_2]
        L16_2(L17_2, L18_2)
      end
    end
  end
  L11_2 = table
  L11_2 = L11_2.insert
  L12_2 = L5_2
  L13_2 = "        },"
  L11_2(L12_2, L13_2)
  L11_2 = table
  L11_2 = L11_2.insert
  L12_2 = L5_2
  L13_2 = "        [15] = {"
  L11_2(L12_2, L13_2)
  L11_2 = table
  L11_2 = L11_2.insert
  L12_2 = L5_2
  L13_2 = "            coords = vector4(1379.88, 246.12, -50.41, 270.47),"
  L11_2(L12_2, L13_2)
  if A4_2 then
    L11_2 = A4_2["15"]
    if L11_2 then
      L11_2 = L8_2
      L12_2 = "15"
      L11_2 = L11_2(L12_2)
      L12_2 = 1
      L13_2 = #L11_2
      L14_2 = 1
      for L15_2 = L12_2, L13_2, L14_2 do
        L16_2 = table
        L16_2 = L16_2.insert
        L17_2 = L5_2
        L18_2 = L11_2[L15_2]
        L16_2(L17_2, L18_2)
      end
    end
  end
  L11_2 = table
  L11_2 = L11_2.insert
  L12_2 = L5_2
  L13_2 = "        },"
  L11_2(L12_2, L13_2)
  L11_2 = table
  L11_2 = L11_2.insert
  L12_2 = L5_2
  L13_2 = "        [16] = {"
  L11_2(L12_2, L13_2)
  L11_2 = table
  L11_2 = L11_2.insert
  L12_2 = L5_2
  L13_2 = "            coords = vector4(1379.76, 241.98, -50.41, 269.62),"
  L11_2(L12_2, L13_2)
  if A4_2 then
    L11_2 = A4_2["16"]
    if L11_2 then
      L11_2 = L8_2
      L12_2 = "16"
      L11_2 = L11_2(L12_2)
      L12_2 = 1
      L13_2 = #L11_2
      L14_2 = 1
      for L15_2 = L12_2, L13_2, L14_2 do
        L16_2 = table
        L16_2 = L16_2.insert
        L17_2 = L5_2
        L18_2 = L11_2[L15_2]
        L16_2(L17_2, L18_2)
      end
    end
  end
  L11_2 = table
  L11_2 = L11_2.insert
  L12_2 = L5_2
  L13_2 = "        },"
  L11_2(L12_2, L13_2)
  L11_2 = table
  L11_2 = L11_2.insert
  L12_2 = L5_2
  L13_2 = "        [17] = {"
  L11_2(L12_2, L13_2)
  L11_2 = table
  L11_2 = L11_2.insert
  L12_2 = L5_2
  L13_2 = "            coords = vector4(1379.66, 237.93, -50.41, 268.93),"
  L11_2(L12_2, L13_2)
  if A4_2 then
    L11_2 = A4_2["17"]
    if L11_2 then
      L11_2 = L8_2
      L12_2 = "17"
      L11_2 = L11_2(L12_2)
      L12_2 = 1
      L13_2 = #L11_2
      L14_2 = 1
      for L15_2 = L12_2, L13_2, L14_2 do
        L16_2 = table
        L16_2 = L16_2.insert
        L17_2 = L5_2
        L18_2 = L11_2[L15_2]
        L16_2(L17_2, L18_2)
      end
    end
  end
  L11_2 = table
  L11_2 = L11_2.insert
  L12_2 = L5_2
  L13_2 = "        },"
  L11_2(L12_2, L13_2)
  L11_2 = table
  L11_2 = L11_2.insert
  L12_2 = L5_2
  L13_2 = "        [18] = {"
  L11_2(L12_2, L13_2)
  L11_2 = table
  L11_2 = L11_2.insert
  L12_2 = L5_2
  L13_2 = "            coords = vector4(1379.87, 233.71, -50.41, 270.0),"
  L11_2(L12_2, L13_2)
  if A4_2 then
    L11_2 = A4_2["18"]
    if L11_2 then
      L11_2 = L8_2
      L12_2 = "18"
      L11_2 = L11_2(L12_2)
      L12_2 = 1
      L13_2 = #L11_2
      L14_2 = 1
      for L15_2 = L12_2, L13_2, L14_2 do
        L16_2 = table
        L16_2 = L16_2.insert
        L17_2 = L5_2
        L18_2 = L11_2[L15_2]
        L16_2(L17_2, L18_2)
      end
    end
  end
  L11_2 = table
  L11_2 = L11_2.insert
  L12_2 = L5_2
  L13_2 = "        },"
  L11_2(L12_2, L13_2)
  L11_2 = table
  L11_2 = L11_2.insert
  L12_2 = L5_2
  L13_2 = "        [19] = {"
  L11_2(L12_2, L13_2)
  L11_2 = table
  L11_2 = L11_2.insert
  L12_2 = L5_2
  L13_2 = "            coords = vector4(1379.64, 229.47, -50.41, 268.58),"
  L11_2(L12_2, L13_2)
  if A4_2 then
    L11_2 = A4_2["19"]
    if L11_2 then
      L11_2 = L8_2
      L12_2 = "19"
      L11_2 = L11_2(L12_2)
      L12_2 = 1
      L13_2 = #L11_2
      L14_2 = 1
      for L15_2 = L12_2, L13_2, L14_2 do
        L16_2 = table
        L16_2 = L16_2.insert
        L17_2 = L5_2
        L18_2 = L11_2[L15_2]
        L16_2(L17_2, L18_2)
      end
    end
  end
  L11_2 = table
  L11_2 = L11_2.insert
  L12_2 = L5_2
  L13_2 = "        },"
  L11_2(L12_2, L13_2)
  L11_2 = table
  L11_2 = L11_2.insert
  L12_2 = L5_2
  L13_2 = "        [20] = {"
  L11_2(L12_2, L13_2)
  L11_2 = table
  L11_2 = L11_2.insert
  L12_2 = L5_2
  L13_2 = "            coords = vector4(1379.7, 225.43, -50.41, 269.4),"
  L11_2(L12_2, L13_2)
  if A4_2 then
    L11_2 = A4_2["20"]
    if L11_2 then
      L11_2 = L8_2
      L12_2 = "20"
      L11_2 = L11_2(L12_2)
      L12_2 = 1
      L13_2 = #L11_2
      L14_2 = 1
      for L15_2 = L12_2, L13_2, L14_2 do
        L16_2 = table
        L16_2 = L16_2.insert
        L17_2 = L5_2
        L18_2 = L11_2[L15_2]
        L16_2(L17_2, L18_2)
      end
    end
  end
  L11_2 = table
  L11_2 = L11_2.insert
  L12_2 = L5_2
  L13_2 = "        },"
  L11_2(L12_2, L13_2)
  L11_2 = table
  L11_2 = L11_2.insert
  L12_2 = L5_2
  L13_2 = "        [21] = {"
  L11_2(L12_2, L13_2)
  L11_2 = table
  L11_2 = L11_2.insert
  L12_2 = L5_2
  L13_2 = "            coords = vector4(1379.58, 221.2, -50.41, 270.27),"
  L11_2(L12_2, L13_2)
  if A4_2 then
    L11_2 = A4_2["21"]
    if L11_2 then
      L11_2 = L8_2
      L12_2 = "21"
      L11_2 = L11_2(L12_2)
      L12_2 = 1
      L13_2 = #L11_2
      L14_2 = 1
      for L15_2 = L12_2, L13_2, L14_2 do
        L16_2 = table
        L16_2 = L16_2.insert
        L17_2 = L5_2
        L18_2 = L11_2[L15_2]
        L16_2(L17_2, L18_2)
      end
    end
  end
  L11_2 = table
  L11_2 = L11_2.insert
  L12_2 = L5_2
  L13_2 = "        },"
  L11_2(L12_2, L13_2)
  L11_2 = table
  L11_2 = L11_2.insert
  L12_2 = L5_2
  L13_2 = "        [22] = {"
  L11_2(L12_2, L13_2)
  L11_2 = table
  L11_2 = L11_2.insert
  L12_2 = L5_2
  L13_2 = "            coords = vector4(1379.52, 217.14, -50.41, 269.09),"
  L11_2(L12_2, L13_2)
  if A4_2 then
    L11_2 = A4_2["22"]
    if L11_2 then
      L11_2 = L8_2
      L12_2 = "22"
      L11_2 = L11_2(L12_2)
      L12_2 = 1
      L13_2 = #L11_2
      L14_2 = 1
      for L15_2 = L12_2, L13_2, L14_2 do
        L16_2 = table
        L16_2 = L16_2.insert
        L17_2 = L5_2
        L18_2 = L11_2[L15_2]
        L16_2(L17_2, L18_2)
      end
    end
  end
  L11_2 = table
  L11_2 = L11_2.insert
  L12_2 = L5_2
  L13_2 = "        },"
  L11_2(L12_2, L13_2)
  L11_2 = table
  L11_2 = L11_2.insert
  L12_2 = L5_2
  L13_2 = "        [23] = {"
  L11_2(L12_2, L13_2)
  L11_2 = table
  L11_2 = L11_2.insert
  L12_2 = L5_2
  L13_2 = "            coords = vector4(1379.63, 212.79, -50.41, 269.1),"
  L11_2(L12_2, L13_2)
  if A4_2 then
    L11_2 = A4_2["23"]
    if L11_2 then
      L11_2 = L8_2
      L12_2 = "23"
      L11_2 = L11_2(L12_2)
      L12_2 = 1
      L13_2 = #L11_2
      L14_2 = 1
      for L15_2 = L12_2, L13_2, L14_2 do
        L16_2 = table
        L16_2 = L16_2.insert
        L17_2 = L5_2
        L18_2 = L11_2[L15_2]
        L16_2(L17_2, L18_2)
      end
    end
  end
  L11_2 = table
  L11_2 = L11_2.insert
  L12_2 = L5_2
  L13_2 = "        },"
  L11_2(L12_2, L13_2)
  L11_2 = table
  L11_2 = L11_2.insert
  L12_2 = L5_2
  L13_2 = "        [24] = {"
  L11_2(L12_2, L13_2)
  L11_2 = table
  L11_2 = L11_2.insert
  L12_2 = L5_2
  L13_2 = "            coords = vector4(1379.67, 208.79, -50.41, 269.95),"
  L11_2(L12_2, L13_2)
  if A4_2 then
    L11_2 = A4_2["24"]
    if L11_2 then
      L11_2 = L8_2
      L12_2 = "24"
      L11_2 = L11_2(L12_2)
      L12_2 = 1
      L13_2 = #L11_2
      L14_2 = 1
      for L15_2 = L12_2, L13_2, L14_2 do
        L16_2 = table
        L16_2 = L16_2.insert
        L17_2 = L5_2
        L18_2 = L11_2[L15_2]
        L16_2(L17_2, L18_2)
      end
    end
  end
  L11_2 = table
  L11_2 = L11_2.insert
  L12_2 = L5_2
  L13_2 = "        },"
  L11_2(L12_2, L13_2)
  L11_2 = table
  L11_2 = L11_2.insert
  L12_2 = L5_2
  L13_2 = "        [25] = {"
  L11_2(L12_2, L13_2)
  L11_2 = table
  L11_2 = L11_2.insert
  L12_2 = L5_2
  L13_2 = "            coords = vector4(1394.02, 200.28, -50.41, 270.33),"
  L11_2(L12_2, L13_2)
  if A4_2 then
    L11_2 = A4_2["25"]
    if L11_2 then
      L11_2 = L8_2
      L12_2 = "25"
      L11_2 = L11_2(L12_2)
      L12_2 = 1
      L13_2 = #L11_2
      L14_2 = 1
      for L15_2 = L12_2, L13_2, L14_2 do
        L16_2 = table
        L16_2 = L16_2.insert
        L17_2 = L5_2
        L18_2 = L11_2[L15_2]
        L16_2(L17_2, L18_2)
      end
    end
  end
  L11_2 = table
  L11_2 = L11_2.insert
  L12_2 = L5_2
  L13_2 = "        },"
  L11_2(L12_2, L13_2)
  L11_2 = table
  L11_2 = L11_2.insert
  L12_2 = L5_2
  L13_2 = "        [26] = {"
  L11_2(L12_2, L13_2)
  L11_2 = table
  L11_2 = L11_2.insert
  L12_2 = L5_2
  L13_2 = "            coords = vector4(1394.28, 204.47, -50.41, 271.19),"
  L11_2(L12_2, L13_2)
  if A4_2 then
    L11_2 = A4_2["26"]
    if L11_2 then
      L11_2 = L8_2
      L12_2 = "26"
      L11_2 = L11_2(L12_2)
      L12_2 = 1
      L13_2 = #L11_2
      L14_2 = 1
      for L15_2 = L12_2, L13_2, L14_2 do
        L16_2 = table
        L16_2 = L16_2.insert
        L17_2 = L5_2
        L18_2 = L11_2[L15_2]
        L16_2(L17_2, L18_2)
      end
    end
  end
  L11_2 = table
  L11_2 = L11_2.insert
  L12_2 = L5_2
  L13_2 = "        },"
  L11_2(L12_2, L13_2)
  L11_2 = table
  L11_2 = L11_2.insert
  L12_2 = L5_2
  L13_2 = "        [27] = {"
  L11_2(L12_2, L13_2)
  L11_2 = table
  L11_2 = L11_2.insert
  L12_2 = L5_2
  L13_2 = "            coords = vector4(1394.05, 208.6, -50.41, 270.11),"
  L11_2(L12_2, L13_2)
  if A4_2 then
    L11_2 = A4_2["27"]
    if L11_2 then
      L11_2 = L8_2
      L12_2 = "27"
      L11_2 = L11_2(L12_2)
      L12_2 = 1
      L13_2 = #L11_2
      L14_2 = 1
      for L15_2 = L12_2, L13_2, L14_2 do
        L16_2 = table
        L16_2 = L16_2.insert
        L17_2 = L5_2
        L18_2 = L11_2[L15_2]
        L16_2(L17_2, L18_2)
      end
    end
  end
  L11_2 = table
  L11_2 = L11_2.insert
  L12_2 = L5_2
  L13_2 = "        },"
  L11_2(L12_2, L13_2)
  L11_2 = table
  L11_2 = L11_2.insert
  L12_2 = L5_2
  L13_2 = "        [28] = {"
  L11_2(L12_2, L13_2)
  L11_2 = table
  L11_2 = L11_2.insert
  L12_2 = L5_2
  L13_2 = "            coords = vector4(1394.06, 212.82, -50.41, 269.88),"
  L11_2(L12_2, L13_2)
  if A4_2 then
    L11_2 = A4_2["28"]
    if L11_2 then
      L11_2 = L8_2
      L12_2 = "28"
      L11_2 = L11_2(L12_2)
      L12_2 = 1
      L13_2 = #L11_2
      L14_2 = 1
      for L15_2 = L12_2, L13_2, L14_2 do
        L16_2 = table
        L16_2 = L16_2.insert
        L17_2 = L5_2
        L18_2 = L11_2[L15_2]
        L16_2(L17_2, L18_2)
      end
    end
  end
  L11_2 = table
  L11_2 = L11_2.insert
  L12_2 = L5_2
  L13_2 = "        },"
  L11_2(L12_2, L13_2)
  L11_2 = table
  L11_2 = L11_2.insert
  L12_2 = L5_2
  L13_2 = "        [29] = {"
  L11_2(L12_2, L13_2)
  L11_2 = table
  L11_2 = L11_2.insert
  L12_2 = L5_2
  L13_2 = "            coords = vector4(1394.05, 216.96, -50.41, 270.4),"
  L11_2(L12_2, L13_2)
  if A4_2 then
    L11_2 = A4_2["29"]
    if L11_2 then
      L11_2 = L8_2
      L12_2 = "29"
      L11_2 = L11_2(L12_2)
      L12_2 = 1
      L13_2 = #L11_2
      L14_2 = 1
      for L15_2 = L12_2, L13_2, L14_2 do
        L16_2 = table
        L16_2 = L16_2.insert
        L17_2 = L5_2
        L18_2 = L11_2[L15_2]
        L16_2(L17_2, L18_2)
      end
    end
  end
  L11_2 = table
  L11_2 = L11_2.insert
  L12_2 = L5_2
  L13_2 = "        },"
  L11_2(L12_2, L13_2)
  L11_2 = table
  L11_2 = L11_2.insert
  L12_2 = L5_2
  L13_2 = "        [30] = {"
  L11_2(L12_2, L13_2)
  L11_2 = table
  L11_2 = L11_2.insert
  L12_2 = L5_2
  L13_2 = "            coords = vector4(1394.04, 221.2, -50.41, 268.96),"
  L11_2(L12_2, L13_2)
  if A4_2 then
    L11_2 = A4_2["30"]
    if L11_2 then
      L11_2 = L8_2
      L12_2 = "30"
      L11_2 = L11_2(L12_2)
      L12_2 = 1
      L13_2 = #L11_2
      L14_2 = 1
      for L15_2 = L12_2, L13_2, L14_2 do
        L16_2 = table
        L16_2 = L16_2.insert
        L17_2 = L5_2
        L18_2 = L11_2[L15_2]
        L16_2(L17_2, L18_2)
      end
    end
  end
  L11_2 = table
  L11_2 = L11_2.insert
  L12_2 = L5_2
  L13_2 = "        },"
  L11_2(L12_2, L13_2)
  L11_2 = table
  L11_2 = L11_2.insert
  L12_2 = L5_2
  L13_2 = "        [31] = {"
  L11_2(L12_2, L13_2)
  L11_2 = table
  L11_2 = L11_2.insert
  L12_2 = L5_2
  L13_2 = "            coords = vector4(1394.18, 225.29, -50.41, 269.61),"
  L11_2(L12_2, L13_2)
  if A4_2 then
    L11_2 = A4_2["31"]
    if L11_2 then
      L11_2 = L8_2
      L12_2 = "31"
      L11_2 = L11_2(L12_2)
      L12_2 = 1
      L13_2 = #L11_2
      L14_2 = 1
      for L15_2 = L12_2, L13_2, L14_2 do
        L16_2 = table
        L16_2 = L16_2.insert
        L17_2 = L5_2
        L18_2 = L11_2[L15_2]
        L16_2(L17_2, L18_2)
      end
    end
  end
  L11_2 = table
  L11_2 = L11_2.insert
  L12_2 = L5_2
  L13_2 = "        },"
  L11_2(L12_2, L13_2)
  L11_2 = table
  L11_2 = L11_2.insert
  L12_2 = L5_2
  L13_2 = "        [32] = {"
  L11_2(L12_2, L13_2)
  L11_2 = table
  L11_2 = L11_2.insert
  L12_2 = L5_2
  L13_2 = "            coords = vector4(1394.07, 229.6, -50.41, 270.3),"
  L11_2(L12_2, L13_2)
  if A4_2 then
    L11_2 = A4_2["32"]
    if L11_2 then
      L11_2 = L8_2
      L12_2 = "32"
      L11_2 = L11_2(L12_2)
      L12_2 = 1
      L13_2 = #L11_2
      L14_2 = 1
      for L15_2 = L12_2, L13_2, L14_2 do
        L16_2 = table
        L16_2 = L16_2.insert
        L17_2 = L5_2
        L18_2 = L11_2[L15_2]
        L16_2(L17_2, L18_2)
      end
    end
  end
  L11_2 = table
  L11_2 = L11_2.insert
  L12_2 = L5_2
  L13_2 = "        },"
  L11_2(L12_2, L13_2)
  L11_2 = table
  L11_2 = L11_2.insert
  L12_2 = L5_2
  L13_2 = "        [33] = {"
  L11_2(L12_2, L13_2)
  L11_2 = table
  L11_2 = L11_2.insert
  L12_2 = L5_2
  L13_2 = "            coords = vector4(1394.23, 233.68, -50.41, 270.01),"
  L11_2(L12_2, L13_2)
  if A4_2 then
    L11_2 = A4_2["33"]
    if L11_2 then
      L11_2 = L8_2
      L12_2 = "33"
      L11_2 = L11_2(L12_2)
      L12_2 = 1
      L13_2 = #L11_2
      L14_2 = 1
      for L15_2 = L12_2, L13_2, L14_2 do
        L16_2 = table
        L16_2 = L16_2.insert
        L17_2 = L5_2
        L18_2 = L11_2[L15_2]
        L16_2(L17_2, L18_2)
      end
    end
  end
  L11_2 = table
  L11_2 = L11_2.insert
  L12_2 = L5_2
  L13_2 = "        },"
  L11_2(L12_2, L13_2)
  L11_2 = table
  L11_2 = L11_2.insert
  L12_2 = L5_2
  L13_2 = "        [34] = {"
  L11_2(L12_2, L13_2)
  L11_2 = table
  L11_2 = L11_2.insert
  L12_2 = L5_2
  L13_2 = "            coords = vector4(1394.02, 237.91, -50.41, 270.62),"
  L11_2(L12_2, L13_2)
  if A4_2 then
    L11_2 = A4_2["34"]
    if L11_2 then
      L11_2 = L8_2
      L12_2 = "34"
      L11_2 = L11_2(L12_2)
      L12_2 = 1
      L13_2 = #L11_2
      L14_2 = 1
      for L15_2 = L12_2, L13_2, L14_2 do
        L16_2 = table
        L16_2 = L16_2.insert
        L17_2 = L5_2
        L18_2 = L11_2[L15_2]
        L16_2(L17_2, L18_2)
      end
    end
  end
  L11_2 = table
  L11_2 = L11_2.insert
  L12_2 = L5_2
  L13_2 = "        },"
  L11_2(L12_2, L13_2)
  L11_2 = table
  L11_2 = L11_2.insert
  L12_2 = L5_2
  L13_2 = "        [35] = {"
  L11_2(L12_2, L13_2)
  L11_2 = table
  L11_2 = L11_2.insert
  L12_2 = L5_2
  L13_2 = "            coords = vector4(1393.98, 242.01, -50.41, 270.75),"
  L11_2(L12_2, L13_2)
  if A4_2 then
    L11_2 = A4_2["35"]
    if L11_2 then
      L11_2 = L8_2
      L12_2 = "35"
      L11_2 = L11_2(L12_2)
      L12_2 = 1
      L13_2 = #L11_2
      L14_2 = 1
      for L15_2 = L12_2, L13_2, L14_2 do
        L16_2 = table
        L16_2 = L16_2.insert
        L17_2 = L5_2
        L18_2 = L11_2[L15_2]
        L16_2(L17_2, L18_2)
      end
    end
  end
  L11_2 = table
  L11_2 = L11_2.insert
  L12_2 = L5_2
  L13_2 = "        },"
  L11_2(L12_2, L13_2)
  L11_2 = table
  L11_2 = L11_2.insert
  L12_2 = L5_2
  L13_2 = "        [36] = {"
  L11_2(L12_2, L13_2)
  L11_2 = table
  L11_2 = L11_2.insert
  L12_2 = L5_2
  L13_2 = "            coords = vector4(1394.14, 246.31, -50.41, 270.22),"
  L11_2(L12_2, L13_2)
  if A4_2 then
    L11_2 = A4_2["36"]
    if L11_2 then
      L11_2 = L8_2
      L12_2 = "36"
      L11_2 = L11_2(L12_2)
      L12_2 = 1
      L13_2 = #L11_2
      L14_2 = 1
      for L15_2 = L12_2, L13_2, L14_2 do
        L16_2 = table
        L16_2 = L16_2.insert
        L17_2 = L5_2
        L18_2 = L11_2[L15_2]
        L16_2(L17_2, L18_2)
      end
    end
  end
  L11_2 = table
  L11_2 = L11_2.insert
  L12_2 = L5_2
  L13_2 = "        },"
  L11_2(L12_2, L13_2)
  L11_2 = table
  L11_2 = L11_2.insert
  L12_2 = L5_2
  L13_2 = "        [37] = {"
  L11_2(L12_2, L13_2)
  L11_2 = table
  L11_2 = L11_2.insert
  L12_2 = L5_2
  L13_2 = "            coords = vector4(1394.41, 250.46, -50.41, 270.67),"
  L11_2(L12_2, L13_2)
  if A4_2 then
    L11_2 = A4_2["37"]
    if L11_2 then
      L11_2 = L8_2
      L12_2 = "37"
      L11_2 = L11_2(L12_2)
      L12_2 = 1
      L13_2 = #L11_2
      L14_2 = 1
      for L15_2 = L12_2, L13_2, L14_2 do
        L16_2 = table
        L16_2 = L16_2.insert
        L17_2 = L5_2
        L18_2 = L11_2[L15_2]
        L16_2(L17_2, L18_2)
      end
    end
  end
  L11_2 = table
  L11_2 = L11_2.insert
  L12_2 = L5_2
  L13_2 = "        },"
  L11_2(L12_2, L13_2)
  L11_2 = table
  L11_2 = L11_2.insert
  L12_2 = L5_2
  L13_2 = "        [38] = {"
  L11_2(L12_2, L13_2)
  L11_2 = table
  L11_2 = L11_2.insert
  L12_2 = L5_2
  L13_2 = "            coords = vector4(1394.09, 254.66, -50.41, 271.25),"
  L11_2(L12_2, L13_2)
  if A4_2 then
    L11_2 = A4_2["38"]
    if L11_2 then
      L11_2 = L8_2
      L12_2 = "38"
      L11_2 = L11_2(L12_2)
      L12_2 = 1
      L13_2 = #L11_2
      L14_2 = 1
      for L15_2 = L12_2, L13_2, L14_2 do
        L16_2 = table
        L16_2 = L16_2.insert
        L17_2 = L5_2
        L18_2 = L11_2[L15_2]
        L16_2(L17_2, L18_2)
      end
    end
  end
  L11_2 = table
  L11_2 = L11_2.insert
  L12_2 = L5_2
  L13_2 = "        },"
  L11_2(L12_2, L13_2)
  L11_2 = table
  L11_2 = L11_2.insert
  L12_2 = L5_2
  L13_2 = "    },"
  L11_2(L12_2, L13_2)
  L11_2 = table
  L11_2 = L11_2.insert
  L12_2 = L5_2
  L13_2 = "}"
  L11_2(L12_2, L13_2)
  L11_2 = table
  L11_2 = L11_2.concat
  L12_2 = L5_2
  L13_2 = "\n"
  L11_2 = L11_2(L12_2, L13_2)
  L12_2 = GetCurrentResourceName
  L12_2 = L12_2()
  L13_2 = SaveResourceFile
  L14_2 = L12_2
  L15_2 = "CREATED_PARKINGS/vms_housing.parking."
  L16_2 = A0_2
  L17_2 = "."
  L18_2 = A1_2
  L19_2 = ".lua"
  L15_2 = L15_2 .. L16_2 .. L17_2 .. L18_2 .. L19_2
  L16_2 = L11_2
  L17_2 = -1
  L13_2 = L13_2(L14_2, L15_2, L16_2, L17_2)
  if not L13_2 then
    L14_2 = library
    L14_2 = L14_2.Debug
    L15_2 = "You cannot save the file with the configured parking - make sure you have such a path on your server: "
    L16_2 = L12_2
    L17_2 = "/CREATED_PARKINGS/"
    L15_2 = L15_2 .. L16_2 .. L17_2
    L16_2 = "warn"
    L14_2(L15_2, L16_2)
  else
    L14_2 = load
    L15_2 = L11_2
    L14_2 = L14_2(L15_2)
    L14_2()
    L14_2 = Config
    L14_2 = L14_2.ParkingCreator
    L14_2 = L14_2.AutomaticLoad
    if L14_2 then
      if A4_2 then
        L14_2 = TriggerClientEvent
        L15_2 = "vms_garagesv2:updateUndergroundPropertyGarage"
        L16_2 = -1
        L17_2 = A0_2
        L18_2 = A1_2
        L19_2 = A3_2
        L20_2 = A4_2
        L14_2(L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
      else
        L14_2 = TriggerClientEvent
        L15_2 = "vms_garagesv2:createdNewGarage"
        L16_2 = -1
        L17_2 = json
        L17_2 = L17_2.encode
        L18_2 = L11_2
        L17_2, L18_2, L19_2, L20_2, L21_2 = L17_2(L18_2)
        L14_2(L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
      end
    end
  end
end
function L21_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = Citizen
  L2_2 = L2_2.CreateThread
  function L3_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = A0_2
    L1_3 = A1_2
    L2_3 = Citizen
    L2_3 = L2_3.Wait
    L3_3 = 10000
    L2_3(L3_3)
    L2_3 = L0_1
    L2_3 = L2_3[L1_3]
    if L2_3 then
      L2_3 = L0_1
      L2_3 = L2_3[L1_3]
      if L2_3 == L0_3 then
        L2_3 = L0_1
        L2_3[L1_3] = nil
      end
    end
  end
  L2_2(L3_2)
end
function L22_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  if A1_2 then
    L2_2 = tonumber
    L3_2 = A1_2
    L2_2 = L2_2(L3_2)
    if L2_2 then
      goto lbl_9
    end
  end
  L2_2 = 5.0
  ::lbl_9::
  L3_2 = GetPlayerPed
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L4_2 = GetEntityCoords
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  L5_2 = GetVehiclePedIsIn
  L6_2 = L3_2
  L7_2 = false
  L5_2 = L5_2(L6_2, L7_2)
  if L5_2 then
    L6_2 = L13_1
    L7_2 = L5_2
    L6_2(L7_2)
  end
  L6_2 = GetAllVehicles
  L6_2 = L6_2()
  L7_2 = 1
  L8_2 = #L6_2
  L9_2 = 1
  for L10_2 = L7_2, L8_2, L9_2 do
    L11_2 = L6_2[L10_2]
    if L11_2 then
      L12_2 = DoesEntityExist
      L13_2 = L11_2
      L12_2 = L12_2(L13_2)
      if L12_2 then
        L12_2 = GetEntityCoords
        L13_2 = L11_2
        L12_2 = L12_2(L13_2)
        L13_2 = L4_2 - L12_2
        L13_2 = #L13_2
        if L2_2 >= L13_2 then
          L14_2 = L13_1
          L15_2 = L11_2
          L14_2(L15_2)
        end
      end
    end
  end
end
L23_1 = exports
L24_1 = "getAllGarages"
L25_1 = L8_1
L23_1(L24_1, L25_1)
L23_1 = exports
L24_1 = "getAllImpounds"
L25_1 = L9_1
L23_1(L24_1, L25_1)
L23_1 = exports
L24_1 = "updateVehiclePlate"
L25_1 = L10_1
L23_1(L24_1, L25_1)
L23_1 = exports
L24_1 = "giveVehicle"
L25_1 = L12_1
L23_1(L24_1, L25_1)
L23_1 = exports
L24_1 = "deleteVehicle"
L25_1 = L13_1
L23_1(L24_1, L25_1)
L23_1 = exports
L24_1 = "isInInterior"
L25_1 = isInInterior
L23_1(L24_1, L25_1)
L23_1 = exports
L24_1 = "updateParkedVehiclePlate"
L25_1 = L14_1
L23_1(L24_1, L25_1)
L23_1 = exports
L24_1 = "getGarageInfo"
L25_1 = L15_1
L23_1(L24_1, L25_1)
L23_1 = exports
L24_1 = "updateVehicleNewOwner"
L25_1 = L16_1
L23_1(L24_1, L25_1)
L23_1 = exports
L24_1 = "registerHousingGarage"
L25_1 = L17_1
L23_1(L24_1, L25_1)
L23_1 = exports
L24_1 = "refreshVehicles"
L25_1 = L18_1
L23_1(L24_1, L25_1)
L23_1 = exports
L24_1 = "registerPropertyParking"
L25_1 = L19_1
L23_1(L24_1, L25_1)
L23_1 = exports
L24_1 = "registerBuildingParking"
L25_1 = L20_1
L23_1(L24_1, L25_1)
L23_1 = exports
L24_1 = "towVehicle"
L25_1 = L11_1
L23_1(L24_1, L25_1)
L23_1 = Config
L23_1 = L23_1.GiveVehicleCommand
L23_1 = L23_1.enabled
if L23_1 then
  L23_1 = Config
  L23_1 = L23_1.Core
  if "ESX" == L23_1 then
    L23_1 = Config
    L23_1 = L23_1.GiveVehicleCommand
    L23_1 = L23_1.oldESX
    if L23_1 then
      L23_1 = TriggerEvent
      L24_1 = "es:addGroupCommand"
      L25_1 = Config
      L25_1 = L25_1.GiveVehicleCommand
      L25_1 = L25_1.name
      L26_1 = Config
      L26_1 = L26_1.GiveVehicleCommand
      L26_1 = L26_1.groups
      function L27_1(A0_2, A1_2, A2_2)
        local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
        L3_2 = L12_1
        L4_2 = A0_2
        L5_2 = A1_2[1]
        L6_2 = A1_2[2]
        L7_2 = A1_2[3]
        L8_2 = A1_2[4]
        L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
      end
      function L28_1(A0_2, A1_2, A2_2)
        local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
        L3_2 = TriggerClientEvent
        L4_2 = "chat:addMessage"
        L5_2 = A0_2
        L6_2 = {}
        L7_2 = {}
        L8_2 = "^1SYSTEM"
        L9_2 = "Insufficient Permissions."
        L7_2[1] = L8_2
        L7_2[2] = L9_2
        L6_2.args = L7_2
        L3_2(L4_2, L5_2, L6_2)
      end
      L29_1 = {}
      L30_1 = Config
      L30_1 = L30_1.GiveVehicleCommand
      L30_1 = L30_1.help
      L29_1.help = L30_1
      L30_1 = {}
      L31_1 = {}
      L31_1.name = "owner"
      L32_1 = Config
      L32_1 = L32_1.GiveVehicleCommand
      L32_1 = L32_1.suggestions
      L32_1 = L32_1[1]
      L32_1 = L32_1.label
      L31_1.help = L32_1
      L32_1 = {}
      L32_1.name = "type"
      L33_1 = Config
      L33_1 = L33_1.GiveVehicleCommand
      L33_1 = L33_1.suggestions
      L33_1 = L33_1[2]
      L33_1 = L33_1.label
      L32_1.help = L33_1
      L33_1 = {}
      L33_1.name = "model"
      L34_1 = Config
      L34_1 = L34_1.GiveVehicleCommand
      L34_1 = L34_1.suggestions
      L34_1 = L34_1[3]
      L34_1 = L34_1.label
      L33_1.help = L34_1
      L34_1 = {}
      L34_1.name = "plate"
      L35_1 = Config
      L35_1 = L35_1.GiveVehicleCommand
      L35_1 = L35_1.suggestions
      L35_1 = L35_1[4]
      L35_1 = L35_1.label
      L34_1.help = L35_1
      L30_1[1] = L31_1
      L30_1[2] = L32_1
      L30_1[3] = L33_1
      L30_1[4] = L34_1
      L29_1.params = L30_1
      L23_1(L24_1, L25_1, L26_1, L27_1, L28_1, L29_1)
    else
      L23_1 = Core
      L23_1 = L23_1.RegisterCommand
      L24_1 = Config
      L24_1 = L24_1.GiveVehicleCommand
      L24_1 = L24_1.name
      L25_1 = Config
      L25_1 = L25_1.GiveVehicleCommand
      L25_1 = L25_1.groups
      function L26_1(A0_2, A1_2, A2_2)
        local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
        L3_2 = L12_1
        L4_2 = A0_2.source
        L5_2 = A1_2.owner
        L6_2 = A1_2.type
        L7_2 = A1_2.model
        L8_2 = A1_2.plate
        L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
      end
      L27_1 = false
      L28_1 = {}
      L29_1 = Config
      L29_1 = L29_1.GiveVehicleCommand
      L29_1 = L29_1.help
      L28_1.help = L29_1
      L29_1 = {}
      L30_1 = {}
      L30_1.name = "owner"
      L31_1 = Config
      L31_1 = L31_1.GiveVehicleCommand
      L31_1 = L31_1.suggestions
      L31_1 = L31_1[1]
      L31_1 = L31_1.label
      L30_1.help = L31_1
      L30_1.type = "any"
      L31_1 = {}
      L31_1.name = "type"
      L32_1 = Config
      L32_1 = L32_1.GiveVehicleCommand
      L32_1 = L32_1.suggestions
      L32_1 = L32_1[2]
      L32_1 = L32_1.label
      L31_1.help = L32_1
      L31_1.type = "string"
      L32_1 = {}
      L32_1.name = "model"
      L33_1 = Config
      L33_1 = L33_1.GiveVehicleCommand
      L33_1 = L33_1.suggestions
      L33_1 = L33_1[3]
      L33_1 = L33_1.label
      L32_1.help = L33_1
      L32_1.type = "string"
      L33_1 = {}
      L33_1.name = "plate"
      L34_1 = Config
      L34_1 = L34_1.GiveVehicleCommand
      L34_1 = L34_1.suggestions
      L34_1 = L34_1[4]
      L34_1 = L34_1.label
      L33_1.help = L34_1
      L33_1.type = "string"
      L29_1[1] = L30_1
      L29_1[2] = L31_1
      L29_1[3] = L32_1
      L29_1[4] = L33_1
      L28_1.arguments = L29_1
      L23_1(L24_1, L25_1, L26_1, L27_1, L28_1)
    end
  else
    L23_1 = Config
    L23_1 = L23_1.Core
    if "QB-Core" == L23_1 then
      L23_1 = Core
      L23_1 = L23_1.Commands
      L23_1 = L23_1.Add
      L24_1 = Config
      L24_1 = L24_1.GiveVehicleCommand
      L24_1 = L24_1.name
      L25_1 = Config
      L25_1 = L25_1.GiveVehicleCommand
      L25_1 = L25_1.help
      L26_1 = {}
      L27_1 = {}
      L27_1.name = "owner"
      L28_1 = Config
      L28_1 = L28_1.GiveVehicleCommand
      L28_1 = L28_1.suggestions
      L28_1 = L28_1[1]
      L28_1 = L28_1.label
      L27_1.help = L28_1
      L28_1 = {}
      L28_1.name = "type"
      L29_1 = Config
      L29_1 = L29_1.GiveVehicleCommand
      L29_1 = L29_1.suggestions
      L29_1 = L29_1[2]
      L29_1 = L29_1.label
      L28_1.help = L29_1
      L29_1 = {}
      L29_1.name = "model"
      L30_1 = Config
      L30_1 = L30_1.GiveVehicleCommand
      L30_1 = L30_1.suggestions
      L30_1 = L30_1[3]
      L30_1 = L30_1.label
      L29_1.help = L30_1
      L30_1 = {}
      L30_1.name = "plate"
      L31_1 = Config
      L31_1 = L31_1.GiveVehicleCommand
      L31_1 = L31_1.suggestions
      L31_1 = L31_1[4]
      L31_1 = L31_1.label
      L30_1.help = L31_1
      L26_1[1] = L27_1
      L26_1[2] = L28_1
      L26_1[3] = L29_1
      L26_1[4] = L30_1
      L27_1 = false
      function L28_1(A0_2, A1_2)
        local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
        L2_2 = L12_1
        L3_2 = A0_2
        L4_2 = A1_2[1]
        L5_2 = A1_2[2]
        L6_2 = A1_2[3]
        L7_2 = A1_2[4]
        L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
      end
      L29_1 = Config
      L29_1 = L29_1.GiveVehicleCommand
      L29_1 = L29_1.groups
      L23_1(L24_1, L25_1, L26_1, L27_1, L28_1, L29_1)
    end
  end
end
L23_1 = Config
L23_1 = L23_1.DeletePersistentVehicleCommand
L23_1 = L23_1.enabled
if L23_1 then
  L23_1 = Config
  L23_1 = L23_1.DeletePersistentVehicleCommand
  L24_1 = Config
  L24_1 = L24_1.Core
  if "ESX" == L24_1 then
    L24_1 = L23_1.oldESX
    if L24_1 then
      L24_1 = TriggerEvent
      L25_1 = "es:addGroupCommand"
      L26_1 = L23_1.name
      L27_1 = L23_1.groups
      function L28_1(A0_2, A1_2, A2_2)
        local L3_2, L4_2, L5_2
        L3_2 = L22_1
        L4_2 = A0_2
        L5_2 = A1_2[1]
        L3_2(L4_2, L5_2)
      end
      function L29_1(A0_2, A1_2, A2_2)
        local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
        L3_2 = TriggerClientEvent
        L4_2 = "chat:addMessage"
        L5_2 = A0_2
        L6_2 = {}
        L7_2 = {}
        L8_2 = "^1SYSTEM"
        L9_2 = "Insufficient Permissions."
        L7_2[1] = L8_2
        L7_2[2] = L9_2
        L6_2.args = L7_2
        L3_2(L4_2, L5_2, L6_2)
      end
      L30_1 = {}
      L31_1 = L23_1.help
      L30_1.help = L31_1
      L31_1 = {}
      L32_1 = {}
      L32_1.name = "radius"
      L33_1 = L23_1.suggestions
      L33_1 = L33_1[1]
      L33_1 = L33_1.label
      L32_1.help = L33_1
      L31_1[1] = L32_1
      L30_1.params = L31_1
      L24_1(L25_1, L26_1, L27_1, L28_1, L29_1, L30_1)
    else
      L24_1 = Core
      L24_1 = L24_1.RegisterCommand
      L25_1 = L23_1.name
      L26_1 = L23_1.groups
      function L27_1(A0_2, A1_2, A2_2)
        local L3_2, L4_2, L5_2
        L3_2 = L22_1
        L4_2 = A0_2.source
        L5_2 = A1_2.radius
        L3_2(L4_2, L5_2)
      end
      L28_1 = false
      L29_1 = {}
      L30_1 = L23_1.help
      L29_1.help = L30_1
      L30_1 = {}
      L31_1 = {}
      L31_1.name = "radius"
      L32_1 = L23_1.suggestions
      L32_1 = L32_1[1]
      L32_1 = L32_1.label
      L31_1.help = L32_1
      L31_1.type = "any"
      L30_1[1] = L31_1
      L29_1.arguments = L30_1
      L24_1(L25_1, L26_1, L27_1, L28_1, L29_1)
    end
  else
    L24_1 = Config
    L24_1 = L24_1.Core
    if "QB-Core" == L24_1 then
      L24_1 = Core
      L24_1 = L24_1.Commands
      L24_1 = L24_1.Add
      L25_1 = L23_1.name
      L26_1 = L23_1.help
      L27_1 = {}
      L28_1 = {}
      L28_1.name = "radius"
      L29_1 = L23_1.suggestions
      L29_1 = L29_1[1]
      L29_1 = L29_1.label
      L28_1.help = L29_1
      L27_1[1] = L28_1
      L28_1 = false
      function L29_1(A0_2, A1_2)
        local L2_2, L3_2, L4_2
        L2_2 = L22_1
        L3_2 = A0_2
        L4_2 = A1_2[1]
        L2_2(L3_2, L4_2)
      end
      L30_1 = L23_1.groups
      L24_1(L25_1, L26_1, L27_1, L28_1, L29_1, L30_1)
    end
  end
end
L23_1 = Config
L23_1 = L23_1.UseSaleAgreement
if L23_1 then
  L23_1 = Config
  L23_1 = L23_1.UseSaleAgreementItem
  if L23_1 then
    L23_1 = SV
    L23_1 = L23_1.registerUsableItem
    L24_1 = Config
    L24_1 = L24_1.SaleAgreementItem
    function L25_1(A0_2, A1_2)
      local L2_2, L3_2, L4_2
      L2_2 = TriggerClientEvent
      L3_2 = "vms_garagesv2:openAgreement"
      L4_2 = A0_2
      L2_2(L3_2, L4_2)
    end
    L23_1(L24_1, L25_1)
  end
end
L23_1 = Config
L23_1 = L23_1.ParkingCreator
if L23_1 then
  L23_1 = Config
  L23_1 = L23_1.ParkingCreator
  L23_1 = L23_1.Enabled
  if L23_1 then
    L23_1 = Config
    L23_1 = L23_1.ParkingCreator
    L23_1 = L23_1.Command
    if L23_1 then
      L23_1 = RegisterNetEvent
      L24_1 = "vms_garagesv2:sv:closedParkingCreator"
      function L25_1()
        local L0_2, L1_2, L2_2, L3_2
        L0_2 = source
        L1_2 = L7_1
        L1_2 = L1_2[L0_2]
        if not L1_2 then
          return
        end
        L1_2 = L7_1
        L1_2[L0_2] = false
        L1_2 = SetPlayerRoutingBucket
        L2_2 = L0_2
        L3_2 = Config
        L3_2 = L3_2.DefaultRoutingBucket
        L1_2(L2_2, L3_2)
      end
      L23_1(L24_1, L25_1)
      L23_1 = RegisterNetEvent
      L24_1 = "vms_garagesv2:sv:saveParkingByCreator"
      function L25_1(A0_2, A1_2)
        local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2
        L2_2 = source
        L3_2 = L7_1
        L3_2 = L3_2[L2_2]
        if not L3_2 then
          return
        end
        L3_2 = SV
        L3_2 = L3_2.getPlayer
        L4_2 = L2_2
        L3_2 = L3_2(L4_2)
        L4_2 = SV
        L4_2 = L4_2.getIdentifier
        L5_2 = L3_2
        L4_2 = L4_2(L5_2)
        L5_2 = A1_2.label
        if L5_2 then
          L5_2 = A1_2.label
          if "" ~= L5_2 then
            L5_2 = string
            L5_2 = L5_2.gsub
            L6_2 = A1_2.label
            L7_2 = " "
            L8_2 = ""
            L5_2 = L5_2(L6_2, L7_2, L8_2)
            if L5_2 then
              goto lbl_34
            end
          end
        end
        L5_2 = math
        L5_2 = L5_2.random
        L6_2 = 100000
        L7_2 = 9999999
        L5_2 = L5_2(L6_2, L7_2)
        ::lbl_34::
        L6_2 = A1_2.label
        if L6_2 then
          L6_2 = A1_2.label
          if "" ~= L6_2 then
            L6_2 = A1_2.label
            if L6_2 then
              goto lbl_44
            end
          end
        end
        L6_2 = L5_2
        ::lbl_44::
        L7_2 = {}
        L8_2 = table
        L8_2 = L8_2.insert
        L9_2 = L7_2
        L10_2 = "-- File generated with VMS Garages V2 - Parking Creator."
        L8_2(L9_2, L10_2)
        L8_2 = table
        L8_2 = L8_2.insert
        L9_2 = L7_2
        L10_2 = ""
        L8_2(L9_2, L10_2)
        if "house_garage" == A0_2 then
          L8_2 = Config
          L8_2 = L8_2.ParkingCreator
          L8_2 = L8_2.HouseGarageInteriors
          L9_2 = A1_2.interiorId
          L8_2 = L8_2[L9_2]
          L9_2 = nil
          L10_2 = 1
          L11_2 = 10000
          L12_2 = 1
          for L13_2 = L10_2, L11_2, L12_2 do
            L14_2 = Config
            L14_2 = L14_2.HousingGarages
            L15_2 = "HouseGarage:"
            L16_2 = L13_2
            L15_2 = L15_2 .. L16_2
            L14_2 = L14_2[L15_2]
            if not L14_2 then
              L9_2 = L13_2
              break
            end
          end
          L10_2 = nil
          L11_2 = A1_2.routingBucket
          if not L11_2 then
            L11_2 = A1_2.routingBucket
            if "" ~= L11_2 then
              goto lbl_109
            end
          end
          L11_2 = 1001
          L12_2 = 15000
          L13_2 = 1
          for L14_2 = L11_2, L12_2, L13_2 do
            L15_2 = pairs
            L16_2 = Config
            L16_2 = L16_2.HousingGarages
            L15_2, L16_2, L17_2, L18_2 = L15_2(L16_2)
            for L19_2, L20_2 in L15_2, L16_2, L17_2, L18_2 do
              L10_2 = L14_2
              L21_2 = L20_2.routingBucket
              if L21_2 == L14_2 then
                L10_2 = false
                break
              end
            end
            if L10_2 then
              A1_2.routingBucket = L10_2
              break
            end
          end
          ::lbl_109::
          L11_2 = "HouseGarage_"
          L12_2 = L9_2
          L11_2 = L11_2 .. L12_2
          L5_2 = L11_2
          L11_2 = table
          L11_2 = L11_2.insert
          L12_2 = L7_2
          L13_2 = "Config = Config or {}"
          L11_2(L12_2, L13_2)
          L11_2 = table
          L11_2 = L11_2.insert
          L12_2 = L7_2
          L13_2 = ""
          L11_2(L12_2, L13_2)
          L11_2 = table
          L11_2 = L11_2.insert
          L12_2 = L7_2
          L13_2 = "while not Config.HousingGarages do"
          L11_2(L12_2, L13_2)
          L11_2 = table
          L11_2 = L11_2.insert
          L12_2 = L7_2
          L13_2 = "   Citizen.Wait(100)"
          L11_2(L12_2, L13_2)
          L11_2 = table
          L11_2 = L11_2.insert
          L12_2 = L7_2
          L13_2 = "end"
          L11_2(L12_2, L13_2)
          L11_2 = table
          L11_2 = L11_2.insert
          L12_2 = L7_2
          L13_2 = ""
          L11_2(L12_2, L13_2)
          L11_2 = table
          L11_2 = L11_2.insert
          L12_2 = L7_2
          L13_2 = "Config.HousingGarages['HouseGarage:%s'] = {"
          L14_2 = L13_2
          L13_2 = L13_2.format
          L15_2 = L9_2
          L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2 = L13_2(L14_2, L15_2)
          L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
          L11_2 = table
          L11_2 = L11_2.insert
          L12_2 = L7_2
          L13_2 = "    routingBucket = %s,"
          L14_2 = L13_2
          L13_2 = L13_2.format
          L15_2 = A1_2.routingBucket
          L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2 = L13_2(L14_2, L15_2)
          L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
          L11_2 = table
          L11_2 = L11_2.insert
          L12_2 = L7_2
          L13_2 = "    zoneSize = %s,"
          L14_2 = L13_2
          L13_2 = L13_2.format
          L15_2 = A1_2.radius
          L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2 = L13_2(L14_2, L15_2)
          L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
          L11_2 = table
          L11_2 = L11_2.insert
          L12_2 = L7_2
          L13_2 = "    houseCoords = vector4(%s, %s, %s, %s),"
          L14_2 = L13_2
          L13_2 = L13_2.format
          L15_2 = A1_2.enterCoords
          L15_2 = L15_2.x
          L16_2 = A1_2.enterCoords
          L16_2 = L16_2.y
          L17_2 = A1_2.enterCoords
          L17_2 = L17_2.z
          L18_2 = A1_2.heading
          if not L18_2 then
            L18_2 = 0.0
          end
          L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2 = L13_2(L14_2, L15_2, L16_2, L17_2, L18_2)
          L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
          L11_2 = table
          L11_2 = L11_2.insert
          L12_2 = L7_2
          L13_2 = "    exitCoords = vector4(%s, %s, %s, %s),"
          L14_2 = L13_2
          L13_2 = L13_2.format
          L15_2 = L8_2.exitCoords
          L15_2 = L15_2.x
          L16_2 = L8_2.exitCoords
          L16_2 = L16_2.y
          L17_2 = L8_2.exitCoords
          L17_2 = L17_2.z
          L18_2 = L8_2.exitCoords
          L18_2 = L18_2.w
          L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2 = L13_2(L14_2, L15_2, L16_2, L17_2, L18_2)
          L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
          L11_2 = table
          L11_2 = L11_2.insert
          L12_2 = L7_2
          L13_2 = ""
          L11_2(L12_2, L13_2)
          L11_2 = table
          L11_2 = L11_2.insert
          L12_2 = L7_2
          L13_2 = "    parkingSpaces = {"
          L11_2(L12_2, L13_2)
          L11_2 = pairs
          L12_2 = L8_2.parkingSpaces
          L11_2, L12_2, L13_2, L14_2 = L11_2(L12_2)
          for L15_2, L16_2 in L11_2, L12_2, L13_2, L14_2 do
            L17_2 = L16_2.coords
            if L17_2 then
              L17_2 = "        [%s] = {coords = vec4(%s, %s, %s, %s)"
              L18_2 = L17_2
              L17_2 = L17_2.format
              L19_2 = L15_2
              L20_2 = L16_2.coords
              L20_2 = L20_2.x
              L21_2 = L16_2.coords
              L21_2 = L21_2.y
              L22_2 = L16_2.coords
              L22_2 = L22_2.z
              L23_2 = L16_2.coords
              L23_2 = L23_2.w
              L17_2 = L17_2(L18_2, L19_2, L20_2, L21_2, L22_2, L23_2)
              L18_2 = L16_2.rotation
              if L18_2 then
                L18_2 = L16_2.rotation
                L18_2 = L18_2.x
                if L18_2 then
                  L18_2 = L17_2
                  L19_2 = ", rotation = vector3("
                  L20_2 = L16_2.rotation
                  L20_2 = L20_2.x
                  L21_2 = ", "
                  L22_2 = L16_2.rotation
                  L22_2 = L22_2.y
                  L23_2 = ", "
                  L24_2 = L16_2.rotation
                  L24_2 = L24_2.z
                  L25_2 = ")"
                  L18_2 = L18_2 .. L19_2 .. L20_2 .. L21_2 .. L22_2 .. L23_2 .. L24_2 .. L25_2
                  L17_2 = L18_2
                end
              end
              L18_2 = L17_2
              L19_2 = "},"
              L18_2 = L18_2 .. L19_2
              L17_2 = L18_2
              L18_2 = table
              L18_2 = L18_2.insert
              L19_2 = L7_2
              L20_2 = L17_2
              L18_2(L19_2, L20_2)
            end
          end
          L11_2 = table
          L11_2 = L11_2.insert
          L12_2 = L7_2
          L13_2 = "    },"
          L11_2(L12_2, L13_2)
        elseif "house_garage_menu" == A0_2 then
          L8_2 = nil
          L9_2 = 1
          L10_2 = 10000
          L11_2 = 1
          for L12_2 = L9_2, L10_2, L11_2 do
            L13_2 = Config
            L13_2 = L13_2.HousingGarages
            L14_2 = "HouseGarage:"
            L15_2 = L12_2
            L14_2 = L14_2 .. L15_2
            L13_2 = L13_2[L14_2]
            if not L13_2 then
              L8_2 = L12_2
              break
            end
          end
          L9_2 = "HouseGarage_"
          L10_2 = L8_2
          L9_2 = L9_2 .. L10_2
          L5_2 = L9_2
          L9_2 = table
          L9_2 = L9_2.insert
          L10_2 = L7_2
          L11_2 = "Config = Config or {}"
          L9_2(L10_2, L11_2)
          L9_2 = table
          L9_2 = L9_2.insert
          L10_2 = L7_2
          L11_2 = ""
          L9_2(L10_2, L11_2)
          L9_2 = table
          L9_2 = L9_2.insert
          L10_2 = L7_2
          L11_2 = "while not Config.HousingGarages do"
          L9_2(L10_2, L11_2)
          L9_2 = table
          L9_2 = L9_2.insert
          L10_2 = L7_2
          L11_2 = "   Citizen.Wait(100)"
          L9_2(L10_2, L11_2)
          L9_2 = table
          L9_2 = L9_2.insert
          L10_2 = L7_2
          L11_2 = "end"
          L9_2(L10_2, L11_2)
          L9_2 = table
          L9_2 = L9_2.insert
          L10_2 = L7_2
          L11_2 = ""
          L9_2(L10_2, L11_2)
          L9_2 = table
          L9_2 = L9_2.insert
          L10_2 = L7_2
          L11_2 = "Config.HousingGarages['HouseGarage:%s'] = {"
          L12_2 = L11_2
          L11_2 = L11_2.format
          L13_2 = L8_2
          L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2 = L11_2(L12_2, L13_2)
          L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
          L9_2 = table
          L9_2 = L9_2.insert
          L10_2 = L7_2
          L11_2 = "    label = '%s',"
          L12_2 = L11_2
          L11_2 = L11_2.format
          L13_2 = L6_2
          L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2 = L11_2(L12_2, L13_2)
          L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
          L9_2 = table
          L9_2 = L9_2.insert
          L10_2 = L7_2
          L11_2 = "    type = '%s',"
          L12_2 = L11_2
          L11_2 = L11_2.format
          L13_2 = A1_2.type
          L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2 = L11_2(L12_2, L13_2)
          L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
          L9_2 = A1_2.vehiclesLimit
          if L9_2 then
            L9_2 = tonumber
            L10_2 = A1_2.vehiclesLimit
            L9_2 = L9_2(L10_2)
            if L9_2 then
              L9_2 = table
              L9_2 = L9_2.insert
              L10_2 = L7_2
              L11_2 = ""
              L9_2(L10_2, L11_2)
              L9_2 = table
              L9_2 = L9_2.insert
              L10_2 = L7_2
              L11_2 = "    vehiclesLimit = %s,"
              L12_2 = L11_2
              L11_2 = L11_2.format
              L13_2 = A1_2.vehiclesLimit
              L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2 = L11_2(L12_2, L13_2)
              L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
            end
          end
          L9_2 = table
          L9_2 = L9_2.insert
          L10_2 = L7_2
          L11_2 = ""
          L9_2(L10_2, L11_2)
          L9_2 = table
          L9_2 = L9_2.insert
          L10_2 = L7_2
          L11_2 = "    garageZone = {"
          L9_2(L10_2, L11_2)
          L9_2 = pairs
          L10_2 = A1_2.polyzone
          L10_2 = L10_2.points
          L9_2, L10_2, L11_2, L12_2 = L9_2(L10_2)
          for L13_2, L14_2 in L9_2, L10_2, L11_2, L12_2 do
            L15_2 = table
            L15_2 = L15_2.insert
            L16_2 = L7_2
            L17_2 = "        vec2(%s, %s),"
            L18_2 = L17_2
            L17_2 = L17_2.format
            L19_2 = L14_2.x
            L20_2 = L14_2.y
            L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2 = L17_2(L18_2, L19_2, L20_2)
            L15_2(L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
          end
          L9_2 = table
          L9_2 = L9_2.insert
          L10_2 = L7_2
          L11_2 = "    },"
          L9_2(L10_2, L11_2)
          L9_2 = table
          L9_2 = L9_2.insert
          L10_2 = L7_2
          L11_2 = "    minZ = %s,"
          L12_2 = L11_2
          L11_2 = L11_2.format
          L13_2 = A1_2.polyzone
          L13_2 = L13_2.minZ
          L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2 = L11_2(L12_2, L13_2)
          L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
          L9_2 = table
          L9_2 = L9_2.insert
          L10_2 = L7_2
          L11_2 = "    maxZ = %s,"
          L12_2 = L11_2
          L11_2 = L11_2.format
          L13_2 = A1_2.polyzone
          L13_2 = L13_2.maxZ
          L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2 = L11_2(L12_2, L13_2)
          L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
          L9_2 = table
          L9_2 = L9_2.insert
          L10_2 = L7_2
          L11_2 = ""
          L9_2(L10_2, L11_2)
          L9_2 = table
          L9_2 = L9_2.insert
          L10_2 = L7_2
          L11_2 = "    garageData = {"
          L9_2(L10_2, L11_2)
          L9_2 = table
          L9_2 = L9_2.insert
          L10_2 = L7_2
          L11_2 = "        pedCoords = vec4(%s, %s, %s, %s),"
          L12_2 = L11_2
          L11_2 = L11_2.format
          L13_2 = A1_2.pedCoords
          L13_2 = L13_2.x
          L14_2 = A1_2.pedCoords
          L14_2 = L14_2.y
          L15_2 = A1_2.pedCoords
          L15_2 = L15_2.z
          L16_2 = A1_2.pedHeading
          L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2 = L11_2(L12_2, L13_2, L14_2, L15_2, L16_2)
          L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
          L9_2 = table
          L9_2 = L9_2.insert
          L10_2 = L7_2
          L11_2 = "        vehicleCoords = vec4(%s, %s, %s, %s),"
          L12_2 = L11_2
          L11_2 = L11_2.format
          L13_2 = A1_2.vehicleCoords
          L13_2 = L13_2.x
          L14_2 = A1_2.vehicleCoords
          L14_2 = L14_2.y
          L15_2 = A1_2.vehicleCoords
          L15_2 = L15_2.z
          L16_2 = A1_2.vehicleHeading
          L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2 = L11_2(L12_2, L13_2, L14_2, L15_2, L16_2)
          L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
          L9_2 = table
          L9_2 = L9_2.insert
          L10_2 = L7_2
          L11_2 = "        cameraCoords = vec3(%s, %s, %s),"
          L12_2 = L11_2
          L11_2 = L11_2.format
          L13_2 = A1_2.cameraCoords
          L13_2 = L13_2.x
          L14_2 = A1_2.cameraCoords
          L14_2 = L14_2.y
          L15_2 = A1_2.cameraCoords
          L15_2 = L15_2.z
          L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2 = L11_2(L12_2, L13_2, L14_2, L15_2)
          L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
          L9_2 = table
          L9_2 = L9_2.insert
          L10_2 = L7_2
          L11_2 = "        cameraFov = %s,"
          L12_2 = L11_2
          L11_2 = L11_2.format
          L13_2 = A1_2.cameraFov
          L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2 = L11_2(L12_2, L13_2)
          L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
          L9_2 = table
          L9_2 = L9_2.insert
          L10_2 = L7_2
          L11_2 = "    },"
          L9_2(L10_2, L11_2)
          L9_2 = table
          L9_2 = L9_2.insert
          L10_2 = L7_2
          L11_2 = ""
          L9_2(L10_2, L11_2)
          L9_2 = table
          L9_2 = L9_2.insert
          L10_2 = L7_2
          L11_2 = "    checkAreaOccupied = %s,"
          L12_2 = L11_2
          L11_2 = L11_2.format
          L13_2 = A1_2.checkAreaOccupied
          if L13_2 then
            L13_2 = "true"
            if L13_2 then
              goto lbl_494
            end
          end
          L13_2 = "false"
          ::lbl_494::
          L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2 = L11_2(L12_2, L13_2)
          L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
        elseif "garage_interior" == A0_2 then
          L8_2 = Config
          L8_2 = L8_2.ParkingCreator
          L8_2 = L8_2.GarageInteriors
          L9_2 = A1_2.interiorId
          L8_2 = L8_2[L9_2]
          L9_2 = nil
          L10_2 = A1_2.routingBucket
          if not L10_2 then
            L10_2 = A1_2.routingBucket
            if "" ~= L10_2 then
              goto lbl_542
            end
          end
          L10_2 = 1001
          L11_2 = 15000
          L12_2 = 1
          for L13_2 = L10_2, L11_2, L12_2 do
            L14_2 = pairs
            L15_2 = Config
            L15_2 = L15_2.Garages
            L14_2, L15_2, L16_2, L17_2 = L14_2(L15_2)
            for L18_2, L19_2 in L14_2, L15_2, L16_2, L17_2 do
              L9_2 = L13_2
              L20_2 = L19_2.interior
              if L20_2 then
                L20_2 = L19_2.interior
                L20_2 = L20_2.routingBucket
                if L20_2 then
                  L20_2 = L19_2.interior
                  L20_2 = L20_2.routingBucket
                  if L20_2 == L13_2 then
                    L9_2 = false
                    break
                  end
                end
              end
            end
            if L9_2 then
              A1_2.routingBucket = L9_2
              break
            end
          end
          ::lbl_542::
          L10_2 = table
          L10_2 = L10_2.insert
          L11_2 = L7_2
          L12_2 = "Config = Config or {}"
          L10_2(L11_2, L12_2)
          L10_2 = table
          L10_2 = L10_2.insert
          L11_2 = L7_2
          L12_2 = ""
          L10_2(L11_2, L12_2)
          L10_2 = table
          L10_2 = L10_2.insert
          L11_2 = L7_2
          L12_2 = "while not Config.Garages do"
          L10_2(L11_2, L12_2)
          L10_2 = table
          L10_2 = L10_2.insert
          L11_2 = L7_2
          L12_2 = "    Citizen.Wait(100)"
          L10_2(L11_2, L12_2)
          L10_2 = table
          L10_2 = L10_2.insert
          L11_2 = L7_2
          L12_2 = "end"
          L10_2(L11_2, L12_2)
          L10_2 = table
          L10_2 = L10_2.insert
          L11_2 = L7_2
          L12_2 = ""
          L10_2(L11_2, L12_2)
          L10_2 = table
          L10_2 = L10_2.insert
          L11_2 = L7_2
          L12_2 = "Config.Garages['%s'] = {"
          L13_2 = L12_2
          L12_2 = L12_2.format
          L14_2 = L5_2
          L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2 = L12_2(L13_2, L14_2)
          L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
          L10_2 = table
          L10_2 = L10_2.insert
          L11_2 = L7_2
          L12_2 = "    label = '%s',"
          L13_2 = L12_2
          L12_2 = L12_2.format
          L14_2 = L6_2
          L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2 = L12_2(L13_2, L14_2)
          L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
          L10_2 = table
          L10_2 = L10_2.insert
          L11_2 = L7_2
          L12_2 = "    type = '%s',"
          L13_2 = L12_2
          L12_2 = L12_2.format
          L14_2 = A1_2.type
          L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2 = L12_2(L13_2, L14_2)
          L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
          L10_2 = table
          L10_2 = L10_2.insert
          L11_2 = L7_2
          L12_2 = ""
          L10_2(L11_2, L12_2)
          L10_2 = table
          L10_2 = L10_2.insert
          L11_2 = L7_2
          L12_2 = "    nameBlip = 'free_garage:%s',"
          L13_2 = L12_2
          L12_2 = L12_2.format
          L14_2 = A1_2.type
          L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2 = L12_2(L13_2, L14_2)
          L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
          L10_2 = table
          L10_2 = L10_2.insert
          L11_2 = L7_2
          L12_2 = "    showBlip = false,"
          L13_2 = L12_2
          L12_2 = L12_2.format
          L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2 = L12_2(L13_2)
          L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
          L10_2 = table
          L10_2 = L10_2.insert
          L11_2 = L7_2
          L12_2 = "    blipCoords = vec3(%s, %s, %s),"
          L13_2 = L12_2
          L12_2 = L12_2.format
          L14_2 = A1_2.enterWithVehicleCoords
          L14_2 = L14_2.x
          L15_2 = A1_2.enterWithVehicleCoords
          L15_2 = L15_2.y
          L16_2 = A1_2.enterWithVehicleCoords
          L16_2 = L16_2.z
          L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2 = L12_2(L13_2, L14_2, L15_2, L16_2)
          L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
          L10_2 = table
          L10_2 = L10_2.insert
          L11_2 = L7_2
          L12_2 = ""
          L10_2(L11_2, L12_2)
          L10_2 = table
          L10_2 = L10_2.insert
          L11_2 = L7_2
          L12_2 = "    garageZone = {"
          L10_2(L11_2, L12_2)
          L10_2 = A1_2.polyzone
          if L10_2 then
            L10_2 = pairs
            L11_2 = A1_2.polyzone
            L11_2 = L11_2.points
            L10_2, L11_2, L12_2, L13_2 = L10_2(L11_2)
            for L14_2, L15_2 in L10_2, L11_2, L12_2, L13_2 do
              L16_2 = table
              L16_2 = L16_2.insert
              L17_2 = L7_2
              L18_2 = "        vec2(%s, %s),"
              L19_2 = L18_2
              L18_2 = L18_2.format
              L20_2 = L15_2.x
              L21_2 = L15_2.y
              L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2 = L18_2(L19_2, L20_2, L21_2)
              L16_2(L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
            end
            L10_2 = table
            L10_2 = L10_2.insert
            L11_2 = L7_2
            L12_2 = "    },"
            L10_2(L11_2, L12_2)
            L10_2 = table
            L10_2 = L10_2.insert
            L11_2 = L7_2
            L12_2 = "    minZ = %s,"
            L13_2 = L12_2
            L12_2 = L12_2.format
            L14_2 = A1_2.polyzone
            L14_2 = L14_2.minZ
            L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2 = L12_2(L13_2, L14_2)
            L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
            L10_2 = table
            L10_2 = L10_2.insert
            L11_2 = L7_2
            L12_2 = "    maxZ = %s,"
            L13_2 = L12_2
            L12_2 = L12_2.format
            L14_2 = A1_2.polyzone
            L14_2 = L14_2.maxZ
            L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2 = L12_2(L13_2, L14_2)
            L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
          end
          L10_2 = table
          L10_2 = L10_2.insert
          L11_2 = L7_2
          L12_2 = ""
          L10_2(L11_2, L12_2)
          L10_2 = table
          L10_2 = L10_2.insert
          L11_2 = L7_2
          L12_2 = "    interior = {"
          L10_2(L11_2, L12_2)
          L10_2 = table
          L10_2 = L10_2.insert
          L11_2 = L7_2
          L12_2 = "        routingBucket = %s,"
          L13_2 = L12_2
          L12_2 = L12_2.format
          L14_2 = A1_2.routingBucket
          L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2 = L12_2(L13_2, L14_2)
          L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
          L10_2 = table
          L10_2 = L10_2.insert
          L11_2 = L7_2
          L12_2 = ""
          L10_2(L11_2, L12_2)
          L10_2 = table
          L10_2 = L10_2.insert
          L11_2 = L7_2
          L12_2 = "        enterOnFoot = vec4(%s, %s, %s, %s),"
          L13_2 = L12_2
          L12_2 = L12_2.format
          L14_2 = A1_2.enterOnFootCoords
          L14_2 = L14_2.x
          L15_2 = A1_2.enterOnFootCoords
          L15_2 = L15_2.y
          L16_2 = A1_2.enterOnFootCoords
          L16_2 = L16_2.z
          L17_2 = A1_2.enterOnFootHeading
          L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2 = L12_2(L13_2, L14_2, L15_2, L16_2, L17_2)
          L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
          L10_2 = table
          L10_2 = L10_2.insert
          L11_2 = L7_2
          L12_2 = "        exitOnFoot = vec4(%s, %s, %s, %s),"
          L13_2 = L12_2
          L12_2 = L12_2.format
          L14_2 = L8_2.exitOnFoot
          L14_2 = L14_2.x
          L15_2 = L8_2.exitOnFoot
          L15_2 = L15_2.y
          L16_2 = L8_2.exitOnFoot
          L16_2 = L16_2.z
          L17_2 = L8_2.exitOnFoot
          L17_2 = L17_2.w
          L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2 = L12_2(L13_2, L14_2, L15_2, L16_2, L17_2)
          L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
          L10_2 = table
          L10_2 = L10_2.insert
          L11_2 = L7_2
          L12_2 = ""
          L10_2(L11_2, L12_2)
          L10_2 = table
          L10_2 = L10_2.insert
          L11_2 = L7_2
          L12_2 = "        enterWithVehicle = vec4(%s, %s, %s, %s),"
          L13_2 = L12_2
          L12_2 = L12_2.format
          L14_2 = A1_2.enterWithVehicleCoords
          L14_2 = L14_2.x
          L15_2 = A1_2.enterWithVehicleCoords
          L15_2 = L15_2.y
          L16_2 = A1_2.enterWithVehicleCoords
          L16_2 = L16_2.z
          L16_2 = L16_2 - 1.0
          L17_2 = A1_2.enterWithVehicleHeading
          L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2 = L12_2(L13_2, L14_2, L15_2, L16_2, L17_2)
          L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
          L10_2 = table
          L10_2 = L10_2.insert
          L11_2 = L7_2
          L12_2 = "        exitWithVehicle = vec4(%s, %s, %s, %s),"
          L13_2 = L12_2
          L12_2 = L12_2.format
          L14_2 = L8_2.exitWithVehicle
          L14_2 = L14_2.x
          L15_2 = L8_2.exitWithVehicle
          L15_2 = L15_2.y
          L16_2 = L8_2.exitWithVehicle
          L16_2 = L16_2.z
          L17_2 = L8_2.exitWithVehicle
          L17_2 = L17_2.w
          L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2 = L12_2(L13_2, L14_2, L15_2, L16_2, L17_2)
          L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
          L10_2 = table
          L10_2 = L10_2.insert
          L11_2 = L7_2
          L12_2 = "    },"
          L10_2(L11_2, L12_2)
          L10_2 = table
          L10_2 = L10_2.insert
          L11_2 = L7_2
          L12_2 = ""
          L10_2(L11_2, L12_2)
          L10_2 = table
          L10_2 = L10_2.insert
          L11_2 = L7_2
          L12_2 = "    parkingSpaces = {"
          L10_2(L11_2, L12_2)
          L10_2 = pairs
          L11_2 = L8_2.parkingSpaces
          L10_2, L11_2, L12_2, L13_2 = L10_2(L11_2)
          for L14_2, L15_2 in L10_2, L11_2, L12_2, L13_2 do
            L16_2 = L15_2.coords
            if L16_2 then
              L16_2 = "        [%s] = {coords = vec4(%s, %s, %s, %s)"
              L17_2 = L16_2
              L16_2 = L16_2.format
              L18_2 = L14_2
              L19_2 = L15_2.coords
              L19_2 = L19_2.x
              L20_2 = L15_2.coords
              L20_2 = L20_2.y
              L21_2 = L15_2.coords
              L21_2 = L21_2.z
              L22_2 = L15_2.coords
              L22_2 = L22_2.w
              L16_2 = L16_2(L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
              L17_2 = L15_2.rotation
              if L17_2 then
                L17_2 = L15_2.rotation
                L17_2 = L17_2.x
                if L17_2 then
                  L17_2 = L16_2
                  L18_2 = ", rotation = vector3("
                  L19_2 = L15_2.rotation
                  L19_2 = L19_2.x
                  L20_2 = ", "
                  L21_2 = L15_2.rotation
                  L21_2 = L21_2.y
                  L22_2 = ", "
                  L23_2 = L15_2.rotation
                  L23_2 = L23_2.z
                  L24_2 = ")"
                  L17_2 = L17_2 .. L18_2 .. L19_2 .. L20_2 .. L21_2 .. L22_2 .. L23_2 .. L24_2
                  L16_2 = L17_2
                end
              end
              L17_2 = L16_2
              L18_2 = "},"
              L17_2 = L17_2 .. L18_2
              L16_2 = L17_2
              L17_2 = table
              L17_2 = L17_2.insert
              L18_2 = L7_2
              L19_2 = L16_2
              L17_2(L18_2, L19_2)
            end
          end
          L10_2 = table
          L10_2 = L10_2.insert
          L11_2 = L7_2
          L12_2 = "    },"
          L10_2(L11_2, L12_2)
        elseif "garage" == A0_2 then
          L8_2 = table
          L8_2 = L8_2.insert
          L9_2 = L7_2
          L10_2 = "Config = Config or {}"
          L8_2(L9_2, L10_2)
          L8_2 = table
          L8_2 = L8_2.insert
          L9_2 = L7_2
          L10_2 = ""
          L8_2(L9_2, L10_2)
          L8_2 = table
          L8_2 = L8_2.insert
          L9_2 = L7_2
          L10_2 = "while not Config.Garages do"
          L8_2(L9_2, L10_2)
          L8_2 = table
          L8_2 = L8_2.insert
          L9_2 = L7_2
          L10_2 = "    Citizen.Wait(100)"
          L8_2(L9_2, L10_2)
          L8_2 = table
          L8_2 = L8_2.insert
          L9_2 = L7_2
          L10_2 = "end"
          L8_2(L9_2, L10_2)
          L8_2 = table
          L8_2 = L8_2.insert
          L9_2 = L7_2
          L10_2 = ""
          L8_2(L9_2, L10_2)
          L8_2 = table
          L8_2 = L8_2.insert
          L9_2 = L7_2
          L10_2 = "Config.Garages['%s'] = {"
          L11_2 = L10_2
          L10_2 = L10_2.format
          L12_2 = L5_2
          L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2 = L10_2(L11_2, L12_2)
          L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
          L8_2 = table
          L8_2 = L8_2.insert
          L9_2 = L7_2
          L10_2 = "    label = '%s',"
          L11_2 = L10_2
          L10_2 = L10_2.format
          L12_2 = L6_2
          L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2 = L10_2(L11_2, L12_2)
          L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
          L8_2 = table
          L8_2 = L8_2.insert
          L9_2 = L7_2
          L10_2 = "    type = '%s',"
          L11_2 = L10_2
          L10_2 = L10_2.format
          L12_2 = A1_2.type
          L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2 = L10_2(L11_2, L12_2)
          L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
          L8_2 = A1_2.useCompany
          if L8_2 then
            L8_2 = A1_2.companies
            if L8_2 then
              L8_2 = next
              L9_2 = A1_2.companies
              L8_2 = L8_2(L9_2)
              if L8_2 then
                L8_2 = table
                L8_2 = L8_2.insert
                L9_2 = L7_2
                L10_2 = ""
                L8_2(L9_2, L10_2)
                L8_2 = table
                L8_2 = L8_2.insert
                L9_2 = L7_2
                L10_2 = "    requiredJob = {"
                L8_2(L9_2, L10_2)
                L8_2 = pairs
                L9_2 = A1_2.companies
                L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2)
                for L12_2, L13_2 in L8_2, L9_2, L10_2, L11_2 do
                  L14_2 = table
                  L14_2 = L14_2.insert
                  L15_2 = L7_2
                  L16_2 = "        ['%s'] = true,"
                  L17_2 = L16_2
                  L16_2 = L16_2.format
                  L18_2 = L13_2
                  L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2 = L16_2(L17_2, L18_2)
                  L14_2(L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
                end
                L8_2 = table
                L8_2 = L8_2.insert
                L9_2 = L7_2
                L10_2 = "    },"
                L8_2(L9_2, L10_2)
              end
            end
          end
          L8_2 = A1_2.useGang
          if L8_2 then
            L8_2 = A1_2.gangs
            if L8_2 then
              L8_2 = next
              L9_2 = A1_2.gangs
              L8_2 = L8_2(L9_2)
              if L8_2 then
                L8_2 = table
                L8_2 = L8_2.insert
                L9_2 = L7_2
                L10_2 = ""
                L8_2(L9_2, L10_2)
                L8_2 = table
                L8_2 = L8_2.insert
                L9_2 = L7_2
                L10_2 = "    requiredGang = {"
                L8_2(L9_2, L10_2)
                L8_2 = pairs
                L9_2 = A1_2.gangs
                L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2)
                for L12_2, L13_2 in L8_2, L9_2, L10_2, L11_2 do
                  L14_2 = table
                  L14_2 = L14_2.insert
                  L15_2 = L7_2
                  L16_2 = "        ['%s'] = true,"
                  L17_2 = L16_2
                  L16_2 = L16_2.format
                  L18_2 = L13_2
                  L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2 = L16_2(L17_2, L18_2)
                  L14_2(L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
                end
                L8_2 = table
                L8_2 = L8_2.insert
                L9_2 = L7_2
                L10_2 = "    },"
                L8_2(L9_2, L10_2)
              end
            end
          end
          L8_2 = table
          L8_2 = L8_2.insert
          L9_2 = L7_2
          L10_2 = ""
          L8_2(L9_2, L10_2)
          L8_2 = A1_2.useCompany
          if L8_2 then
            L8_2 = table
            L8_2 = L8_2.insert
            L9_2 = L7_2
            L10_2 = "    nameBlip = 'job_garage',"
            L8_2(L9_2, L10_2)
          else
            L8_2 = table
            L8_2 = L8_2.insert
            L9_2 = L7_2
            L10_2 = "    nameBlip = 'free_garage:%s',"
            L11_2 = L10_2
            L10_2 = L10_2.format
            L12_2 = A1_2.type
            L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2 = L10_2(L11_2, L12_2)
            L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
          end
          L8_2 = table
          L8_2 = L8_2.insert
          L9_2 = L7_2
          L10_2 = "    showBlip = false,"
          L8_2(L9_2, L10_2)
          L8_2 = table
          L8_2 = L8_2.insert
          L9_2 = L7_2
          L10_2 = "    blipCoords = vec3(%s, %s, %s),"
          L11_2 = L10_2
          L10_2 = L10_2.format
          L12_2 = A1_2.menuPoint
          L12_2 = L12_2.x
          L13_2 = A1_2.menuPoint
          L13_2 = L13_2.y
          L14_2 = A1_2.menuPoint
          L14_2 = L14_2.z
          L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2 = L10_2(L11_2, L12_2, L13_2, L14_2)
          L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
          L8_2 = table
          L8_2 = L8_2.insert
          L9_2 = L7_2
          L10_2 = ""
          L8_2(L9_2, L10_2)
          L8_2 = table
          L8_2 = L8_2.insert
          L9_2 = L7_2
          L10_2 = "    garageZone = {"
          L8_2(L9_2, L10_2)
          L8_2 = pairs
          L9_2 = A1_2.polyzone
          L9_2 = L9_2.points
          L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2)
          for L12_2, L13_2 in L8_2, L9_2, L10_2, L11_2 do
            L14_2 = table
            L14_2 = L14_2.insert
            L15_2 = L7_2
            L16_2 = "        vec2(%s, %s),"
            L17_2 = L16_2
            L16_2 = L16_2.format
            L18_2 = L13_2.x
            L19_2 = L13_2.y
            L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2 = L16_2(L17_2, L18_2, L19_2)
            L14_2(L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
          end
          L8_2 = table
          L8_2 = L8_2.insert
          L9_2 = L7_2
          L10_2 = "    },"
          L8_2(L9_2, L10_2)
          L8_2 = table
          L8_2 = L8_2.insert
          L9_2 = L7_2
          L10_2 = "    minZ = %s,"
          L11_2 = L10_2
          L10_2 = L10_2.format
          L12_2 = A1_2.polyzone
          L12_2 = L12_2.minZ
          L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2 = L10_2(L11_2, L12_2)
          L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
          L8_2 = table
          L8_2 = L8_2.insert
          L9_2 = L7_2
          L10_2 = "    maxZ = %s,"
          L11_2 = L10_2
          L10_2 = L10_2.format
          L12_2 = A1_2.polyzone
          L12_2 = L12_2.maxZ
          L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2 = L10_2(L11_2, L12_2)
          L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
          L8_2 = A1_2.useCompany
          if not L8_2 then
            L8_2 = A1_2.useGang
            if not L8_2 then
              goto lbl_1116
            end
          end
          L8_2 = A1_2.allowedModels
          if L8_2 then
            L8_2 = next
            L9_2 = A1_2.allowedModels
            L8_2 = L8_2(L9_2)
            if L8_2 then
              L8_2 = table
              L8_2 = L8_2.insert
              L9_2 = L7_2
              L10_2 = ""
              L8_2(L9_2, L10_2)
              L8_2 = table
              L8_2 = L8_2.insert
              L9_2 = L7_2
              L10_2 = "    allowedModels = {"
              L8_2(L9_2, L10_2)
              L8_2 = pairs
              L9_2 = A1_2.allowedModels
              L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2)
              for L12_2, L13_2 in L8_2, L9_2, L10_2, L11_2 do
                if L13_2 then
                  L14_2 = table
                  L14_2 = L14_2.insert
                  L15_2 = L7_2
                  L16_2 = "        [joaat('%s')] = true,"
                  L17_2 = L16_2
                  L16_2 = L16_2.format
                  L18_2 = L13_2
                  L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2 = L16_2(L17_2, L18_2)
                  L14_2(L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
                end
              end
              L8_2 = table
              L8_2 = L8_2.insert
              L9_2 = L7_2
              L10_2 = "    },"
              L8_2(L9_2, L10_2)
            end
          end
          ::lbl_1116::
          L8_2 = A1_2.useCompany
          if not L8_2 then
            L8_2 = A1_2.useGang
            if not L8_2 then
              goto lbl_1185
            end
          end
          L8_2 = A1_2.predefinedModels
          if L8_2 then
            L8_2 = next
            L9_2 = A1_2.predefinedModels
            L8_2 = L8_2(L9_2)
            if L8_2 then
              L8_2 = table
              L8_2 = L8_2.insert
              L9_2 = L7_2
              L10_2 = ""
              L8_2(L9_2, L10_2)
              L8_2 = table
              L8_2 = L8_2.insert
              L9_2 = L7_2
              L10_2 = "    availableVehicles = {"
              L8_2(L9_2, L10_2)
              L8_2 = pairs
              L9_2 = A1_2.predefinedModels
              L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2)
              for L12_2, L13_2 in L8_2, L9_2, L10_2, L11_2 do
                if L13_2 then
                  L14_2 = table
                  L14_2 = L14_2.insert
                  L15_2 = L7_2
                  L16_2 = "        ['%s'] = {"
                  L17_2 = L16_2
                  L16_2 = L16_2.format
                  L18_2 = L13_2
                  L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2 = L16_2(L17_2, L18_2)
                  L14_2(L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
                  L14_2 = table
                  L14_2 = L14_2.insert
                  L15_2 = L7_2
                  L16_2 = "            model = '%s',"
                  L17_2 = L16_2
                  L16_2 = L16_2.format
                  L18_2 = L13_2
                  L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2 = L16_2(L17_2, L18_2)
                  L14_2(L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
                  L14_2 = table
                  L14_2 = L14_2.insert
                  L15_2 = L7_2
                  L16_2 = "            -- gradesAccess = {1, 2, 3}, -- You can adjust grades"
                  L14_2(L15_2, L16_2)
                  L14_2 = table
                  L14_2 = L14_2.insert
                  L15_2 = L7_2
                  L16_2 = "            -- customProperties = {}, -- You can adjust properties"
                  L14_2(L15_2, L16_2)
                  L14_2 = table
                  L14_2 = L14_2.insert
                  L15_2 = L7_2
                  L16_2 = "        },"
                  L14_2(L15_2, L16_2)
                end
              end
              L8_2 = table
              L8_2 = L8_2.insert
              L9_2 = L7_2
              L10_2 = "    },"
              L8_2(L9_2, L10_2)
            end
          end
          ::lbl_1185::
          L8_2 = table
          L8_2 = L8_2.insert
          L9_2 = L7_2
          L10_2 = ""
          L8_2(L9_2, L10_2)
          L8_2 = table
          L8_2 = L8_2.insert
          L9_2 = L7_2
          L10_2 = "    menuPoint = vec3(%s, %s, %s),"
          L11_2 = L10_2
          L10_2 = L10_2.format
          L12_2 = A1_2.menuPoint
          L12_2 = L12_2.x
          L13_2 = A1_2.menuPoint
          L13_2 = L13_2.y
          L14_2 = A1_2.menuPoint
          L14_2 = L14_2.z
          L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2 = L10_2(L11_2, L12_2, L13_2, L14_2)
          L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
          L8_2 = table
          L8_2 = L8_2.insert
          L9_2 = L7_2
          L10_2 = "    garageData = {"
          L8_2(L9_2, L10_2)
          L8_2 = table
          L8_2 = L8_2.insert
          L9_2 = L7_2
          L10_2 = "        pedCoords = vec4(%s, %s, %s, %s),"
          L11_2 = L10_2
          L10_2 = L10_2.format
          L12_2 = A1_2.pedCoords
          L12_2 = L12_2.x
          L13_2 = A1_2.pedCoords
          L13_2 = L13_2.y
          L14_2 = A1_2.pedCoords
          L14_2 = L14_2.z
          L15_2 = A1_2.pedHeading
          L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2)
          L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
          L8_2 = table
          L8_2 = L8_2.insert
          L9_2 = L7_2
          L10_2 = "        vehicleCoords = vec4(%s, %s, %s, %s),"
          L11_2 = L10_2
          L10_2 = L10_2.format
          L12_2 = A1_2.vehicleCoords
          L12_2 = L12_2.x
          L13_2 = A1_2.vehicleCoords
          L13_2 = L13_2.y
          L14_2 = A1_2.vehicleCoords
          L14_2 = L14_2.z
          L15_2 = A1_2.vehicleHeading
          L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2)
          L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
          L8_2 = table
          L8_2 = L8_2.insert
          L9_2 = L7_2
          L10_2 = "        cameraCoords = vec3(%s, %s, %s),"
          L11_2 = L10_2
          L10_2 = L10_2.format
          L12_2 = A1_2.cameraCoords
          L12_2 = L12_2.x
          L13_2 = A1_2.cameraCoords
          L13_2 = L13_2.y
          L14_2 = A1_2.cameraCoords
          L14_2 = L14_2.z
          L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2 = L10_2(L11_2, L12_2, L13_2, L14_2)
          L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
          L8_2 = table
          L8_2 = L8_2.insert
          L9_2 = L7_2
          L10_2 = "        cameraFov = %s,"
          L11_2 = L10_2
          L10_2 = L10_2.format
          L12_2 = A1_2.cameraFov
          L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2 = L10_2(L11_2, L12_2)
          L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
          L8_2 = table
          L8_2 = L8_2.insert
          L9_2 = L7_2
          L10_2 = "    },"
          L8_2(L9_2, L10_2)
          L8_2 = table
          L8_2 = L8_2.insert
          L9_2 = L7_2
          L10_2 = ""
          L8_2(L9_2, L10_2)
          L8_2 = table
          L8_2 = L8_2.insert
          L9_2 = L7_2
          L10_2 = "    spawnPoint = vec4(%s, %s, %s, %s),"
          L11_2 = L10_2
          L10_2 = L10_2.format
          L12_2 = A1_2.spawnPoint
          L12_2 = L12_2.x
          L13_2 = A1_2.spawnPoint
          L13_2 = L13_2.y
          L14_2 = A1_2.spawnPoint
          L14_2 = L14_2.z
          L15_2 = A1_2.spawnPointHeading
          if not L15_2 then
            L15_2 = 0.0
          end
          L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2)
          L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
          L8_2 = table
          L8_2 = L8_2.insert
          L9_2 = L7_2
          L10_2 = "    checkAreaOccupied = %s,"
          L11_2 = L10_2
          L10_2 = L10_2.format
          L12_2 = A1_2.checkAreaOccupied
          if L12_2 then
            L12_2 = "true"
            if L12_2 then
              goto lbl_1296
            end
          end
          L12_2 = "false"
          ::lbl_1296::
          L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2 = L10_2(L11_2, L12_2)
          L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
          L8_2 = table
          L8_2 = L8_2.insert
          L9_2 = L7_2
          L10_2 = "    returnVehiclePoint = vec3(%s, %s, %s),"
          L11_2 = L10_2
          L10_2 = L10_2.format
          L12_2 = A1_2.returnVehiclePoint
          L12_2 = L12_2.x
          L13_2 = A1_2.returnVehiclePoint
          L13_2 = L13_2.y
          L14_2 = A1_2.returnVehiclePoint
          L14_2 = L14_2.z
          L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2 = L10_2(L11_2, L12_2, L13_2, L14_2)
          L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
        elseif "parking" == A0_2 then
          L8_2 = table
          L8_2 = L8_2.insert
          L9_2 = L7_2
          L10_2 = "Config = Config or {}"
          L8_2(L9_2, L10_2)
          L8_2 = table
          L8_2 = L8_2.insert
          L9_2 = L7_2
          L10_2 = ""
          L8_2(L9_2, L10_2)
          L8_2 = table
          L8_2 = L8_2.insert
          L9_2 = L7_2
          L10_2 = "while not Config.Garages do"
          L8_2(L9_2, L10_2)
          L8_2 = table
          L8_2 = L8_2.insert
          L9_2 = L7_2
          L10_2 = "    Citizen.Wait(100)"
          L8_2(L9_2, L10_2)
          L8_2 = table
          L8_2 = L8_2.insert
          L9_2 = L7_2
          L10_2 = "end"
          L8_2(L9_2, L10_2)
          L8_2 = table
          L8_2 = L8_2.insert
          L9_2 = L7_2
          L10_2 = ""
          L8_2(L9_2, L10_2)
          L8_2 = table
          L8_2 = L8_2.insert
          L9_2 = L7_2
          L10_2 = "Config.Garages['%s'] = {"
          L11_2 = L10_2
          L10_2 = L10_2.format
          L12_2 = L5_2
          L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2 = L10_2(L11_2, L12_2)
          L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
          L8_2 = table
          L8_2 = L8_2.insert
          L9_2 = L7_2
          L10_2 = "    label = '%s',"
          L11_2 = L10_2
          L10_2 = L10_2.format
          L12_2 = L6_2
          L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2 = L10_2(L11_2, L12_2)
          L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
          L8_2 = A1_2.type
          if L8_2 then
            L8_2 = table
            L8_2 = L8_2.insert
            L9_2 = L7_2
            L10_2 = "    type = '%s',"
            L11_2 = L10_2
            L10_2 = L10_2.format
            L12_2 = A1_2.type
            L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2 = L10_2(L11_2, L12_2)
            L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
          end
          L8_2 = A1_2.useCompany
          if L8_2 then
            L8_2 = table
            L8_2 = L8_2.insert
            L9_2 = L7_2
            L10_2 = ""
            L8_2(L9_2, L10_2)
            L8_2 = table
            L8_2 = L8_2.insert
            L9_2 = L7_2
            L10_2 = "    requiredJob = {"
            L8_2(L9_2, L10_2)
            L8_2 = pairs
            L9_2 = A1_2.company
            L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2)
            for L12_2, L13_2 in L8_2, L9_2, L10_2, L11_2 do
              if L13_2 then
                L14_2 = table
                L14_2 = L14_2.insert
                L15_2 = L7_2
                L16_2 = "        ['%s'] = true,"
                L17_2 = L16_2
                L16_2 = L16_2.format
                L18_2 = L13_2
                L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2 = L16_2(L17_2, L18_2)
                L14_2(L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
              end
            end
            L8_2 = table
            L8_2 = L8_2.insert
            L9_2 = L7_2
            L10_2 = "    },"
            L8_2(L9_2, L10_2)
          end
          L8_2 = A1_2.useGang
          if L8_2 then
            L8_2 = table
            L8_2 = L8_2.insert
            L9_2 = L7_2
            L10_2 = ""
            L8_2(L9_2, L10_2)
            L8_2 = table
            L8_2 = L8_2.insert
            L9_2 = L7_2
            L10_2 = "    requiredGang = {"
            L8_2(L9_2, L10_2)
            L8_2 = pairs
            L9_2 = A1_2.gangs
            L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2)
            for L12_2, L13_2 in L8_2, L9_2, L10_2, L11_2 do
              if L13_2 then
                L14_2 = table
                L14_2 = L14_2.insert
                L15_2 = L7_2
                L16_2 = "        ['%s'] = true,"
                L17_2 = L16_2
                L16_2 = L16_2.format
                L18_2 = L13_2
                L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2 = L16_2(L17_2, L18_2)
                L14_2(L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
              end
            end
            L8_2 = table
            L8_2 = L8_2.insert
            L9_2 = L7_2
            L10_2 = "    },"
            L8_2(L9_2, L10_2)
          end
          L8_2 = A1_2.useParkingmeter
          if L8_2 then
            L8_2 = table
            L8_2 = L8_2.insert
            L9_2 = L7_2
            L10_2 = ""
            L8_2(L9_2, L10_2)
            L8_2 = table
            L8_2 = L8_2.insert
            L9_2 = L7_2
            L10_2 = "    isPaid = true,"
            L8_2(L9_2, L10_2)
            L8_2 = table
            L8_2 = L8_2.insert
            L9_2 = L7_2
            L10_2 = "    pricePerHour = %s,"
            L11_2 = L10_2
            L10_2 = L10_2.format
            L12_2 = A1_2.parkingmeterPrice
            if not L12_2 then
              L12_2 = 1
            end
            L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2 = L10_2(L11_2, L12_2)
            L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
            L8_2 = table
            L8_2 = L8_2.insert
            L9_2 = L7_2
            L10_2 = ""
            L8_2(L9_2, L10_2)
            L8_2 = table
            L8_2 = L8_2.insert
            L9_2 = L7_2
            L10_2 = "    payStations = {"
            L8_2(L9_2, L10_2)
            L8_2 = pairs
            L9_2 = A1_2.paystations
            L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2)
            for L12_2, L13_2 in L8_2, L9_2, L10_2, L11_2 do
              if L13_2 then
                L14_2 = table
                L14_2 = L14_2.insert
                L15_2 = L7_2
                L16_2 = "        vec3(%s, %s, %s),"
                L17_2 = L16_2
                L16_2 = L16_2.format
                L18_2 = L13_2.x
                L19_2 = L13_2.y
                L20_2 = L13_2.z
                L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2 = L16_2(L17_2, L18_2, L19_2, L20_2)
                L14_2(L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
              end
            end
            L8_2 = table
            L8_2 = L8_2.insert
            L9_2 = L7_2
            L10_2 = "    },"
            L8_2(L9_2, L10_2)
          end
          L8_2 = A1_2.useRent
          if L8_2 then
            L8_2 = table
            L8_2 = L8_2.insert
            L9_2 = L7_2
            L10_2 = ""
            L8_2(L9_2, L10_2)
            L8_2 = table
            L8_2 = L8_2.insert
            L9_2 = L7_2
            L10_2 = "    isForRent = true,"
            L8_2(L9_2, L10_2)
            L8_2 = table
            L8_2 = L8_2.insert
            L9_2 = L7_2
            L10_2 = ""
            L8_2(L9_2, L10_2)
            L8_2 = table
            L8_2 = L8_2.insert
            L9_2 = L7_2
            L10_2 = "    pricePerDay = %s,"
            L11_2 = L10_2
            L10_2 = L10_2.format
            L12_2 = A1_2.rentPrice
            if not L12_2 then
              L12_2 = 1
            end
            L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2 = L10_2(L11_2, L12_2)
            L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
            L8_2 = table
            L8_2 = L8_2.insert
            L9_2 = L7_2
            L10_2 = ""
            L8_2(L9_2, L10_2)
            L8_2 = "    rentDays = {"
            L9_2 = pairs
            L10_2 = A1_2.rentDays
            L9_2, L10_2, L11_2, L12_2 = L9_2(L10_2)
            for L13_2, L14_2 in L9_2, L10_2, L11_2, L12_2 do
              if L14_2 then
                L15_2 = L8_2
                L16_2 = "%s,"
                L17_2 = L16_2
                L16_2 = L16_2.format
                L18_2 = L14_2
                L16_2 = L16_2(L17_2, L18_2)
                L15_2 = L15_2 .. L16_2
                L8_2 = L15_2
              end
            end
            L9_2 = L8_2
            L10_2 = "},"
            L9_2 = L9_2 .. L10_2
            L8_2 = L9_2
            L9_2 = table
            L9_2 = L9_2.insert
            L10_2 = L7_2
            L11_2 = L8_2
            L9_2(L10_2, L11_2)
            L9_2 = table
            L9_2 = L9_2.insert
            L10_2 = L7_2
            L11_2 = ""
            L9_2(L10_2, L11_2)
            L9_2 = table
            L9_2 = L9_2.insert
            L10_2 = L7_2
            L11_2 = "    payStations = {"
            L9_2(L10_2, L11_2)
            L9_2 = pairs
            L10_2 = A1_2.paystations
            L9_2, L10_2, L11_2, L12_2 = L9_2(L10_2)
            for L13_2, L14_2 in L9_2, L10_2, L11_2, L12_2 do
              if L14_2 then
                L15_2 = table
                L15_2 = L15_2.insert
                L16_2 = L7_2
                L17_2 = "        vec3(%s, %s, %s),"
                L18_2 = L17_2
                L17_2 = L17_2.format
                L19_2 = L14_2.x
                L20_2 = L14_2.y
                L21_2 = L14_2.z
                L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2 = L17_2(L18_2, L19_2, L20_2, L21_2)
                L15_2(L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
              end
            end
            L9_2 = table
            L9_2 = L9_2.insert
            L10_2 = L7_2
            L11_2 = "    },"
            L9_2(L10_2, L11_2)
          end
          L8_2 = table
          L8_2 = L8_2.insert
          L9_2 = L7_2
          L10_2 = ""
          L8_2(L9_2, L10_2)
          L8_2 = A1_2.useParkingmeter
          if L8_2 then
            L8_2 = table
            L8_2 = L8_2.insert
            L9_2 = L7_2
            L10_2 = "    nameBlip = 'paid_garage:%s',"
            L11_2 = L10_2
            L10_2 = L10_2.format
            L12_2 = A1_2.type
            L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2 = L10_2(L11_2, L12_2)
            L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
          else
            L8_2 = A1_2.useRent
            if L8_2 then
              L8_2 = table
              L8_2 = L8_2.insert
              L9_2 = L7_2
              L10_2 = "    nameBlip = 'rent_garage:%s',"
              L11_2 = L10_2
              L10_2 = L10_2.format
              L12_2 = A1_2.type
              L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2 = L10_2(L11_2, L12_2)
              L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
            else
              L8_2 = A1_2.useCompany
              if L8_2 then
                L8_2 = table
                L8_2 = L8_2.insert
                L9_2 = L7_2
                L10_2 = "    nameBlip = 'job_garage',"
                L8_2(L9_2, L10_2)
              else
                L8_2 = table
                L8_2 = L8_2.insert
                L9_2 = L7_2
                L10_2 = "    nameBlip = 'free_garage:%s',"
                L11_2 = L10_2
                L10_2 = L10_2.format
                L12_2 = A1_2.type
                L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2 = L10_2(L11_2, L12_2)
                L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
              end
            end
          end
          L8_2 = table
          L8_2 = L8_2.insert
          L9_2 = L7_2
          L10_2 = "    showBlip = false,"
          L8_2(L9_2, L10_2)
          L8_2 = table
          L8_2 = L8_2.insert
          L9_2 = L7_2
          L10_2 = "    blipCoords = vec3(%s, %s, %s),"
          L11_2 = L10_2
          L10_2 = L10_2.format
          L12_2 = A1_2.blipCoords
          L12_2 = L12_2.x
          L13_2 = A1_2.blipCoords
          L13_2 = L13_2.y
          L14_2 = 200.0
          L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2 = L10_2(L11_2, L12_2, L13_2, L14_2)
          L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
          L8_2 = A1_2.useNPC
          if L8_2 then
            L8_2 = A1_2.npc
            if L8_2 then
              L8_2 = A1_2.npc
              L8_2 = L8_2.model
              if L8_2 then
                L8_2 = A1_2.npc
                L8_2 = L8_2.coords
                if L8_2 then
                  L8_2 = table
                  L8_2 = L8_2.insert
                  L9_2 = L7_2
                  L10_2 = ""
                  L8_2(L9_2, L10_2)
                  L8_2 = table
                  L8_2 = L8_2.insert
                  L9_2 = L7_2
                  L10_2 = "    npc = {"
                  L8_2(L9_2, L10_2)
                  L8_2 = table
                  L8_2 = L8_2.insert
                  L9_2 = L7_2
                  L10_2 = "        enabled = true,"
                  L8_2(L9_2, L10_2)
                  L8_2 = table
                  L8_2 = L8_2.insert
                  L9_2 = L7_2
                  L10_2 = "        model = '%s',"
                  L11_2 = L10_2
                  L10_2 = L10_2.format
                  L12_2 = A1_2.npc
                  L12_2 = L12_2.model
                  L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2 = L10_2(L11_2, L12_2)
                  L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
                  L8_2 = A1_2.npc
                  L8_2 = L8_2.animName
                  if L8_2 then
                    L8_2 = A1_2.npc
                    L8_2 = L8_2.animName
                    if "" ~= L8_2 then
                      L8_2 = A1_2.npc
                      L8_2 = L8_2.animDict
                      if L8_2 then
                        L8_2 = A1_2.npc
                        L8_2 = L8_2.animDict
                        if "" ~= L8_2 then
                          L8_2 = table
                          L8_2 = L8_2.insert
                          L9_2 = L7_2
                          L10_2 = "        animation = {'%s', '%s'},"
                          L11_2 = L10_2
                          L10_2 = L10_2.format
                          L12_2 = A1_2.npc
                          L12_2 = L12_2.animDict
                          L13_2 = A1_2.npc
                          L13_2 = L13_2.animName
                          L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2 = L10_2(L11_2, L12_2, L13_2)
                          L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
                        end
                      end
                    end
                  end
                  L8_2 = table
                  L8_2 = L8_2.insert
                  L9_2 = L7_2
                  L10_2 = "        coords = vec4(%s, %s, %s, %s),"
                  L11_2 = L10_2
                  L10_2 = L10_2.format
                  L12_2 = A1_2.npc
                  L12_2 = L12_2.coords
                  L12_2 = L12_2.x
                  L13_2 = A1_2.npc
                  L13_2 = L13_2.coords
                  L13_2 = L13_2.y
                  L14_2 = A1_2.npc
                  L14_2 = L14_2.coords
                  L14_2 = L14_2.z
                  L14_2 = L14_2 - 1.0
                  L15_2 = A1_2.npc
                  L15_2 = L15_2.heading
                  L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2)
                  L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
                  L8_2 = table
                  L8_2 = L8_2.insert
                  L9_2 = L7_2
                  L10_2 = "    },"
                  L8_2(L9_2, L10_2)
                end
              end
            end
          end
          L8_2 = A1_2.polyzone
          if L8_2 then
            L8_2 = table
            L8_2 = L8_2.insert
            L9_2 = L7_2
            L10_2 = ""
            L8_2(L9_2, L10_2)
            L8_2 = table
            L8_2 = L8_2.insert
            L9_2 = L7_2
            L10_2 = "    garageZone = {"
            L8_2(L9_2, L10_2)
            L8_2 = pairs
            L9_2 = A1_2.polyzone
            L9_2 = L9_2.points
            L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2)
            for L12_2, L13_2 in L8_2, L9_2, L10_2, L11_2 do
              L14_2 = table
              L14_2 = L14_2.insert
              L15_2 = L7_2
              L16_2 = "        vec2(%s, %s),"
              L17_2 = L16_2
              L16_2 = L16_2.format
              L18_2 = L13_2.x
              L19_2 = L13_2.y
              L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2 = L16_2(L17_2, L18_2, L19_2)
              L14_2(L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
            end
            L8_2 = table
            L8_2 = L8_2.insert
            L9_2 = L7_2
            L10_2 = "    },"
            L8_2(L9_2, L10_2)
            L8_2 = table
            L8_2 = L8_2.insert
            L9_2 = L7_2
            L10_2 = "    minZ = %s,"
            L11_2 = L10_2
            L10_2 = L10_2.format
            L12_2 = A1_2.polyzone
            L12_2 = L12_2.minZ
            L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2 = L10_2(L11_2, L12_2)
            L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
            L8_2 = table
            L8_2 = L8_2.insert
            L9_2 = L7_2
            L10_2 = "    maxZ = %s,"
            L11_2 = L10_2
            L10_2 = L10_2.format
            L12_2 = A1_2.polyzone
            L12_2 = L12_2.maxZ
            L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2 = L10_2(L11_2, L12_2)
            L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
          end
          L8_2 = A1_2.useAllowedModels
          if L8_2 then
            L8_2 = table
            L8_2 = L8_2.insert
            L9_2 = L7_2
            L10_2 = ""
            L8_2(L9_2, L10_2)
            L8_2 = table
            L8_2 = L8_2.insert
            L9_2 = L7_2
            L10_2 = "    allowedModels = {"
            L8_2(L9_2, L10_2)
            L8_2 = pairs
            L9_2 = A1_2.allowedModels
            L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2)
            for L12_2, L13_2 in L8_2, L9_2, L10_2, L11_2 do
              if L13_2 then
                L14_2 = table
                L14_2 = L14_2.insert
                L15_2 = L7_2
                L16_2 = "        [joaat('%s')] = true,"
                L17_2 = L16_2
                L16_2 = L16_2.format
                L18_2 = L13_2
                L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2 = L16_2(L17_2, L18_2)
                L14_2(L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
              end
            end
            L8_2 = table
            L8_2 = L8_2.insert
            L9_2 = L7_2
            L10_2 = "    },"
            L8_2(L9_2, L10_2)
          end
          L8_2 = A1_2.parkingSpaces
          if L8_2 then
            L8_2 = table
            L8_2 = L8_2.insert
            L9_2 = L7_2
            L10_2 = ""
            L8_2(L9_2, L10_2)
            L8_2 = table
            L8_2 = L8_2.insert
            L9_2 = L7_2
            L10_2 = "    parkingSpaces = {"
            L8_2(L9_2, L10_2)
            L8_2 = pairs
            L9_2 = A1_2.parkingSpaces
            L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2)
            for L12_2, L13_2 in L8_2, L9_2, L10_2, L11_2 do
              L14_2 = L13_2.coords
              if L14_2 then
                L14_2 = "        [%s] = {coords = vec4(%s, %s, %s, %s)"
                L15_2 = L14_2
                L14_2 = L14_2.format
                L16_2 = L12_2
                L17_2 = L13_2.coords
                L17_2 = L17_2.x
                L18_2 = L13_2.coords
                L18_2 = L18_2.y
                L19_2 = L13_2.coords
                L19_2 = L19_2.z
                L20_2 = L13_2.heading
                L14_2 = L14_2(L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
                L15_2 = A1_2.useRent
                if L15_2 then
                  L15_2 = L14_2
                  L16_2 = ", camCoords = vec3(%s, %s, %s)"
                  L17_2 = L16_2
                  L16_2 = L16_2.format
                  L18_2 = L13_2.coords
                  L18_2 = L18_2.x
                  L19_2 = L13_2.coords
                  L19_2 = L19_2.y
                  L20_2 = L13_2.coords
                  L20_2 = L20_2.z
                  L20_2 = L20_2 + 3.1
                  L16_2 = L16_2(L17_2, L18_2, L19_2, L20_2)
                  L15_2 = L15_2 .. L16_2
                  L14_2 = L15_2
                end
                L15_2 = L13_2.rotation
                if L15_2 then
                  L15_2 = L13_2.rotation
                  L15_2 = L15_2.x
                  if L15_2 then
                    L15_2 = L14_2
                    L16_2 = ", rotation = vector3("
                    L17_2 = L13_2.rotation
                    L17_2 = L17_2.x
                    L18_2 = ", "
                    L19_2 = L13_2.rotation
                    L19_2 = L19_2.y
                    L20_2 = ", "
                    L21_2 = L13_2.rotation
                    L21_2 = L21_2.z
                    L22_2 = ")"
                    L15_2 = L15_2 .. L16_2 .. L17_2 .. L18_2 .. L19_2 .. L20_2 .. L21_2 .. L22_2
                    L14_2 = L15_2
                  end
                end
                L15_2 = L14_2
                L16_2 = "},"
                L15_2 = L15_2 .. L16_2
                L14_2 = L15_2
                L15_2 = table
                L15_2 = L15_2.insert
                L16_2 = L7_2
                L17_2 = L14_2
                L15_2(L16_2, L17_2)
              end
            end
            L8_2 = table
            L8_2 = L8_2.insert
            L9_2 = L7_2
            L10_2 = "    },"
            L8_2(L9_2, L10_2)
          end
        end
        L8_2 = table
        L8_2 = L8_2.insert
        L9_2 = L7_2
        L10_2 = "}"
        L8_2(L9_2, L10_2)
        L8_2 = table
        L8_2 = L8_2.concat
        L9_2 = L7_2
        L10_2 = "\n"
        L8_2 = L8_2(L9_2, L10_2)
        L9_2 = GetCurrentResourceName
        L9_2 = L9_2()
        L10_2 = SaveResourceFile
        L11_2 = L9_2
        L12_2 = "CREATED_PARKINGS/"
        L13_2 = L5_2
        L14_2 = ".lua"
        L12_2 = L12_2 .. L13_2 .. L14_2
        L13_2 = L8_2
        L14_2 = -1
        L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2)
        if not L10_2 then
          L11_2 = library
          L11_2 = L11_2.Debug
          L12_2 = "You cannot save the file with the configured parking - make sure you have such a path on your server: "
          L13_2 = L9_2
          L14_2 = "/CREATED_PARKINGS/"
          L12_2 = L12_2 .. L13_2 .. L14_2
          L13_2 = "warn"
          L11_2(L12_2, L13_2)
          L11_2 = TriggerClientEvent
          L12_2 = "vms_garagesv2:notification"
          L13_2 = L2_2
          L14_2 = TRANSLATE
          L15_2 = "notify.parkingcreator:not_saved_file"
          L14_2 = L14_2(L15_2)
          L15_2 = 7000
          L16_2 = "error"
          L11_2(L12_2, L13_2, L14_2, L15_2, L16_2)
        else
          L11_2 = load
          L12_2 = L8_2
          L11_2 = L11_2(L12_2)
          L11_2()
          L11_2 = TriggerClientEvent
          L12_2 = "vms_garagesv2:notification"
          L13_2 = L2_2
          L14_2 = TRANSLATE
          L15_2 = "notify.parkingcreator:saved_file"
          L14_2 = L14_2(L15_2)
          L15_2 = 5000
          L16_2 = "success"
          L11_2(L12_2, L13_2, L14_2, L15_2, L16_2)
          L11_2 = TriggerClientEvent
          L12_2 = "vms_garagesv2:closeParkingCreator"
          L13_2 = L2_2
          L11_2(L12_2, L13_2)
          L11_2 = Config
          L11_2 = L11_2.ParkingCreator
          L11_2 = L11_2.AutomaticLoad
          if L11_2 then
            L11_2 = TriggerClientEvent
            L12_2 = "vms_garagesv2:createdNewGarage"
            L13_2 = -1
            L14_2 = json
            L14_2 = L14_2.encode
            L15_2 = L8_2
            L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2 = L14_2(L15_2)
            L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
          end
        end
      end
      L23_1(L24_1, L25_1)
      L23_1 = Config
      L23_1 = L23_1.Core
      if "ESX" == L23_1 then
        L23_1 = Config
        L23_1 = L23_1.ParkingCreator
        L23_1 = L23_1.Command
        L23_1 = L23_1.oldESX
        if L23_1 then
          L23_1 = TriggerEvent
          L24_1 = "es:addGroupCommand"
          L25_1 = Config
          L25_1 = L25_1.ParkingCreator
          L25_1 = L25_1.Command
          L25_1 = L25_1.name
          L26_1 = Config
          L26_1 = L26_1.ParkingCreator
          L26_1 = L26_1.Command
          L26_1 = L26_1.groups
          function L27_1(A0_2, A1_2, A2_2)
            local L3_2, L4_2, L5_2
            L3_2 = L7_1
            L3_2 = L3_2[A0_2]
            if L3_2 then
              return
            end
            L3_2 = L7_1
            L3_2[A0_2] = true
            L3_2 = SetPlayerRoutingBucket
            L4_2 = A0_2
            L5_2 = A0_2
            L3_2(L4_2, L5_2)
            L3_2 = TriggerClientEvent
            L4_2 = "vms_garagesv2:cl:openParkingCreator"
            L5_2 = A0_2
            L3_2(L4_2, L5_2)
          end
          function L28_1(A0_2, A1_2, A2_2)
            local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
            L3_2 = TriggerClientEvent
            L4_2 = "chat:addMessage"
            L5_2 = A0_2
            L6_2 = {}
            L7_2 = {}
            L8_2 = "^1SYSTEM"
            L9_2 = "Insufficient Permissions."
            L7_2[1] = L8_2
            L7_2[2] = L9_2
            L6_2.args = L7_2
            L3_2(L4_2, L5_2, L6_2)
          end
          L29_1 = {}
          L30_1 = Config
          L30_1 = L30_1.ParkingCreator
          L30_1 = L30_1.Command
          L30_1 = L30_1.help
          L29_1.help = L30_1
          L23_1(L24_1, L25_1, L26_1, L27_1, L28_1, L29_1)
        else
          L23_1 = Core
          L23_1 = L23_1.RegisterCommand
          L24_1 = Config
          L24_1 = L24_1.ParkingCreator
          L24_1 = L24_1.Command
          L24_1 = L24_1.name
          L25_1 = Config
          L25_1 = L25_1.ParkingCreator
          L25_1 = L25_1.Command
          L25_1 = L25_1.groups
          function L26_1(A0_2, A1_2, A2_2)
            local L3_2, L4_2, L5_2
            L4_2 = A0_2.source
            L3_2 = L7_1
            L3_2 = L3_2[L4_2]
            if L3_2 then
              return
            end
            L4_2 = A0_2.source
            L3_2 = L7_1
            L3_2[L4_2] = true
            L3_2 = SetPlayerRoutingBucket
            L4_2 = A0_2.source
            L5_2 = A0_2.source
            L3_2(L4_2, L5_2)
            L3_2 = TriggerClientEvent
            L4_2 = "vms_garagesv2:cl:openParkingCreator"
            L5_2 = A0_2.source
            L3_2(L4_2, L5_2)
          end
          L27_1 = false
          L28_1 = {}
          L29_1 = Config
          L29_1 = L29_1.ParkingCreator
          L29_1 = L29_1.Command
          L29_1 = L29_1.help
          L28_1.help = L29_1
          L23_1(L24_1, L25_1, L26_1, L27_1, L28_1)
        end
      else
        L23_1 = Config
        L23_1 = L23_1.Core
        if "QB-Core" == L23_1 then
          L23_1 = Core
          L23_1 = L23_1.Commands
          L23_1 = L23_1.Add
          L24_1 = Config
          L24_1 = L24_1.ParkingCreator
          L24_1 = L24_1.Command
          L24_1 = L24_1.name
          L25_1 = Config
          L25_1 = L25_1.ParkingCreator
          L25_1 = L25_1.Command
          L25_1 = L25_1.help
          L26_1 = {}
          L27_1 = false
          function L28_1(A0_2, A1_2)
            local L2_2, L3_2, L4_2
            L2_2 = L7_1
            L2_2 = L2_2[A0_2]
            if L2_2 then
              return
            end
            L2_2 = L7_1
            L2_2[A0_2] = true
            L2_2 = SetPlayerRoutingBucket
            L3_2 = A0_2
            L4_2 = A0_2
            L2_2(L3_2, L4_2)
            L2_2 = TriggerClientEvent
            L3_2 = "vms_garagesv2:cl:openParkingCreator"
            L4_2 = A0_2
            L2_2(L3_2, L4_2)
          end
          L29_1 = Config
          L29_1 = L29_1.ParkingCreator
          L29_1 = L29_1.Command
          L29_1 = L29_1.groups
          L23_1(L24_1, L25_1, L26_1, L27_1, L28_1, L29_1)
        end
      end
    end
  end
end
L23_1 = library
L23_1 = L23_1.RegisterCallback
L24_1 = "vms_garagesv2:takeVehicle"
function L25_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  if A4_2 then
    L6_2 = Config
    L6_2 = L6_2.HousingGarages
    L6_2 = L6_2[A2_2]
    L6_2 = L6_2.parkingSpaces
    L6_2 = L6_2[A3_2]
    if L6_2 then
      goto lbl_15
    end
  end
  L6_2 = Config
  L6_2 = L6_2.Garages
  L6_2 = L6_2[A2_2]
  L6_2 = L6_2.parkingSpaces
  L6_2 = L6_2[A3_2]
  ::lbl_15::
  L7_2 = A5_2.plate
  L8_2 = L7_2
  L7_2 = L7_2.match
  L9_2 = "^%s*(.-)%s*$"
  L7_2 = L7_2(L8_2, L9_2)
  if A4_2 then
    L8_2 = Config
    L8_2 = L8_2.HousingGarages
    L8_2 = L8_2[A2_2]
    L8_2 = L8_2.routingBucket
    if L8_2 then
      goto lbl_41
    end
  end
  L8_2 = Config
  L8_2 = L8_2.Garages
  L8_2 = L8_2[A2_2]
  L8_2 = L8_2.interior
  if L8_2 then
    L8_2 = Config
    L8_2 = L8_2.Garages
    L8_2 = L8_2[A2_2]
    L8_2 = L8_2.interior
    L8_2 = L8_2.routingBucket
    if L8_2 then
      goto lbl_41
    end
  end
  L8_2 = nil
  ::lbl_41::
  L9_2 = library
  L9_2 = L9_2.SpawnVehicle
  L10_2 = {}
  L10_2.source = A0_2
  L11_2 = GetPlayerPed
  L12_2 = A0_2
  L11_2 = L11_2(L12_2)
  L10_2.ped = L11_2
  L11_2 = A5_2.mods
  L11_2 = L11_2.model
  L10_2.model = L11_2
  L11_2 = L6_2.coords
  L11_2 = L11_2.xyz
  L10_2.coords = L11_2
  L11_2 = L6_2.coords
  L11_2 = L11_2.w
  L10_2.heading = L11_2
  L11_2 = A5_2.mods
  L10_2.props = L11_2
  L10_2.bucket = L8_2
  L11_2 = {}
  L11_2.id = A2_2
  L11_2.spotid = A3_2
  L12_2 = L1_1
  L12_2 = L12_2[A2_2]
  L12_2 = L12_2[A3_2]
  L12_2 = L12_2.isRented
  if not L12_2 then
    L12_2 = nil
  end
  L11_2.isRented = L12_2
  L12_2 = L1_1
  L12_2 = L12_2[A2_2]
  L12_2 = L12_2[A3_2]
  L12_2 = L12_2.ownerName
  if not L12_2 then
    L12_2 = nil
  end
  L11_2.ownerName = L12_2
  L12_2 = L1_1
  L12_2 = L12_2[A2_2]
  L12_2 = L12_2[A3_2]
  L12_2 = L12_2.time
  if not L12_2 then
    L12_2 = nil
  end
  L11_2.time = L12_2
  L11_2.isHousing = A4_2
  L10_2.garage = L11_2
  function L11_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
    L2_3 = SV
    L2_3 = L2_3.OnVehicleSpawn
    L3_3 = A0_3
    L4_3 = A5_2.mods
    L2_3(L3_3, L4_3)
    L2_3 = TriggerClientEvent
    L3_3 = "vms_garagesv2:cl:setProperties"
    L4_3 = A0_2
    L5_3 = A1_3
    L6_3 = A5_2.mods
    L2_3(L3_3, L4_3, L5_3, L6_3)
    L2_3 = Config
    L2_3 = L2_3.Garages
    L3_3 = A2_2
    L2_3 = L2_3[L3_3]
    if L2_3 then
      L2_3 = Config
      L2_3 = L2_3.Garages
      L3_3 = A2_2
      L2_3 = L2_3[L3_3]
      L2_3 = L2_3.parkingSpaces
      if L2_3 then
        L2_3 = Config
        L2_3 = L2_3.Garages
        L3_3 = A2_2
        L2_3 = L2_3[L3_3]
        L2_3 = L2_3.parkingSpaces
        L3_3 = A3_2
        L2_3 = L2_3[L3_3]
        if L2_3 then
          L2_3 = Config
          L2_3 = L2_3.Garages
          L3_3 = A2_2
          L2_3 = L2_3[L3_3]
          L2_3 = L2_3.parkingSpaces
          L3_3 = A3_2
          L2_3 = L2_3[L3_3]
          L2_3 = L2_3.rotation
          if L2_3 then
            L2_3 = SetEntityRotation
            L3_3 = A0_3
            L4_3 = Config
            L4_3 = L4_3.Garages
            L5_3 = A2_2
            L4_3 = L4_3[L5_3]
            L4_3 = L4_3.parkingSpaces
            L5_3 = A3_2
            L4_3 = L4_3[L5_3]
            L4_3 = L4_3.rotation
            L4_3 = L4_3.xyz
            L5_3 = 2
            L6_3 = false
            L2_3(L3_3, L4_3, L5_3, L6_3)
          end
        end
      end
    end
    L2_3 = "UPDATE `%s` SET garage = NULL, garageSpotID = NULL, parking_date = NULL, netid = @netid WHERE (`%s` LIKE @cleanedPlate OR `%s` LIKE @plate)"
    L3_3 = L2_3
    L2_3 = L2_3.format
    L4_3 = SV
    L4_3 = L4_3.Database
    L4_3 = L4_3["table:owned_vehicles"]
    L5_3 = SV
    L5_3 = L5_3.Database
    L5_3 = L5_3["column:plate"]
    L6_3 = SV
    L6_3 = L6_3.Database
    L6_3 = L6_3["column:plate"]
    L2_3 = L2_3(L3_3, L4_3, L5_3, L6_3)
    L3_3 = MySQL
    L3_3 = L3_3.Async
    L3_3 = L3_3.execute
    L4_3 = L2_3
    L5_3 = {}
    L5_3["@netid"] = A1_3
    L6_3 = L7_2
    L5_3["@cleanedPlate"] = L6_3
    L6_3 = A5_2.plate
    L5_3["@plate"] = L6_3
    L3_3(L4_3, L5_3)
    L4_3 = A2_2
    L3_3 = L1_1
    L3_3 = L3_3[L4_3]
    L4_3 = A3_2
    L3_3 = L3_3[L4_3]
    L3_3.mods = nil
    L4_3 = A2_2
    L3_3 = L1_1
    L3_3 = L3_3[L4_3]
    L4_3 = A3_2
    L3_3 = L3_3[L4_3]
    L3_3.plate = nil
    L4_3 = A2_2
    L3_3 = L1_1
    L3_3 = L3_3[L4_3]
    L4_3 = A3_2
    L3_3 = L3_3[L4_3]
    L3_3.parking_date = nil
    L4_3 = A2_2
    L3_3 = L1_1
    L3_3 = L3_3[L4_3]
    L4_3 = A3_2
    L3_3 = L3_3[L4_3]
    L3_3.owner = nil
    L3_3 = Config
    L3_3 = L3_3.VehiclePersistence
    if L3_3 then
      L3_3 = VehiclePersistence
      L4_3 = A0_3
      L5_3 = true
      L3_3(L4_3, L5_3)
    end
    L3_3 = A1_2
    L4_3 = true
    L5_3 = A5_2
    L6_3 = A1_3
    L8_3 = A2_2
    L7_3 = L1_1
    L7_3 = L7_3[L8_3]
    L8_3 = A3_2
    L7_3 = L7_3[L8_3]
    L7_3 = L7_3.company
    if L7_3 then
      L7_3 = "companyVehFromParking"
      if L7_3 then
        goto lbl_141
      end
    end
    L8_3 = A2_2
    L7_3 = L1_1
    L7_3 = L7_3[L8_3]
    L8_3 = A3_2
    L7_3 = L7_3[L8_3]
    L7_3 = L7_3.gang
    if L7_3 then
      L7_3 = "gangVehFromParking"
      if L7_3 then
        goto lbl_141
      end
    end
    L7_3 = "privateVehFromParking"
    ::lbl_141::
    L3_3(L4_3, L5_3, L6_3, L7_3)
  end
  L9_2(L10_2, L11_2)
end
L23_1(L24_1, L25_1)
L23_1 = library
L23_1 = L23_1.RegisterCallback
L24_1 = "vms_garagesv2:parkVehicle"
function L25_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2, A7_2, A8_2)
  local L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2
  L9_2 = A0_2
  L10_2 = SV
  L10_2 = L10_2.getPlayer
  L11_2 = L9_2
  L10_2 = L10_2(L11_2)
  L11_2 = SV
  L11_2 = L11_2.getIdentifier
  L12_2 = L10_2
  L11_2 = L11_2(L12_2)
  L12_2 = SV
  L12_2 = L12_2.getPlayerJob
  L13_2 = L10_2
  L12_2 = L12_2(L13_2)
  L13_2 = SV
  L13_2 = L13_2.getPlayerJobGrade
  L14_2 = L10_2
  L13_2 = L13_2(L14_2)
  L14_2 = SV
  L14_2 = L14_2.getPlayerGang
  L15_2 = L10_2
  L14_2 = L14_2(L15_2)
  if not L14_2 then
    L14_2 = "unknown"
  end
  L15_2 = SV
  L15_2 = L15_2.getPlayerGangGrade
  L16_2 = L10_2
  L15_2 = L15_2(L16_2)
  if not L15_2 then
    L15_2 = "unknown"
  end
  L16_2 = NetworkGetEntityFromNetworkId
  L17_2 = A3_2
  L16_2 = L16_2(L17_2)
  L18_2 = A4_2
  L17_2 = A4_2.match
  L19_2 = "^%s*(.-)%s*$"
  L17_2 = L17_2(L18_2, L19_2)
  L18_2 = "SELECT * FROM `%s` WHERE (`%s` LIKE @cleanedPlate OR `%s` LIKE @plate)"
  L19_2 = L18_2
  L18_2 = L18_2.format
  L20_2 = SV
  L20_2 = L20_2.Database
  L20_2 = L20_2["table:owned_vehicles"]
  L21_2 = SV
  L21_2 = L21_2.Database
  L21_2 = L21_2["column:plate"]
  L22_2 = SV
  L22_2 = L22_2.Database
  L22_2 = L22_2["column:plate"]
  L18_2 = L18_2(L19_2, L20_2, L21_2, L22_2)
  L19_2 = MySQL
  L19_2 = L19_2.Async
  L19_2 = L19_2.fetchAll
  L20_2 = L18_2
  L21_2 = {}
  L21_2["@cleanedPlate"] = L17_2
  L21_2["@plate"] = A4_2
  function L22_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3
    L1_3 = A8_2
    if L1_3 then
      L1_3 = Config
      L1_3 = L1_3.HousingGarages
      L2_3 = A6_2
      L1_3 = L1_3[L2_3]
      if L1_3 then
        goto lbl_14
      end
    end
    L1_3 = Config
    L1_3 = L1_3.Garages
    L2_3 = A6_2
    L1_3 = L1_3[L2_3]
    ::lbl_14::
    L2_3 = A0_3[1]
    if not L2_3 then
      L3_3 = A1_2
      L4_3 = false
      L5_3 = "not_owner"
      return L3_3(L4_3, L5_3)
    end
    L3_3 = SV
    L3_3 = L3_3.Database
    L3_3 = L3_3["column:owner"]
    L3_3 = L2_3[L3_3]
    L4_3 = SV
    L4_3 = L4_3.Database
    L4_3 = L4_3["column:company"]
    L4_3 = L2_3[L4_3]
    L5_3 = SV
    L5_3 = L5_3.Database
    L5_3 = L5_3["column:gang"]
    L5_3 = L2_3[L5_3]
    L6_3 = Config
    L6_3 = L6_3.AllowAllToParking
    if not L6_3 then
      if not L3_3 then
        if L4_3 then
          L6_3 = library
          L6_3 = L6_3.HasGroupAccess
          L7_3 = {}
          L7_3.groupType = "company"
          L8_3 = L11_2
          L7_3.myIdentifier = L8_3
          L7_3.requiredGroupName = L4_3
          L8_3 = L12_2
          L7_3.groupName = L8_3
          L8_3 = L13_2
          L7_3.groupGrade = L8_3
          L7_3.vehicleOwner = nil
          L6_3 = L6_3(L7_3)
          if not L6_3 then
            L6_3 = A1_2
            L7_3 = false
            L8_3 = "not_owner"
            return L6_3(L7_3, L8_3)
        end
        elseif L5_3 then
          L6_3 = library
          L6_3 = L6_3.HasGroupAccess
          L7_3 = {}
          L7_3.groupType = "gang"
          L8_3 = L11_2
          L7_3.myIdentifier = L8_3
          L7_3.requiredGroupName = L5_3
          L8_3 = L14_2
          L7_3.groupName = L8_3
          L8_3 = L15_2
          L7_3.groupGrade = L8_3
          L7_3.vehicleOwner = nil
          L6_3 = L6_3(L7_3)
          if not L6_3 then
            L6_3 = A1_2
            L7_3 = false
            L8_3 = "not_owner"
            return L6_3(L7_3, L8_3)
          end
        end
      else
        L6_3 = L11_2
        if L3_3 ~= L6_3 then
          L6_3 = A1_2
          L7_3 = false
          L8_3 = "not_owner"
          return L6_3(L7_3, L8_3)
        end
      end
    end
    L6_3 = A8_2
    if L6_3 then
      L6_3 = L1_3.vehiclesLimit
      if L6_3 then
        L6_3 = tonumber
        L7_3 = L1_3.vehiclesLimit
        L6_3 = L6_3(L7_3)
        if L6_3 then
          L6_3 = L1_3.vehiclesLimit
          if -1 ~= L6_3 then
            L6_3 = MySQL
            L6_3 = L6_3.Sync
            L6_3 = L6_3.fetchScalar
            L7_3 = "SELECT COUNT(*) FROM `%s` WHERE garage = @garage"
            L8_3 = L7_3
            L7_3 = L7_3.format
            L9_3 = SV
            L9_3 = L9_3.Database
            L9_3 = L9_3["table:owned_vehicles"]
            L7_3 = L7_3(L8_3, L9_3)
            L8_3 = {}
            L9_3 = A6_2
            L8_3["@garage"] = L9_3
            L6_3 = L6_3(L7_3, L8_3)
            L7_3 = tonumber
            L8_3 = L6_3
            L7_3 = L7_3(L8_3)
            L8_3 = tonumber
            L9_3 = L1_3.vehiclesLimit
            L8_3 = L8_3(L9_3)
            if L7_3 >= L8_3 then
              L7_3 = A1_2
              L8_3 = false
              L9_3 = "vehicles_limit"
              return L7_3(L8_3, L9_3)
            end
          end
        end
      end
    else
      L6_3 = SV
      L6_3 = L6_3.Database
      L6_3 = L6_3["column:type"]
      L6_3 = L2_3[L6_3]
      L7_3 = L1_3.type
      if L6_3 ~= L7_3 then
        L6_3 = A1_2
        L7_3 = false
        L8_3 = "wrong_type"
        return L6_3(L7_3, L8_3)
      end
    end
    L6_3 = Config
    L6_3 = L6_3.AllowParkingCompanyVehiclesEverywhere
    if not L6_3 then
      if L4_3 then
        L6_3 = library
        L6_3 = L6_3.ParseGroup
        L7_3 = L4_3
        L6_3 = L6_3(L7_3)
        if not L6_3 then
          L6_3 = "none"
        end
        L7_3 = L1_3.requiredJob
        if L7_3 then
          L7_3 = L1_3.requiredJob
          L8_3 = L6_3.name
          L7_3 = L7_3[L8_3]
        end
        if not L7_3 then
          L7_3 = A1_2
          L8_3 = false
          L9_3 = "not_company_vehicle"
          return L7_3(L8_3, L9_3)
        end
      elseif L5_3 then
        L6_3 = library
        L6_3 = L6_3.ParseGroup
        L7_3 = L5_3
        L6_3 = L6_3(L7_3)
        if not L6_3 then
          L6_3 = "none"
        end
        L7_3 = L1_3.requiredGang
        if L7_3 then
          L7_3 = L1_3.requiredGang
          L8_3 = L6_3.name
          L7_3 = L7_3[L8_3]
          if L7_3 then
            goto lbl_199
          end
        end
        L7_3 = A1_2
        L8_3 = false
        L9_3 = "not_gang_vehicle"
        return L7_3(L8_3, L9_3)
      end
    end
    ::lbl_199::
    if not L4_3 then
      L6_3 = L1_3.requiredJob
      if L6_3 then
        L6_3 = L1_3.allowParkPrivateVehicles
        if not L6_3 then
          L6_3 = A1_2
          L7_3 = false
          L8_3 = "not_company_garage"
          return L6_3(L7_3, L8_3)
        end
      end
    end
    if not L5_3 then
      L6_3 = L1_3.requiredGang
      if L6_3 then
        L6_3 = L1_3.allowParkPrivateVehicles
        if not L6_3 then
          L6_3 = A1_2
          L7_3 = false
          L8_3 = "not_gang_garage"
          return L6_3(L7_3, L8_3)
        end
      end
    end
    L6_3 = Entity
    L7_3 = L16_2
    L6_3 = L6_3(L7_3)
    L6_3 = L6_3.state
    L7_3 = L6_3
    L6_3 = L6_3.set
    L8_3 = "PersistenceBlocked"
    L9_3 = true
    L10_3 = false
    L6_3(L7_3, L8_3, L9_3, L10_3)
    L6_3 = Config
    L6_3 = L6_3.VehiclePersistence
    if L6_3 then
      L6_3 = VehiclePersistence
      L7_3 = L16_2
      L8_3 = false
      L6_3(L7_3, L8_3)
    end
    L6_3 = A2_2
    if "parking" == L6_3 then
      L6_3 = "UPDATE `%s` SET `%s` = @vehicleProperties, garage = @garage, garageSpotID = @garageSpotID, parking_date = @parking_date, netid = NULL WHERE (`%s` LIKE @cleanedPlate OR `%s` LIKE @plate)"
      L7_3 = L6_3
      L6_3 = L6_3.format
      L8_3 = SV
      L8_3 = L8_3.Database
      L8_3 = L8_3["table:owned_vehicles"]
      L9_3 = SV
      L9_3 = L9_3.Database
      L9_3 = L9_3["column:vehicle"]
      L10_3 = SV
      L10_3 = L10_3.Database
      L10_3 = L10_3["column:plate"]
      L11_3 = SV
      L11_3 = L11_3.Database
      L11_3 = L11_3["column:plate"]
      L6_3 = L6_3(L7_3, L8_3, L9_3, L10_3, L11_3)
      L7_3 = MySQL
      L7_3 = L7_3.Async
      L7_3 = L7_3.execute
      L8_3 = L6_3
      L9_3 = {}
      L10_3 = json
      L10_3 = L10_3.encode
      L11_3 = A5_2
      L10_3 = L10_3(L11_3)
      L9_3["@vehicleProperties"] = L10_3
      L10_3 = os
      L10_3 = L10_3.time
      L10_3 = L10_3()
      L9_3["@parking_date"] = L10_3
      L10_3 = A6_2
      L9_3["@garage"] = L10_3
      L10_3 = A7_2
      L9_3["@garageSpotID"] = L10_3
      L10_3 = L17_2
      L9_3["@cleanedPlate"] = L10_3
      L10_3 = A4_2
      L9_3["@plate"] = L10_3
      L7_3(L8_3, L9_3)
      L8_3 = A6_2
      L7_3 = L1_1
      L7_3 = L7_3[L8_3]
      if not L7_3 then
        L8_3 = A6_2
        L7_3 = L1_1
        L9_3 = {}
        L7_3[L8_3] = L9_3
      end
      L8_3 = A6_2
      L7_3 = L1_1
      L7_3 = L7_3[L8_3]
      L8_3 = A7_2
      L7_3 = L7_3[L8_3]
      if not L7_3 then
        L8_3 = A6_2
        L7_3 = L1_1
        L7_3 = L7_3[L8_3]
        L8_3 = A7_2
        L9_3 = {}
        L7_3[L8_3] = L9_3
      end
      L8_3 = A6_2
      L7_3 = L1_1
      L7_3 = L7_3[L8_3]
      L8_3 = A7_2
      L7_3 = L7_3[L8_3]
      L7_3.owner = L3_3
      L8_3 = A6_2
      L7_3 = L1_1
      L7_3 = L7_3[L8_3]
      L8_3 = A7_2
      L7_3 = L7_3[L8_3]
      L8_3 = SV
      L8_3 = L8_3.Database
      L8_3 = L8_3["column:plate"]
      L8_3 = L2_3[L8_3]
      L7_3.plate = L8_3
      L8_3 = A6_2
      L7_3 = L1_1
      L7_3 = L7_3[L8_3]
      L8_3 = A7_2
      L7_3 = L7_3[L8_3]
      L8_3 = os
      L8_3 = L8_3.time
      L8_3 = L8_3()
      L7_3.parking_date = L8_3
      L8_3 = A6_2
      L7_3 = L1_1
      L7_3 = L7_3[L8_3]
      L8_3 = A7_2
      L7_3 = L7_3[L8_3]
      L8_3 = A5_2
      L7_3.mods = L8_3
      L8_3 = A6_2
      L7_3 = L1_1
      L7_3 = L7_3[L8_3]
      L8_3 = A7_2
      L7_3 = L7_3[L8_3]
      L7_3.company = L4_3
      L8_3 = A6_2
      L7_3 = L1_1
      L7_3 = L7_3[L8_3]
      L8_3 = A7_2
      L7_3 = L7_3[L8_3]
      L7_3.gang = L5_3
    end
    L6_3 = A2_2
    if "garage" == L6_3 then
      L6_3 = "UPDATE `%s` SET `%s` = @vehicleProperties, garage = @garage, parking_date = @parking_date, netid = NULL WHERE (`%s` LIKE @cleanedPlate OR `%s` LIKE @plate)"
      L7_3 = L6_3
      L6_3 = L6_3.format
      L8_3 = SV
      L8_3 = L8_3.Database
      L8_3 = L8_3["table:owned_vehicles"]
      L9_3 = SV
      L9_3 = L9_3.Database
      L9_3 = L9_3["column:vehicle"]
      L10_3 = SV
      L10_3 = L10_3.Database
      L10_3 = L10_3["column:plate"]
      L11_3 = SV
      L11_3 = L11_3.Database
      L11_3 = L11_3["column:plate"]
      L6_3 = L6_3(L7_3, L8_3, L9_3, L10_3, L11_3)
      L7_3 = MySQL
      L7_3 = L7_3.Async
      L7_3 = L7_3.execute
      L8_3 = L6_3
      L9_3 = {}
      L10_3 = json
      L10_3 = L10_3.encode
      L11_3 = A5_2
      L10_3 = L10_3(L11_3)
      L9_3["@vehicleProperties"] = L10_3
      L10_3 = os
      L10_3 = L10_3.time
      L10_3 = L10_3()
      L9_3["@parking_date"] = L10_3
      L10_3 = A6_2
      L9_3["@garage"] = L10_3
      L10_3 = L17_2
      L9_3["@cleanedPlate"] = L10_3
      L10_3 = A4_2
      L9_3["@plate"] = L10_3
      L7_3(L8_3, L9_3)
      L7_3 = A1_2
      L8_3 = true
      L9_3 = nil
      if L4_3 then
        L10_3 = "companyOwnedVehToGarage"
        if L10_3 then
          goto lbl_406
        end
      end
      if L5_3 then
        L10_3 = "gangOwnedVehToGarage"
        if L10_3 then
          goto lbl_406
        end
      end
      L10_3 = "privateVehToGarage"
      ::lbl_406::
      return L7_3(L8_3, L9_3, L10_3)
    end
    L6_3 = GlobalState
    L7_3 = os
    L7_3 = L7_3.time
    L7_3 = L7_3()
    L7_3 = L7_3 + 10
    L6_3.OS_TIME = L7_3
    L6_3 = A1_2
    L7_3 = true
    L8_3 = nil
    if L4_3 then
      L9_3 = "companyVehToParking"
      if L9_3 then
        goto lbl_429
      end
    end
    if L5_3 then
      L9_3 = "gangVehToParking"
      if L9_3 then
        goto lbl_429
      end
    end
    L9_3 = "privateVehToParking"
    ::lbl_429::
    L6_3(L7_3, L8_3, L9_3)
    L6_3 = A2_2
    if "parking" == L6_3 then
      L6_3 = Citizen
      L6_3 = L6_3.Wait
      L7_3 = 1200
      L6_3(L7_3)
      L6_3 = TriggerClientEvent
      L7_3 = "vms_garagesv2:parkedVehicle"
      L8_3 = -1
      L9_3 = A6_2
      L10_3 = A7_2
      L11_3 = A8_2
      L12_3 = {}
      L12_3.owner = L3_3
      L13_3 = SV
      L13_3 = L13_3.Database
      L13_3 = L13_3["column:plate"]
      L13_3 = L2_3[L13_3]
      L12_3.plate = L13_3
      L12_3.company = L4_3
      L12_3.gang = L5_3
      L13_3 = os
      L13_3 = L13_3.time
      L13_3 = L13_3()
      L12_3.parking_date = L13_3
      L13_3 = A5_2
      L12_3.mods = L13_3
      L14_3 = A6_2
      L13_3 = L1_1
      L13_3 = L13_3[L14_3]
      L14_3 = A7_2
      L13_3 = L13_3[L14_3]
      L13_3 = L13_3.isRented
      if not L13_3 then
        L13_3 = nil
      end
      L12_3.isRented = L13_3
      L14_3 = A6_2
      L13_3 = L1_1
      L13_3 = L13_3[L14_3]
      L14_3 = A7_2
      L13_3 = L13_3[L14_3]
      L13_3 = L13_3.ownerName
      if not L13_3 then
        L13_3 = nil
      end
      L12_3.ownerName = L13_3
      L14_3 = A6_2
      L13_3 = L1_1
      L13_3 = L13_3[L14_3]
      L14_3 = A7_2
      L13_3 = L13_3[L14_3]
      L13_3 = L13_3.time
      if not L13_3 then
        L13_3 = nil
      end
      L12_3.time = L13_3
      L6_3(L7_3, L8_3, L9_3, L10_3, L11_3, L12_3)
    end
  end
  L19_2(L20_2, L21_2, L22_2)
end
L23_1(L24_1, L25_1)
L23_1 = library
L23_1 = L23_1.RegisterCallback
L24_1 = "vms_garagesv2:getMyVehicles"
function L25_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = A0_2
  L3_2 = SV
  L3_2 = L3_2.getPlayer
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L4_2 = true
  L5_2 = Config
  L5_2 = L5_2.UseSaleAgreementItem
  if L5_2 then
    L5_2 = SV
    L5_2 = L5_2.getItemCount
    L6_2 = L3_2
    L7_2 = Config
    L7_2 = L7_2.SaleAgreementItem
    L5_2 = L5_2(L6_2, L7_2)
    if L5_2 < 1 then
      L4_2 = false
      L5_2 = A1_2
      L6_2 = true
      L7_2 = nil
      L8_2 = L4_2
      return L5_2(L6_2, L7_2, L8_2)
    end
  end
  L5_2 = SV
  L5_2 = L5_2.getIdentifier
  L6_2 = L3_2
  L5_2 = L5_2(L6_2)
  L6_2 = MySQL
  L6_2 = L6_2.Async
  L6_2 = L6_2.fetchAll
  L7_2 = "SELECT * FROM `%s` WHERE `%s` = @owner"
  L8_2 = L7_2
  L7_2 = L7_2.format
  L9_2 = SV
  L9_2 = L9_2.Database
  L9_2 = L9_2["table:owned_vehicles"]
  L10_2 = SV
  L10_2 = L10_2.Database
  L10_2 = L10_2["column:owner"]
  L7_2 = L7_2(L8_2, L9_2, L10_2)
  L8_2 = {}
  L8_2["@owner"] = L5_2
  function L9_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3
    L1_3 = A0_3[1]
    L2_3 = A0_3[1]
    if L2_3 then
      L2_3 = {}
      L3_3 = pairs
      L4_3 = A0_3
      L3_3, L4_3, L5_3, L6_3 = L3_3(L4_3)
      for L7_3, L8_3 in L3_3, L4_3, L5_3, L6_3 do
        L9_3 = json
        L9_3 = L9_3.decode
        L10_3 = SV
        L10_3 = L10_3.Database
        L10_3 = L10_3["column:vehicle"]
        L10_3 = L8_3[L10_3]
        L9_3 = L9_3(L10_3)
        L10_3 = Config
        L10_3 = L10_3.SaleBlacklistVehicles
        L11_3 = L9_3.model
        L10_3 = L10_3[L11_3]
        if not L10_3 then
          L10_3 = #L2_3
          L10_3 = L10_3 + 1
          L11_3 = {}
          L12_3 = SV
          L12_3 = L12_3.Database
          L12_3 = L12_3["column:plate"]
          L12_3 = L8_3[L12_3]
          L11_3.plate = L12_3
          L12_3 = SV
          L12_3 = L12_3.Database
          L12_3 = L12_3["column:type"]
          L12_3 = L8_3[L12_3]
          L11_3.type = L12_3
          L2_3[L10_3] = L11_3
        end
      end
      L3_3 = A1_2
      L4_3 = true
      L5_3 = L2_3
      L6_3 = L4_2
      L3_3(L4_3, L5_3, L6_3)
    else
      L2_3 = A1_2
      L3_3 = false
      L4_3 = nil
      L5_3 = L4_2
      L2_3(L3_3, L4_3, L5_3)
    end
  end
  L6_2(L7_2, L8_2, L9_2)
end
L23_1(L24_1, L25_1)
L23_1 = library
L23_1 = L23_1.RegisterCallback
L24_1 = "vms_garagesv2:getGarageVehicles"
function L25_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2
  L4_2 = A0_2
  L5_2 = SV
  L5_2 = L5_2.getPlayer
  L6_2 = L4_2
  L5_2 = L5_2(L6_2)
  L6_2 = SV
  L6_2 = L6_2.getIdentifier
  L7_2 = L5_2
  L6_2 = L6_2(L7_2)
  L7_2 = SV
  L7_2 = L7_2.getPlayerJob
  L8_2 = L5_2
  L7_2 = L7_2(L8_2)
  L8_2 = SV
  L8_2 = L8_2.getPlayerJobGrade
  L9_2 = L5_2
  L8_2 = L8_2(L9_2)
  L9_2 = SV
  L9_2 = L9_2.getPlayerGang
  L10_2 = L5_2
  L9_2 = L9_2(L10_2)
  if not L9_2 then
    L9_2 = "unknown"
  end
  L10_2 = SV
  L10_2 = L10_2.getPlayerGangGrade
  L11_2 = L5_2
  L10_2 = L10_2(L11_2)
  if not L10_2 then
    L10_2 = "unknown"
  end
  L11_2 = false
  L12_2 = Config
  L12_2 = L12_2.Garages
  L12_2 = L12_2[A2_2]
  if not L12_2 then
    L11_2 = true
    L13_2 = Config
    L13_2 = L13_2.HousingGarages
    L12_2 = L13_2[A2_2]
  end
  if not L11_2 then
    L13_2 = L12_2.requiredJob
    if L13_2 then
      L13_2 = [[
            SELECT * FROM `%s` WHERE garage = @garage AND `%s` = @type AND (
                (`%s` = @owner AND `%s` = @company) OR
                (`%s` LIKE @companyLike AND `%s` IS NULL)
        ]]
      L14_2 = L13_2
      L13_2 = L13_2.format
      L15_2 = SV
      L15_2 = L15_2.Database
      L15_2 = L15_2["table:owned_vehicles"]
      L16_2 = SV
      L16_2 = L16_2.Database
      L16_2 = L16_2["column:type"]
      L17_2 = SV
      L17_2 = L17_2.Database
      L17_2 = L17_2["column:owner"]
      L18_2 = SV
      L18_2 = L18_2.Database
      L18_2 = L18_2["column:company"]
      L19_2 = SV
      L19_2 = L19_2.Database
      L19_2 = L19_2["column:company"]
      L20_2 = SV
      L20_2 = L20_2.Database
      L20_2 = L20_2["column:owner"]
      L13_2 = L13_2(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
      L14_2 = L12_2.allowParkPrivateVehicles
      if L14_2 then
        L14_2 = L13_2
        L15_2 = " OR (`%s` = @owner AND `%s` IS NULL)"
        L16_2 = L15_2
        L15_2 = L15_2.format
        L17_2 = SV
        L17_2 = L17_2.Database
        L17_2 = L17_2["column:owner"]
        L18_2 = SV
        L18_2 = L18_2.Database
        L18_2 = L18_2["column:company"]
        L15_2 = L15_2(L16_2, L17_2, L18_2)
        L14_2 = L14_2 .. L15_2
        L13_2 = L14_2
      end
      L14_2 = L13_2
      L15_2 = ")"
      L14_2 = L14_2 .. L15_2
      L13_2 = L14_2
      L14_2 = MySQL
      L14_2 = L14_2.Async
      L14_2 = L14_2.fetchAll
      L15_2 = L13_2
      L16_2 = {}
      L16_2["@owner"] = L6_2
      L16_2["@garage"] = A2_2
      L16_2["@company"] = L7_2
      L17_2 = L7_2
      L18_2 = "%"
      L17_2 = L17_2 .. L18_2
      L16_2["@companyLike"] = L17_2
      L17_2 = L12_2.type
      L16_2["@type"] = L17_2
      function L17_2(A0_3)
        local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3
        L1_3 = SetPlayerRoutingBucket
        L2_3 = L4_2
        L3_3 = L4_2
        L1_3(L2_3, L3_3)
        L1_3 = {}
        if A0_3 then
          L2_3 = next
          L3_3 = A0_3
          L2_3 = L2_3(L3_3)
          if L2_3 then
            L2_3 = pairs
            L3_3 = A0_3
            L2_3, L3_3, L4_3, L5_3 = L2_3(L3_3)
            for L6_3, L7_3 in L2_3, L3_3, L4_3, L5_3 do
              L8_3 = false
              L9_3 = SV
              L9_3 = L9_3.Database
              L9_3 = L9_3["column:owner"]
              L9_3 = L7_3[L9_3]
              L10_3 = L6_2
              if L9_3 == L10_3 then
                L8_3 = true
              else
                L9_3 = library
                L9_3 = L9_3.HasGroupAccess
                L10_3 = {}
                L11_3 = SV
                L11_3 = L11_3.Database
                L11_3 = L11_3["column:owner"]
                L11_3 = L7_3[L11_3]
                L10_3.vehicleOwner = L11_3
                L10_3.groupType = "company"
                L11_3 = SV
                L11_3 = L11_3.Database
                L11_3 = L11_3["column:company"]
                L11_3 = L7_3[L11_3]
                L10_3.requiredGroupName = L11_3
                L11_3 = L7_2
                L10_3.groupName = L11_3
                L11_3 = L8_2
                L10_3.groupGrade = L11_3
                L9_3 = L9_3(L10_3)
                if L9_3 then
                  L8_3 = true
                end
              end
              if L8_3 then
                L9_3 = json
                L9_3 = L9_3.decode
                L10_3 = SV
                L10_3 = L10_3.Database
                L10_3 = L10_3["column:vehicle"]
                L10_3 = L7_3[L10_3]
                L9_3 = L9_3(L10_3)
                L7_3.vehicle = L9_3
                L9_3 = table
                L9_3 = L9_3.insert
                L10_3 = L1_3
                L11_3 = L7_3
                L9_3(L10_3, L11_3)
              end
            end
          end
        end
        L2_3 = next
        L3_3 = L1_3
        L2_3 = L2_3(L3_3)
        if L2_3 then
          L2_3 = A1_2
          L3_3 = true
          L4_3 = L1_3
          L2_3(L3_3, L4_3)
        else
          L2_3 = A1_2
          L3_3 = false
          L4_3 = nil
          L2_3(L3_3, L4_3)
        end
      end
      L14_2(L15_2, L16_2, L17_2)
  end
  else
    if not L11_2 then
      L13_2 = L12_2.requiredGang
      if L13_2 then
        L13_2 = [[
            SELECT * FROM `%s` WHERE garage = @garage AND `%s` = @type AND (
                (`%s` = @owner AND `%s` = @gang) OR
                (`%s` LIKE @gangLike AND `%s` IS NULL)
        ]]
        L14_2 = L13_2
        L13_2 = L13_2.format
        L15_2 = SV
        L15_2 = L15_2.Database
        L15_2 = L15_2["table:owned_vehicles"]
        L16_2 = SV
        L16_2 = L16_2.Database
        L16_2 = L16_2["column:type"]
        L17_2 = SV
        L17_2 = L17_2.Database
        L17_2 = L17_2["column:owner"]
        L18_2 = SV
        L18_2 = L18_2.Database
        L18_2 = L18_2["column:gang"]
        L19_2 = SV
        L19_2 = L19_2.Database
        L19_2 = L19_2["column:gang"]
        L20_2 = SV
        L20_2 = L20_2.Database
        L20_2 = L20_2["column:owner"]
        L13_2 = L13_2(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
        L14_2 = L12_2.allowParkPrivateVehicles
        if L14_2 then
          L14_2 = L13_2
          L15_2 = " OR (`%s` = @owner AND `%s` IS NULL)"
          L16_2 = L15_2
          L15_2 = L15_2.format
          L17_2 = SV
          L17_2 = L17_2.Database
          L17_2 = L17_2["column:owner"]
          L18_2 = SV
          L18_2 = L18_2.Database
          L18_2 = L18_2["column:gang"]
          L15_2 = L15_2(L16_2, L17_2, L18_2)
          L14_2 = L14_2 .. L15_2
          L13_2 = L14_2
        end
        L14_2 = L13_2
        L15_2 = ")"
        L14_2 = L14_2 .. L15_2
        L13_2 = L14_2
        L14_2 = MySQL
        L14_2 = L14_2.Async
        L14_2 = L14_2.fetchAll
        L15_2 = L13_2
        L16_2 = {}
        L16_2["@owner"] = L6_2
        L16_2["@garage"] = A2_2
        L16_2["@gang"] = L9_2
        L17_2 = L9_2
        L18_2 = "%"
        L17_2 = L17_2 .. L18_2
        L16_2["@gangLike"] = L17_2
        L17_2 = L12_2.type
        L16_2["@type"] = L17_2
        function L17_2(A0_3)
          local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3
          L1_3 = SetPlayerRoutingBucket
          L2_3 = L4_2
          L3_3 = L4_2
          L1_3(L2_3, L3_3)
          L1_3 = {}
          if A0_3 then
            L2_3 = next
            L3_3 = A0_3
            L2_3 = L2_3(L3_3)
            if L2_3 then
              L2_3 = pairs
              L3_3 = A0_3
              L2_3, L3_3, L4_3, L5_3 = L2_3(L3_3)
              for L6_3, L7_3 in L2_3, L3_3, L4_3, L5_3 do
                L8_3 = false
                L9_3 = SV
                L9_3 = L9_3.Database
                L9_3 = L9_3["column:owner"]
                L9_3 = L7_3[L9_3]
                L10_3 = L6_2
                if L9_3 == L10_3 then
                  L8_3 = true
                else
                  L9_3 = library
                  L9_3 = L9_3.HasGroupAccess
                  L10_3 = {}
                  L11_3 = SV
                  L11_3 = L11_3.Database
                  L11_3 = L11_3["column:owner"]
                  L11_3 = L7_3[L11_3]
                  L10_3.vehicleOwner = L11_3
                  L10_3.groupType = "gang"
                  L11_3 = SV
                  L11_3 = L11_3.Database
                  L11_3 = L11_3["column:gang"]
                  L11_3 = L7_3[L11_3]
                  L10_3.requiredGroupName = L11_3
                  L11_3 = L9_2
                  L10_3.groupName = L11_3
                  L11_3 = L10_2
                  L10_3.groupGrade = L11_3
                  L9_3 = L9_3(L10_3)
                  if L9_3 then
                    L8_3 = true
                  end
                end
                if L8_3 then
                  L9_3 = json
                  L9_3 = L9_3.decode
                  L10_3 = SV
                  L10_3 = L10_3.Database
                  L10_3 = L10_3["column:vehicle"]
                  L10_3 = L7_3[L10_3]
                  L9_3 = L9_3(L10_3)
                  L7_3.vehicle = L9_3
                  L9_3 = table
                  L9_3 = L9_3.insert
                  L10_3 = L1_3
                  L11_3 = L7_3
                  L9_3(L10_3, L11_3)
                end
              end
            end
          end
          L2_3 = next
          L3_3 = L1_3
          L2_3 = L2_3(L3_3)
          if L2_3 then
            L2_3 = A1_2
            L3_3 = true
            L4_3 = L1_3
            L2_3(L3_3, L4_3)
          else
            L2_3 = A1_2
            L3_3 = false
            L4_3 = nil
            L2_3(L3_3, L4_3)
          end
        end
        L14_2(L15_2, L16_2, L17_2)
    end
    else
      L13_2 = "garage = @garage"
      if not L11_2 then
        L14_2 = Config
        L14_2 = L14_2.AllowTransferBetweenGarages
        if L14_2 and A3_2 then
          L14_2 = {}
          L15_2 = pairs
          L16_2 = A3_2
          L15_2, L16_2, L17_2, L18_2 = L15_2(L16_2)
          for L19_2, L20_2 in L15_2, L16_2, L17_2, L18_2 do
            L21_2 = table
            L21_2 = L21_2.insert
            L22_2 = L14_2
            L23_2 = "'%s'"
            L24_2 = L23_2
            L23_2 = L23_2.format
            L25_2 = L19_2
            L23_2, L24_2, L25_2, L26_2 = L23_2(L24_2, L25_2)
            L21_2(L22_2, L23_2, L24_2, L25_2, L26_2)
          end
          L15_2 = next
          L16_2 = L14_2
          L15_2 = L15_2(L16_2)
          if L15_2 then
            L15_2 = "(garage IN ("
            L16_2 = table
            L16_2 = L16_2.concat
            L17_2 = L14_2
            L18_2 = ","
            L16_2 = L16_2(L17_2, L18_2)
            L17_2 = "))"
            L15_2 = L15_2 .. L16_2 .. L17_2
            L13_2 = L15_2
          end
        end
      end
      L14_2 = "SELECT * FROM `%s` WHERE %s AND `%s` = @type"
      L15_2 = L14_2
      L14_2 = L14_2.format
      L16_2 = SV
      L16_2 = L16_2.Database
      L16_2 = L16_2["table:owned_vehicles"]
      L17_2 = L13_2
      L18_2 = SV
      L18_2 = L18_2.Database
      L18_2 = L18_2["column:type"]
      L14_2 = L14_2(L15_2, L16_2, L17_2, L18_2)
      if not L11_2 then
        L15_2 = L14_2
        L16_2 = [[
                 AND (
                    (`%s` = @owner) OR
                    (`%s` = @company AND `%s` IS NULL) OR
                    (`%s` LIKE @companyLike AND `%s` IS NULL) OR
                    (`%s` = @gang AND `%s` IS NULL) OR
                    (`%s` LIKE @gangLike AND `%s` IS NULL)
                )
            ]]
        L17_2 = L16_2
        L16_2 = L16_2.format
        L18_2 = SV
        L18_2 = L18_2.Database
        L18_2 = L18_2["column:owner"]
        L19_2 = SV
        L19_2 = L19_2.Database
        L19_2 = L19_2["column:company"]
        L20_2 = SV
        L20_2 = L20_2.Database
        L20_2 = L20_2["column:owner"]
        L21_2 = SV
        L21_2 = L21_2.Database
        L21_2 = L21_2["column:company"]
        L22_2 = SV
        L22_2 = L22_2.Database
        L22_2 = L22_2["column:owner"]
        L23_2 = SV
        L23_2 = L23_2.Database
        L23_2 = L23_2["column:gang"]
        L24_2 = SV
        L24_2 = L24_2.Database
        L24_2 = L24_2["column:owner"]
        L25_2 = SV
        L25_2 = L25_2.Database
        L25_2 = L25_2["column:gang"]
        L26_2 = SV
        L26_2 = L26_2.Database
        L26_2 = L26_2["column:owner"]
        L16_2 = L16_2(L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2)
        L15_2 = L15_2 .. L16_2
        L14_2 = L15_2
      end
      L15_2 = MySQL
      L15_2 = L15_2.Async
      L15_2 = L15_2.fetchAll
      L16_2 = L14_2
      L17_2 = {}
      L17_2["@owner"] = L6_2
      L17_2["@garage"] = A2_2
      L17_2["@company"] = L7_2
      L18_2 = L7_2
      L19_2 = "%"
      L18_2 = L18_2 .. L19_2
      L17_2["@companyLike"] = L18_2
      L17_2["@gang"] = L9_2
      L18_2 = L9_2
      L19_2 = "%"
      L18_2 = L18_2 .. L19_2
      L17_2["@gangLike"] = L18_2
      L18_2 = L12_2.type
      L17_2["@type"] = L18_2
      function L18_2(A0_3)
        local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3
        L1_3 = SetPlayerRoutingBucket
        L2_3 = L4_2
        L3_3 = L4_2
        L1_3(L2_3, L3_3)
        L1_3 = {}
        if A0_3 then
          L2_3 = next
          L3_3 = A0_3
          L2_3 = L2_3(L3_3)
          if L2_3 then
            L2_3 = pairs
            L3_3 = A0_3
            L2_3, L3_3, L4_3, L5_3 = L2_3(L3_3)
            for L6_3, L7_3 in L2_3, L3_3, L4_3, L5_3 do
              L8_3 = false
              L9_3 = SV
              L9_3 = L9_3.Database
              L9_3 = L9_3["column:owner"]
              L9_3 = L7_3[L9_3]
              L10_3 = L6_2
              if L9_3 == L10_3 then
                L8_3 = true
              else
                L9_3 = SV
                L9_3 = L9_3.Database
                L9_3 = L9_3["column:company"]
                L9_3 = L7_3[L9_3]
                if L9_3 then
                  L9_3 = library
                  L9_3 = L9_3.HasGroupAccess
                  L10_3 = {}
                  L11_3 = SV
                  L11_3 = L11_3.Database
                  L11_3 = L11_3["column:owner"]
                  L11_3 = L7_3[L11_3]
                  L10_3.vehicleOwner = L11_3
                  L10_3.groupType = "company"
                  L11_3 = SV
                  L11_3 = L11_3.Database
                  L11_3 = L11_3["column:company"]
                  L11_3 = L7_3[L11_3]
                  L10_3.requiredGroupName = L11_3
                  L11_3 = L7_2
                  L10_3.groupName = L11_3
                  L11_3 = L8_2
                  L10_3.groupGrade = L11_3
                  L9_3 = L9_3(L10_3)
                  if L9_3 then
                    L8_3 = true
                end
                else
                  L9_3 = SV
                  L9_3 = L9_3.Database
                  L9_3 = L9_3["column:gang"]
                  L9_3 = L7_3[L9_3]
                  if L9_3 then
                    L9_3 = library
                    L9_3 = L9_3.HasGroupAccess
                    L10_3 = {}
                    L11_3 = SV
                    L11_3 = L11_3.Database
                    L11_3 = L11_3["column:owner"]
                    L11_3 = L7_3[L11_3]
                    L10_3.vehicleOwner = L11_3
                    L10_3.groupType = "gang"
                    L11_3 = SV
                    L11_3 = L11_3.Database
                    L11_3 = L11_3["column:gang"]
                    L11_3 = L7_3[L11_3]
                    L10_3.requiredGroupName = L11_3
                    L11_3 = L9_2
                    L10_3.groupName = L11_3
                    L11_3 = L10_2
                    L10_3.groupGrade = L11_3
                    L9_3 = L9_3(L10_3)
                    if L9_3 then
                      L8_3 = true
                    end
                  end
                end
              end
              if L8_3 then
                L9_3 = json
                L9_3 = L9_3.decode
                L10_3 = SV
                L10_3 = L10_3.Database
                L10_3 = L10_3["column:vehicle"]
                L10_3 = L7_3[L10_3]
                L9_3 = L9_3(L10_3)
                L7_3.vehicle = L9_3
                L9_3 = table
                L9_3 = L9_3.insert
                L10_3 = L1_3
                L11_3 = L7_3
                L9_3(L10_3, L11_3)
              end
            end
          end
        end
        L2_3 = next
        L3_3 = L1_3
        L2_3 = L2_3(L3_3)
        if L2_3 then
          L2_3 = A1_2
          L3_3 = true
          L4_3 = L1_3
          L2_3(L3_3, L4_3)
        else
          L2_3 = A1_2
          L3_3 = false
          L4_3 = nil
          L2_3(L3_3, L4_3)
        end
      end
      L15_2(L16_2, L17_2, L18_2)
    end
  end
end
L23_1(L24_1, L25_1)
L23_1 = library
L23_1 = L23_1.RegisterCallback
L24_1 = "vms_garagesv2:getCompanyVehicles"
function L25_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = A0_2
  L3_2 = SV
  L3_2 = L3_2.getPlayer
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L4_2 = SV
  L4_2 = L4_2.getIdentifier
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  L5_2 = SV
  L5_2 = L5_2.getPlayerJob
  L6_2 = L3_2
  L5_2 = L5_2(L6_2)
  L6_2 = MySQL
  L6_2 = L6_2.Async
  L6_2 = L6_2.fetchAll
  L7_2 = "SELECT * FROM `%s` WHERE `%s` LIKE @company"
  L8_2 = L7_2
  L7_2 = L7_2.format
  L9_2 = SV
  L9_2 = L9_2.Database
  L9_2 = L9_2["table:owned_vehicles"]
  L10_2 = SV
  L10_2 = L10_2.Database
  L10_2 = L10_2["column:company"]
  L7_2 = L7_2(L8_2, L9_2, L10_2)
  L8_2 = {}
  L9_2 = L5_2
  L10_2 = "%"
  L9_2 = L9_2 .. L10_2
  L8_2["@company"] = L9_2
  function L9_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
    L1_3 = next
    L2_3 = A0_3
    L1_3 = L1_3(L2_3)
    if L1_3 then
      L1_3 = pairs
      L2_3 = A0_3
      L1_3, L2_3, L3_3, L4_3 = L1_3(L2_3)
      for L5_3, L6_3 in L1_3, L2_3, L3_3, L4_3 do
        L7_3 = json
        L7_3 = L7_3.decode
        L8_3 = SV
        L8_3 = L8_3.Database
        L8_3 = L8_3["column:vehicle"]
        L8_3 = L6_3[L8_3]
        L7_3 = L7_3(L8_3)
        L6_3.vehicle = L7_3
      end
      L1_3 = A1_2
      L2_3 = true
      L3_3 = A0_3
      L4_3 = SV
      L4_3 = L4_3.Database
      L4_3 = L4_3["column:owner"]
      L1_3(L2_3, L3_3, L4_3)
    else
      L1_3 = A1_2
      L2_3 = false
      L3_3 = nil
      L1_3(L2_3, L3_3)
    end
  end
  L6_2(L7_2, L8_2, L9_2)
end
L23_1(L24_1, L25_1)
L23_1 = library
L23_1 = L23_1.RegisterCallback
L24_1 = "vms_garagesv2:getGangVehicles"
function L25_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = A0_2
  L3_2 = SV
  L3_2 = L3_2.getPlayer
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L4_2 = SV
  L4_2 = L4_2.getIdentifier
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  L5_2 = SV
  L5_2 = L5_2.getPlayerGang
  L6_2 = L3_2
  L5_2 = L5_2(L6_2)
  if not L5_2 then
    L5_2 = "unknown"
  end
  L6_2 = MySQL
  L6_2 = L6_2.Async
  L6_2 = L6_2.fetchAll
  L7_2 = "SELECT * FROM `%s` WHERE `%s` LIKE @gang"
  L8_2 = L7_2
  L7_2 = L7_2.format
  L9_2 = SV
  L9_2 = L9_2.Database
  L9_2 = L9_2["table:owned_vehicles"]
  L10_2 = SV
  L10_2 = L10_2.Database
  L10_2 = L10_2["column:gang"]
  L7_2 = L7_2(L8_2, L9_2, L10_2)
  L8_2 = {}
  L9_2 = L5_2
  L10_2 = "%"
  L9_2 = L9_2 .. L10_2
  L8_2["@gang"] = L9_2
  function L9_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
    L1_3 = next
    L2_3 = A0_3
    L1_3 = L1_3(L2_3)
    if L1_3 then
      L1_3 = pairs
      L2_3 = A0_3
      L1_3, L2_3, L3_3, L4_3 = L1_3(L2_3)
      for L5_3, L6_3 in L1_3, L2_3, L3_3, L4_3 do
        L7_3 = json
        L7_3 = L7_3.decode
        L8_3 = SV
        L8_3 = L8_3.Database
        L8_3 = L8_3["column:vehicle"]
        L8_3 = L6_3[L8_3]
        L7_3 = L7_3(L8_3)
        L6_3.vehicle = L7_3
      end
      L1_3 = A1_2
      L2_3 = true
      L3_3 = A0_3
      L4_3 = SV
      L4_3 = L4_3.Database
      L4_3 = L4_3["column:owner"]
      L1_3(L2_3, L3_3, L4_3)
    else
      L1_3 = A1_2
      L2_3 = false
      L3_3 = nil
      L1_3(L2_3, L3_3)
    end
  end
  L6_2(L7_2, L8_2, L9_2)
end
L23_1(L24_1, L25_1)
L23_1 = library
L23_1 = L23_1.RegisterCallback
L24_1 = "vms_garagesv2:getEmployees"
function L25_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = A0_2
  L3_2 = SV
  L3_2 = L3_2.getPlayer
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L4_2 = SV
  L4_2 = L4_2.getIdentifier
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  L5_2 = SV
  L5_2 = L5_2.getPlayerJob
  L6_2 = L3_2
  L5_2 = L5_2(L6_2)
  L6_2 = SV
  L6_2 = L6_2.getPlayersFromDatabase
  L7_2 = L5_2
  L8_2 = "job"
  function L9_2(A0_3)
    local L1_3, L2_3
    L1_3 = A1_2
    L2_3 = A0_3
    L1_3(L2_3)
  end
  L6_2(L7_2, L8_2, L9_2)
end
L23_1(L24_1, L25_1)
L23_1 = library
L23_1 = L23_1.RegisterCallback
L24_1 = "vms_garagesv2:getGangMembers"
function L25_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = A0_2
  L3_2 = SV
  L3_2 = L3_2.getPlayer
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L4_2 = SV
  L4_2 = L4_2.getIdentifier
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  L5_2 = SV
  L5_2 = L5_2.getPlayerGang
  L6_2 = L3_2
  L5_2 = L5_2(L6_2)
  L6_2 = SV
  L6_2 = L6_2.getPlayersFromDatabase
  L7_2 = L5_2
  L8_2 = "gang"
  function L9_2(A0_3)
    local L1_3, L2_3
    L1_3 = A1_2
    L2_3 = A0_3
    L1_3(L2_3)
  end
  L6_2(L7_2, L8_2, L9_2)
end
L23_1(L24_1, L25_1)
L23_1 = library
L23_1 = L23_1.RegisterCallback
L24_1 = "vms_garagesv2:getImpoundedVehicles"
function L25_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2
  L3_2 = A0_2
  L4_2 = SV
  L4_2 = L4_2.getPlayer
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  L5_2 = SV
  L5_2 = L5_2.getIdentifier
  L6_2 = L4_2
  L5_2 = L5_2(L6_2)
  L6_2 = SV
  L6_2 = L6_2.getPlayerJob
  L7_2 = L4_2
  L6_2 = L6_2(L7_2)
  L7_2 = SV
  L7_2 = L7_2.getPlayerJobGrade
  L8_2 = L4_2
  L7_2 = L7_2(L8_2)
  L8_2 = SV
  L8_2 = L8_2.getPlayerGang
  L9_2 = L4_2
  L8_2 = L8_2(L9_2)
  if not L8_2 then
    L8_2 = "unknown"
  end
  L9_2 = SV
  L9_2 = L9_2.getPlayerGangGrade
  L10_2 = L4_2
  L9_2 = L9_2(L10_2)
  if not L9_2 then
    L9_2 = "unknown"
  end
  L10_2 = Config
  L10_2 = L10_2.Impounds
  L10_2 = L10_2[A2_2]
  L11_2 = L10_2.requiredJob
  if L11_2 then
    L11_2 = L10_2.requiredJob
    L11_2 = L11_2[L6_2]
    if not L11_2 then
      L11_2 = A1_2
      L12_2 = false
      L13_2 = nil
      return L11_2(L12_2, L13_2)
    end
    L11_2 = MySQL
    L11_2 = L11_2.Async
    L11_2 = L11_2.fetchAll
    L12_2 = "SELECT * FROM `%s` WHERE garage = @garage AND `%s` = @type"
    L13_2 = L12_2
    L12_2 = L12_2.format
    L14_2 = SV
    L14_2 = L14_2.Database
    L14_2 = L14_2["table:owned_vehicles"]
    L15_2 = SV
    L15_2 = L15_2.Database
    L15_2 = L15_2["column:type"]
    L12_2 = L12_2(L13_2, L14_2, L15_2)
    L13_2 = {}
    L13_2["@garage"] = A2_2
    L14_2 = L10_2.type
    L13_2["@type"] = L14_2
    function L14_2(A0_3)
      local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
      L1_3 = next
      L2_3 = A0_3
      L1_3 = L1_3(L2_3)
      if L1_3 then
        L1_3 = pairs
        L2_3 = A0_3
        L1_3, L2_3, L3_3, L4_3 = L1_3(L2_3)
        for L5_3, L6_3 in L1_3, L2_3, L3_3, L4_3 do
          L7_3 = json
          L7_3 = L7_3.decode
          L8_3 = SV
          L8_3 = L8_3.Database
          L8_3 = L8_3["column:vehicle"]
          L8_3 = L6_3[L8_3]
          L7_3 = L7_3(L8_3)
          L6_3.vehicle = L7_3
          L7_3 = L6_3.impound_data
          if L7_3 then
            L7_3 = json
            L7_3 = L7_3.decode
            L8_3 = L6_3.impound_data
            L7_3 = L7_3(L8_3)
            if L7_3 then
              goto lbl_28
            end
          end
          L7_3 = nil
          ::lbl_28::
          L6_3.impound_data = L7_3
        end
        L1_3 = L10_2.impoundData
        if L1_3 then
          L1_3 = SetPlayerRoutingBucket
          L2_3 = L3_2
          L3_3 = L3_2
          L1_3(L2_3, L3_3)
        end
        L1_3 = A1_2
        L2_3 = true
        L3_3 = A0_3
        L1_3(L2_3, L3_3)
      else
        L1_3 = A1_2
        L2_3 = false
        L3_3 = nil
        L1_3(L2_3, L3_3)
      end
    end
    L11_2(L12_2, L13_2, L14_2)
  else
    L11_2 = "garage = '%s'"
    L12_2 = L11_2
    L11_2 = L11_2.format
    L13_2 = A2_2
    L11_2 = L11_2(L12_2, L13_2)
    L12_2 = L10_2.recoverableFrom
    if L12_2 then
      L12_2 = next
      L13_2 = L10_2.recoverableFrom
      L12_2 = L12_2(L13_2)
      if L12_2 then
        L12_2 = {}
        L13_2 = table
        L13_2 = L13_2.insert
        L14_2 = L12_2
        L15_2 = "'%s'"
        L16_2 = L15_2
        L15_2 = L15_2.format
        L17_2 = A2_2
        L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2 = L15_2(L16_2, L17_2)
        L13_2(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2)
        L13_2 = ipairs
        L14_2 = L10_2.recoverableFrom
        L13_2, L14_2, L15_2, L16_2 = L13_2(L14_2)
        for L17_2, L18_2 in L13_2, L14_2, L15_2, L16_2 do
          L19_2 = table
          L19_2 = L19_2.insert
          L20_2 = L12_2
          L21_2 = "'%s'"
          L22_2 = L21_2
          L21_2 = L21_2.format
          L23_2 = L18_2
          L21_2, L22_2, L23_2 = L21_2(L22_2, L23_2)
          L19_2(L20_2, L21_2, L22_2, L23_2)
        end
        L13_2 = "(garage IN ("
        L14_2 = table
        L14_2 = L14_2.concat
        L15_2 = L12_2
        L16_2 = ","
        L14_2 = L14_2(L15_2, L16_2)
        L15_2 = "))"
        L13_2 = L13_2 .. L14_2 .. L15_2
        L11_2 = L13_2
      end
    end
    L12_2 = [[
            SELECT * FROM `%s` WHERE `%s` = @type AND
                (garage IS NULL OR %s) AND
                (
                    (`%s` = @owner) OR
                    (`%s` IS NULL AND `%s` = @company) OR
                    (`%s` LIKE @companyLike) OR
                    (`%s` IS NULL AND `%s` = @gang) OR
                    (`%s` LIKE @gangLike)
                )
        ]]
    L13_2 = L12_2
    L12_2 = L12_2.format
    L14_2 = SV
    L14_2 = L14_2.Database
    L14_2 = L14_2["table:owned_vehicles"]
    L15_2 = SV
    L15_2 = L15_2.Database
    L15_2 = L15_2["column:type"]
    L16_2 = L11_2
    L17_2 = SV
    L17_2 = L17_2.Database
    L17_2 = L17_2["column:owner"]
    L18_2 = SV
    L18_2 = L18_2.Database
    L18_2 = L18_2["column:owner"]
    L19_2 = SV
    L19_2 = L19_2.Database
    L19_2 = L19_2["column:company"]
    L20_2 = SV
    L20_2 = L20_2.Database
    L20_2 = L20_2["column:company"]
    L21_2 = SV
    L21_2 = L21_2.Database
    L21_2 = L21_2["column:owner"]
    L22_2 = SV
    L22_2 = L22_2.Database
    L22_2 = L22_2["column:gang"]
    L23_2 = SV
    L23_2 = L23_2.Database
    L23_2 = L23_2["column:gang"]
    L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2)
    L13_2 = MySQL
    L13_2 = L13_2.Async
    L13_2 = L13_2.fetchAll
    L14_2 = L12_2
    L15_2 = {}
    L16_2 = L10_2.type
    L15_2["@type"] = L16_2
    L15_2["@owner"] = L5_2
    L15_2["@company"] = L6_2
    L16_2 = L6_2
    L17_2 = "%"
    L16_2 = L16_2 .. L17_2
    L15_2["@companyLike"] = L16_2
    L15_2["@gang"] = L8_2
    L16_2 = L8_2
    L17_2 = "%"
    L16_2 = L16_2 .. L17_2
    L15_2["@gangLike"] = L16_2
    function L16_2(A0_3)
      local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3
      L1_3 = SetPlayerRoutingBucket
      L2_3 = L3_2
      L3_3 = L3_2
      L1_3(L2_3, L3_3)
      L1_3 = {}
      if A0_3 then
        L2_3 = next
        L3_3 = A0_3
        L2_3 = L2_3(L3_3)
        if L2_3 then
          L2_3 = pairs
          L3_3 = A0_3
          L2_3, L3_3, L4_3, L5_3 = L2_3(L3_3)
          for L6_3, L7_3 in L2_3, L3_3, L4_3, L5_3 do
            L8_3 = false
            L9_3 = SV
            L9_3 = L9_3.Database
            L9_3 = L9_3["column:owner"]
            L9_3 = L7_3[L9_3]
            L10_3 = L5_2
            if L9_3 == L10_3 then
              L8_3 = true
            else
              L9_3 = SV
              L9_3 = L9_3.Database
              L9_3 = L9_3["column:company"]
              L9_3 = L7_3[L9_3]
              if L9_3 then
                L9_3 = library
                L9_3 = L9_3.HasGroupAccess
                L10_3 = {}
                L11_3 = SV
                L11_3 = L11_3.Database
                L11_3 = L11_3["column:owner"]
                L11_3 = L7_3[L11_3]
                L10_3.vehicleOwner = L11_3
                L10_3.groupType = "company"
                L11_3 = SV
                L11_3 = L11_3.Database
                L11_3 = L11_3["column:company"]
                L11_3 = L7_3[L11_3]
                L10_3.requiredGroupName = L11_3
                L11_3 = L6_2
                L10_3.groupName = L11_3
                L11_3 = L7_2
                L10_3.groupGrade = L11_3
                L9_3 = L9_3(L10_3)
                if L9_3 then
                  L8_3 = true
              end
              else
                L9_3 = SV
                L9_3 = L9_3.Database
                L9_3 = L9_3["column:gang"]
                L9_3 = L7_3[L9_3]
                if L9_3 then
                  L9_3 = library
                  L9_3 = L9_3.HasGroupAccess
                  L10_3 = {}
                  L11_3 = SV
                  L11_3 = L11_3.Database
                  L11_3 = L11_3["column:owner"]
                  L11_3 = L7_3[L11_3]
                  L10_3.vehicleOwner = L11_3
                  L10_3.groupType = "gang"
                  L11_3 = SV
                  L11_3 = L11_3.Database
                  L11_3 = L11_3["column:gang"]
                  L11_3 = L7_3[L11_3]
                  L10_3.requiredGroupName = L11_3
                  L11_3 = L8_2
                  L10_3.groupName = L11_3
                  L11_3 = L9_2
                  L10_3.groupGrade = L11_3
                  L9_3 = L9_3(L10_3)
                  if L9_3 then
                    L8_3 = true
                  end
                end
              end
            end
            if L8_3 then
              L9_3 = json
              L9_3 = L9_3.decode
              L10_3 = SV
              L10_3 = L10_3.Database
              L10_3 = L10_3["column:vehicle"]
              L10_3 = L7_3[L10_3]
              L9_3 = L9_3(L10_3)
              L7_3.vehicle = L9_3
              L9_3 = L7_3.impound_data
              if L9_3 then
                L9_3 = json
                L9_3 = L9_3.decode
                L10_3 = L7_3.impound_data
                L9_3 = L9_3(L10_3)
                if L9_3 then
                  goto lbl_107
                end
              end
              L9_3 = nil
              ::lbl_107::
              L7_3.impound_data = L9_3
              L9_3 = L7_3.netid
              if L9_3 then
                L9_3 = NetworkGetEntityFromNetworkId
                L10_3 = L7_3.netid
                L9_3 = L9_3(L10_3)
                L10_3 = DoesEntityExist
                L11_3 = L9_3
                L10_3 = L10_3(L11_3)
                if L10_3 then
                  L10_3 = GetVehicleNumberPlateText
                  L11_3 = L9_3
                  L10_3 = L10_3(L11_3)
                  L11_3 = string
                  L11_3 = L11_3.upper
                  L13_3 = L10_3
                  L12_3 = L10_3.match
                  L14_3 = "^%s*(.-)%s*$"
                  L12_3, L13_3, L14_3 = L12_3(L13_3, L14_3)
                  L11_3 = L11_3(L12_3, L13_3, L14_3)
                  L12_3 = SV
                  L12_3 = L12_3.Database
                  L12_3 = L12_3["column:plate"]
                  L12_3 = L7_3[L12_3]
                  if L11_3 ~= L12_3 then
                    L7_3.netid = nil
                  else
                    L12_3 = Config
                    L12_3 = L12_3.AllowRecoveryBurnedVehicles
                    if L12_3 then
                      L12_3 = GetVehicleEngineHealth
                      L13_3 = L9_3
                      L12_3 = L12_3(L13_3)
                      L13_3 = -3000
                      L12_3 = L12_3 < L13_3
                      if L12_3 then
                        L7_3.netid = nil
                      end
                    end
                    L12_3 = Config
                    L12_3 = L12_3.AllowRecoveryVehiclesFromWater
                    if L12_3 then
                      L12_3 = GetEntityCoords
                      L13_3 = L9_3
                      L12_3 = L12_3(L13_3)
                      if L12_3 then
                        L13_3 = L12_3.z
                        if L13_3 < 0.0 then
                          L7_3.netid = nil
                        end
                      end
                    end
                  end
                else
                  L7_3.netid = nil
                end
              end
              L9_3 = L7_3.netid
              if not L9_3 then
                L9_3 = Config
                L9_3 = L9_3.VehiclePersistence
                if L9_3 then
                  L9_3 = L7_3.position
                  if L9_3 then
                    L7_3.netid = true
                  end
                end
              end
              L9_3 = L7_3.vehicle
              L9_3 = L9_3.flooded
              if L9_3 then
                L7_3.netid = false
              end
              L9_3 = table
              L9_3 = L9_3.insert
              L10_3 = L1_3
              L11_3 = L7_3
              L9_3(L10_3, L11_3)
            end
          end
          L2_3 = next
          L3_3 = L1_3
          L2_3 = L2_3(L3_3)
          if L2_3 then
            L2_3 = A1_2
            L3_3 = true
            L4_3 = L1_3
            L2_3(L3_3, L4_3)
          else
            L2_3 = A1_2
            L3_3 = false
            L4_3 = nil
            L2_3(L3_3, L4_3)
          end
      end
      else
        L2_3 = A1_2
        L3_3 = false
        L4_3 = nil
        L2_3(L3_3, L4_3)
      end
    end
    L13_2(L14_2, L15_2, L16_2)
  end
end
L23_1(L24_1, L25_1)
L23_1 = library
L23_1 = L23_1.RegisterCallback
L24_1 = "vms_garagesv2:payForImpound"
function L25_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2
  L5_2 = A0_2
  L6_2 = Config
  L6_2 = L6_2.Impounds
  L6_2 = L6_2[A2_2]
  if not L6_2 then
    L7_2 = A1_2
    L8_2 = false
    return L7_2(L8_2)
  end
  L7_2 = SV
  L7_2 = L7_2.getPlayer
  L8_2 = L5_2
  L7_2 = L7_2(L8_2)
  L8_2 = SV
  L8_2 = L8_2.getIdentifier
  L9_2 = L7_2
  L8_2 = L8_2(L9_2)
  L9_2 = SV
  L9_2 = L9_2.getPlayerJob
  L10_2 = L7_2
  L9_2 = L9_2(L10_2)
  L10_2 = SV
  L10_2 = L10_2.getPlayerJobGrade
  L11_2 = L7_2
  L10_2 = L10_2(L11_2)
  L11_2 = SV
  L11_2 = L11_2.getPlayerGang
  L12_2 = L7_2
  L11_2 = L11_2(L12_2)
  if not L11_2 then
    L11_2 = "unknown"
  end
  L12_2 = SV
  L12_2 = L12_2.getPlayerGangGrade
  L13_2 = L7_2
  L12_2 = L12_2(L13_2)
  if not L12_2 then
    L12_2 = "unknown"
  end
  L13_2 = L6_2.checkAreaOccupied
  if L13_2 then
    L13_2 = L6_2.spawnPoint
    if L13_2 then
      L13_2 = L6_2.spawnPoint
      L13_2 = L13_2.x
      if L13_2 then
        L13_2 = library
        L13_2 = L13_2.IsAreaClear
        L14_2 = L5_2
        L15_2 = L6_2.spawnPoint
        L13_2 = L13_2(L14_2, L15_2)
        if not L13_2 then
          L13_2 = TriggerClientEvent
          L14_2 = "vms_garagesv2:notification"
          L15_2 = L5_2
          L16_2 = TRANSLATE
          L17_2 = "notify.someone_took_vehicle"
          L16_2 = L16_2(L17_2)
          L17_2 = 3500
          L18_2 = "info"
          L13_2(L14_2, L15_2, L16_2, L17_2, L18_2)
          L13_2 = A1_2
          L14_2 = false
          return L13_2(L14_2)
        end
      end
    end
  end
  L13_2 = tostring
  L14_2 = A3_2
  L13_2 = L13_2(L14_2)
  L14_2 = L13_2
  L13_2 = L13_2.match
  L15_2 = "^%s*(.-)%s*$"
  L13_2 = L13_2(L14_2, L15_2)
  L14_2 = "garage = '%s'"
  L15_2 = L14_2
  L14_2 = L14_2.format
  L16_2 = A2_2
  L14_2 = L14_2(L15_2, L16_2)
  L15_2 = L6_2.recoverableFrom
  if L15_2 then
    L15_2 = next
    L16_2 = L6_2.recoverableFrom
    L15_2 = L15_2(L16_2)
    if L15_2 then
      L15_2 = ipairs
      L16_2 = L6_2.recoverableFrom
      L15_2, L16_2, L17_2, L18_2 = L15_2(L16_2)
      for L19_2, L20_2 in L15_2, L16_2, L17_2, L18_2 do
        L21_2 = L14_2
        L22_2 = " OR garage = '%s'"
        L23_2 = L22_2
        L22_2 = L22_2.format
        L24_2 = L20_2
        L22_2 = L22_2(L23_2, L24_2)
        L21_2 = L21_2 .. L22_2
        L14_2 = L21_2
      end
    end
  end
  L15_2 = "SELECT * FROM `%s` WHERE (garage IS NULL OR %s) AND (`%s` LIKE @cleanedPlate OR `%s` LIKE @plate)"
  L16_2 = L15_2
  L15_2 = L15_2.format
  L17_2 = SV
  L17_2 = L17_2.Database
  L17_2 = L17_2["table:owned_vehicles"]
  L18_2 = L14_2
  L19_2 = SV
  L19_2 = L19_2.Database
  L19_2 = L19_2["column:plate"]
  L20_2 = SV
  L20_2 = L20_2.Database
  L20_2 = L20_2["column:plate"]
  L15_2 = L15_2(L16_2, L17_2, L18_2, L19_2, L20_2)
  L16_2 = MySQL
  L16_2 = L16_2.Async
  L16_2 = L16_2.fetchAll
  L17_2 = L15_2
  L18_2 = {}
  L18_2["@cleanedPlate"] = L13_2
  L18_2["@plate"] = A3_2
  function L19_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3
    L1_3 = A0_3[1]
    if L1_3 then
      L2_3 = SV
      L2_3 = L2_3.Database
      L2_3 = L2_3["column:owner"]
      L2_3 = L1_3[L2_3]
      L3_3 = SV
      L3_3 = L3_3.Database
      L3_3 = L3_3["column:company"]
      L3_3 = L1_3[L3_3]
      L4_3 = SV
      L4_3 = L4_3.Database
      L4_3 = L4_3["column:gang"]
      L4_3 = L1_3[L4_3]
      if L2_3 then
        L5_3 = L8_2
        if L2_3 ~= L5_3 then
          L5_3 = A1_2
          L6_3 = false
          return L5_3(L6_3)
        end
      end
      if not L2_3 then
        if L3_3 then
          L5_3 = library
          L5_3 = L5_3.HasGroupAccess
          L6_3 = {}
          L6_3.groupType = "company"
          L6_3.vehicleOwner = L2_3
          L7_3 = L8_2
          L6_3.myIdentifier = L7_3
          L6_3.requiredGroupName = L3_3
          L7_3 = L9_2
          L6_3.groupName = L7_3
          L7_3 = L10_2
          L6_3.groupGrade = L7_3
          L5_3 = L5_3(L6_3)
          if not L5_3 then
            L5_3 = A1_2
            L6_3 = false
            return L5_3(L6_3)
          end
        end
        if L4_3 then
          L5_3 = library
          L5_3 = L5_3.HasGroupAccess
          L6_3 = {}
          L6_3.groupType = "gang"
          L6_3.vehicleOwner = L2_3
          L7_3 = L8_2
          L6_3.myIdentifier = L7_3
          L6_3.requiredGroupName = L4_3
          L7_3 = L11_2
          L6_3.groupName = L7_3
          L7_3 = L12_2
          L6_3.groupGrade = L7_3
          L5_3 = L5_3(L6_3)
          if not L5_3 then
            L5_3 = A1_2
            L6_3 = false
            return L5_3(L6_3)
          end
        end
      end
      L5_3 = json
      L5_3 = L5_3.decode
      L6_3 = L1_3.impound_data
      L5_3 = L5_3(L6_3)
      if L5_3 then
        L6_3 = L5_3.fine_amount
        if not L6_3 then
          L6_3 = 0
        end
        L7_3 = L6_2.priceForImpound
        if L7_3 then
          L7_3 = L6_2.priceForImpound
          L6_3 = L6_3 + L7_3
        else
          L7_3 = L6_2.priceForImpoundPerDay
          if L7_3 then
            L7_3 = library
            L7_3 = L7_3.GetDays
            L8_3 = L1_3.impound_date
            L7_3 = L7_3(L8_3)
            L8_3 = L6_2.priceForImpoundPerDay
            L7_3 = L7_3 * L8_3
            L6_3 = L6_3 + L7_3
          end
        end
        L7_3 = SV
        L7_3 = L7_3.getMoney
        L8_3 = L7_2
        L9_3 = A4_2
        L7_3 = L7_3(L8_3, L9_3)
        if L6_3 >= 1 then
          L8_3 = tonumber
          L9_3 = L6_3
          L8_3 = L8_3(L9_3)
          if L7_3 < L8_3 then
            L8_3 = TriggerClientEvent
            L9_3 = "vms_garagesv2:notification"
            L10_3 = L5_2
            L11_3 = TRANSLATE
            L12_3 = "notify.no_money"
            L11_3 = L11_3(L12_3)
            L12_3 = 5000
            L13_3 = "error"
            L8_3(L9_3, L10_3, L11_3, L12_3, L13_3)
            L8_3 = A1_2
            L9_3 = false
            return L8_3(L9_3)
          end
        end
        if L6_3 >= 1 then
          L8_3 = SV
          L8_3 = L8_3.removeMoney
          L9_3 = L7_2
          L10_3 = A4_2
          L11_3 = L6_3
          L8_3(L9_3, L10_3, L11_3)
          L8_3 = L6_2.societyName
          if L8_3 then
            L8_3 = L6_2.percentFromFineAmountToSociety
            if L8_3 then
              L8_3 = L6_2.percentFromFineAmountToSociety
              if L8_3 >= 1 then
                L8_3 = math
                L8_3 = L8_3.floor
                L9_3 = L6_2.percentFromFineAmountToSociety
                L9_3 = L6_3 * L9_3
                L9_3 = L9_3 / 100
                L8_3 = L8_3(L9_3)
                L9_3 = SV
                L9_3 = L9_3.addSocietyMoney
                L10_3 = L6_2.societyName
                L11_3 = L8_3
                L9_3(L10_3, L11_3)
              end
            end
          end
          L8_3 = SV
          L8_3 = L8_3.Webhook
          L9_3 = "PAY_FOR_IMPOUND"
          L10_3 = SV
          L10_3 = L10_3.WebhookText
          L10_3 = L10_3["TITLE.PAY_FOR_IMPOUND"]
          L11_3 = SV
          L11_3 = L11_3.WebhookText
          L11_3 = L11_3["DESCRIPTION.PAY_FOR_IMPOUND"]
          L12_3 = L11_3
          L11_3 = L11_3.format
          L13_3 = SV
          L13_3 = L13_3.getCharacterName
          L14_3 = L7_2
          L13_3 = L13_3(L14_3)
          L14_3 = L5_2
          L15_3 = L6_3
          L16_3 = A4_2
          L17_3 = A3_2
          L18_3 = A2_2
          L19_3 = L5_3.fine_title
          L11_3 = L11_3(L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3)
          L12_3 = 16053285
          L13_3 = L8_2
          L8_3(L9_3, L10_3, L11_3, L12_3, L13_3)
        else
          L8_3 = SV
          L8_3 = L8_3.Webhook
          L9_3 = "GET_FROM_IMPOUND"
          L10_3 = SV
          L10_3 = L10_3.WebhookText
          L10_3 = L10_3["TITLE.GET_FROM_IMPOUND"]
          L11_3 = SV
          L11_3 = L11_3.WebhookText
          L11_3 = L11_3["DESCRIPTION.GET_FROM_IMPOUND"]
          L12_3 = L11_3
          L11_3 = L11_3.format
          L13_3 = SV
          L13_3 = L13_3.getCharacterName
          L14_3 = L7_2
          L13_3 = L13_3(L14_3)
          L14_3 = L5_2
          L15_3 = A3_2
          L16_3 = A2_2
          L17_3 = L5_3.fine_title
          L11_3 = L11_3(L12_3, L13_3, L14_3, L15_3, L16_3, L17_3)
          L12_3 = 16053285
          L13_3 = L8_2
          L8_3(L9_3, L10_3, L11_3, L12_3, L13_3)
        end
      end
      L7_3 = L8_2
      L6_3 = L3_1
      L6_3[L7_3] = true
      L6_3 = A1_2
      L7_3 = true
      L6_3(L7_3)
    else
      L2_3 = A1_2
      L3_3 = false
      L2_3(L3_3)
    end
  end
  L16_2(L17_2, L18_2, L19_2)
end
L23_1(L24_1, L25_1)
L23_1 = library
L23_1 = L23_1.RegisterCallback
L24_1 = "vms_garagesv2:purchaseParking"
function L25_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L3_2 = A0_2
  L4_2 = SV
  L4_2 = L4_2.getPlayer
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  L5_2 = SV
  L5_2 = L5_2.getIdentifier
  L6_2 = L4_2
  L5_2 = L5_2(L6_2)
  L6_2 = SV
  L6_2 = L6_2.getMoney
  L7_2 = L4_2
  L8_2 = "cash"
  L6_2 = L6_2(L7_2, L8_2)
  L7_2 = Config
  L7_2 = L7_2.Garages
  L7_2 = L7_2[A2_2]
  L8_2 = businessGarages
  L8_2 = L8_2[A2_2]
  if L8_2 then
    L8_2 = TriggerClientEvent
    L9_2 = "vms_garagesv2:notification"
    L10_2 = L3_2
    L11_2 = TRANSLATE
    L12_2 = "notify.purchase:cannot_buy"
    L11_2 = L11_2(L12_2)
    L12_2 = 5000
    L13_2 = "error"
    L8_2(L9_2, L10_2, L11_2, L12_2, L13_2)
    L8_2 = A1_2
    L9_2 = false
    L8_2(L9_2)
    return
  end
  L8_2 = Config
  L8_2 = L8_2.ParkingsLimitPerPlayer
  if 0 == L8_2 then
    L8_2 = TriggerClientEvent
    L9_2 = "vms_garagesv2:notification"
    L10_2 = L3_2
    L11_2 = TRANSLATE
    L12_2 = "notify.purchase:cannot_buy"
    L11_2 = L11_2(L12_2)
    L12_2 = 5000
    L13_2 = "error"
    L8_2(L9_2, L10_2, L11_2, L12_2, L13_2)
    L8_2 = A1_2
    L9_2 = false
    L8_2(L9_2)
    return
  end
  L8_2 = 0
  L9_2 = Config
  L9_2 = L9_2.ParkingsLimitPerPlayer
  if L9_2 >= 1 then
    L9_2 = pairs
    L10_2 = businessGarages
    L9_2, L10_2, L11_2, L12_2 = L9_2(L10_2)
    for L13_2, L14_2 in L9_2, L10_2, L11_2, L12_2 do
      L15_2 = L14_2.owner
      if L15_2 == L5_2 then
        L8_2 = L8_2 + 1
      end
    end
    L9_2 = Config
    L9_2 = L9_2.ParkingsLimitPerPlayer
    if L8_2 >= L9_2 then
      L9_2 = TriggerClientEvent
      L10_2 = "vms_garagesv2:notification"
      L11_2 = L3_2
      L12_2 = TRANSLATE
      L13_2 = "notify.purchase:reached_limit"
      L12_2 = L12_2(L13_2)
      L13_2 = 5000
      L14_2 = "error"
      L9_2(L10_2, L11_2, L12_2, L13_2, L14_2)
      L9_2 = A1_2
      L10_2 = false
      L9_2(L10_2)
      return
    end
  end
  L9_2 = L7_2.purchasePrice
  if L6_2 >= L9_2 then
    L9_2 = SV
    L9_2 = L9_2.removeMoney
    L10_2 = L4_2
    L11_2 = "cash"
    L12_2 = L7_2.purchasePrice
    L9_2(L10_2, L11_2, L12_2)
    L9_2 = MySQL
    L9_2 = L9_2.Async
    L9_2 = L9_2.execute
    L10_2 = "UPDATE vms_business SET owner = @owner WHERE id = @id AND type = @type"
    L11_2 = {}
    L11_2["@owner"] = L5_2
    L11_2["@id"] = A2_2
    L11_2["@type"] = "garage"
    L9_2(L10_2, L11_2)
    L9_2 = businessGarages
    L10_2 = {}
    L10_2.type = "garage"
    L10_2.owner = L5_2
    L11_2 = {}
    L11_2.balance = 0
    L11_2.totalEarned = 0
    L10_2.data = L11_2
    L9_2[A2_2] = L10_2
    L9_2 = SV
    L9_2 = L9_2.Webhook
    L10_2 = "PURCHASED_PARKING"
    L11_2 = SV
    L11_2 = L11_2.WebhookText
    L11_2 = L11_2["TITLE.PURCHASED_PARKING"]
    L12_2 = SV
    L12_2 = L12_2.WebhookText
    L12_2 = L12_2["DESCRIPTION.PURCHASED_PARKING"]
    L13_2 = L12_2
    L12_2 = L12_2.format
    L14_2 = SV
    L14_2 = L14_2.getCharacterName
    L15_2 = L4_2
    L14_2 = L14_2(L15_2)
    L15_2 = L3_2
    L16_2 = A2_2
    L17_2 = L7_2.purchasePrice
    L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2, L17_2)
    L13_2 = 16053285
    L14_2 = L5_2
    L9_2(L10_2, L11_2, L12_2, L13_2, L14_2)
    L9_2 = TriggerClientEvent
    L10_2 = "vms_garagesv2:updateBusiness"
    L11_2 = -1
    L12_2 = A2_2
    L13_2 = businessGarages
    L13_2 = L13_2[A2_2]
    L9_2(L10_2, L11_2, L12_2, L13_2)
    L9_2 = A1_2
    L10_2 = true
    L9_2(L10_2)
  else
    L9_2 = TriggerClientEvent
    L10_2 = "vms_garagesv2:notification"
    L11_2 = L3_2
    L12_2 = TRANSLATE
    L13_2 = "notify.purchase:no_money"
    L12_2 = L12_2(L13_2)
    L13_2 = 5000
    L14_2 = "error"
    L9_2(L10_2, L11_2, L12_2, L13_2, L14_2)
    L9_2 = A1_2
    L10_2 = false
    L9_2(L10_2)
  end
end
L23_1(L24_1, L25_1)
L23_1 = library
L23_1 = L23_1.RegisterCallback
L24_1 = "vms_garagesv2:getHousingGarageSpace"
function L25_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L4_2 = A0_2
  L5_2 = Config
  L5_2 = L5_2.HousingGarages
  L5_2 = L5_2[A2_2]
  L6_2 = nil
  L7_2 = L4_1
  L7_2 = L7_2[A2_2]
  if L7_2 then
    L7_2 = os
    L7_2 = L7_2.time
    L7_2 = L7_2()
    L8_2 = L4_1
    L8_2 = L8_2[A2_2]
    if L7_2 < L8_2 then
      L7_2 = A1_2
      L8_2 = false
      return L7_2(L8_2)
    end
  end
  L7_2 = L4_1
  L8_2 = os
  L8_2 = L8_2.time
  L8_2 = L8_2()
  L8_2 = L8_2 + 5
  L7_2[A2_2] = L8_2
  L7_2 = 1
  L8_2 = L5_2.parkingSpaces
  L8_2 = #L8_2
  L9_2 = 1
  for L10_2 = L7_2, L8_2, L9_2 do
    L11_2 = L1_1
    L11_2 = L11_2[A2_2]
    if L11_2 then
      L11_2 = L1_1
      L11_2 = L11_2[A2_2]
      L11_2 = L11_2[L10_2]
      if L11_2 then
        L11_2 = L1_1
        L11_2 = L11_2[A2_2]
        L11_2 = L11_2[L10_2]
        L11_2 = L11_2.plate
      end
      if not L11_2 then
        L6_2 = L10_2
        break
      end
    else
      L6_2 = 1
    end
  end
  if A3_2 and L6_2 then
    L7_2 = 1
    L8_2 = #A3_2
    L9_2 = 1
    for L10_2 = L7_2, L8_2, L9_2 do
      L11_2 = A3_2[L10_2]
      if L11_2 ~= L4_2 then
        L11_2 = TriggerClientEvent
        L12_2 = "vms_garagesv2:cl:enterPassengerHouseGarage"
        L13_2 = A3_2[L10_2]
        L14_2 = A2_2
        L11_2(L12_2, L13_2, L14_2)
      end
    end
  end
  L7_2 = A1_2
  L8_2 = true
  L9_2 = L6_2
  L7_2(L8_2, L9_2)
end
L23_1(L24_1, L25_1)
L23_1 = library
L23_1 = L23_1.RegisterCallback
L24_1 = "vms_garagesv2:isPlateTaken"
function L25_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = tostring
  L4_2 = A2_2
  L3_2 = L3_2(L4_2)
  L4_2 = L3_2
  L3_2 = L3_2.match
  L5_2 = "^%s*(.-)%s*$"
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = "SELECT `%s` FROM `%s` WHERE (`%s` LIKE @cleanedPlate OR `%s` LIKE @plate)"
  L5_2 = L4_2
  L4_2 = L4_2.format
  L6_2 = SV
  L6_2 = L6_2.Database
  L6_2 = L6_2["column:plate"]
  L7_2 = SV
  L7_2 = L7_2.Database
  L7_2 = L7_2["table:owned_vehicles"]
  L8_2 = SV
  L8_2 = L8_2.Database
  L8_2 = L8_2["column:plate"]
  L9_2 = SV
  L9_2 = L9_2.Database
  L9_2 = L9_2["column:plate"]
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
  L5_2 = MySQL
  L5_2 = L5_2.Async
  L5_2 = L5_2.fetchAll
  L6_2 = L4_2
  L7_2 = {}
  L7_2["@cleanedPlate"] = L3_2
  L7_2["@plate"] = A2_2
  function L8_2(A0_3)
    local L1_3, L2_3
    L1_3 = A1_2
    L2_3 = A0_3[1]
    L2_3 = nil ~= L2_3
    L1_3(L2_3)
  end
  L5_2(L6_2, L7_2, L8_2)
end
L23_1(L24_1, L25_1)
L23_1 = library
L23_1 = L23_1.RegisterCallback
L24_1 = "vms_garagesv2:getVehicleInfo"
function L25_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = tostring
  L4_2 = A2_2
  L3_2 = L3_2(L4_2)
  L4_2 = L3_2
  L3_2 = L3_2.match
  L5_2 = "^%s*(.-)%s*$"
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = "SELECT `%s`, netid, `%s` FROM `%s` WHERE (`%s` LIKE @cleanedPlate OR `%s` LIKE @plate)"
  L5_2 = L4_2
  L4_2 = L4_2.format
  L6_2 = SV
  L6_2 = L6_2.Database
  L6_2 = L6_2["column:plate"]
  L7_2 = SV
  L7_2 = L7_2.Database
  L7_2 = L7_2["column:type"]
  L8_2 = SV
  L8_2 = L8_2.Database
  L8_2 = L8_2["table:owned_vehicles"]
  L9_2 = SV
  L9_2 = L9_2.Database
  L9_2 = L9_2["column:plate"]
  L10_2 = SV
  L10_2 = L10_2.Database
  L10_2 = L10_2["column:plate"]
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  L5_2 = MySQL
  L5_2 = L5_2.Async
  L5_2 = L5_2.fetchAll
  L6_2 = L4_2
  L7_2 = {}
  L7_2["@cleanedPlate"] = L3_2
  L7_2["@plate"] = A2_2
  function L8_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3
    L1_3 = A0_3[1]
    if L1_3 then
      L1_3 = A0_3[1]
      L2_3 = A1_2
      L3_3 = true
      L4_3 = {}
      L5_3 = SV
      L5_3 = L5_3.Database
      L5_3 = L5_3["column:plate"]
      L5_3 = L1_3[L5_3]
      L4_3.plate = L5_3
      L5_3 = L1_3.netid
      L4_3.netid = L5_3
      L5_3 = SV
      L5_3 = L5_3.Database
      L5_3 = L5_3["column:type"]
      L5_3 = L1_3[L5_3]
      L4_3.type = L5_3
      L2_3(L3_3, L4_3)
    else
      L1_3 = A1_2
      L2_3 = false
      L1_3(L2_3)
    end
  end
  L5_2(L6_2, L7_2, L8_2)
end
L23_1(L24_1, L25_1)
L23_1 = RegisterNetEvent
L24_1 = "vms_garagesv2:vehicleTakenByPhone"
function L25_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  if A0_2 and A1_2 then
    L2_2 = {}
    L3_2 = L1_1
    L3_2 = L3_2[A0_2]
    L3_2 = L3_2[A1_2]
    L3_2 = L3_2.isRented
    if not L3_2 then
      L3_2 = nil
    end
    L2_2.isRented = L3_2
    L3_2 = L1_1
    L3_2 = L3_2[A0_2]
    L3_2 = L3_2[A1_2]
    L3_2 = L3_2.ownerName
    if not L3_2 then
      L3_2 = nil
    end
    L2_2.ownerName = L3_2
    L3_2 = L1_1
    L3_2 = L3_2[A0_2]
    L3_2 = L3_2[A1_2]
    L3_2 = L3_2.time
    if not L3_2 then
      L3_2 = nil
    end
    L2_2.time = L3_2
    L3_2 = TriggerClientEvent
    L4_2 = "vms_garagesv2:deleteTakenVehicle"
    L5_2 = -1
    L6_2 = A0_2
    L7_2 = A1_2
    L8_2 = false
    L9_2 = L2_2
    L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
    L3_2 = L1_1
    L3_2 = L3_2[A0_2]
    if L3_2 then
      L3_2 = L1_1
      L3_2 = L3_2[A0_2]
      L3_2 = L3_2[A1_2]
      L3_2.plate = nil
      L3_2 = L1_1
      L3_2 = L3_2[A0_2]
      L3_2 = L3_2[A1_2]
      L3_2.parking_date = nil
      L3_2 = L1_1
      L3_2 = L3_2[A0_2]
      L3_2 = L3_2[A1_2]
      L3_2.mods = nil
      L3_2 = L1_1
      L3_2 = L3_2[A0_2]
      L3_2 = L3_2[A1_2]
      L3_2.owner = nil
    end
  end
end
L23_1(L24_1, L25_1)
L23_1 = RegisterNetEvent
L24_1 = "vms_garagesv2:enteredJobGarage"
function L25_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = source
  L1_2 = SetPlayerRoutingBucket
  L2_2 = L0_2
  L3_2 = L0_2
  L1_2(L2_2, L3_2)
end
L23_1(L24_1, L25_1)
L23_1 = RegisterNetEvent
L24_1 = "vms_garagesv2:sv:sendBill"
function L25_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L3_2 = source
  L4_2 = SV
  L4_2 = L4_2.getPlayer
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  L5_2 = SV
  L5_2 = L5_2.getIdentifier
  L6_2 = L4_2
  L5_2 = L5_2(L6_2)
  L6_2 = L5_1
  L6_2 = L6_2[A0_2]
  if L6_2 then
    L6_2 = TriggerClientEvent
    L7_2 = "vms_garagesv2:notification"
    L8_2 = L3_2
    L9_2 = TRANSLATE
    L10_2 = "notify.already_paying_another_bill"
    L11_2 = A0_2
    L9_2 = L9_2(L10_2, L11_2)
    L10_2 = 3500
    L11_2 = "error"
    L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
    return
  end
  L6_2 = Config
  L6_2 = L6_2.Impounds
  L6_2 = L6_2[A1_2]
  if not L6_2 then
    return
  end
  L7_2 = L6_2.requiredJob
  if not L7_2 then
    return
  end
  L7_2 = SV
  L7_2 = L7_2.getPlayerJob
  L8_2 = L4_2
  L7_2 = L7_2(L8_2)
  L8_2 = L6_2.requiredJob
  L8_2 = L8_2[L7_2]
  if not L8_2 then
    return
  end
  L8_2 = tostring
  L9_2 = A2_2
  L8_2 = L8_2(L9_2)
  L9_2 = L8_2
  L8_2 = L8_2.match
  L10_2 = "^%s*(.-)%s*$"
  L8_2 = L8_2(L9_2, L10_2)
  L9_2 = "SELECT * FROM `%s` WHERE (`%s` LIKE @cleanedPlate OR `%s` LIKE @plate)"
  L10_2 = L9_2
  L9_2 = L9_2.format
  L11_2 = SV
  L11_2 = L11_2.Database
  L11_2 = L11_2["table:owned_vehicles"]
  L12_2 = SV
  L12_2 = L12_2.Database
  L12_2 = L12_2["column:plate"]
  L13_2 = SV
  L13_2 = L13_2.Database
  L13_2 = L13_2["column:plate"]
  L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2)
  L10_2 = MySQL
  L10_2 = L10_2.Async
  L10_2 = L10_2.fetchAll
  L11_2 = L9_2
  L12_2 = {}
  L12_2["@garage"] = A1_2
  L12_2["@cleanedPlate"] = L8_2
  L12_2["@plate"] = A2_2
  function L13_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3
    L1_3 = A0_3[1]
    if L1_3 then
      L3_3 = A0_2
      L2_3 = L5_1
      L4_3 = L3_2
      L2_3[L3_3] = L4_3
      L2_3 = TriggerClientEvent
      L3_3 = "vms_garagesv2:notification"
      L4_3 = L3_2
      L5_3 = TRANSLATE
      L6_3 = "notify.you_sent_bill"
      L5_3 = L5_3(L6_3)
      L6_3 = 3500
      L7_3 = "success"
      L2_3(L3_3, L4_3, L5_3, L6_3, L7_3)
      L2_3 = TriggerClientEvent
      L3_3 = "vms_garagesv2:cl:getBill"
      L4_3 = A0_2
      L5_3 = L3_2
      L6_3 = A1_2
      L7_3 = A2_2
      L8_3 = L1_3.impound_date
      L9_3 = json
      L9_3 = L9_3.decode
      L10_3 = L1_3.impound_data
      L9_3, L10_3 = L9_3(L10_3)
      L2_3(L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3)
    end
  end
  L10_2(L11_2, L12_2, L13_2)
end
L23_1(L24_1, L25_1)
L23_1 = RegisterNetEvent
L24_1 = "vms_garagesv2:sv:payBill"
function L25_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2
  L4_2 = source
  if "cancel" == A0_2 then
    L5_2 = L5_1
    L5_2[L4_2] = nil
    L5_2 = TriggerClientEvent
    L6_2 = "vms_garagesv2:notification"
    L7_2 = A2_2
    L8_2 = TRANSLATE
    L9_2 = "notify.client_resigned_bill"
    L8_2 = L8_2(L9_2)
    L9_2 = 3500
    L10_2 = "error"
    L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
    return
  end
  L5_2 = SV
  L5_2 = L5_2.getPlayer
  L6_2 = L4_2
  L5_2 = L5_2(L6_2)
  L6_2 = SV
  L6_2 = L6_2.getIdentifier
  L7_2 = L5_2
  L6_2 = L6_2(L7_2)
  L7_2 = SV
  L7_2 = L7_2.getMoney
  L8_2 = L5_2
  L9_2 = A1_2
  L7_2 = L7_2(L8_2, L9_2)
  L8_2 = A3_2.fineAmount
  if L7_2 < L8_2 then
    L8_2 = TriggerClientEvent
    L9_2 = "vms_garagesv2:notification"
    L10_2 = L4_2
    L11_2 = TRANSLATE
    L12_2 = "notify.no_money"
    L11_2 = L11_2(L12_2)
    L12_2 = 3500
    L13_2 = "error"
    L8_2(L9_2, L10_2, L11_2, L12_2, L13_2)
    return
  end
  L8_2 = SV
  L8_2 = L8_2.getPlayer
  L9_2 = A2_2
  L8_2 = L8_2(L9_2)
  if L8_2 then
    L9_2 = SV
    L9_2 = L9_2.getIdentifier
    L10_2 = L8_2
    L9_2 = L9_2(L10_2)
    if L9_2 then
      goto lbl_55
    end
  end
  L9_2 = "unknown"
  ::lbl_55::
  if L8_2 then
    L10_2 = SV
    L10_2 = L10_2.getCharacterName
    L11_2 = L8_2
    L10_2 = L10_2(L11_2)
    if L10_2 then
      goto lbl_64
    end
  end
  L10_2 = "unknown"
  ::lbl_64::
  L11_2 = SV
  L11_2 = L11_2.removeMoney
  L12_2 = L5_2
  L13_2 = A1_2
  L14_2 = A3_2.fineAmount
  L11_2(L12_2, L13_2, L14_2)
  L11_2 = SV
  L11_2 = L11_2.Webhook
  L12_2 = "PAID_IMPOUND_BILL"
  L13_2 = SV
  L13_2 = L13_2.WebhookText
  L13_2 = L13_2["TITLE.PAID_IMPOUND_BILL"]
  L14_2 = SV
  L14_2 = L14_2.WebhookText
  L14_2 = L14_2["DESCRIPTION.PAID_IMPOUND_BILL"]
  L15_2 = L14_2
  L14_2 = L14_2.format
  L16_2 = SV
  L16_2 = L16_2.getCharacterName
  L17_2 = L5_2
  L16_2 = L16_2(L17_2)
  L17_2 = L4_2
  L18_2 = A3_2.fineAmount
  L19_2 = A1_2
  L20_2 = A3_2.impoundId
  L21_2 = A3_2.plate
  L22_2 = L10_2
  L23_2 = A2_2
  L14_2 = L14_2(L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2)
  L15_2 = 16053285
  L16_2 = "Issuer: "
  L17_2 = L9_2
  L18_2 = " => "
  L19_2 = L6_2
  L16_2 = L16_2 .. L17_2 .. L18_2 .. L19_2
  L11_2(L12_2, L13_2, L14_2, L15_2, L16_2)
  L11_2 = tostring
  L12_2 = A3_2.plate
  L11_2 = L11_2(L12_2)
  L12_2 = L11_2
  L11_2 = L11_2.match
  L13_2 = "^%s*(.-)%s*$"
  L11_2 = L11_2(L12_2, L13_2)
  L12_2 = "UPDATE `%s` SET impound_data = NULL WHERE (`%s` LIKE @cleanedPlate OR `%s` LIKE @plate)"
  L13_2 = L12_2
  L12_2 = L12_2.format
  L14_2 = SV
  L14_2 = L14_2.Database
  L14_2 = L14_2["table:owned_vehicles"]
  L15_2 = SV
  L15_2 = L15_2.Database
  L15_2 = L15_2["column:plate"]
  L16_2 = SV
  L16_2 = L16_2.Database
  L16_2 = L16_2["column:plate"]
  L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2)
  L13_2 = MySQL
  L13_2 = L13_2.Async
  L13_2 = L13_2.execute
  L14_2 = L12_2
  L15_2 = {}
  L15_2["@cleanedPlate"] = L11_2
  L16_2 = A3_2.plate
  L15_2["@plate"] = L16_2
  L13_2(L14_2, L15_2)
  L13_2 = TriggerClientEvent
  L14_2 = "vms_garagesv2:cl:paidImpound"
  L15_2 = L4_2
  L13_2(L14_2, L15_2)
  L13_2 = TriggerClientEvent
  L14_2 = "vms_garagesv2:notification"
  L15_2 = L4_2
  L16_2 = TRANSLATE
  L17_2 = "notify.you_paid_bill"
  L16_2 = L16_2(L17_2)
  L17_2 = 3500
  L18_2 = "success"
  L13_2(L14_2, L15_2, L16_2, L17_2, L18_2)
  L13_2 = TriggerClientEvent
  L14_2 = "vms_garagesv2:cl:paidImpound"
  L15_2 = A2_2
  L16_2 = "issuer"
  L13_2(L14_2, L15_2, L16_2)
  L13_2 = TriggerClientEvent
  L14_2 = "vms_garagesv2:notification"
  L15_2 = A2_2
  L16_2 = TRANSLATE
  L17_2 = "notify.client_paid_bill"
  L18_2 = A3_2.plate
  L16_2 = L16_2(L17_2, L18_2)
  L17_2 = 3500
  L18_2 = "success"
  L13_2(L14_2, L15_2, L16_2, L17_2, L18_2)
end
L23_1(L24_1, L25_1)
L23_1 = RegisterNetEvent
L24_1 = "vms_garagesv2:paidImpound"
function L25_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2
  L3_2 = source
  L4_2 = Config
  L4_2 = L4_2.Impounds
  L4_2 = L4_2[A0_2]
  if not L4_2 then
    return
  end
  L5_2 = SV
  L5_2 = L5_2.getPlayer
  L6_2 = L3_2
  L5_2 = L5_2(L6_2)
  L6_2 = SV
  L6_2 = L6_2.getIdentifier
  L7_2 = L5_2
  L6_2 = L6_2(L7_2)
  L7_2 = SV
  L7_2 = L7_2.getPlayerJob
  L8_2 = L5_2
  L7_2 = L7_2(L8_2)
  L8_2 = SV
  L8_2 = L8_2.getPlayerJobGrade
  L9_2 = L5_2
  L8_2 = L8_2(L9_2)
  L9_2 = SV
  L9_2 = L9_2.getPlayerGang
  L10_2 = L5_2
  L9_2 = L9_2(L10_2)
  if not L9_2 then
    L9_2 = "unknown"
  end
  L10_2 = SV
  L10_2 = L10_2.getPlayerGangGrade
  L11_2 = L5_2
  L10_2 = L10_2(L11_2)
  if not L10_2 then
    L10_2 = "unknown"
  end
  L11_2 = "garage = '%s'"
  L12_2 = L11_2
  L11_2 = L11_2.format
  L13_2 = A0_2
  L11_2 = L11_2(L12_2, L13_2)
  L12_2 = L4_2.recoverableFrom
  if L12_2 then
    L12_2 = next
    L13_2 = L4_2.recoverableFrom
    L12_2 = L12_2(L13_2)
    if L12_2 then
      L12_2 = ipairs
      L13_2 = L4_2.recoverableFrom
      L12_2, L13_2, L14_2, L15_2 = L12_2(L13_2)
      for L16_2, L17_2 in L12_2, L13_2, L14_2, L15_2 do
        L18_2 = L11_2
        L19_2 = " OR garage = '%s'"
        L20_2 = L19_2
        L19_2 = L19_2.format
        L21_2 = L17_2
        L19_2 = L19_2(L20_2, L21_2)
        L18_2 = L18_2 .. L19_2
        L11_2 = L18_2
      end
    end
  end
  L12_2 = tostring
  L13_2 = A1_2
  L12_2 = L12_2(L13_2)
  L13_2 = L12_2
  L12_2 = L12_2.match
  L14_2 = "^%s*(.-)%s*$"
  L12_2 = L12_2(L13_2, L14_2)
  if A2_2 then
    L13_2 = L4_2.requiredJob
    if not L13_2 then
      return
    end
    L13_2 = L4_2.requiredJob
    L13_2 = L13_2[L7_2]
    if not L13_2 then
      return
    end
    L13_2 = "SELECT * FROM `%s` WHERE (%s) AND (`%s` LIKE @cleanedPlate OR `%s` LIKE @plate)"
    L14_2 = L13_2
    L13_2 = L13_2.format
    L15_2 = SV
    L15_2 = L15_2.Database
    L15_2 = L15_2["table:owned_vehicles"]
    L16_2 = L11_2
    L17_2 = SV
    L17_2 = L17_2.Database
    L17_2 = L17_2["column:plate"]
    L18_2 = SV
    L18_2 = L18_2.Database
    L18_2 = L18_2["column:plate"]
    L13_2 = L13_2(L14_2, L15_2, L16_2, L17_2, L18_2)
    L14_2 = MySQL
    L14_2 = L14_2.Async
    L14_2 = L14_2.fetchAll
    L15_2 = L13_2
    L16_2 = {}
    L16_2["@cleanedPlate"] = L12_2
    L16_2["@plate"] = A1_2
    function L17_2(A0_3)
      local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
      L1_3 = A0_3[1]
      if L1_3 then
        L2_3 = json
        L2_3 = L2_3.decode
        L3_3 = SV
        L3_3 = L3_3.Database
        L3_3 = L3_3["column:vehicle"]
        L3_3 = L1_3[L3_3]
        L2_3 = L2_3(L3_3)
        L3_3 = SetPlayerRoutingBucket
        L4_3 = L3_2
        L5_3 = Config
        L5_3 = L5_3.DefaultRoutingBucket
        L3_3(L4_3, L5_3)
        L3_3 = L1_3.netid
        if L3_3 then
          L3_3 = tonumber
          L4_3 = L1_3.netid
          L3_3 = L3_3(L4_3)
          if L3_3 then
            L3_3 = NetworkGetEntityFromNetworkId
            L4_3 = tonumber
            L5_3 = L1_3.netid
            L4_3, L5_3, L6_3 = L4_3(L5_3)
            L3_3 = L3_3(L4_3, L5_3, L6_3)
            L4_3 = VehiclePersistence
            L5_3 = L3_3
            L6_3 = false
            L4_3(L5_3, L6_3)
            if L3_3 then
              L4_3 = DoesEntityExist
              L5_3 = L3_3
              L4_3 = L4_3(L5_3)
              if L4_3 then
                L4_3 = DeleteEntity
                L5_3 = L3_3
                L4_3(L5_3)
              end
            end
          end
        end
        L3_3 = Citizen
        L3_3 = L3_3.Wait
        L4_3 = 350
        L3_3(L4_3)
        L3_3 = library
        L3_3 = L3_3.SpawnVehicle
        L4_3 = {}
        L5_3 = L3_2
        L4_3.source = L5_3
        L5_3 = GetPlayerPed
        L6_3 = L3_2
        L5_3 = L5_3(L6_3)
        L4_3.ped = L5_3
        L5_3 = L2_3.model
        L4_3.model = L5_3
        L5_3 = L4_2.spawnPoint
        L5_3 = L5_3.xyz
        L4_3.coords = L5_3
        L5_3 = L4_2.spawnPoint
        L5_3 = L5_3.w
        L4_3.heading = L5_3
        L4_3.props = L2_3
        function L5_3(A0_4, A1_4)
          local L2_4, L3_4, L4_4, L5_4, L6_4, L7_4, L8_4, L9_4
          L2_4 = SV
          L2_4 = L2_4.OnVehicleSpawn
          L3_4 = A0_4
          L4_4 = L2_3
          L2_4(L3_4, L4_4)
          L2_4 = TriggerClientEvent
          L3_4 = "vms_garagesv2:cl:setProperties"
          L4_4 = L3_2
          L5_4 = A1_4
          L6_4 = L2_3
          L2_4(L3_4, L4_4, L5_4, L6_4)
          L2_4 = "UPDATE `%s` SET garage = NULL, impound_date = NULL, impound_data = NULL, parking_date = NULL, netid = @netid WHERE (`%s` LIKE @cleanedPlate OR `%s` LIKE @plate)"
          L3_4 = L2_4
          L2_4 = L2_4.format
          L4_4 = SV
          L4_4 = L4_4.Database
          L4_4 = L4_4["table:owned_vehicles"]
          L5_4 = SV
          L5_4 = L5_4.Database
          L5_4 = L5_4["column:plate"]
          L6_4 = SV
          L6_4 = L6_4.Database
          L6_4 = L6_4["column:plate"]
          L2_4 = L2_4(L3_4, L4_4, L5_4, L6_4)
          L3_4 = MySQL
          L3_4 = L3_4.Async
          L3_4 = L3_4.execute
          L4_4 = L2_4
          L5_4 = {}
          L5_4["@netid"] = A1_4
          L6_4 = L12_2
          L5_4["@cleanedPlate"] = L6_4
          L6_4 = A1_2
          L5_4["@plate"] = L6_4
          L3_4(L4_4, L5_4)
          L4_4 = L6_2
          L3_4 = L3_1
          L3_4[L4_4] = false
          L3_4 = Config
          L3_4 = L3_4.VehiclePersistence
          if L3_4 then
            L3_4 = VehiclePersistence
            L4_4 = A0_4
            L5_4 = true
            L3_4(L4_4, L5_4)
          end
          L3_4 = TriggerClientEvent
          L4_4 = "vms_garagesv2:cl:spawnedByPlate"
          L5_4 = L3_2
          L6_4 = A1_4
          L7_4 = L2_3
          L8_4 = SV
          L8_4 = L8_4.Database
          L9_4 = L8_4["column:company"]
          L8_4 = L1_3
          L8_4 = L8_4[L9_4]
          if L8_4 then
            L8_4 = "companyVehFromImpound"
            if L8_4 then
              goto lbl_73
            end
          end
          L8_4 = SV
          L8_4 = L8_4.Database
          L9_4 = L8_4["column:gang"]
          L8_4 = L1_3
          L8_4 = L8_4[L9_4]
          if L8_4 then
            L8_4 = "gangVehFromImpound"
            if L8_4 then
              goto lbl_73
            end
          end
          L8_4 = "privateVehFromImpound"
          ::lbl_73::
          L3_4(L4_4, L5_4, L6_4, L7_4, L8_4)
        end
        L3_3(L4_3, L5_3)
      end
    end
    L14_2(L15_2, L16_2, L17_2)
  else
    L13_2 = L3_1
    L13_2 = L13_2[L6_2]
    if not L13_2 then
      return
    end
    L13_2 = "SELECT * FROM `%s` WHERE (garage IS NULL OR %s) AND (`%s` LIKE @cleanedPlate OR `%s` LIKE @plate)"
    L14_2 = L13_2
    L13_2 = L13_2.format
    L15_2 = SV
    L15_2 = L15_2.Database
    L15_2 = L15_2["table:owned_vehicles"]
    L16_2 = L11_2
    L17_2 = SV
    L17_2 = L17_2.Database
    L17_2 = L17_2["column:plate"]
    L18_2 = SV
    L18_2 = L18_2.Database
    L18_2 = L18_2["column:plate"]
    L13_2 = L13_2(L14_2, L15_2, L16_2, L17_2, L18_2)
    L14_2 = MySQL
    L14_2 = L14_2.Async
    L14_2 = L14_2.fetchAll
    L15_2 = L13_2
    L16_2 = {}
    L16_2["@cleanedPlate"] = L12_2
    L16_2["@plate"] = A1_2
    function L17_2(A0_3)
      local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3
      L1_3 = A0_3[1]
      if L1_3 then
        L2_3 = SV
        L2_3 = L2_3.Database
        L2_3 = L2_3["column:owner"]
        L2_3 = L1_3[L2_3]
        L3_3 = SV
        L3_3 = L3_3.Database
        L3_3 = L3_3["column:company"]
        L3_3 = L1_3[L3_3]
        L4_3 = SV
        L4_3 = L4_3.Database
        L4_3 = L4_3["column:gang"]
        L4_3 = L1_3[L4_3]
        if L2_3 then
          L5_3 = L6_2
          if L2_3 ~= L5_3 then
            return
          end
        end
        if not L2_3 then
          if L3_3 then
            L5_3 = library
            L5_3 = L5_3.HasGroupAccess
            L6_3 = {}
            L6_3.groupType = "company"
            L7_3 = L6_2
            L6_3.myIdentifier = L7_3
            L6_3.requiredGroupName = L3_3
            L7_3 = L7_2
            L6_3.groupName = L7_3
            L7_3 = L8_2
            L6_3.groupGrade = L7_3
            L5_3 = L5_3(L6_3)
            if not L5_3 then
              return
            end
          end
          if L4_3 then
            L5_3 = library
            L5_3 = L5_3.HasGroupAccess
            L6_3 = {}
            L6_3.groupType = "gang"
            L7_3 = L6_2
            L6_3.myIdentifier = L7_3
            L6_3.requiredGroupName = L4_3
            L7_3 = L9_2
            L6_3.groupName = L7_3
            L7_3 = L10_2
            L6_3.groupGrade = L7_3
            L5_3 = L5_3(L6_3)
            if not L5_3 then
              return
            end
          end
        end
        L5_3 = json
        L5_3 = L5_3.decode
        L6_3 = SV
        L6_3 = L6_3.Database
        L6_3 = L6_3["column:vehicle"]
        L6_3 = L1_3[L6_3]
        L5_3 = L5_3(L6_3)
        L6_3 = SetPlayerRoutingBucket
        L7_3 = L3_2
        L8_3 = Config
        L8_3 = L8_3.DefaultRoutingBucket
        if not L8_3 then
          L8_3 = 0
        end
        L6_3(L7_3, L8_3)
        L6_3 = 0
        while true do
          L7_3 = GetPlayerRoutingBucket
          L8_3 = L3_2
          L7_3 = L7_3(L8_3)
          L8_3 = L3_2
          if L7_3 ~= L8_3 then
            break
          end
          L7_3 = SetPlayerRoutingBucket
          L8_3 = L3_2
          L9_3 = Config
          L9_3 = L9_3.DefaultRoutingBucket
          if not L9_3 then
            L9_3 = 0
          end
          L7_3(L8_3, L9_3)
          L6_3 = L6_3 + 1
          if L6_3 >= 10 then
            L7_3 = library
            L7_3 = L7_3.Debug
            L8_3 = "[FAILED] 10 attempts were made to restore the player to the public routing bucket - %s"
            L9_3 = L8_3
            L8_3 = L8_3.format
            L10_3 = Config
            L10_3 = L10_3.DefaultRoutingBucket
            if not L10_3 then
              L10_3 = "nil"
            end
            L8_3 = L8_3(L9_3, L10_3)
            L9_3 = "warn"
            L7_3(L8_3, L9_3)
            break
          end
          L7_3 = Citizen
          L7_3 = L7_3.Wait
          L8_3 = 100
          L7_3(L8_3)
        end
        L7_3 = L1_3.netid
        if L7_3 then
          L7_3 = tonumber
          L8_3 = L1_3.netid
          L7_3 = L7_3(L8_3)
          if L7_3 then
            L7_3 = NetworkGetEntityFromNetworkId
            L8_3 = tonumber
            L9_3 = L1_3.netid
            L8_3, L9_3, L10_3 = L8_3(L9_3)
            L7_3 = L7_3(L8_3, L9_3, L10_3)
            L8_3 = VehiclePersistence
            L9_3 = L7_3
            L10_3 = false
            L8_3(L9_3, L10_3)
            if L7_3 then
              L8_3 = DoesEntityExist
              L9_3 = L7_3
              L8_3 = L8_3(L9_3)
              if L8_3 then
                L8_3 = DeleteEntity
                L9_3 = L7_3
                L8_3(L9_3)
              end
            end
          end
        end
        L7_3 = Citizen
        L7_3 = L7_3.Wait
        L8_3 = 350
        L7_3(L8_3)
        L7_3 = library
        L7_3 = L7_3.SpawnVehicle
        L8_3 = {}
        L9_3 = L3_2
        L8_3.source = L9_3
        L9_3 = GetPlayerPed
        L10_3 = L3_2
        L9_3 = L9_3(L10_3)
        L8_3.ped = L9_3
        L9_3 = L5_3.model
        L8_3.model = L9_3
        L9_3 = L4_2.spawnPoint
        L9_3 = L9_3.xyz
        L8_3.coords = L9_3
        L9_3 = L4_2.spawnPoint
        L9_3 = L9_3.w
        L8_3.heading = L9_3
        L8_3.props = L5_3
        function L9_3(A0_4, A1_4)
          local L2_4, L3_4, L4_4, L5_4, L6_4, L7_4, L8_4
          L2_4 = SV
          L2_4 = L2_4.OnVehicleSpawn
          L3_4 = A0_4
          L4_4 = L5_3
          L2_4(L3_4, L4_4)
          L2_4 = TriggerClientEvent
          L3_4 = "vms_garagesv2:cl:setProperties"
          L4_4 = L3_2
          L5_4 = A1_4
          L6_4 = L5_3
          L2_4(L3_4, L4_4, L5_4, L6_4)
          L2_4 = "UPDATE `%s` SET garage = NULL, impound_date = NULL, impound_data = NULL, parking_date = NULL, netid = @netid WHERE (`%s` LIKE @cleanedPlate OR `%s` LIKE @plate)"
          L3_4 = L2_4
          L2_4 = L2_4.format
          L4_4 = SV
          L4_4 = L4_4.Database
          L4_4 = L4_4["table:owned_vehicles"]
          L5_4 = SV
          L5_4 = L5_4.Database
          L5_4 = L5_4["column:plate"]
          L6_4 = SV
          L6_4 = L6_4.Database
          L6_4 = L6_4["column:plate"]
          L2_4 = L2_4(L3_4, L4_4, L5_4, L6_4)
          L3_4 = MySQL
          L3_4 = L3_4.Async
          L3_4 = L3_4.execute
          L4_4 = L2_4
          L5_4 = {}
          L5_4["@netid"] = A1_4
          L6_4 = A1_2
          L5_4["@plate"] = L6_4
          L6_4 = L12_2
          L5_4["@cleanedPlate"] = L6_4
          L3_4(L4_4, L5_4)
          L4_4 = L6_2
          L3_4 = L3_1
          L3_4[L4_4] = false
          L3_4 = Config
          L3_4 = L3_4.VehiclePersistence
          if L3_4 then
            L3_4 = VehiclePersistence
            L4_4 = A0_4
            L5_4 = true
            L3_4(L4_4, L5_4)
          end
          L3_4 = TriggerClientEvent
          L4_4 = "vms_garagesv2:cl:spawnedByPlate"
          L5_4 = L3_2
          L6_4 = A1_4
          L7_4 = L5_3
          L8_4 = L3_3
          if L8_4 then
            L8_4 = "companyVehFromImpound"
            if L8_4 then
              goto lbl_65
            end
          end
          L8_4 = L4_3
          if L8_4 then
            L8_4 = "gangVehFromImpound"
            if L8_4 then
              goto lbl_65
            end
          end
          L8_4 = "privateVehFromImpound"
          ::lbl_65::
          L3_4(L4_4, L5_4, L6_4, L7_4, L8_4)
        end
        L7_3(L8_3, L9_3)
      end
    end
    L14_2(L15_2, L16_2, L17_2)
  end
end
L23_1(L24_1, L25_1)
L23_1 = RegisterNetEvent
L24_1 = "vms_garagesv2:takeOutVehicle"
function L25_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2
  L3_2 = source
  L4_2 = SV
  L4_2 = L4_2.getPlayer
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  L5_2 = SV
  L5_2 = L5_2.getIdentifier
  L6_2 = L4_2
  L5_2 = L5_2(L6_2)
  L6_2 = false
  L7_2 = Config
  L7_2 = L7_2.Garages
  L7_2 = L7_2[A0_2]
  L8_2 = L7_2 or L8_2
  if L7_2 then
    L8_2 = L7_2.spawnPoint
  end
  if not L7_2 then
    L6_2 = true
    L9_2 = Config
    L9_2 = L9_2.HousingGarages
    L7_2 = L9_2[A0_2]
    L8_2 = L7_2 or L8_2
    if L7_2 then
      L9_2 = L7_2.garageData
      L8_2 = L9_2 or L8_2
      if L9_2 then
        L9_2 = L7_2.garageData
        L8_2 = L9_2.vehicleCoords
      end
    end
  end
  if not L7_2 then
    return
  end
  L9_2 = L0_1
  L9_2 = L9_2[A0_2]
  if not L9_2 then
    L9_2 = L7_2.checkAreaOccupied
    if not (L9_2 and L8_2) then
      goto lbl_58
    end
    L9_2 = L8_2.x
    if not L9_2 then
      goto lbl_58
    end
    L9_2 = library
    L9_2 = L9_2.IsAreaClear
    L10_2 = L3_2
    L11_2 = L8_2
    L9_2 = L9_2(L10_2, L11_2)
    if L9_2 then
      goto lbl_58
    end
  end
  L9_2 = TriggerClientEvent
  L10_2 = "vms_garagesv2:cannotTakeVehicle"
  L11_2 = L3_2
  L12_2 = "garage"
  L9_2(L10_2, L11_2, L12_2)
  do return end
  ::lbl_58::
  L9_2 = L0_1
  L9_2[A0_2] = L3_2
  L9_2 = L21_1
  L10_2 = L3_2
  L11_2 = A0_2
  L9_2(L10_2, L11_2)
  if A1_2 then
    L9_2 = tostring
    L10_2 = A1_2
    L9_2 = L9_2(L10_2)
    L10_2 = L9_2
    L9_2 = L9_2.match
    L11_2 = "^%s*(.-)%s*$"
    L9_2 = L9_2(L10_2, L11_2)
    L10_2 = SV
    L10_2 = L10_2.getPlayerJob
    L11_2 = L4_2
    L10_2 = L10_2(L11_2)
    L11_2 = SV
    L11_2 = L11_2.getPlayerJobGrade
    L12_2 = L4_2
    L11_2 = L11_2(L12_2)
    L12_2 = SV
    L12_2 = L12_2.getPlayerGang
    L13_2 = L4_2
    L12_2 = L12_2(L13_2)
    if not L12_2 then
      L12_2 = "unknown"
    end
    L13_2 = SV
    L13_2 = L13_2.getPlayerGangGrade
    L14_2 = L4_2
    L13_2 = L13_2(L14_2)
    if not L13_2 then
      L13_2 = "unknown"
    end
    L14_2 = "SELECT * FROM `%s` WHERE garage = @garage AND (`%s` LIKE @cleanedPlate OR `%s` LIKE @plate)"
    L15_2 = L14_2
    L14_2 = L14_2.format
    L16_2 = SV
    L16_2 = L16_2.Database
    L16_2 = L16_2["table:owned_vehicles"]
    L17_2 = SV
    L17_2 = L17_2.Database
    L17_2 = L17_2["column:plate"]
    L18_2 = SV
    L18_2 = L18_2.Database
    L18_2 = L18_2["column:plate"]
    L14_2 = L14_2(L15_2, L16_2, L17_2, L18_2)
    if not L6_2 then
      L15_2 = L14_2
      L16_2 = [[
                AND (
                    (`%s` = @owner) OR
                    (`%s` IS NULL AND `%s` = @company) OR
                    (`%s` LIKE @companyLike AND `%s` IS NULL) OR
                    (`%s` IS NULL AND `%s` = @gang) OR
                    (`%s` LIKE @gangLike AND `%s` IS NULL)
                )
            ]]
      L17_2 = L16_2
      L16_2 = L16_2.format
      L18_2 = SV
      L18_2 = L18_2.Database
      L18_2 = L18_2["column:owner"]
      L19_2 = SV
      L19_2 = L19_2.Database
      L19_2 = L19_2["column:owner"]
      L20_2 = SV
      L20_2 = L20_2.Database
      L20_2 = L20_2["column:company"]
      L21_2 = SV
      L21_2 = L21_2.Database
      L21_2 = L21_2["column:company"]
      L22_2 = SV
      L22_2 = L22_2.Database
      L22_2 = L22_2["column:owner"]
      L23_2 = SV
      L23_2 = L23_2.Database
      L23_2 = L23_2["column:owner"]
      L24_2 = SV
      L24_2 = L24_2.Database
      L24_2 = L24_2["column:gang"]
      L25_2 = SV
      L25_2 = L25_2.Database
      L25_2 = L25_2["column:gang"]
      L26_2 = SV
      L26_2 = L26_2.Database
      L26_2 = L26_2["column:owner"]
      L16_2 = L16_2(L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2)
      L15_2 = L15_2 .. L16_2
      L14_2 = L15_2
    end
    L15_2 = MySQL
    L15_2 = L15_2.Async
    L15_2 = L15_2.fetchAll
    L16_2 = L14_2
    L17_2 = {}
    L17_2["@owner"] = L5_2
    L17_2["@garage"] = A0_2
    L17_2["@cleanedPlate"] = L9_2
    L17_2["@plate"] = A1_2
    L17_2["@company"] = L10_2
    L18_2 = L10_2
    L19_2 = "%"
    L18_2 = L18_2 .. L19_2
    L17_2["@companyLike"] = L18_2
    L17_2["@gang"] = L12_2
    L18_2 = L12_2
    L19_2 = "%"
    L18_2 = L18_2 .. L19_2
    L17_2["@gangLike"] = L18_2
    function L18_2(A0_3)
      local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3
      L1_3 = A0_3[1]
      if L1_3 then
        L2_3 = SV
        L2_3 = L2_3.Database
        L2_3 = L2_3["column:company"]
        L2_3 = L1_3[L2_3]
        L3_3 = SV
        L3_3 = L3_3.Database
        L3_3 = L3_3["column:gang"]
        L3_3 = L1_3[L3_3]
        L4_3 = L1_3.netid
        if L4_3 then
          L4_3 = TriggerClientEvent
          L5_3 = "vms_garagesv2:cannotTakeVehicle"
          L6_3 = L3_2
          L7_3 = "garage"
          L4_3(L5_3, L6_3, L7_3)
          return
        end
        if L2_3 then
          L4_3 = library
          L4_3 = L4_3.HasGroupAccess
          L5_3 = {}
          L5_3.groupType = "company"
          L6_3 = L5_2
          L5_3.myIdentifier = L6_3
          L5_3.requiredGroupName = L2_3
          L6_3 = L10_2
          L5_3.groupName = L6_3
          L6_3 = L11_2
          L5_3.groupGrade = L6_3
          L4_3 = L4_3(L5_3)
          if not L4_3 then
            L4_3 = TriggerClientEvent
            L5_3 = "vms_garagesv2:cannotTakeVehicle"
            L6_3 = L3_2
            L7_3 = "garage"
            L4_3(L5_3, L6_3, L7_3)
            return
          end
        end
        if L3_3 then
          L4_3 = library
          L4_3 = L4_3.HasGroupAccess
          L5_3 = {}
          L5_3.groupType = "gang"
          L6_3 = L5_2
          L5_3.myIdentifier = L6_3
          L5_3.requiredGroupName = L3_3
          L6_3 = L12_2
          L5_3.groupName = L6_3
          L6_3 = L13_2
          L5_3.groupGrade = L6_3
          L4_3 = L4_3(L5_3)
          if not L4_3 then
            L4_3 = TriggerClientEvent
            L5_3 = "vms_garagesv2:cannotTakeVehicle"
            L6_3 = L3_2
            L7_3 = "garage"
            L4_3(L5_3, L6_3, L7_3)
            return
          end
        end
        L4_3 = json
        L4_3 = L4_3.decode
        L5_3 = SV
        L5_3 = L5_3.Database
        L5_3 = L5_3["column:vehicle"]
        L5_3 = L1_3[L5_3]
        L4_3 = L4_3(L5_3)
        L6_3 = A0_2
        L5_3 = L0_1
        L5_3 = L5_3[L6_3]
        if L5_3 then
          L6_3 = A0_2
          L5_3 = L0_1
          L5_3 = L5_3[L6_3]
          L6_3 = L3_2
          if L5_3 ~= L6_3 then
            L5_3 = TriggerClientEvent
            L6_3 = "vms_garagesv2:cannotTakeVehicle"
            L7_3 = L3_2
            L8_3 = "garage"
            L5_3(L6_3, L7_3, L8_3)
            return
          end
        end
        L5_3 = SetPlayerRoutingBucket
        L6_3 = L3_2
        L7_3 = Config
        L7_3 = L7_3.DefaultRoutingBucket
        if not L7_3 then
          L7_3 = 0
        end
        L5_3(L6_3, L7_3)
        L5_3 = 0
        while true do
          L6_3 = GetPlayerRoutingBucket
          L7_3 = L3_2
          L6_3 = L6_3(L7_3)
          L7_3 = L3_2
          if L6_3 ~= L7_3 then
            break
          end
          L6_3 = SetPlayerRoutingBucket
          L7_3 = L3_2
          L8_3 = Config
          L8_3 = L8_3.DefaultRoutingBucket
          if not L8_3 then
            L8_3 = 0
          end
          L6_3(L7_3, L8_3)
          L5_3 = L5_3 + 1
          if L5_3 >= 10 then
            L6_3 = library
            L6_3 = L6_3.Debug
            L7_3 = "[FAILED] 10 attempts were made to restore the player to the public routing bucket - %s"
            L8_3 = L7_3
            L7_3 = L7_3.format
            L9_3 = Config
            L9_3 = L9_3.DefaultRoutingBucket
            if not L9_3 then
              L9_3 = "nil"
            end
            L7_3 = L7_3(L8_3, L9_3)
            L8_3 = "warn"
            L6_3(L7_3, L8_3)
            break
          end
          L6_3 = Citizen
          L6_3 = L6_3.Wait
          L7_3 = 100
          L6_3(L7_3)
        end
        L6_3 = Citizen
        L6_3 = L6_3.Wait
        L7_3 = 350
        L6_3(L7_3)
        L6_3 = library
        L6_3 = L6_3.SpawnVehicle
        L7_3 = {}
        L8_3 = L3_2
        L7_3.source = L8_3
        L8_3 = GetPlayerPed
        L9_3 = L3_2
        L8_3 = L8_3(L9_3)
        L7_3.ped = L8_3
        L8_3 = L4_3.model
        L7_3.model = L8_3
        L8_3 = L8_2.xyz
        L7_3.coords = L8_3
        L8_3 = L8_2.w
        L7_3.heading = L8_3
        L7_3.props = L4_3
        function L8_3(A0_4, A1_4)
          local L2_4, L3_4, L4_4, L5_4, L6_4, L7_4, L8_4, L9_4
          L2_4 = SV
          L2_4 = L2_4.OnVehicleSpawn
          L3_4 = A0_4
          L4_4 = L4_3
          L2_4(L3_4, L4_4)
          L2_4 = TriggerClientEvent
          L3_4 = "vms_garagesv2:cl:setProperties"
          L4_4 = L3_2
          L5_4 = A1_4
          L6_4 = L4_3
          L2_4(L3_4, L4_4, L5_4, L6_4)
          L2_4 = "UPDATE `%s` SET garage = NULL, parking_date = NULL, netid = @netid WHERE (`%s` LIKE @cleanedPlate OR `%s` LIKE @plate)"
          L3_4 = L2_4
          L2_4 = L2_4.format
          L4_4 = SV
          L4_4 = L4_4.Database
          L4_4 = L4_4["table:owned_vehicles"]
          L5_4 = SV
          L5_4 = L5_4.Database
          L5_4 = L5_4["column:plate"]
          L6_4 = SV
          L6_4 = L6_4.Database
          L6_4 = L6_4["column:plate"]
          L2_4 = L2_4(L3_4, L4_4, L5_4, L6_4)
          L3_4 = MySQL
          L3_4 = L3_4.Async
          L3_4 = L3_4.execute
          L4_4 = L2_4
          L5_4 = {}
          L5_4["@netid"] = A1_4
          L6_4 = A1_2
          L5_4["@plate"] = L6_4
          L6_4 = L9_2
          L5_4["@cleanedPlate"] = L6_4
          L3_4(L4_4, L5_4)
          L4_4 = A0_2
          L3_4 = L0_1
          L3_4[L4_4] = nil
          L3_4 = Config
          L3_4 = L3_4.VehiclePersistence
          if L3_4 then
            L3_4 = VehiclePersistence
            L4_4 = A0_4
            L5_4 = true
            L3_4(L4_4, L5_4)
          end
          L3_4 = TriggerClientEvent
          L4_4 = "vms_garagesv2:cl:spawnedByPlate"
          L5_4 = L3_2
          L6_4 = A1_4
          L7_4 = L4_3
          L8_4 = SV
          L8_4 = L8_4.Database
          L9_4 = L8_4["column:company"]
          L8_4 = L1_3
          L8_4 = L8_4[L9_4]
          if L8_4 then
            L8_4 = "companyOwnedVehFromGarage"
            if L8_4 then
              goto lbl_73
            end
          end
          L8_4 = SV
          L8_4 = L8_4.Database
          L9_4 = L8_4["column:gang"]
          L8_4 = L1_3
          L8_4 = L8_4[L9_4]
          if L8_4 then
            L8_4 = "gangOwnedVehFromGarage"
            if L8_4 then
              goto lbl_73
            end
          end
          L8_4 = "privateVehFromGarage"
          ::lbl_73::
          L3_4(L4_4, L5_4, L6_4, L7_4, L8_4)
        end
        L6_3(L7_3, L8_3)
      else
        L2_3 = TriggerClientEvent
        L3_3 = "vms_garagesv2:cannotTakeVehicle"
        L4_3 = L3_2
        L5_3 = "garage"
        L2_3(L3_3, L4_3, L5_3)
      end
    end
    L15_2(L16_2, L17_2, L18_2)
  elseif A2_2 then
    L9_2 = L0_1
    L9_2 = L9_2[A0_2]
    if L9_2 then
      L9_2 = L0_1
      L9_2 = L9_2[A0_2]
      if L9_2 ~= L3_2 then
        L9_2 = TriggerClientEvent
        L10_2 = "vms_garagesv2:cannotTakeVehicle"
        L11_2 = L3_2
        L12_2 = "garage"
        L9_2(L10_2, L11_2, L12_2)
        return
      end
    end
    L9_2 = SetPlayerRoutingBucket
    L10_2 = L3_2
    L11_2 = Config
    L11_2 = L11_2.DefaultRoutingBucket
    if not L11_2 then
      L11_2 = 0
    end
    L9_2(L10_2, L11_2)
    L9_2 = 0
    while true do
      L10_2 = GetPlayerRoutingBucket
      L11_2 = L3_2
      L10_2 = L10_2(L11_2)
      if L10_2 ~= L3_2 then
        break
      end
      L10_2 = SetPlayerRoutingBucket
      L11_2 = L3_2
      L12_2 = Config
      L12_2 = L12_2.DefaultRoutingBucket
      if not L12_2 then
        L12_2 = 0
      end
      L10_2(L11_2, L12_2)
      L9_2 = L9_2 + 1
      if L9_2 >= 10 then
        L10_2 = library
        L10_2 = L10_2.Debug
        L11_2 = "[FAILED] 10 attempts were made to restore the player to the public routing bucket - %s"
        L12_2 = L11_2
        L11_2 = L11_2.format
        L13_2 = Config
        L13_2 = L13_2.DefaultRoutingBucket
        if not L13_2 then
          L13_2 = "nil"
        end
        L11_2 = L11_2(L12_2, L13_2)
        L12_2 = "warn"
        L10_2(L11_2, L12_2)
        break
      end
      L10_2 = Citizen
      L10_2 = L10_2.Wait
      L11_2 = 100
      L10_2(L11_2)
    end
    L10_2 = {}
    L11_2 = L7_2.availableVehicles
    if L11_2 then
      L11_2 = L7_2.availableVehicles
      L11_2 = L11_2[A2_2]
      if L11_2 then
        L11_2 = L7_2.availableVehicles
        L11_2 = L11_2[A2_2]
        L11_2 = L11_2.customProperties
        if L11_2 then
          L11_2 = L7_2.availableVehicles
          L11_2 = L11_2[A2_2]
          L10_2 = L11_2.customProperties
        end
      end
    end
    L11_2 = Citizen
    L11_2 = L11_2.Wait
    L12_2 = 350
    L11_2(L12_2)
    L11_2 = L0_1
    L11_2 = L11_2[A0_2]
    if L11_2 then
      L11_2 = L0_1
      L11_2 = L11_2[A0_2]
      if L11_2 ~= L3_2 then
        L11_2 = TriggerClientEvent
        L12_2 = "vms_garagesv2:cannotTakeVehicle"
        L13_2 = L3_2
        L14_2 = "garage"
        L11_2(L12_2, L13_2, L14_2)
        return
      end
    end
    L11_2 = library
    L11_2 = L11_2.SpawnVehicle
    L12_2 = {}
    L12_2.source = L3_2
    L13_2 = GetPlayerPed
    L14_2 = L3_2
    L13_2 = L13_2(L14_2)
    L12_2.ped = L13_2
    L12_2.model = A2_2
    L13_2 = L8_2.xyz
    L12_2.coords = L13_2
    L13_2 = L8_2.w
    L12_2.heading = L13_2
    L12_2.props = L10_2
    function L13_2(A0_3, A1_3)
      local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
      L2_3 = SV
      L2_3 = L2_3.OnVehicleSpawn
      L3_3 = A0_3
      L4_3 = L10_2
      L2_3(L3_3, L4_3)
      L2_3 = TriggerClientEvent
      L3_3 = "vms_garagesv2:cl:setProperties"
      L4_3 = L3_2
      L5_3 = A1_3
      L6_3 = L10_2
      L2_3(L3_3, L4_3, L5_3, L6_3)
      L3_3 = A0_2
      L2_3 = L0_1
      L2_3[L3_3] = nil
      L2_3 = Config
      L2_3 = L2_3.Garages
      L3_3 = A0_2
      L2_3 = L2_3[L3_3]
      if L2_3 then
        L2_3 = Config
        L2_3 = L2_3.Garages
        L3_3 = A0_2
        L2_3 = L2_3[L3_3]
        L2_3 = L2_3.requiredGang
      end
      L3_3 = TriggerClientEvent
      L4_3 = "vms_garagesv2:cl:spawnedByModel"
      L5_3 = L3_2
      L6_3 = A1_3
      L7_3 = GetVehicleNumberPlateText
      L8_3 = A0_3
      L7_3 = L7_3(L8_3)
      if L2_3 then
        L8_3 = "gangVehFromGarage"
        if L8_3 then
          goto lbl_39
        end
      end
      L8_3 = "companyVehFromGarage"
      ::lbl_39::
      L3_3(L4_3, L5_3, L6_3, L7_3, L8_3)
    end
    L11_2(L12_2, L13_2)
  end
end
L23_1(L24_1, L25_1)
L23_1 = RegisterNetEvent
L24_1 = "vms_garagesv2:sv:garageInterior"
function L25_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  L6_2 = source
  L7_2 = nil
  if A3_2 then
    L8_2 = Config
    L8_2 = L8_2.HousingGarages
    L8_2 = L8_2[A1_2]
    if not L8_2 then
      return
    end
    L7_2 = L8_2
  else
    L8_2 = Config
    L8_2 = L8_2.Garages
    L8_2 = L8_2[A1_2]
    if not L8_2 then
      return
    end
    L7_2 = L8_2
  end
  L8_2 = GetPlayerPed
  L9_2 = L6_2
  L8_2 = L8_2(L9_2)
  if A2_2 then
    L9_2 = NetworkGetEntityFromNetworkId
    L10_2 = A2_2
    L9_2 = L9_2(L10_2)
    L10_2 = DoesEntityExist
    L11_2 = L9_2
    L10_2 = L10_2(L11_2)
    if not (L9_2 and L10_2) then
      goto lbl_297
    end
    if A3_2 then
      if A0_2 then
        L11_2 = L7_2.parkingSpaces
        L11_2 = L11_2[A4_2]
        L11_2 = L11_2.coords
        if L11_2 then
          goto lbl_45
        end
      end
      L11_2 = L7_2.houseCoords
      ::lbl_45::
      L12_2 = SetPlayerRoutingBucket
      L13_2 = L6_2
      if A0_2 then
        L14_2 = L7_2.routingBucket
        if L14_2 then
          goto lbl_54
        end
      end
      L14_2 = Config
      L14_2 = L14_2.DefaultRoutingBucket
      ::lbl_54::
      L12_2(L13_2, L14_2)
      L12_2 = SetEntityRoutingBucket
      L13_2 = L9_2
      if A0_2 then
        L14_2 = L7_2.routingBucket
        if L14_2 then
          goto lbl_64
        end
      end
      L14_2 = Config
      L14_2 = L14_2.DefaultRoutingBucket
      ::lbl_64::
      L12_2(L13_2, L14_2)
      L12_2 = SetEntityCoords
      L13_2 = L9_2
      L14_2 = L11_2.xyz
      L12_2(L13_2, L14_2)
      L12_2 = SetEntityHeading
      L13_2 = L9_2
      L14_2 = L11_2.w
      L12_2(L13_2, L14_2)
      L12_2 = L6_1
      L13_2 = A1_2 or L13_2
      if not A0_2 or not A1_2 then
        L13_2 = nil
      end
      L12_2[L6_2] = L13_2
      if not A5_2 then
        goto lbl_210
      end
      L12_2 = 1
      L13_2 = #A5_2
      L14_2 = 1
      for L15_2 = L12_2, L13_2, L14_2 do
        L16_2 = A5_2[L15_2]
        if L16_2 ~= L6_2 then
          L16_2 = SetPlayerRoutingBucket
          L17_2 = A5_2[L15_2]
          if A0_2 then
            L18_2 = L7_2.routingBucket
            if L18_2 then
              goto lbl_98
            end
          end
          L18_2 = Config
          L18_2 = L18_2.DefaultRoutingBucket
          ::lbl_98::
          L16_2(L17_2, L18_2)
          if not A0_2 then
            L17_2 = A5_2[L15_2]
            L16_2 = L6_1
            L16_2[L17_2] = nil
            L16_2 = TriggerClientEvent
            L17_2 = "vms_garagesv2:cl:exitPassengerHouseGarage"
            L18_2 = A5_2[L15_2]
            L19_2 = A1_2
            L16_2(L17_2, L18_2, L19_2)
          else
            L17_2 = A5_2[L15_2]
            L16_2 = L6_1
            L16_2[L17_2] = A1_2
          end
        end
      end
    else
      L11_2 = SetPlayerRoutingBucket
      L12_2 = L6_2
      if A0_2 then
        L13_2 = L7_2.interior
        L13_2 = L13_2.routingBucket
        if L13_2 then
          goto lbl_125
        end
      end
      L13_2 = Config
      L13_2 = L13_2.DefaultRoutingBucket
      ::lbl_125::
      L11_2(L12_2, L13_2)
      L11_2 = SetEntityRoutingBucket
      L12_2 = L9_2
      if A0_2 then
        L13_2 = L7_2.interior
        L13_2 = L13_2.routingBucket
        if L13_2 then
          goto lbl_136
        end
      end
      L13_2 = Config
      L13_2 = L13_2.DefaultRoutingBucket
      ::lbl_136::
      L11_2(L12_2, L13_2)
      L11_2 = SetEntityCoords
      L12_2 = L9_2
      if A0_2 then
        L13_2 = L7_2.interior
        L13_2 = L13_2.exitWithVehicle
        L13_2 = L13_2.xyz
        if L13_2 then
          goto lbl_149
        end
      end
      L13_2 = L7_2.interior
      L13_2 = L13_2.enterWithVehicle
      L13_2 = L13_2.xyz
      ::lbl_149::
      L11_2(L12_2, L13_2)
      L11_2 = SetEntityHeading
      L12_2 = L9_2
      if A0_2 then
        L13_2 = L7_2.interior
        L13_2 = L13_2.exitWithVehicle
        L13_2 = L13_2.w
        if L13_2 then
          goto lbl_162
        end
      end
      L13_2 = L7_2.interior
      L13_2 = L13_2.enterWithVehicle
      L13_2 = L13_2.w
      ::lbl_162::
      L11_2(L12_2, L13_2)
      L11_2 = L6_1
      L12_2 = A1_2 or L12_2
      if not A0_2 or not A1_2 then
        L12_2 = nil
      end
      L11_2[L6_2] = L12_2
      if A5_2 then
        L11_2 = 1
        L12_2 = #A5_2
        L13_2 = 1
        for L14_2 = L11_2, L12_2, L13_2 do
          L15_2 = A5_2[L14_2]
          if L15_2 ~= L6_2 then
            L15_2 = SetPlayerRoutingBucket
            L16_2 = A5_2[L14_2]
            if A0_2 then
              L17_2 = L7_2.interior
              L17_2 = L17_2.routingBucket
              if L17_2 then
                goto lbl_189
              end
            end
            L17_2 = Config
            L17_2 = L17_2.DefaultRoutingBucket
            ::lbl_189::
            L15_2(L16_2, L17_2)
            if not A0_2 then
              L16_2 = A5_2[L14_2]
              L15_2 = L6_1
              L15_2[L16_2] = nil
              L15_2 = TriggerClientEvent
              L16_2 = "vms_garagesv2:cl:exitPassengerInteriorGarage"
              L17_2 = A5_2[L14_2]
              L18_2 = A1_2
              L15_2(L16_2, L17_2, L18_2)
            else
              L16_2 = A5_2[L14_2]
              L15_2 = L6_1
              L15_2[L16_2] = A1_2
              L15_2 = TriggerClientEvent
              L16_2 = "vms_garagesv2:cl:enterPassengerInteriorGarage"
              L17_2 = A5_2[L14_2]
              L18_2 = A1_2
              L15_2(L16_2, L17_2, L18_2)
            end
          end
        end
      end
    end
    ::lbl_210::
    L11_2 = TriggerClientEvent
    L12_2 = "vms_garagesv2:cl:garageInteriorFadeIn"
    L13_2 = L6_2
    L11_2(L12_2, L13_2)
  else
    if A3_2 then
      if A0_2 then
        L9_2 = L7_2.exitCoords
        if L9_2 then
          goto lbl_223
        end
      end
      L9_2 = L7_2.houseCoords
      ::lbl_223::
      L10_2 = SetPlayerRoutingBucket
      L11_2 = L6_2
      if A0_2 then
        L12_2 = L7_2.routingBucket
        if L12_2 then
          goto lbl_232
        end
      end
      L12_2 = Config
      L12_2 = L12_2.DefaultRoutingBucket
      ::lbl_232::
      L10_2(L11_2, L12_2)
      L10_2 = SetEntityCoords
      L11_2 = L8_2
      L12_2 = L9_2.xyz
      L10_2(L11_2, L12_2)
      L10_2 = SetEntityHeading
      L11_2 = L8_2
      L12_2 = L9_2.w
      L10_2(L11_2, L12_2)
      L10_2 = L6_1
      L11_2 = A1_2 or L11_2
      if not A0_2 or not A1_2 then
        L11_2 = nil
      end
      L10_2[L6_2] = L11_2
    else
      L9_2 = SetPlayerRoutingBucket
      L10_2 = L6_2
      if A0_2 then
        L11_2 = L7_2.interior
        L11_2 = L11_2.routingBucket
        if L11_2 then
          goto lbl_259
        end
      end
      L11_2 = Config
      L11_2 = L11_2.DefaultRoutingBucket
      ::lbl_259::
      L9_2(L10_2, L11_2)
      L9_2 = SetEntityCoords
      L10_2 = L8_2
      if A0_2 then
        L11_2 = L7_2.interior
        L11_2 = L11_2.exitOnFoot
        L11_2 = L11_2.xyz
        if L11_2 then
          goto lbl_272
        end
      end
      L11_2 = L7_2.interior
      L11_2 = L11_2.enterOnFoot
      L11_2 = L11_2.xyz
      ::lbl_272::
      L9_2(L10_2, L11_2)
      L9_2 = SetEntityHeading
      L10_2 = L8_2
      if A0_2 then
        L11_2 = L7_2.interior
        L11_2 = L11_2.exitOnFoot
        L11_2 = L11_2.w
        if L11_2 then
          goto lbl_285
        end
      end
      L11_2 = L7_2.interior
      L11_2 = L11_2.enterOnFoot
      L11_2 = L11_2.w
      ::lbl_285::
      L9_2(L10_2, L11_2)
      L9_2 = L6_1
      L10_2 = A1_2 or L10_2
      if not A0_2 or not A1_2 then
        L10_2 = nil
      end
      L9_2[L6_2] = L10_2
    end
    L9_2 = TriggerClientEvent
    L10_2 = "vms_garagesv2:cl:garageInteriorFadeIn"
    L11_2 = L6_2
    L9_2(L10_2, L11_2)
  end
  ::lbl_297::
end
L23_1(L24_1, L25_1)
L23_1 = RegisterNetEvent
L24_1 = "vms_garagesv2:payForParking"
function L25_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L3_2 = source
  L4_2 = SV
  L4_2 = L4_2.getPlayer
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  L5_2 = SV
  L5_2 = L5_2.getIdentifier
  L6_2 = L4_2
  L5_2 = L5_2(L6_2)
  L6_2 = L1_1
  L6_2 = L6_2[A2_2]
  if not L6_2 then
    return
  end
  L6_2 = L1_1
  L6_2 = L6_2[A2_2]
  L7_2 = A1_2.spotId
  L6_2 = L6_2[L7_2]
  if not L6_2 then
    return
  end
  L6_2 = tonumber
  L7_2 = A1_2.price
  L6_2 = L6_2(L7_2)
  if L6_2 <= 0 then
    L6_2 = TriggerClientEvent
    L7_2 = "vms_garagesv2:notification"
    L8_2 = L3_2
    L9_2 = TRANSLATE
    L10_2 = "notify.pay_station:dont_have_to_pay"
    L9_2 = L9_2(L10_2)
    L10_2 = 4500
    L11_2 = "info"
    L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
    return
  end
  L6_2 = tostring
  L7_2 = A1_2.licensePlate
  L6_2 = L6_2(L7_2)
  L7_2 = L6_2
  L6_2 = L6_2.match
  L8_2 = "^%s*(.-)%s*$"
  L6_2 = L6_2(L7_2, L8_2)
  L7_2 = "SELECT * FROM `%s` WHERE (`%s` LIKE @cleanedPlate OR `%s` LIKE @plate) AND garage = @garage AND garageSpotID = @garageSpotID"
  L8_2 = L7_2
  L7_2 = L7_2.format
  L9_2 = SV
  L9_2 = L9_2.Database
  L9_2 = L9_2["table:owned_vehicles"]
  L10_2 = SV
  L10_2 = L10_2.Database
  L10_2 = L10_2["column:plate"]
  L11_2 = SV
  L11_2 = L11_2.Database
  L11_2 = L11_2["column:plate"]
  L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2)
  L8_2 = MySQL
  L8_2 = L8_2.Async
  L8_2 = L8_2.fetchAll
  L9_2 = L7_2
  L10_2 = {}
  L10_2["@cleanedPlate"] = L6_2
  L11_2 = A1_2.licensePlate
  L10_2["@plate"] = L11_2
  L10_2["@garage"] = A2_2
  L11_2 = A1_2.spotId
  L10_2["@garageSpotID"] = L11_2
  function L11_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3
    L1_3 = A0_3[1]
    if L1_3 then
      L2_3 = SV
      L2_3 = L2_3.getMoney
      L3_3 = L4_2
      L4_3 = A0_2
      L2_3 = L2_3(L3_3, L4_3)
      L3_3 = tonumber
      L4_3 = A1_2.price
      L3_3 = L3_3(L4_3)
      if L2_3 >= L3_3 then
        L3_3 = SV
        L3_3 = L3_3.removeMoney
        L4_3 = L4_2
        L5_3 = A0_2
        L6_3 = A1_2.price
        L3_3(L4_3, L5_3, L6_3)
        L4_3 = A2_2
        L3_3 = L1_1
        L3_3 = L3_3[L4_3]
        L4_3 = A1_2.spotId
        L3_3 = L3_3[L4_3]
        L4_3 = os
        L4_3 = L4_3.time
        L4_3 = L4_3()
        L3_3.parking_date = L4_3
        L3_3 = "UPDATE `%s` SET parking_date = @parking_date WHERE (`%s` LIKE @cleanedPlate OR `%s` LIKE @plate)"
        L4_3 = L3_3
        L3_3 = L3_3.format
        L5_3 = SV
        L5_3 = L5_3.Database
        L5_3 = L5_3["table:owned_vehicles"]
        L6_3 = SV
        L6_3 = L6_3.Database
        L6_3 = L6_3["column:plate"]
        L7_3 = SV
        L7_3 = L7_3.Database
        L7_3 = L7_3["column:plate"]
        L3_3 = L3_3(L4_3, L5_3, L6_3, L7_3)
        L4_3 = MySQL
        L4_3 = L4_3.Async
        L4_3 = L4_3.execute
        L5_3 = L3_3
        L6_3 = {}
        L7_3 = os
        L7_3 = L7_3.time
        L7_3 = L7_3()
        L6_3["@parking_date"] = L7_3
        L7_3 = L6_2
        L6_3["@cleanedPlate"] = L7_3
        L7_3 = A1_2.licensePlate
        L6_3["@plate"] = L7_3
        L4_3(L5_3, L6_3)
        L4_3 = SV
        L4_3 = L4_3.Webhook
        L5_3 = "PAY_STATION"
        L6_3 = SV
        L6_3 = L6_3.WebhookText
        L6_3 = L6_3["TITLE.PAY_STATION"]
        L7_3 = SV
        L7_3 = L7_3.WebhookText
        L7_3 = L7_3["DESCRIPTION.PAY_STATION"]
        L8_3 = L7_3
        L7_3 = L7_3.format
        L9_3 = SV
        L9_3 = L9_3.getCharacterName
        L10_3 = L4_2
        L9_3 = L9_3(L10_3)
        L10_3 = L3_2
        L11_3 = A1_2.price
        L12_3 = A0_2
        L13_3 = A1_2.licensePlate
        L14_3 = A2_2
        L15_3 = A1_2.spotId
        L7_3 = L7_3(L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3)
        L8_3 = 16053285
        L9_3 = L5_2
        L4_3(L5_3, L6_3, L7_3, L8_3, L9_3)
        L4_3 = TriggerClientEvent
        L5_3 = "vms_garagesv2:paidForParking"
        L6_3 = L3_2
        L7_3 = "ok"
        L8_3 = A1_2.licensePlate
        L9_3 = A1_2.price
        L4_3(L5_3, L6_3, L7_3, L8_3, L9_3)
        L4_3 = TriggerClientEvent
        L5_3 = "vms_garagesv2:updatePaidParking"
        L6_3 = -1
        L7_3 = A2_2
        L8_3 = A1_2.spotId
        L9_3 = os
        L9_3 = L9_3.time
        L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3 = L9_3()
        L4_3(L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3)
      else
        L3_3 = TriggerClientEvent
        L4_3 = "vms_garagesv2:paidForParking"
        L5_3 = L3_2
        L6_3 = "error"
        L7_3 = A1_2.licensePlate
        L8_3 = A1_2.price
        L3_3(L4_3, L5_3, L6_3, L7_3, L8_3)
      end
    else
      L2_3 = TriggerClientEvent
      L3_3 = "vms_garagesv2:paidForParking"
      L4_3 = L3_2
      L5_3 = "not_found"
      L6_3 = A1_2.licensePlate
      L7_3 = A1_2.price
      L2_3(L3_3, L4_3, L5_3, L6_3, L7_3)
    end
  end
  L8_2(L9_2, L10_2, L11_2)
end
L23_1(L24_1, L25_1)
L23_1 = RegisterNetEvent
L24_1 = "vms_garagesv2:sv:transferBetweenGarages"
function L25_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L3_2 = source
  L4_2 = Config
  L4_2 = L4_2.AllowTransferBetweenGarages
  if not L4_2 then
    return
  end
  L4_2 = SV
  L4_2 = L4_2.getPlayer
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  L5_2 = SV
  L5_2 = L5_2.getIdentifier
  L6_2 = L4_2
  L5_2 = L5_2(L6_2)
  if not A2_2 then
    return
  end
  L6_2 = Config
  L6_2 = L6_2.Garages
  L6_2 = L6_2[A0_2]
  if not L6_2 then
    return
  end
  L7_2 = tostring
  L8_2 = A1_2
  L7_2 = L7_2(L8_2)
  A1_2 = L7_2
  L7_2 = Config
  L7_2 = L7_2.Garages
  L7_2 = L7_2[A1_2]
  if not L7_2 then
    return
  end
  L8_2 = L6_2.type
  L9_2 = L7_2.type
  if L8_2 ~= L9_2 then
    return
  end
  L8_2 = Config
  L8_2 = L8_2.TransferBetweenGaragesPrice
  if L8_2 >= 1 then
    L9_2 = SV
    L9_2 = L9_2.getMoney
    L10_2 = L4_2
    L11_2 = "bank"
    L9_2 = L9_2(L10_2, L11_2)
    if L8_2 > L9_2 then
      L10_2 = TriggerClientEvent
      L11_2 = "vms_garagesv2:notification"
      L12_2 = L3_2
      L13_2 = TRANSLATE
      L14_2 = "notify.no_money"
      L13_2 = L13_2(L14_2)
      L14_2 = 5000
      L15_2 = "error"
      L10_2(L11_2, L12_2, L13_2, L14_2, L15_2)
      return
    end
  end
  L9_2 = tostring
  L10_2 = A2_2
  L9_2 = L9_2(L10_2)
  L10_2 = L9_2
  L9_2 = L9_2.match
  L11_2 = "^%s*(.-)%s*$"
  L9_2 = L9_2(L10_2, L11_2)
  L10_2 = "SELECT * FROM `%s` WHERE (`%s` LIKE @cleanedPlate OR `%s` LIKE @plate) AND `%s` = @owner AND `%s` = @type"
  L11_2 = L10_2
  L10_2 = L10_2.format
  L12_2 = SV
  L12_2 = L12_2.Database
  L12_2 = L12_2["table:owned_vehicles"]
  L13_2 = SV
  L13_2 = L13_2.Database
  L13_2 = L13_2["column:plate"]
  L14_2 = SV
  L14_2 = L14_2.Database
  L14_2 = L14_2["column:plate"]
  L15_2 = SV
  L15_2 = L15_2.Database
  L15_2 = L15_2["column:owner"]
  L16_2 = SV
  L16_2 = L16_2.Database
  L16_2 = L16_2["column:type"]
  L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  L11_2 = MySQL
  L11_2 = L11_2.Async
  L11_2 = L11_2.fetchAll
  L12_2 = L10_2
  L13_2 = {}
  L13_2["@owner"] = L5_2
  L13_2["@cleanedPlate"] = L9_2
  L13_2["@plate"] = A2_2
  L14_2 = L6_2.type
  L13_2["@type"] = L14_2
  function L14_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3
    L1_3 = A0_3[1]
    if L1_3 then
      L2_3 = "UPDATE `%s` SET garage = @garage WHERE (`%s` LIKE @cleanedPlate OR `%s` LIKE @plate)"
      L3_3 = L2_3
      L2_3 = L2_3.format
      L4_3 = SV
      L4_3 = L4_3.Database
      L4_3 = L4_3["table:owned_vehicles"]
      L5_3 = SV
      L5_3 = L5_3.Database
      L5_3 = L5_3["column:plate"]
      L6_3 = SV
      L6_3 = L6_3.Database
      L6_3 = L6_3["column:plate"]
      L2_3 = L2_3(L3_3, L4_3, L5_3, L6_3)
      L3_3 = MySQL
      L3_3 = L3_3.Async
      L3_3 = L3_3.execute
      L4_3 = L2_3
      L5_3 = {}
      L6_3 = A1_2
      L5_3["@garage"] = L6_3
      L6_3 = L9_2
      L5_3["@cleanedPlate"] = L6_3
      L6_3 = A2_2
      L5_3["@plate"] = L6_3
      L3_3(L4_3, L5_3)
      L3_3 = TriggerClientEvent
      L4_3 = "vms_garagesv2:cl:transferedPrivateVehicle"
      L5_3 = L3_2
      L6_3 = A0_2
      L3_3(L4_3, L5_3, L6_3)
      L3_3 = L8_2
      if L3_3 >= 1 then
        L3_3 = TriggerClientEvent
        L4_3 = "vms_garagesv2:notification"
        L5_3 = L3_2
        L6_3 = TRANSLATE
        L7_3 = "notify.transfer_private:successful_paid"
        L8_3 = A2_2
        L9_3 = L6_2.label
        L10_3 = L7_2.label
        L11_3 = L8_2
        L6_3 = L6_3(L7_3, L8_3, L9_3, L10_3, L11_3)
        L7_3 = 5000
        L8_3 = "success"
        L3_3(L4_3, L5_3, L6_3, L7_3, L8_3)
      else
        L3_3 = TriggerClientEvent
        L4_3 = "vms_garagesv2:notification"
        L5_3 = L3_2
        L6_3 = TRANSLATE
        L7_3 = "notify.transfer_private:successful"
        L8_3 = A2_2
        L9_3 = L6_2.label
        L10_3 = L7_2.label
        L6_3 = L6_3(L7_3, L8_3, L9_3, L10_3)
        L7_3 = 5000
        L8_3 = "success"
        L3_3(L4_3, L5_3, L6_3, L7_3, L8_3)
      end
    end
  end
  L11_2(L12_2, L13_2, L14_2)
end
L23_1(L24_1, L25_1)
L23_1 = RegisterNetEvent
L24_1 = "vms_garagesv2:sv:rentParkingSpace"
function L25_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2
  L3_2 = source
  L4_2 = SV
  L4_2 = L4_2.getPlayer
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  L5_2 = Config
  L5_2 = L5_2.Garages
  L5_2 = L5_2[A0_2]
  if not L5_2 then
    return
  end
  L6_2 = SV
  L6_2 = L6_2.getIdentifier
  L7_2 = L4_2
  L6_2 = L6_2(L7_2)
  L7_2 = L1_1
  L7_2 = L7_2[A0_2]
  if L7_2 then
    L7_2 = L1_1
    L7_2 = L7_2[A0_2]
    L7_2 = L7_2[A1_2]
    if L7_2 then
      L7_2 = L1_1
      L7_2 = L7_2[A0_2]
      L7_2 = L7_2[A1_2]
      L7_2 = L7_2.isRented
      if L7_2 then
        L7_2 = L1_1
        L7_2 = L7_2[A0_2]
        L7_2 = L7_2[A1_2]
        L7_2 = L7_2.isRented
        if L7_2 ~= L6_2 then
          L7_2 = TriggerClientEvent
          L8_2 = "vms_garagesv2:notification"
          L9_2 = L3_2
          L10_2 = TRANSLATE
          L11_2 = "notify.rent_parking:already_rented"
          L10_2 = L10_2(L11_2)
          L11_2 = 4500
          L12_2 = "info"
          L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
          return
        end
      end
    end
  end
  L7_2 = 0
  L8_2 = -1
  if -1 == A2_2 then
    L9_2 = businessGarages
    L9_2 = L9_2[A0_2]
    if L9_2 then
      L9_2 = businessGarages
      L9_2 = L9_2[A0_2]
      L9_2 = L9_2.data
      if L9_2 then
        L9_2 = businessGarages
        L9_2 = L9_2[A0_2]
        L9_2 = L9_2.data
        L9_2 = L9_2.priceForInfinity
        if nil ~= L9_2 then
          L9_2 = businessGarages
          L9_2 = L9_2[A0_2]
          L9_2 = L9_2.data
          L7_2 = L9_2.priceForInfinity
      end
    end
    else
      L7_2 = L5_2.priceForInfinity
    end
  else
    L9_2 = businessGarages
    L9_2 = L9_2[A0_2]
    if L9_2 then
      L9_2 = businessGarages
      L9_2 = L9_2[A0_2]
      L9_2 = L9_2.data
      if L9_2 then
        L9_2 = businessGarages
        L9_2 = L9_2[A0_2]
        L9_2 = L9_2.data
        L9_2 = L9_2.pricePerDay
        if nil ~= L9_2 then
          L9_2 = businessGarages
          L9_2 = L9_2[A0_2]
          L9_2 = L9_2.data
          L7_2 = L9_2.pricePerDay
      end
    end
    else
      L9_2 = L5_2.pricePerDay
      L7_2 = A2_2 * L9_2
    end
    L9_2 = A2_2 * 24
    L9_2 = L9_2 * 60
    L9_2 = L9_2 * 60
    L10_2 = os
    L10_2 = L10_2.time
    L10_2 = L10_2()
    L8_2 = L9_2 + L10_2
  end
  L9_2 = math
  L9_2 = L9_2.abs
  L10_2 = L7_2
  L9_2 = L9_2(L10_2)
  L7_2 = L9_2
  L9_2 = L1_1
  L9_2 = L9_2[A0_2]
  if not L9_2 then
    L9_2 = L1_1
    L10_2 = {}
    L9_2[A0_2] = L10_2
  end
  L9_2 = L1_1
  L9_2 = L9_2[A0_2]
  L9_2 = L9_2[A1_2]
  if not L9_2 then
    L9_2 = L1_1
    L9_2 = L9_2[A0_2]
    L10_2 = {}
    L9_2[A1_2] = L10_2
  end
  L9_2 = SV
  L9_2 = L9_2.getCharacterName
  L10_2 = L4_2
  L9_2 = L9_2(L10_2)
  L10_2 = L1_1
  L10_2 = L10_2[A0_2]
  L10_2 = L10_2[A1_2]
  L10_2 = L10_2.isRented
  if L10_2 then
    L10_2 = L1_1
    L10_2 = L10_2[A0_2]
    L10_2 = L10_2[A1_2]
    L10_2 = L10_2.isRented
    if L10_2 == L6_2 then
      L10_2 = L1_1
      L10_2 = L10_2[A0_2]
      L10_2 = L10_2[A1_2]
      L10_2 = L10_2.time
      if -1 == L10_2 then
        L10_2 = TriggerClientEvent
        L11_2 = "vms_garagesv2:notification"
        L12_2 = L3_2
        L13_2 = TRANSLATE
        L14_2 = "notify.rent_parking:cannot_rent_more"
        L13_2 = L13_2(L14_2)
        L14_2 = 4500
        L15_2 = "error"
        L10_2(L11_2, L12_2, L13_2, L14_2, L15_2)
        return
      end
      L10_2 = SV
      L10_2 = L10_2.getMoney
      L11_2 = L4_2
      L12_2 = "bank"
      L10_2 = L10_2(L11_2, L12_2)
      L11_2 = tonumber
      L12_2 = L7_2
      L11_2 = L11_2(L12_2)
      if L10_2 < L11_2 then
        L11_2 = TriggerClientEvent
        L12_2 = "vms_garagesv2:notification"
        L13_2 = L3_2
        L14_2 = TRANSLATE
        L15_2 = "notify.no_money"
        L14_2 = L14_2(L15_2)
        L15_2 = 5000
        L16_2 = "error"
        L11_2(L12_2, L13_2, L14_2, L15_2, L16_2)
        return
      end
      L11_2 = SV
      L11_2 = L11_2.removeMoney
      L12_2 = L4_2
      L13_2 = "bank"
      L14_2 = L7_2
      L11_2(L12_2, L13_2, L14_2)
      L11_2 = L5_2.businessGarage
      if L11_2 then
        L11_2 = businessGarages
        L11_2 = L11_2[A0_2]
        if L11_2 then
          L11_2 = library
          L11_2 = L11_2.AddCompanyMoney
          L12_2 = A0_2
          L13_2 = L7_2
          L14_2 = true
          function L15_2()
            local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
            L0_3 = MySQL
            L0_3 = L0_3.Async
            L0_3 = L0_3.execute
            L1_3 = "UPDATE vms_business SET data = @data WHERE id = @id"
            L2_3 = {}
            L3_3 = json
            L3_3 = L3_3.encode
            L4_3 = businessGarages
            L5_3 = A0_2
            L4_3 = L4_3[L5_3]
            L4_3 = L4_3.data
            L3_3 = L3_3(L4_3)
            L2_3["@data"] = L3_3
            L3_3 = A0_2
            L2_3["@id"] = L3_3
            L0_3(L1_3, L2_3)
            L0_3 = TriggerClientEvent
            L1_3 = "vms_garagesv2:updateBusiness"
            L2_3 = -1
            L3_3 = A0_2
            L4_3 = nil
            L5_3 = {}
            L5_3.sub = "data"
            L6_3 = businessGarages
            L7_3 = A0_2
            L6_3 = L6_3[L7_3]
            L6_3 = L6_3.data
            L5_3.value = L6_3
            L0_3(L1_3, L2_3, L3_3, L4_3, L5_3)
          end
          L11_2(L12_2, L13_2, L14_2, L15_2)
        end
      end
      if A2_2 >= 1 then
        L11_2 = L1_1
        L11_2 = L11_2[A0_2]
        L11_2 = L11_2[A1_2]
        L11_2 = L11_2.time
        L12_2 = A2_2 * 24
        L12_2 = L12_2 * 60
        L12_2 = L12_2 * 60
        L8_2 = L11_2 + L12_2
      end
      L11_2 = MySQL
      L11_2 = L11_2.Async
      L11_2 = L11_2.execute
      L12_2 = "UPDATE parkings SET ownerName = @ownerName, time = @time WHERE parking = @parking AND space = @space"
      L13_2 = {}
      L13_2["@ownerName"] = L9_2
      L13_2["@time"] = L8_2
      L13_2["@parking"] = A0_2
      L13_2["@space"] = A1_2
      L11_2(L12_2, L13_2)
  end
  else
    L10_2 = SV
    L10_2 = L10_2.getMoney
    L11_2 = L4_2
    L12_2 = "bank"
    L10_2 = L10_2(L11_2, L12_2)
    L11_2 = tonumber
    L12_2 = L7_2
    L11_2 = L11_2(L12_2)
    if L10_2 < L11_2 then
      L11_2 = TriggerClientEvent
      L12_2 = "vms_garagesv2:notification"
      L13_2 = L3_2
      L14_2 = TRANSLATE
      L15_2 = "notify.no_money"
      L14_2 = L14_2(L15_2)
      L15_2 = 5000
      L16_2 = "error"
      L11_2(L12_2, L13_2, L14_2, L15_2, L16_2)
      return
    end
    L11_2 = SV
    L11_2 = L11_2.removeMoney
    L12_2 = L4_2
    L13_2 = "bank"
    L14_2 = L7_2
    L11_2(L12_2, L13_2, L14_2)
    L11_2 = L5_2.businessGarage
    if L11_2 then
      L11_2 = businessGarages
      L11_2 = L11_2[A0_2]
      if L11_2 then
        L11_2 = library
        L11_2 = L11_2.AddCompanyMoney
        L12_2 = A0_2
        L13_2 = L7_2
        L14_2 = true
        function L15_2()
          local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
          L0_3 = MySQL
          L0_3 = L0_3.Async
          L0_3 = L0_3.execute
          L1_3 = "UPDATE vms_business SET data = @data WHERE id = @id"
          L2_3 = {}
          L3_3 = json
          L3_3 = L3_3.encode
          L4_3 = businessGarages
          L5_3 = A0_2
          L4_3 = L4_3[L5_3]
          L4_3 = L4_3.data
          L3_3 = L3_3(L4_3)
          L2_3["@data"] = L3_3
          L3_3 = A0_2
          L2_3["@id"] = L3_3
          L0_3(L1_3, L2_3)
          L0_3 = TriggerClientEvent
          L1_3 = "vms_garagesv2:updateBusiness"
          L2_3 = -1
          L3_3 = A0_2
          L4_3 = nil
          L5_3 = {}
          L5_3.sub = "data"
          L6_3 = businessGarages
          L7_3 = A0_2
          L6_3 = L6_3[L7_3]
          L6_3 = L6_3.data
          L5_3.value = L6_3
          L0_3(L1_3, L2_3, L3_3, L4_3, L5_3)
        end
        L11_2(L12_2, L13_2, L14_2, L15_2)
      end
    end
    L11_2 = MySQL
    L11_2 = L11_2.Async
    L11_2 = L11_2.execute
    L12_2 = "INSERT INTO parkings (`owner`, `ownerName`, `parking`, `space`, `time`) VALUES (@owner, @ownerName, @parking, @space, @time)"
    L13_2 = {}
    L13_2["@owner"] = L6_2
    L13_2["@ownerName"] = L9_2
    L13_2["@parking"] = A0_2
    L13_2["@space"] = A1_2
    L13_2["@time"] = L8_2
    L11_2(L12_2, L13_2)
    L11_2 = L1_1
    L11_2 = L11_2[A0_2]
    L11_2 = L11_2[A1_2]
    L11_2.isRented = L6_2
  end
  L10_2 = SV
  L10_2 = L10_2.Webhook
  L11_2 = "RENTED_PARKING_SPACE"
  L12_2 = SV
  L12_2 = L12_2.WebhookText
  L12_2 = L12_2["TITLE.RENTED_PARKING_SPACE"]
  L13_2 = SV
  L13_2 = L13_2.WebhookText
  L13_2 = L13_2["DESCRIPTION.RENTED_PARKING_SPACE"]
  L14_2 = L13_2
  L13_2 = L13_2.format
  L15_2 = SV
  L15_2 = L15_2.getCharacterName
  L16_2 = L4_2
  L15_2 = L15_2(L16_2)
  L16_2 = L3_2
  L17_2 = A1_2
  L18_2 = A0_2
  L19_2 = A2_2
  L20_2 = L7_2
  L13_2 = L13_2(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
  L14_2 = 16053285
  L15_2 = L6_2
  L10_2(L11_2, L12_2, L13_2, L14_2, L15_2)
  L10_2 = L1_1
  L10_2 = L10_2[A0_2]
  L10_2 = L10_2[A1_2]
  L10_2.ownerName = L9_2
  L10_2 = L1_1
  L10_2 = L10_2[A0_2]
  L10_2 = L10_2[A1_2]
  L11_2 = tonumber
  L12_2 = L8_2
  L11_2 = L11_2(L12_2)
  L10_2.time = L11_2
  if -1 == L8_2 then
    L10_2 = TriggerClientEvent
    L11_2 = "vms_garagesv2:notification"
    L12_2 = L3_2
    L13_2 = TRANSLATE
    L14_2 = "notify.rent_parking:rented_parking_forever"
    L15_2 = L7_2
    L13_2 = L13_2(L14_2, L15_2)
    L14_2 = 5000
    L15_2 = "success"
    L10_2(L11_2, L12_2, L13_2, L14_2, L15_2)
  else
    L10_2 = TriggerClientEvent
    L11_2 = "vms_garagesv2:notification"
    L12_2 = L3_2
    L13_2 = TRANSLATE
    L14_2 = "notify.rent_parking:rented_parking"
    L15_2 = A2_2
    if A2_2 > 1 then
      L16_2 = TRANSLATE
      L17_2 = "3dtext.timer:day"
      L16_2 = L16_2(L17_2)
      if L16_2 then
        goto lbl_347
      end
    end
    L16_2 = TRANSLATE
    L17_2 = "3dtext.timer:days"
    L16_2 = L16_2(L17_2)
    ::lbl_347::
    L17_2 = L7_2
    L13_2 = L13_2(L14_2, L15_2, L16_2, L17_2)
    L14_2 = 5000
    L15_2 = "success"
    L10_2(L11_2, L12_2, L13_2, L14_2, L15_2)
  end
  L10_2 = TriggerClientEvent
  L11_2 = "vms_garagesv2:cl:rentedParkingSpace"
  L12_2 = -1
  L13_2 = A0_2
  L14_2 = A1_2
  L15_2 = L1_1
  L15_2 = L15_2[A0_2]
  L15_2 = L15_2[A1_2]
  L10_2(L11_2, L12_2, L13_2, L14_2, L15_2)
end
L23_1(L24_1, L25_1)
L23_1 = RegisterNetEvent
L24_1 = "vms_garagesv2:sv:closedImpound"
function L25_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = source
  L1_2 = SetPlayerRoutingBucket
  L2_2 = L0_2
  L3_2 = Config
  L3_2 = L3_2.DefaultRoutingBucket
  L1_2(L2_2, L3_2)
end
L23_1(L24_1, L25_1)
L23_1 = RegisterNetEvent
L24_1 = "vms_garagesv2:sv:locateVehicle"
function L25_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  if not A1_2 then
    return
  end
  L4_2 = source
  L5_2 = SV
  L5_2 = L5_2.getPlayer
  L6_2 = L4_2
  L5_2 = L5_2(L6_2)
  if not A0_2 then
    return
  end
  L6_2 = Config
  L6_2 = L6_2.Impounds
  L6_2 = L6_2[A0_2]
  if not L6_2 then
    return
  end
  L7_2 = tostring
  L8_2 = A1_2
  L7_2 = L7_2(L8_2)
  L8_2 = L7_2
  L7_2 = L7_2.match
  L9_2 = "^%s*(.-)%s*$"
  L7_2 = L7_2(L8_2, L9_2)
  L8_2 = Config
  L8_2 = L8_2.UseVMSTuningLocator
  if L8_2 then
    L8_2 = GetResourceState
    L9_2 = "vms_tuning"
    L8_2 = L8_2(L9_2)
    if "started" == L8_2 then
      L8_2 = exports
      L8_2 = L8_2.vms_tuning
      L9_2 = L8_2
      L8_2 = L8_2.isHaveLocator
      L10_2 = L7_2
      L8_2 = L8_2(L9_2, L10_2)
      if not L8_2 then
        L8_2 = TriggerClientEvent
        L9_2 = "vms_garagesv2:notification"
        L10_2 = L4_2
        L11_2 = TRANSLATE
        L12_2 = "notify.locator.no_locator_installed"
        L11_2 = L11_2(L12_2)
        L12_2 = 5000
        L13_2 = "error"
        L8_2(L9_2, L10_2, L11_2, L12_2, L13_2)
        return
      end
    end
  end
  if A3_2 then
    L8_2 = L6_2.allowLocateByPlate
    if not L8_2 then
      return
    end
  else
    L8_2 = Config
    L8_2 = L8_2.PriceOfLocationCheck
    if L8_2 then
      L8_2 = Config
      L8_2 = L8_2.PriceOfLocationCheck
      if L8_2 >= 0 then
        L8_2 = SV
        L8_2 = L8_2.getMoney
        L9_2 = L5_2
        L10_2 = A2_2
        L8_2 = L8_2(L9_2, L10_2)
        L9_2 = tonumber
        L10_2 = Config
        L10_2 = L10_2.PriceOfLocationCheck
        L9_2 = L9_2(L10_2)
        if L8_2 < L9_2 then
          L9_2 = TriggerClientEvent
          L10_2 = "vms_garagesv2:notification"
          L11_2 = L4_2
          L12_2 = TRANSLATE
          L13_2 = "notify.no_money"
          L12_2 = L12_2(L13_2)
          L13_2 = 5000
          L14_2 = "error"
          L9_2(L10_2, L11_2, L12_2, L13_2, L14_2)
          return
        end
        L9_2 = SV
        L9_2 = L9_2.removeMoney
        L10_2 = L5_2
        L11_2 = A2_2
        L12_2 = Config
        L12_2 = L12_2.PriceOfLocationCheck
        L9_2(L10_2, L11_2, L12_2)
      end
    end
  end
  L8_2 = "SELECT * FROM `%s` WHERE (`%s` LIKE @cleanedPlate OR `%s` LIKE @plate)"
  L9_2 = L8_2
  L8_2 = L8_2.format
  L10_2 = SV
  L10_2 = L10_2.Database
  L10_2 = L10_2["table:owned_vehicles"]
  L11_2 = SV
  L11_2 = L11_2.Database
  L11_2 = L11_2["column:plate"]
  L12_2 = SV
  L12_2 = L12_2.Database
  L12_2 = L12_2["column:plate"]
  L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2)
  L9_2 = MySQL
  L9_2 = L9_2.Async
  L9_2 = L9_2.fetchAll
  L10_2 = L8_2
  L11_2 = {}
  L11_2["@cleanedPlate"] = L7_2
  L11_2["@plate"] = A1_2
  function L12_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3
    L1_3 = A0_3[1]
    if L1_3 then
      L2_3 = L1_3.netid
      if L2_3 then
        L2_3 = NetworkGetEntityFromNetworkId
        L3_3 = L1_3.netid
        L2_3 = L2_3(L3_3)
        if not L2_3 then
          L3_3 = TriggerClientEvent
          L4_3 = "vms_garagesv2:notification"
          L5_3 = L4_2
          L6_3 = TRANSLATE
          L7_3 = "notify.locator:not_found"
          L6_3 = L6_3(L7_3)
          L7_3 = 4500
          L8_3 = "error"
          L3_3(L4_3, L5_3, L6_3, L7_3, L8_3)
          return
        end
        L3_3 = DoesEntityExist
        L4_3 = L2_3
        L3_3 = L3_3(L4_3)
        if not L3_3 then
          L4_3 = TriggerClientEvent
          L5_3 = "vms_garagesv2:notification"
          L6_3 = L4_2
          L7_3 = TRANSLATE
          L8_3 = "notify.locator:not_found"
          L7_3 = L7_3(L8_3)
          L8_3 = 4500
          L9_3 = "error"
          L4_3(L5_3, L6_3, L7_3, L8_3, L9_3)
          return
        end
        L4_3 = GetEntityCoords
        L5_3 = L2_3
        L4_3 = L4_3(L5_3)
        L5_3 = TriggerClientEvent
        L6_3 = "vms_garagesv2:cl:locatedVehicle"
        L7_3 = L4_2
        L8_3 = A1_2
        L9_3 = L4_3
        L10_3 = nil
        L11_3 = A3_2
        L5_3(L6_3, L7_3, L8_3, L9_3, L10_3, L11_3)
      else
        L2_3 = Config
        L2_3 = L2_3.VehiclePersistence
        if L2_3 then
          L2_3 = L1_3.position
          if L2_3 then
            L2_3 = json
            L2_3 = L2_3.decode
            L3_3 = L1_3.position
            L2_3 = L2_3(L3_3)
            if L2_3 then
              L3_3 = TriggerClientEvent
              L4_3 = "vms_garagesv2:cl:locatedVehicle"
              L5_3 = L4_2
              L6_3 = A1_2
              L7_3 = vector3
              L8_3 = L2_3.x
              L9_3 = L2_3.y
              L10_3 = L2_3.z
              L7_3 = L7_3(L8_3, L9_3, L10_3)
              L8_3 = nil
              L9_3 = A3_2
              L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3)
            end
        end
        else
          L2_3 = A3_2
          if L2_3 then
            L2_3 = L1_3.garage
            if L2_3 then
              L2_3 = TriggerClientEvent
              L3_3 = "vms_garagesv2:cl:locatedVehicle"
              L4_3 = L4_2
              L5_3 = A1_2
              L6_3 = nil
              L7_3 = L1_3.garage
              L8_3 = A3_2
              L2_3(L3_3, L4_3, L5_3, L6_3, L7_3, L8_3)
          end
          else
            L2_3 = TriggerClientEvent
            L3_3 = "vms_garagesv2:notification"
            L4_3 = L4_2
            L5_3 = TRANSLATE
            L6_3 = "notify.locator:not_found"
            L5_3 = L5_3(L6_3)
            L6_3 = 4500
            L7_3 = "error"
            L2_3(L3_3, L4_3, L5_3, L6_3, L7_3)
          end
        end
      end
    end
  end
  L9_2(L10_2, L11_2, L12_2)
end
L23_1(L24_1, L25_1)
L23_1 = RegisterNetEvent
L24_1 = "vms_garagesv2:sv:buyCompanyVehicle"
function L25_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2
  L2_2 = source
  L3_2 = A1_2.plate
  if not L3_2 then
    return
  end
  L3_2 = SV
  L3_2 = L3_2.getPlayer
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L4_2 = SV
  L4_2 = L4_2.getIdentifier
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  L5_2 = SV
  L5_2 = L5_2.getPlayerJob
  L6_2 = L3_2
  L5_2 = L5_2(L6_2)
  L6_2 = SV
  L6_2 = L6_2.getPlayerJobGrade
  L7_2 = L3_2
  L6_2 = L6_2(L7_2)
  L7_2 = Config
  L7_2 = L7_2.Garages
  L7_2 = L7_2[A0_2]
  if not L7_2 then
    return
  end
  L8_2 = L7_2.requiredJob
  if L8_2 then
    L8_2 = L8_2[L5_2]
  end
  if not L8_2 then
    return
  end
  L8_2 = L7_2.vehiclesToOrder
  if L8_2 then
    L9_2 = A1_2.selectedModel
    L8_2 = L8_2[L9_2]
  end
  if not L8_2 then
    return
  end
  L8_2 = Config
  L8_2 = L8_2.CompanyGrades
  if L8_2 then
    L8_2 = L8_2[L5_2]
    if L8_2 then
      L9_2 = tostring
      L10_2 = L6_2
      L9_2 = L9_2(L10_2)
      L8_2 = L8_2[L9_2]
      if L8_2 then
        L8_2 = L8_2.isBoss
      end
    end
  end
  if not L8_2 then
    return
  end
  L8_2 = L7_2.vehiclesToOrder
  L9_2 = A1_2.selectedModel
  L8_2 = L8_2[L9_2]
  L9_2 = true
  L10_2 = L8_2.price
  if L10_2 then
    L10_2 = SV
    L10_2 = L10_2.getSocietyMoney
    L11_2 = L7_2.societyName
    function L12_2(A0_3)
      local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3
      if A0_3 then
        L1_3 = L8_2.price
        if not (A0_3 < L1_3) then
          goto lbl_18
        end
      end
      L1_3 = TriggerClientEvent
      L2_3 = "vms_garagesv2:notification"
      L3_3 = L2_2
      L4_3 = TRANSLATE
      L5_3 = "notify.manage:company_dont_have_money"
      L4_3 = L4_3(L5_3)
      L5_3 = 4000
      L6_3 = "error"
      L1_3(L2_3, L3_3, L4_3, L5_3, L6_3)
      L1_3 = false
      L9_2 = L1_3
      do return end
      ::lbl_18::
      L1_3 = SV
      L1_3 = L1_3.Webhook
      L2_3 = "PURCHASED_COMPANY_VEH"
      L3_3 = SV
      L3_3 = L3_3.WebhookText
      L3_3 = L3_3["TITLE.PURCHASED_COMPANY_VEH"]
      L4_3 = SV
      L4_3 = L4_3.WebhookText
      L4_3 = L4_3["DESCRIPTION.PURCHASED_COMPANY_VEH"]
      L5_3 = L4_3
      L4_3 = L4_3.format
      L6_3 = SV
      L6_3 = L6_3.getCharacterName
      L7_3 = L3_2
      L6_3 = L6_3(L7_3)
      L7_3 = L2_2
      L8_3 = A1_2.selectedModel
      L9_3 = A1_2.plate
      L10_3 = L8_2.price
      L11_3 = A1_2.selectedGrade
      if L11_3 then
        L11_3 = L5_2
        L12_3 = ":"
        L13_3 = A1_2.selectedGrade
        L11_3 = L11_3 .. L12_3 .. L13_3
        if L11_3 then
          goto lbl_46
        end
      end
      L11_3 = L5_2
      ::lbl_46::
      L4_3 = L4_3(L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3)
      L5_3 = 16053285
      L6_3 = L4_2
      L1_3(L2_3, L3_3, L4_3, L5_3, L6_3)
      L1_3 = SV
      L1_3 = L1_3.removeSocietyMoney
      L2_3 = L7_2.societyName
      L3_3 = L8_2.price
      L1_3(L2_3, L3_3)
    end
    L10_2(L11_2, L12_2)
    if not L9_2 then
      return
    end
  else
    L10_2 = SV
    L10_2 = L10_2.Webhook
    L11_2 = "GET_COMPANY_VEH"
    L12_2 = SV
    L12_2 = L12_2.WebhookText
    L12_2 = L12_2["TITLE.GET_COMPANY_VEH"]
    L13_2 = SV
    L13_2 = L13_2.WebhookText
    L13_2 = L13_2["DESCRIPTION.GET_COMPANY_VEH"]
    L14_2 = L13_2
    L13_2 = L13_2.format
    L15_2 = SV
    L15_2 = L15_2.getCharacterName
    L16_2 = L3_2
    L15_2 = L15_2(L16_2)
    L16_2 = L2_2
    L17_2 = A1_2.selectedModel
    L18_2 = A1_2.plate
    L19_2 = A1_2.selectedGrade
    if L19_2 then
      L19_2 = L5_2
      L20_2 = ":"
      L21_2 = A1_2.selectedGrade
      L19_2 = L19_2 .. L20_2 .. L21_2
      if L19_2 then
        goto lbl_103
      end
    end
    L19_2 = L5_2
    ::lbl_103::
    L13_2 = L13_2(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
    L14_2 = 16053285
    L15_2 = L4_2
    L10_2(L11_2, L12_2, L13_2, L14_2, L15_2)
  end
  L10_2 = "INSERT INTO `%s` (`%s`, `%s`, `%s`, `%s`, `%s`, `garage`, `parking_date`%s) VALUES (@owner, @company, @plate, @vehicle, @type, @garage, @parking_date%s)"
  L11_2 = L10_2
  L10_2 = L10_2.format
  L12_2 = SV
  L12_2 = L12_2.Database
  L12_2 = L12_2["table:owned_vehicles"]
  L13_2 = SV
  L13_2 = L13_2.Database
  L13_2 = L13_2["column:owner"]
  L14_2 = SV
  L14_2 = L14_2.Database
  L14_2 = L14_2["column:company"]
  L15_2 = SV
  L15_2 = L15_2.Database
  L15_2 = L15_2["column:plate"]
  L16_2 = SV
  L16_2 = L16_2.Database
  L16_2 = L16_2["column:vehicle"]
  L17_2 = SV
  L17_2 = L17_2.Database
  L17_2 = L17_2["column:type"]
  L18_2 = Config
  L18_2 = L18_2.UseVMSCityHall
  if L18_2 then
    L18_2 = Config
    L18_2 = L18_2.UseCityHallVIN
    if L18_2 then
      L18_2 = ", `vin`"
      if L18_2 then
        goto lbl_139
      end
    end
  end
  L18_2 = ""
  ::lbl_139::
  L19_2 = Config
  L19_2 = L19_2.UseVMSCityHall
  if L19_2 then
    L19_2 = Config
    L19_2 = L19_2.UseCityHallVIN
    if L19_2 then
      L19_2 = ", @vin"
      if L19_2 then
        goto lbl_151
      end
    end
  end
  L19_2 = ""
  ::lbl_151::
  L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
  L11_2 = MySQL
  L11_2 = L11_2.Async
  L11_2 = L11_2.execute
  L12_2 = L10_2
  L13_2 = {}
  L14_2 = A1_2.selectedPlayer
  if not L14_2 then
    L14_2 = nil
  end
  L13_2["@owner"] = L14_2
  L14_2 = A1_2.selectedGrade
  if nil ~= L14_2 then
    L14_2 = L5_2
    L15_2 = ":"
    L16_2 = A1_2.selectedGrade
    L14_2 = L14_2 .. L15_2 .. L16_2
    if L14_2 then
      goto lbl_173
    end
  end
  L14_2 = L5_2
  ::lbl_173::
  L13_2["@company"] = L14_2
  L14_2 = A1_2.plate
  L13_2["@plate"] = L14_2
  L14_2 = json
  L14_2 = L14_2.encode
  L15_2 = {}
  L16_2 = GetHashKey
  L17_2 = A1_2.selectedModel
  L16_2 = L16_2(L17_2)
  L15_2.model = L16_2
  L16_2 = A1_2.plate
  L15_2.plate = L16_2
  L14_2 = L14_2(L15_2)
  L13_2["@vehicle"] = L14_2
  L14_2 = L7_2.type
  L13_2["@type"] = L14_2
  L13_2["@garage"] = A0_2
  L14_2 = os
  L14_2 = L14_2.time
  L14_2 = L14_2()
  L13_2["@parking_date"] = L14_2
  L14_2 = Config
  L14_2 = L14_2.UseVMSCityHall
  if L14_2 then
    L14_2 = Config
    L14_2 = L14_2.UseCityHallVIN
    if L14_2 then
      L14_2 = exports
      L15_2 = Config
      L15_2 = L15_2.VMSCityHallResource
      L14_2 = L14_2[L15_2]
      L15_2 = L14_2
      L14_2 = L14_2.GenerateVIN
      L14_2 = L14_2(L15_2)
    end
  end
  L13_2["@vin"] = L14_2
  L11_2(L12_2, L13_2)
  L11_2 = TriggerClientEvent
  L12_2 = "vms_garagesv2:cl:purchasedCompanyVehicle"
  L13_2 = L2_2
  L11_2(L12_2, L13_2)
end
L23_1(L24_1, L25_1)
L23_1 = RegisterNetEvent
L24_1 = "vms_garagesv2:sv:transferCompanyVehicle"
function L25_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L2_2 = source
  L3_2 = A1_2.plate
  if not L3_2 then
    return
  end
  L3_2 = SV
  L3_2 = L3_2.getPlayer
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L4_2 = SV
  L4_2 = L4_2.getIdentifier
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  L5_2 = SV
  L5_2 = L5_2.getPlayerJob
  L6_2 = L3_2
  L5_2 = L5_2(L6_2)
  L6_2 = SV
  L6_2 = L6_2.getPlayerJobGrade
  L7_2 = L3_2
  L6_2 = L6_2(L7_2)
  L7_2 = Config
  L7_2 = L7_2.Garages
  L7_2 = L7_2[A0_2]
  if not L7_2 then
    return
  end
  L8_2 = L7_2.requiredJob
  if L8_2 then
    L8_2 = L8_2[L5_2]
  end
  if not L8_2 then
    return
  end
  L8_2 = Config
  L8_2 = L8_2.CompanyGrades
  if L8_2 then
    L8_2 = L8_2[L5_2]
    if L8_2 then
      L9_2 = tostring
      L10_2 = L6_2
      L9_2 = L9_2(L10_2)
      L8_2 = L8_2[L9_2]
      if L8_2 then
        L8_2 = L8_2.isBoss
      end
    end
  end
  if not L8_2 then
    return
  end
  L8_2 = tostring
  L9_2 = A1_2.plate
  L8_2 = L8_2(L9_2)
  L9_2 = L8_2
  L8_2 = L8_2.match
  L10_2 = "^%s*(.-)%s*$"
  L8_2 = L8_2(L9_2, L10_2)
  L9_2 = "UPDATE `%s` SET `%s` = @owner, `%s` = @company WHERE (`%s` LIKE @cleanedPlate OR `%s` LIKE @plate)"
  L10_2 = L9_2
  L9_2 = L9_2.format
  L11_2 = SV
  L11_2 = L11_2.Database
  L11_2 = L11_2["table:owned_vehicles"]
  L12_2 = SV
  L12_2 = L12_2.Database
  L12_2 = L12_2["column:owner"]
  L13_2 = SV
  L13_2 = L13_2.Database
  L13_2 = L13_2["column:company"]
  L14_2 = SV
  L14_2 = L14_2.Database
  L14_2 = L14_2["column:plate"]
  L15_2 = SV
  L15_2 = L15_2.Database
  L15_2 = L15_2["column:plate"]
  L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  L10_2 = MySQL
  L10_2 = L10_2.Async
  L10_2 = L10_2.execute
  L11_2 = L9_2
  L12_2 = {}
  L13_2 = A1_2.player
  if not L13_2 then
    L13_2 = nil
  end
  L12_2["@owner"] = L13_2
  L13_2 = A1_2.grade
  if L13_2 then
    L13_2 = L5_2
    L14_2 = ":"
    L15_2 = A1_2.grade
    L13_2 = L13_2 .. L14_2 .. L15_2
    if L13_2 then
      goto lbl_97
    end
  end
  L13_2 = L5_2
  ::lbl_97::
  L12_2["@company"] = L13_2
  L12_2["@cleanedPlate"] = L8_2
  L13_2 = A1_2.plate
  L12_2["@plate"] = L13_2
  L10_2(L11_2, L12_2)
  L10_2 = A1_2.player
  if L10_2 then
    L10_2 = TriggerClientEvent
    L11_2 = "vms_garagesv2:notification"
    L12_2 = L2_2
    L13_2 = TRANSLATE
    L14_2 = "notify.manage:transfered_vehicle_for_employee"
    L15_2 = A1_2.plate
    L16_2 = A1_2.playerName
    L13_2 = L13_2(L14_2, L15_2, L16_2)
    L14_2 = 4500
    L15_2 = "success"
    L10_2(L11_2, L12_2, L13_2, L14_2, L15_2)
  else
    L10_2 = A1_2.grade
    if L10_2 then
      L10_2 = TriggerClientEvent
      L11_2 = "vms_garagesv2:notification"
      L12_2 = L2_2
      L13_2 = TRANSLATE
      L14_2 = "notify.manage:transfered_vehicle_for_grade"
      L15_2 = A1_2.plate
      L16_2 = Config
      L16_2 = L16_2.CompanyGrades
      L16_2 = L16_2[L5_2]
      L17_2 = tostring
      L18_2 = A1_2.grade
      L17_2 = L17_2(L18_2)
      L16_2 = L16_2[L17_2]
      L16_2 = L16_2.label
      L13_2 = L13_2(L14_2, L15_2, L16_2)
      L14_2 = 4500
      L15_2 = "success"
      L10_2(L11_2, L12_2, L13_2, L14_2, L15_2)
    else
      L10_2 = TriggerClientEvent
      L11_2 = "vms_garagesv2:notification"
      L12_2 = L2_2
      L13_2 = TRANSLATE
      L14_2 = "notify.manage:transfered_vehicle_for_all_employees"
      L15_2 = A1_2.plate
      L13_2 = L13_2(L14_2, L15_2)
      L14_2 = 4500
      L15_2 = "success"
      L10_2(L11_2, L12_2, L13_2, L14_2, L15_2)
    end
  end
end
L23_1(L24_1, L25_1)
L23_1 = RegisterNetEvent
L24_1 = "vms_garagesv2:sv:buyGangVehicle"
function L25_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2
  L2_2 = source
  L3_2 = A1_2.plate
  if not L3_2 then
    return
  end
  L3_2 = SV
  L3_2 = L3_2.getPlayer
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L4_2 = SV
  L4_2 = L4_2.getIdentifier
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  L5_2 = SV
  L5_2 = L5_2.getPlayerGang
  L6_2 = L3_2
  L5_2 = L5_2(L6_2)
  L6_2 = SV
  L6_2 = L6_2.getPlayerGangGrade
  L7_2 = L3_2
  L6_2 = L6_2(L7_2)
  L7_2 = Config
  L7_2 = L7_2.Garages
  L7_2 = L7_2[A0_2]
  if not L7_2 then
    return
  end
  L8_2 = L7_2.requiredGang
  if L8_2 then
    L8_2 = L8_2[L5_2]
  end
  if not L8_2 then
    return
  end
  L8_2 = L7_2.vehiclesToOrder
  if L8_2 then
    L9_2 = A1_2.selectedModel
    L8_2 = L8_2[L9_2]
  end
  if not L8_2 then
    return
  end
  L8_2 = Config
  L8_2 = L8_2.GangGrades
  if L8_2 then
    L8_2 = L8_2[L5_2]
    if L8_2 then
      L9_2 = tostring
      L10_2 = L6_2
      L9_2 = L9_2(L10_2)
      L8_2 = L8_2[L9_2]
      if L8_2 then
        L8_2 = L8_2.isBoss
      end
    end
  end
  if not L8_2 then
    return
  end
  L8_2 = L7_2.vehiclesToOrder
  L9_2 = A1_2.selectedModel
  L8_2 = L8_2[L9_2]
  L9_2 = true
  L10_2 = L8_2.price
  if L10_2 then
    L10_2 = SV
    L10_2 = L10_2.getGangSocietyMoney
    L11_2 = L3_2
    L12_2 = L7_2.societyName
    function L13_2(A0_3)
      local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3
      if A0_3 then
        L1_3 = L8_2.price
        if not (A0_3 < L1_3) then
          goto lbl_18
        end
      end
      L1_3 = TriggerClientEvent
      L2_3 = "vms_garagesv2:notification"
      L3_3 = L2_2
      L4_3 = TRANSLATE
      L5_3 = "notify.manage_gang:gang_dont_have_money"
      L4_3 = L4_3(L5_3)
      L5_3 = 4000
      L6_3 = "error"
      L1_3(L2_3, L3_3, L4_3, L5_3, L6_3)
      L1_3 = false
      L9_2 = L1_3
      do return end
      ::lbl_18::
      L1_3 = SV
      L1_3 = L1_3.Webhook
      L2_3 = "PURCHASED_GANG_VEH"
      L3_3 = SV
      L3_3 = L3_3.WebhookText
      L3_3 = L3_3["TITLE.PURCHASED_GANG_VEH"]
      L4_3 = SV
      L4_3 = L4_3.WebhookText
      L4_3 = L4_3["DESCRIPTION.PURCHASED_GANG_VEH"]
      L5_3 = L4_3
      L4_3 = L4_3.format
      L6_3 = SV
      L6_3 = L6_3.getCharacterName
      L7_3 = L3_2
      L6_3 = L6_3(L7_3)
      L7_3 = L2_2
      L8_3 = A1_2.selectedModel
      L9_3 = A1_2.plate
      L10_3 = L8_2.price
      L11_3 = A1_2.selectedGrade
      if L11_3 then
        L11_3 = L5_2
        L12_3 = ":"
        L13_3 = A1_2.selectedGrade
        L11_3 = L11_3 .. L12_3 .. L13_3
        if L11_3 then
          goto lbl_46
        end
      end
      L11_3 = L5_2
      ::lbl_46::
      L4_3 = L4_3(L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3)
      L5_3 = 16053285
      L6_3 = L4_2
      L1_3(L2_3, L3_3, L4_3, L5_3, L6_3)
      L1_3 = SV
      L1_3 = L1_3.removeGangSocietyMoney
      L2_3 = L3_2
      L3_3 = L7_2.societyName
      L4_3 = L8_2.price
      L1_3(L2_3, L3_3, L4_3)
    end
    L10_2(L11_2, L12_2, L13_2)
    if not L9_2 then
      return
    end
  else
    L10_2 = SV
    L10_2 = L10_2.Webhook
    L11_2 = "GET_GANG_VEH"
    L12_2 = SV
    L12_2 = L12_2.WebhookText
    L12_2 = L12_2["TITLE.GET_GANG_VEH"]
    L13_2 = SV
    L13_2 = L13_2.WebhookText
    L13_2 = L13_2["DESCRIPTION.GET_GANG_VEH"]
    L14_2 = L13_2
    L13_2 = L13_2.format
    L15_2 = SV
    L15_2 = L15_2.getCharacterName
    L16_2 = L3_2
    L15_2 = L15_2(L16_2)
    L16_2 = L2_2
    L17_2 = A1_2.selectedModel
    L18_2 = A1_2.plate
    L19_2 = A1_2.selectedGrade
    if L19_2 then
      L19_2 = L5_2
      L20_2 = ":"
      L21_2 = A1_2.selectedGrade
      L19_2 = L19_2 .. L20_2 .. L21_2
      if L19_2 then
        goto lbl_104
      end
    end
    L19_2 = L5_2
    ::lbl_104::
    L13_2 = L13_2(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
    L14_2 = 16053285
    L15_2 = L4_2
    L10_2(L11_2, L12_2, L13_2, L14_2, L15_2)
  end
  L10_2 = "INSERT INTO `%s` (`%s`, `%s`, `%s`, `%s`, `%s`, `garage`, `parking_date`%s) VALUES (@owner, @gang, @plate, @vehicle, @type, @garage, @parking_date%s)"
  L11_2 = L10_2
  L10_2 = L10_2.format
  L12_2 = SV
  L12_2 = L12_2.Database
  L12_2 = L12_2["table:owned_vehicles"]
  L13_2 = SV
  L13_2 = L13_2.Database
  L13_2 = L13_2["column:owner"]
  L14_2 = SV
  L14_2 = L14_2.Database
  L14_2 = L14_2["column:gang"]
  L15_2 = SV
  L15_2 = L15_2.Database
  L15_2 = L15_2["column:plate"]
  L16_2 = SV
  L16_2 = L16_2.Database
  L16_2 = L16_2["column:vehicle"]
  L17_2 = SV
  L17_2 = L17_2.Database
  L17_2 = L17_2["column:type"]
  L18_2 = Config
  L18_2 = L18_2.UseVMSCityHall
  if L18_2 then
    L18_2 = Config
    L18_2 = L18_2.UseCityHallVIN
    if L18_2 then
      L18_2 = ", `vin`"
      if L18_2 then
        goto lbl_140
      end
    end
  end
  L18_2 = ""
  ::lbl_140::
  L19_2 = Config
  L19_2 = L19_2.UseVMSCityHall
  if L19_2 then
    L19_2 = Config
    L19_2 = L19_2.UseCityHallVIN
    if L19_2 then
      L19_2 = ", @vin"
      if L19_2 then
        goto lbl_152
      end
    end
  end
  L19_2 = ""
  ::lbl_152::
  L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
  L11_2 = MySQL
  L11_2 = L11_2.Async
  L11_2 = L11_2.execute
  L12_2 = L10_2
  L13_2 = {}
  L14_2 = A1_2.selectedPlayer
  if not L14_2 then
    L14_2 = nil
  end
  L13_2["@owner"] = L14_2
  L14_2 = A1_2.selectedGrade
  if L14_2 then
    L14_2 = L5_2
    L15_2 = ":"
    L16_2 = A1_2.selectedGrade
    L14_2 = L14_2 .. L15_2 .. L16_2
    if L14_2 then
      goto lbl_174
    end
  end
  L14_2 = L5_2
  ::lbl_174::
  L13_2["@gang"] = L14_2
  L14_2 = A1_2.plate
  L13_2["@plate"] = L14_2
  L14_2 = json
  L14_2 = L14_2.encode
  L15_2 = {}
  L16_2 = GetHashKey
  L17_2 = A1_2.selectedModel
  L16_2 = L16_2(L17_2)
  L15_2.model = L16_2
  L16_2 = A1_2.plate
  L15_2.plate = L16_2
  L14_2 = L14_2(L15_2)
  L13_2["@vehicle"] = L14_2
  L14_2 = L7_2.type
  L13_2["@type"] = L14_2
  L13_2["@garage"] = A0_2
  L14_2 = os
  L14_2 = L14_2.time
  L14_2 = L14_2()
  L13_2["@parking_date"] = L14_2
  L14_2 = Config
  L14_2 = L14_2.UseVMSCityHall
  if L14_2 then
    L14_2 = Config
    L14_2 = L14_2.UseCityHallVIN
    if L14_2 then
      L14_2 = exports
      L15_2 = Config
      L15_2 = L15_2.VMSCityHallResource
      L14_2 = L14_2[L15_2]
      L15_2 = L14_2
      L14_2 = L14_2.GenerateVIN
      L14_2 = L14_2(L15_2)
    end
  end
  L13_2["@vin"] = L14_2
  L11_2(L12_2, L13_2)
  L11_2 = TriggerClientEvent
  L12_2 = "vms_garagesv2:cl:purchasedGangVehicle"
  L13_2 = L2_2
  L11_2(L12_2, L13_2)
end
L23_1(L24_1, L25_1)
L23_1 = RegisterNetEvent
L24_1 = "vms_garagesv2:sv:transferGangVehicle"
function L25_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L2_2 = source
  L3_2 = A1_2.plate
  if not L3_2 then
    return
  end
  L3_2 = SV
  L3_2 = L3_2.getPlayer
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L4_2 = SV
  L4_2 = L4_2.getIdentifier
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  L5_2 = SV
  L5_2 = L5_2.getPlayerGang
  L6_2 = L3_2
  L5_2 = L5_2(L6_2)
  if not L5_2 then
    L5_2 = "unknown"
  end
  L6_2 = SV
  L6_2 = L6_2.getPlayerGangGrade
  L7_2 = L3_2
  L6_2 = L6_2(L7_2)
  if not L6_2 then
    L6_2 = "unknown"
  end
  L7_2 = Config
  L7_2 = L7_2.Garages
  L7_2 = L7_2[A0_2]
  if not L7_2 then
    return
  end
  L8_2 = L7_2.requiredGang
  if L8_2 then
    L8_2 = L8_2[L5_2]
  end
  if not L8_2 then
    return
  end
  L8_2 = Config
  L8_2 = L8_2.GangGrades
  if L8_2 then
    L8_2 = L8_2[L5_2]
    if L8_2 then
      L9_2 = tostring
      L10_2 = L6_2
      L9_2 = L9_2(L10_2)
      L8_2 = L8_2[L9_2]
      if L8_2 then
        L8_2 = L8_2.isBoss
      end
    end
  end
  if not L8_2 then
    return
  end
  L8_2 = tostring
  L9_2 = A1_2.plate
  L8_2 = L8_2(L9_2)
  L9_2 = L8_2
  L8_2 = L8_2.match
  L10_2 = "^%s*(.-)%s*$"
  L8_2 = L8_2(L9_2, L10_2)
  L9_2 = "UPDATE `%s` SET `%s` = @owner, `%s` = @gang WHERE (`%s` LIKE @cleanedPlate OR `%s` LIKE @plate)"
  L10_2 = L9_2
  L9_2 = L9_2.format
  L11_2 = SV
  L11_2 = L11_2.Database
  L11_2 = L11_2["table:owned_vehicles"]
  L12_2 = SV
  L12_2 = L12_2.Database
  L12_2 = L12_2["column:owner"]
  L13_2 = SV
  L13_2 = L13_2.Database
  L13_2 = L13_2["column:gang"]
  L14_2 = SV
  L14_2 = L14_2.Database
  L14_2 = L14_2["column:plate"]
  L15_2 = SV
  L15_2 = L15_2.Database
  L15_2 = L15_2["column:plate"]
  L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  L10_2 = MySQL
  L10_2 = L10_2.Async
  L10_2 = L10_2.execute
  L11_2 = L9_2
  L12_2 = {}
  L13_2 = A1_2.player
  if not L13_2 then
    L13_2 = nil
  end
  L12_2["@owner"] = L13_2
  L13_2 = A1_2.grade
  if L13_2 then
    L13_2 = L5_2
    L14_2 = ":"
    L15_2 = A1_2.grade
    L13_2 = L13_2 .. L14_2 .. L15_2
    if L13_2 then
      goto lbl_103
    end
  end
  L13_2 = L5_2
  ::lbl_103::
  L12_2["@gang"] = L13_2
  L12_2["@cleanedPlate"] = L8_2
  L13_2 = A1_2.plate
  L12_2["@plate"] = L13_2
  L10_2(L11_2, L12_2)
  L10_2 = A1_2.player
  if L10_2 then
    L10_2 = TriggerClientEvent
    L11_2 = "vms_garagesv2:notification"
    L12_2 = L2_2
    L13_2 = TRANSLATE
    L14_2 = "notify.manage_gang:transfered_vehicle_for_member"
    L15_2 = A1_2.plate
    L16_2 = A1_2.playerName
    L13_2 = L13_2(L14_2, L15_2, L16_2)
    L14_2 = 4500
    L15_2 = "success"
    L10_2(L11_2, L12_2, L13_2, L14_2, L15_2)
  else
    L10_2 = A1_2.grade
    if L10_2 then
      L10_2 = TriggerClientEvent
      L11_2 = "vms_garagesv2:notification"
      L12_2 = L2_2
      L13_2 = TRANSLATE
      L14_2 = "notify.manage_gang:transfered_vehicle_for_grade"
      L15_2 = A1_2.plate
      L16_2 = Config
      L16_2 = L16_2.GangGrades
      L16_2 = L16_2[L5_2]
      L17_2 = tostring
      L18_2 = A1_2.grade
      L17_2 = L17_2(L18_2)
      L16_2 = L16_2[L17_2]
      L16_2 = L16_2.label
      L13_2 = L13_2(L14_2, L15_2, L16_2)
      L14_2 = 4500
      L15_2 = "success"
      L10_2(L11_2, L12_2, L13_2, L14_2, L15_2)
    else
      L10_2 = TriggerClientEvent
      L11_2 = "vms_garagesv2:notification"
      L12_2 = L2_2
      L13_2 = TRANSLATE
      L14_2 = "notify.manage_gang:transfered_vehicle_for_all_member"
      L15_2 = A1_2.plate
      L13_2 = L13_2(L14_2, L15_2)
      L14_2 = 4500
      L15_2 = "success"
      L10_2(L11_2, L12_2, L13_2, L14_2, L15_2)
    end
  end
end
L23_1(L24_1, L25_1)
L23_1 = RegisterNetEvent
L24_1 = "vms_garagesv2:withdraw"
function L25_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L2_2 = source
  L3_2 = SV
  L3_2 = L3_2.getPlayer
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L4_2 = SV
  L4_2 = L4_2.getIdentifier
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  if not A0_2 then
    return
  end
  L5_2 = businessGarages
  L5_2 = L5_2[A0_2]
  if not L5_2 then
    return
  end
  L5_2 = businessGarages
  L5_2 = L5_2[A0_2]
  L5_2 = L5_2.owner
  if L4_2 ~= L5_2 then
    L5_2 = TriggerClientEvent
    L6_2 = "vms_garagesv2:notification"
    L7_2 = L2_2
    L8_2 = TRANSLATE
    L9_2 = "notify.you_are_not_owner"
    L8_2 = L8_2(L9_2)
    L9_2 = 5500
    L10_2 = "error"
    L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
    return
  end
  L5_2 = library
  L5_2 = L5_2.GetCompanyMoney
  L6_2 = A0_2
  L5_2 = L5_2(L6_2)
  if A1_2 > L5_2 then
    L5_2 = TriggerClientEvent
    L6_2 = "vms_garagesv2:notification"
    L7_2 = L2_2
    L8_2 = TRANSLATE
    L9_2 = "notify.balance:parking_dont_have_that_money"
    L8_2 = L8_2(L9_2)
    L9_2 = 5500
    L10_2 = "error"
    L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
    return
  end
  L5_2 = TriggerClientEvent
  L6_2 = "vms_garagesv2:notification"
  L7_2 = L2_2
  L8_2 = TRANSLATE
  L9_2 = "notify.balance:withdraw"
  L10_2 = A1_2
  L8_2 = L8_2(L9_2, L10_2)
  L9_2 = 6500
  L10_2 = "success"
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
  L5_2 = SV
  L5_2 = L5_2.addMoney
  L6_2 = L3_2
  L7_2 = "cash"
  L8_2 = A1_2
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = library
  L5_2 = L5_2.RemoveCompanyMoney
  L6_2 = A0_2
  L7_2 = A1_2
  function L8_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L0_3 = MySQL
    L0_3 = L0_3.Async
    L0_3 = L0_3.execute
    L1_3 = "UPDATE vms_business SET data = @data WHERE id = @id"
    L2_3 = {}
    L3_3 = json
    L3_3 = L3_3.encode
    L4_3 = businessGarages
    L5_3 = A0_2
    L4_3 = L4_3[L5_3]
    L4_3 = L4_3.data
    L3_3 = L3_3(L4_3)
    L2_3["@data"] = L3_3
    L3_3 = A0_2
    L2_3["@id"] = L3_3
    L0_3(L1_3, L2_3)
    L0_3 = TriggerClientEvent
    L1_3 = "vms_garagesv2:updateBusiness"
    L2_3 = L2_2
    L3_3 = A0_2
    L4_3 = nil
    L5_3 = {}
    L5_3.sub = "balance"
    L6_3 = businessGarages
    L7_3 = A0_2
    L6_3 = L6_3[L7_3]
    L6_3 = L6_3.data
    L6_3 = L6_3.balance
    L5_3.value = L6_3
    L0_3(L1_3, L2_3, L3_3, L4_3, L5_3)
  end
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = SV
  L5_2 = L5_2.Webhook
  L6_2 = "WITHDRAW"
  L7_2 = SV
  L7_2 = L7_2.WebhookText
  L7_2 = L7_2["TITLE.WITHDRAW"]
  L8_2 = SV
  L8_2 = L8_2.WebhookText
  L8_2 = L8_2["DESCRIPTION.WITHDRAW"]
  L9_2 = L8_2
  L8_2 = L8_2.format
  L10_2 = SV
  L10_2 = L10_2.getCharacterName
  L11_2 = L3_2
  L10_2 = L10_2(L11_2)
  L11_2 = L2_2
  L12_2 = A1_2
  L13_2 = A0_2
  L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2)
  L9_2 = 16053285
  L10_2 = L4_2
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
end
L23_1(L24_1, L25_1)
L23_1 = RegisterNetEvent
L24_1 = "vms_garagesv2:deposit"
function L25_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L2_2 = source
  L3_2 = SV
  L3_2 = L3_2.getPlayer
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L4_2 = SV
  L4_2 = L4_2.getIdentifier
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  if not A0_2 then
    return
  end
  L5_2 = businessGarages
  L5_2 = L5_2[A0_2]
  if not L5_2 then
    return
  end
  L5_2 = businessGarages
  L5_2 = L5_2[A0_2]
  L5_2 = L5_2.owner
  if L4_2 ~= L5_2 then
    L5_2 = TriggerClientEvent
    L6_2 = "vms_garagesv2:notification"
    L7_2 = L2_2
    L8_2 = TRANSLATE
    L9_2 = "notify.you_are_not_owner"
    L8_2 = L8_2(L9_2)
    L9_2 = 5500
    L10_2 = "error"
    L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
    return
  end
  L5_2 = SV
  L5_2 = L5_2.getMoney
  L6_2 = L3_2
  L7_2 = "cash"
  L5_2 = L5_2(L6_2, L7_2)
  if A1_2 > L5_2 then
    L5_2 = TriggerClientEvent
    L6_2 = "vms_garagesv2:notification"
    L7_2 = L2_2
    L8_2 = TRANSLATE
    L9_2 = "notify.balance:you_dont_have_that_money"
    L8_2 = L8_2(L9_2)
    L9_2 = 5500
    L10_2 = "error"
    L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
    return
  end
  L5_2 = TriggerClientEvent
  L6_2 = "vms_garagesv2:notification"
  L7_2 = L2_2
  L8_2 = TRANSLATE
  L9_2 = "notify.balance:deposit"
  L10_2 = A1_2
  L8_2 = L8_2(L9_2, L10_2)
  L9_2 = 6500
  L10_2 = "success"
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
  L5_2 = SV
  L5_2 = L5_2.removeMoney
  L6_2 = L3_2
  L7_2 = "cash"
  L8_2 = A1_2
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = library
  L5_2 = L5_2.AddCompanyMoney
  L6_2 = A0_2
  L7_2 = A1_2
  L8_2 = false
  function L9_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L0_3 = MySQL
    L0_3 = L0_3.Async
    L0_3 = L0_3.execute
    L1_3 = "UPDATE vms_business SET data = @data WHERE id = @id"
    L2_3 = {}
    L3_3 = json
    L3_3 = L3_3.encode
    L4_3 = businessGarages
    L5_3 = A0_2
    L4_3 = L4_3[L5_3]
    L4_3 = L4_3.data
    L3_3 = L3_3(L4_3)
    L2_3["@data"] = L3_3
    L3_3 = A0_2
    L2_3["@id"] = L3_3
    L0_3(L1_3, L2_3)
    L0_3 = TriggerClientEvent
    L1_3 = "vms_garagesv2:updateBusiness"
    L2_3 = L2_2
    L3_3 = A0_2
    L4_3 = nil
    L5_3 = {}
    L5_3.sub = "balance"
    L6_3 = library
    L6_3 = L6_3.GetCompanyMoney
    L7_3 = A0_2
    L6_3 = L6_3(L7_3)
    L5_3.value = L6_3
    L0_3(L1_3, L2_3, L3_3, L4_3, L5_3)
  end
  L5_2(L6_2, L7_2, L8_2, L9_2)
  L5_2 = SV
  L5_2 = L5_2.Webhook
  L6_2 = "DEPOSIT"
  L7_2 = SV
  L7_2 = L7_2.WebhookText
  L7_2 = L7_2["TITLE.DEPOSIT"]
  L8_2 = SV
  L8_2 = L8_2.WebhookText
  L8_2 = L8_2["DESCRIPTION.DEPOSIT"]
  L9_2 = L8_2
  L8_2 = L8_2.format
  L10_2 = SV
  L10_2 = L10_2.getCharacterName
  L11_2 = L3_2
  L10_2 = L10_2(L11_2)
  L11_2 = L2_2
  L12_2 = A1_2
  L13_2 = A0_2
  L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2)
  L9_2 = 16053285
  L10_2 = L4_2
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
end
L23_1(L24_1, L25_1)
L23_1 = RegisterNetEvent
L24_1 = "vms_garagesv2:sellAutomatically"
function L25_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = source
  L2_2 = businessGarages
  L2_2 = L2_2[A0_2]
  if not L2_2 then
    return
  end
  L2_2 = SV
  L2_2 = L2_2.getPlayer
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L3_2 = SV
  L3_2 = L3_2.getIdentifier
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L4_2 = businessGarages
  L4_2 = L4_2[A0_2]
  L4_2 = L4_2.owner
  if L3_2 ~= L4_2 then
    L4_2 = TriggerClientEvent
    L5_2 = "vms_garagesv2:notification"
    L6_2 = L1_2
    L7_2 = TRANSLATE
    L8_2 = "notify.you_are_not_owner"
    L7_2 = L7_2(L8_2)
    L8_2 = 5500
    L9_2 = "error"
    L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
    return
  end
  L4_2 = math
  L4_2 = L4_2.floor
  L5_2 = Config
  L5_2 = L5_2.AutomaticSellPercentageFromPrice
  L5_2 = L5_2 / 100
  L6_2 = Config
  L6_2 = L6_2.Garages
  L6_2 = L6_2[A0_2]
  L6_2 = L6_2.purchasePrice
  L5_2 = L5_2 * L6_2
  L4_2 = L4_2(L5_2)
  L5_2 = SV
  L5_2 = L5_2.addMoney
  L6_2 = L2_2
  L7_2 = "bank"
  L8_2 = L4_2
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = TriggerClientEvent
  L6_2 = "vms_garagesv2:notification"
  L7_2 = L1_2
  L8_2 = TRANSLATE
  L9_2 = "notify.sell:successful"
  L10_2 = L4_2
  L8_2 = L8_2(L9_2, L10_2)
  L9_2 = 6500
  L10_2 = "success"
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
  L5_2 = MySQL
  L5_2 = L5_2.Async
  L5_2 = L5_2.execute
  L6_2 = "UPDATE vms_business SET owner = @owner, data = @data WHERE id = @id"
  L7_2 = {}
  L7_2["@owner"] = nil
  L8_2 = json
  L8_2 = L8_2.encode
  L9_2 = {}
  L9_2.balance = 0
  L9_2.totalEarned = 0
  L8_2 = L8_2(L9_2)
  L7_2["@data"] = L8_2
  L7_2["@id"] = A0_2
  L5_2(L6_2, L7_2)
  L5_2 = SV
  L5_2 = L5_2.Webhook
  L6_2 = "SELL_PARKING"
  L7_2 = SV
  L7_2 = L7_2.WebhookText
  L7_2 = L7_2["TITLE.SELL_PARKING"]
  L8_2 = SV
  L8_2 = L8_2.WebhookText
  L8_2 = L8_2["DESCRIPTION.SELL_PARKING"]
  L9_2 = L8_2
  L8_2 = L8_2.format
  L10_2 = SV
  L10_2 = L10_2.getCharacterName
  L11_2 = L2_2
  L10_2 = L10_2(L11_2)
  L11_2 = L1_2
  L12_2 = A0_2
  L13_2 = L4_2
  L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2)
  L9_2 = 16053285
  L10_2 = L3_2
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
  L5_2 = businessGarages
  L5_2[A0_2] = nil
  L5_2 = TriggerClientEvent
  L6_2 = "vms_garagesv2:updateBusiness"
  L7_2 = -1
  L8_2 = A0_2
  L9_2 = nil
  L5_2(L6_2, L7_2, L8_2, L9_2)
end
L23_1(L24_1, L25_1)
L23_1 = RegisterNetEvent
L24_1 = "vms_garagesv2:sv:resellSelectedBuyer"
function L25_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L3_2 = source
  L4_2 = businessGarages
  L4_2 = L4_2[A0_2]
  if not L4_2 then
    return
  end
  L4_2 = SV
  L4_2 = L4_2.getPlayer
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  L5_2 = SV
  L5_2 = L5_2.getIdentifier
  L6_2 = L4_2
  L5_2 = L5_2(L6_2)
  L6_2 = businessGarages
  L6_2 = L6_2[A0_2]
  L6_2 = L6_2.owner
  if L5_2 ~= L6_2 then
    L6_2 = TriggerClientEvent
    L7_2 = "vms_garagesv2:notification"
    L8_2 = L3_2
    L9_2 = TRANSLATE
    L10_2 = "notify.you_are_not_owner"
    L9_2 = L9_2(L10_2)
    L10_2 = 5500
    L11_2 = "error"
    L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
    return
  end
  L6_2 = A2_2
  L7_2 = GetPlayerPed
  L8_2 = L6_2
  L7_2 = L7_2(L8_2)
  if not L7_2 then
    return
  end
  L7_2 = TriggerClientEvent
  L8_2 = "vms_garagesv2:cl:resellInvoice"
  L9_2 = L6_2
  L10_2 = A0_2
  L11_2 = A1_2
  L12_2 = L3_2
  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
end
L23_1(L24_1, L25_1)
L23_1 = RegisterNetEvent
L24_1 = "vms_garagesv2:sv:resellAccepted"
function L25_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2
  L3_2 = source
  L4_2 = SV
  L4_2 = L4_2.getPlayer
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  L5_2 = SV
  L5_2 = L5_2.getIdentifier
  L6_2 = L4_2
  L5_2 = L5_2(L6_2)
  L6_2 = SV
  L6_2 = L6_2.getPlayer
  L7_2 = A2_2
  L6_2 = L6_2(L7_2)
  L7_2 = SV
  L7_2 = L7_2.getIdentifier
  L8_2 = L6_2
  L7_2 = L7_2(L8_2)
  L8_2 = 0
  if not A0_2 then
    return
  end
  L9_2 = businessGarages
  L9_2 = L9_2[A0_2]
  if not L9_2 then
    return
  end
  L9_2 = tonumber
  L10_2 = A1_2.price
  L9_2 = L9_2(L10_2)
  if L9_2 < 0 then
    return
  end
  L9_2 = businessGarages
  L9_2 = L9_2[A0_2]
  L9_2 = L9_2.owner
  if L9_2 == L5_2 then
    L9_2 = TriggerClientEvent
    L10_2 = "vms_garagesv2:notification"
    L11_2 = A2_2
    L12_2 = TRANSLATE
    L13_2 = "notify.resell:cant_resell_to_yourself"
    L12_2 = L12_2(L13_2)
    L13_2 = 5500
    L14_2 = "error"
    L9_2(L10_2, L11_2, L12_2, L13_2, L14_2)
    return
  end
  L9_2 = businessGarages
  L9_2 = L9_2[A0_2]
  L9_2 = L9_2.owner
  if L9_2 ~= L7_2 then
    L9_2 = TriggerClientEvent
    L10_2 = "vms_garagesv2:notification"
    L11_2 = A2_2
    L12_2 = TRANSLATE
    L13_2 = "notify.you_are_not_owner"
    L12_2 = L12_2(L13_2)
    L13_2 = 5500
    L14_2 = "error"
    L9_2(L10_2, L11_2, L12_2, L13_2, L14_2)
    return
  end
  L9_2 = tonumber
  L10_2 = A1_2.price
  L9_2 = L9_2(L10_2)
  L10_2 = SV
  L10_2 = L10_2.getMoney
  L11_2 = L4_2
  L12_2 = "cash"
  L10_2 = L10_2(L11_2, L12_2)
  if L9_2 > L10_2 then
    L9_2 = TriggerClientEvent
    L10_2 = "vms_garagesv2:notification"
    L11_2 = L3_2
    L12_2 = TRANSLATE
    L13_2 = "notify.resell:not_enought_money"
    L12_2 = L12_2(L13_2)
    L13_2 = 5500
    L14_2 = "error"
    L9_2(L10_2, L11_2, L12_2, L13_2, L14_2)
    return
  end
  L9_2 = Config
  L9_2 = L9_2.ParkingsLimitPerPlayer
  if 0 == L9_2 then
    L9_2 = TriggerClientEvent
    L10_2 = "vms_garagesv2:notification"
    L11_2 = L3_2
    L12_2 = TRANSLATE
    L13_2 = "notify.purchase:cannot_buy"
    L12_2 = L12_2(L13_2)
    L13_2 = 5000
    L14_2 = "error"
    L9_2(L10_2, L11_2, L12_2, L13_2, L14_2)
    return
  end
  L9_2 = Config
  L9_2 = L9_2.ParkingsLimitPerPlayer
  if L9_2 >= 1 then
    L9_2 = pairs
    L10_2 = businessGarages
    L9_2, L10_2, L11_2, L12_2 = L9_2(L10_2)
    for L13_2, L14_2 in L9_2, L10_2, L11_2, L12_2 do
      L15_2 = L14_2.owner
      if L15_2 == L5_2 then
        L8_2 = L8_2 + 1
      end
    end
    L9_2 = Config
    L9_2 = L9_2.ParkingsLimitPerPlayer
    if L8_2 >= L9_2 then
      L9_2 = TriggerClientEvent
      L10_2 = "vms_garagesv2:notification"
      L11_2 = L3_2
      L12_2 = TRANSLATE
      L13_2 = "notify.purchase:reached_limit"
      L12_2 = L12_2(L13_2)
      L13_2 = 5000
      L14_2 = "error"
      L9_2(L10_2, L11_2, L12_2, L13_2, L14_2)
      return
    end
  end
  L9_2 = businessGarages
  L9_2 = L9_2[A0_2]
  L9_2.owner = L5_2
  L9_2 = SV
  L9_2 = L9_2.removeMoney
  L10_2 = L4_2
  L11_2 = "cash"
  L12_2 = tonumber
  L13_2 = A1_2.price
  L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2 = L12_2(L13_2)
  L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
  L9_2 = SV
  L9_2 = L9_2.addMoney
  L10_2 = L6_2
  L11_2 = "cash"
  L12_2 = tonumber
  L13_2 = A1_2.price
  L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2 = L12_2(L13_2)
  L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
  L9_2 = MySQL
  L9_2 = L9_2.Async
  L9_2 = L9_2.execute
  L10_2 = "UPDATE vms_business SET owner = @owner WHERE id = @id"
  L11_2 = {}
  L11_2["@owner"] = L5_2
  L11_2["@id"] = A0_2
  L9_2(L10_2, L11_2)
  L9_2 = SV
  L9_2 = L9_2.Webhook
  L10_2 = "RESELL_PARKING"
  L11_2 = SV
  L11_2 = L11_2.WebhookText
  L11_2 = L11_2["TITLE.RESELL_PARKING"]
  L12_2 = SV
  L12_2 = L12_2.WebhookText
  L12_2 = L12_2["DESCRIPTION.RESELL_PARKING"]
  L13_2 = L12_2
  L12_2 = L12_2.format
  L14_2 = A1_2.sellerName
  L15_2 = A2_2
  L16_2 = A1_2.label
  L17_2 = A0_2
  L18_2 = A1_2.buyerName
  L19_2 = L3_2
  L20_2 = A1_2.price
  L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
  L13_2 = 14212057
  L14_2 = L5_2
  L15_2 = " => "
  L16_2 = L7_2
  L14_2 = L14_2 .. L15_2 .. L16_2
  L9_2(L10_2, L11_2, L12_2, L13_2, L14_2)
  L9_2 = TriggerClientEvent
  L10_2 = "vms_garagesv2:notification"
  L11_2 = L3_2
  L12_2 = TRANSLATE
  L13_2 = "notify.resell:you_are_new_owner"
  L14_2 = A1_2.label
  L12_2 = L12_2(L13_2, L14_2)
  L13_2 = 5500
  L14_2 = "success"
  L9_2(L10_2, L11_2, L12_2, L13_2, L14_2)
  L9_2 = TriggerClientEvent
  L10_2 = "vms_garagesv2:notification"
  L11_2 = A2_2
  L12_2 = TRANSLATE
  L13_2 = "notify.resell:you_reselled_store"
  L14_2 = A1_2.label
  L15_2 = tonumber
  L16_2 = A1_2.price
  L15_2, L16_2, L17_2, L18_2, L19_2, L20_2 = L15_2(L16_2)
  L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
  L13_2 = 5500
  L14_2 = "success"
  L9_2(L10_2, L11_2, L12_2, L13_2, L14_2)
  L9_2 = TriggerClientEvent
  L10_2 = "vms_garagesv2:updateBusiness"
  L11_2 = -1
  L12_2 = A0_2
  L13_2 = businessGarages
  L13_2 = L13_2[A0_2]
  L9_2(L10_2, L11_2, L12_2, L13_2)
end
L23_1(L24_1, L25_1)
L23_1 = RegisterNetEvent
L24_1 = "vms_garagesv2:sv:changePrice"
function L25_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L3_2 = source
  if not A0_2 then
    return
  end
  L4_2 = businessGarages
  L4_2 = L4_2[A0_2]
  if not L4_2 then
    return
  end
  L4_2 = tonumber
  L5_2 = A2_2
  L4_2 = L4_2(L5_2)
  if L4_2 then
    L4_2 = tonumber
    L5_2 = A2_2
    L4_2 = L4_2(L5_2)
    if not (L4_2 < 0) then
      goto lbl_21
    end
  end
  do return end
  ::lbl_21::
  L4_2 = Config
  L4_2 = L4_2.Garages
  L4_2 = L4_2[A0_2]
  if not L4_2 then
    return
  end
  if "day" == A1_2 then
    L5_2 = L4_2.allowedChangePricePerDay
    if not L5_2 then
      return
    end
  end
  if "infinity" == A1_2 then
    L5_2 = L4_2.allowedChangePriceForInfinity
    if not L5_2 then
      return
    end
  end
  L5_2 = SV
  L5_2 = L5_2.getPlayer
  L6_2 = L3_2
  L5_2 = L5_2(L6_2)
  L6_2 = SV
  L6_2 = L6_2.getIdentifier
  L7_2 = L5_2
  L6_2 = L6_2(L7_2)
  if "day" == A1_2 then
    L7_2 = businessGarages
    L7_2 = L7_2[A0_2]
    L7_2 = L7_2.data
    L7_2.pricePerDay = A2_2
    L7_2 = TriggerClientEvent
    L8_2 = "vms_garagesv2:notification"
    L9_2 = L3_2
    L10_2 = TRANSLATE
    L11_2 = "notify.business:changed_price_per_day"
    L12_2 = A2_2
    L10_2 = L10_2(L11_2, L12_2)
    L11_2 = 6500
    L12_2 = "success"
    L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
  elseif "infinity" == A1_2 then
    L7_2 = businessGarages
    L7_2 = L7_2[A0_2]
    L7_2 = L7_2.data
    L7_2.priceForInfinity = A2_2
    L7_2 = TriggerClientEvent
    L8_2 = "vms_garagesv2:notification"
    L9_2 = L3_2
    L10_2 = TRANSLATE
    L11_2 = "notify.business:changed_price_infinity"
    L12_2 = A2_2
    L10_2 = L10_2(L11_2, L12_2)
    L11_2 = 6500
    L12_2 = "success"
    L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
  end
  L7_2 = MySQL
  L7_2 = L7_2.Async
  L7_2 = L7_2.execute
  L8_2 = "UPDATE vms_business SET data = @data WHERE id = @id"
  L9_2 = {}
  L10_2 = json
  L10_2 = L10_2.encode
  L11_2 = businessGarages
  L11_2 = L11_2[A0_2]
  L11_2 = L11_2.data
  L10_2 = L10_2(L11_2)
  L9_2["@data"] = L10_2
  L9_2["@id"] = A0_2
  L7_2(L8_2, L9_2)
  L7_2 = TriggerClientEvent
  L8_2 = "vms_garagesv2:updateBusiness"
  L9_2 = L3_2
  L10_2 = A0_2
  L11_2 = nil
  L12_2 = {}
  if "day" == A1_2 then
    L13_2 = "pricePerDay"
    if L13_2 then
      goto lbl_108
    end
  end
  L13_2 = "priceForInfinity"
  ::lbl_108::
  L12_2.sub = L13_2
  L12_2.value = A2_2
  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
end
L23_1(L24_1, L25_1)
L23_1 = RegisterNetEvent
L24_1 = "vms_garagesv2:sv:giveAgreement"
function L25_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L1_2 = source
  L2_2 = SV
  L2_2 = L2_2.getPlayer
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2.selectedBuyer
  if not L3_2 then
    return
  end
  L3_2 = tonumber
  L4_2 = A0_2.selectedBuyer
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L4_2 = GetPlayerPed
    L5_2 = L3_2
    L4_2 = L4_2(L5_2)
    if not L4_2 then
      return
    end
    L5_2 = GetEntityCoords
    L6_2 = L4_2
    L5_2 = L5_2(L6_2)
    L6_2 = GetPlayerPed
    L7_2 = L1_2
    L6_2 = L6_2(L7_2)
    L7_2 = GetEntityCoords
    L8_2 = L6_2
    L7_2 = L7_2(L8_2)
    L8_2 = L5_2 - L7_2
    L8_2 = #L8_2
    if L8_2 >= 12.0 then
      return
    end
    A0_2.sellerId = L1_2
    L9_2 = TriggerClientEvent
    L10_2 = "vms_garagesv2:cl:getAgreement"
    L11_2 = L3_2
    L12_2 = A0_2
    L9_2(L10_2, L11_2, L12_2)
  else
    L4_2 = SV
    L4_2 = L4_2.getIdentifier
    L5_2 = L2_2
    L4_2 = L4_2(L5_2)
    L5_2 = SV
    L5_2 = L5_2.getPlayerJob
    L6_2 = L2_2
    L5_2 = L5_2(L6_2)
    L6_2 = SV
    L6_2 = L6_2.getPlayerJobGrade
    L7_2 = L2_2
    L6_2 = L6_2(L7_2)
    L7_2 = Config
    L7_2 = L7_2.UseSaleAgreementItem
    if L7_2 then
      L7_2 = SV
      L7_2 = L7_2.getItemCount
      L8_2 = L2_2
      L9_2 = Config
      L9_2 = L9_2.SaleAgreementItem
      L7_2 = L7_2(L8_2, L9_2)
      if L7_2 < 1 then
        L7_2 = TriggerClientEvent
        L8_2 = "vms_garagesv2:notification"
        L9_2 = L1_2
        L10_2 = TRANSLATE
        L11_2 = "notify.dont_have_agreement_item"
        L10_2 = L10_2(L11_2)
        L11_2 = 4500
        L12_2 = "error"
        L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
        return
      end
      L7_2 = Config
      L7_2 = L7_2.RemoveSaleAgreementItem
      if L7_2 then
        L7_2 = SV
        L7_2 = L7_2.removeItem
        L8_2 = L2_2
        L9_2 = Config
        L9_2 = L9_2.SaleAgreementItem
        L10_2 = 1
        L7_2(L8_2, L9_2, L10_2)
      end
    end
    L7_2 = A0_2.selectedBuyer
    if L7_2 ~= L5_2 then
      return
    end
    L7_2 = Config
    L7_2 = L7_2.CompanyGrades
    L7_2 = L7_2[L5_2]
    if L7_2 then
      L7_2 = Config
      L7_2 = L7_2.CompanyGrades
      L7_2 = L7_2[L5_2]
      L8_2 = tostring
      L9_2 = L6_2
      L8_2 = L8_2(L9_2)
      L7_2 = L7_2[L8_2]
      if L7_2 then
        L7_2 = Config
        L7_2 = L7_2.CompanyGrades
        L7_2 = L7_2[L5_2]
        L8_2 = tostring
        L9_2 = L6_2
        L8_2 = L8_2(L9_2)
        L7_2 = L7_2[L8_2]
        L7_2 = L7_2.isBoss
        if L7_2 then
          L7_2 = A0_2.resellData
          L7_2 = L7_2.vehiclePlate
          L8_2 = tostring
          L9_2 = L7_2
          L8_2 = L8_2(L9_2)
          L9_2 = L8_2
          L8_2 = L8_2.match
          L10_2 = "^%s*(.-)%s*$"
          L8_2 = L8_2(L9_2, L10_2)
          L9_2 = "SELECT * FROM `%s` WHERE `%s` = @owner AND (`%s` LIKE @cleanedPlate OR `%s` LIKE @plate)"
          L10_2 = L9_2
          L9_2 = L9_2.format
          L11_2 = SV
          L11_2 = L11_2.Database
          L11_2 = L11_2["table:owned_vehicles"]
          L12_2 = SV
          L12_2 = L12_2.Database
          L12_2 = L12_2["column:owner"]
          L13_2 = SV
          L13_2 = L13_2.Database
          L13_2 = L13_2["column:plate"]
          L14_2 = SV
          L14_2 = L14_2.Database
          L14_2 = L14_2["column:plate"]
          L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2)
          L10_2 = MySQL
          L10_2 = L10_2.Async
          L10_2 = L10_2.fetchAll
          L11_2 = L9_2
          L12_2 = {}
          L12_2["@owner"] = L4_2
          L12_2["@cleanedPlate"] = L8_2
          L12_2["@plate"] = L7_2
          function L13_2(A0_3)
            local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3
            L1_3 = A0_3[1]
            if not L1_3 then
              return
            end
            L2_3 = L1_3.garage
            if L2_3 then
              L2_3 = L1_3.garageSpotID
              if L2_3 then
                L3_3 = L1_3.garage
                L2_3 = L1_1
                L2_3 = L2_3[L3_3]
                if L2_3 then
                  L3_3 = L1_3.garage
                  L2_3 = L1_1
                  L2_3 = L2_3[L3_3]
                  L3_3 = L1_3.garageSpotID
                  L2_3 = L2_3[L3_3]
                  if L2_3 then
                    L3_3 = L1_3.garage
                    L2_3 = L1_1
                    L2_3 = L2_3[L3_3]
                    L3_3 = L1_3.garageSpotID
                    L2_3 = L2_3[L3_3]
                    L2_3.owner = nil
                    L3_3 = L1_3.garage
                    L2_3 = L1_1
                    L2_3 = L2_3[L3_3]
                    L3_3 = L1_3.garageSpotID
                    L2_3 = L2_3[L3_3]
                    L3_3 = L5_2
                    L2_3.company = L3_3
                    L2_3 = TriggerClientEvent
                    L3_3 = "vms_garagesv2:cl:newVehicleOwner"
                    L4_3 = -1
                    L5_3 = L1_3.garage
                    L6_3 = L1_3.garageSpotID
                    L8_3 = L1_3.garage
                    L7_3 = L1_1
                    L7_3 = L7_3[L8_3]
                    L8_3 = L1_3.garageSpotID
                    L7_3 = L7_3[L8_3]
                    L2_3(L3_3, L4_3, L5_3, L6_3, L7_3)
                  end
                end
              end
            end
            L2_3 = TriggerClientEvent
            L3_3 = "vms_garagesv2:notification"
            L4_3 = L1_2
            L5_3 = TRANSLATE
            L6_3 = "notify.agreement:transferred_vehicle_to_company"
            L7_3 = L7_2
            L5_3 = L5_3(L6_3, L7_3)
            L6_3 = 6500
            L7_3 = "success"
            L2_3(L3_3, L4_3, L5_3, L6_3, L7_3)
            L2_3 = "UPDATE `%s` SET `%s` = NULL, `%s` = @company WHERE (`%s` LIKE @cleanedPlate OR `%s` LIKE @plate) AND `%s` = @lastOwner"
            L3_3 = L2_3
            L2_3 = L2_3.format
            L4_3 = SV
            L4_3 = L4_3.Database
            L4_3 = L4_3["table:owned_vehicles"]
            L5_3 = SV
            L5_3 = L5_3.Database
            L5_3 = L5_3["column:owner"]
            L6_3 = SV
            L6_3 = L6_3.Database
            L6_3 = L6_3["column:company"]
            L7_3 = SV
            L7_3 = L7_3.Database
            L7_3 = L7_3["column:plate"]
            L8_3 = SV
            L8_3 = L8_3.Database
            L8_3 = L8_3["column:plate"]
            L9_3 = SV
            L9_3 = L9_3.Database
            L9_3 = L9_3["column:owner"]
            L2_3 = L2_3(L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3)
            L3_3 = MySQL
            L3_3 = L3_3.Async
            L3_3 = L3_3.execute
            L4_3 = L2_3
            L5_3 = {}
            L6_3 = L5_2
            L5_3["@company"] = L6_3
            L6_3 = L8_2
            L5_3["@cleanedPlate"] = L6_3
            L6_3 = L7_2
            L5_3["@plate"] = L6_3
            L6_3 = L4_2
            L5_3["@lastOwner"] = L6_3
            L3_3(L4_3, L5_3)
          end
          L10_2(L11_2, L12_2, L13_2)
        end
      end
    end
  end
end
L23_1(L24_1, L25_1)
L23_1 = RegisterNetEvent
L24_1 = "vms_garagesv2:sv:signedAgreement"
function L25_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = source
  L2_2 = SV
  L2_2 = L2_2.getPlayer
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L3_2 = SV
  L3_2 = L3_2.getIdentifier
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L4_2 = SV
  L4_2 = L4_2.getPlayer
  L5_2 = tonumber
  L6_2 = A0_2.sellerId
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L5_2(L6_2)
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  if not L4_2 then
    return
  end
  L5_2 = SV
  L5_2 = L5_2.getIdentifier
  L6_2 = L4_2
  L5_2 = L5_2(L6_2)
  L6_2 = Config
  L6_2 = L6_2.UseSaleAgreementItem
  if L6_2 then
    L6_2 = SV
    L6_2 = L6_2.getItemCount
    L7_2 = L4_2
    L8_2 = Config
    L8_2 = L8_2.SaleAgreementItem
    L6_2 = L6_2(L7_2, L8_2)
    if L6_2 < 1 then
      L6_2 = TriggerClientEvent
      L7_2 = "vms_garagesv2:notification"
      L8_2 = L1_2
      L9_2 = TRANSLATE
      L10_2 = "notify.seller_dont_have_agreement_item"
      L9_2 = L9_2(L10_2)
      L10_2 = 4500
      L11_2 = "error"
      L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
      L6_2 = TriggerClientEvent
      L7_2 = "vms_garagesv2:notification"
      L8_2 = tonumber
      L9_2 = A0_2.sellerId
      L8_2 = L8_2(L9_2)
      L9_2 = TRANSLATE
      L10_2 = "notify.dont_have_agreement_item"
      L9_2 = L9_2(L10_2)
      L10_2 = 4500
      L11_2 = "error"
      L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
      return
    end
    L6_2 = Config
    L6_2 = L6_2.RemoveSaleAgreementItem
    if L6_2 then
      L6_2 = SV
      L6_2 = L6_2.removeItem
      L7_2 = L4_2
      L8_2 = Config
      L8_2 = L8_2.SaleAgreementItem
      L9_2 = 1
      L6_2(L7_2, L8_2, L9_2)
    end
  end
  L6_2 = SV
  L6_2 = L6_2.getMoney
  L7_2 = L2_2
  L8_2 = A0_2.paymentMethod
  L6_2 = L6_2(L7_2, L8_2)
  L7_2 = tonumber
  L8_2 = A0_2.price
  L7_2 = L7_2(L8_2)
  if L6_2 < L7_2 then
    L7_2 = TriggerClientEvent
    L8_2 = "vms_garagesv2:notification"
    L9_2 = L1_2
    L10_2 = TRANSLATE
    L11_2 = "notify.no_money"
    L10_2 = L10_2(L11_2)
    L11_2 = 4500
    L12_2 = "error"
    L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
    return
  end
  L7_2 = tostring
  L8_2 = A0_2.vehiclePlate
  L7_2 = L7_2(L8_2)
  L8_2 = L7_2
  L7_2 = L7_2.match
  L9_2 = "^%s*(.-)%s*$"
  L7_2 = L7_2(L8_2, L9_2)
  L8_2 = "SELECT * FROM `%s` WHERE `%s` = @owner AND (`%s` LIKE @cleanedPlate OR `%s` LIKE @plate)"
  L9_2 = L8_2
  L8_2 = L8_2.format
  L10_2 = SV
  L10_2 = L10_2.Database
  L10_2 = L10_2["table:owned_vehicles"]
  L11_2 = SV
  L11_2 = L11_2.Database
  L11_2 = L11_2["column:owner"]
  L12_2 = SV
  L12_2 = L12_2.Database
  L12_2 = L12_2["column:plate"]
  L13_2 = SV
  L13_2 = L13_2.Database
  L13_2 = L13_2["column:plate"]
  L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2)
  L9_2 = MySQL
  L9_2 = L9_2.Async
  L9_2 = L9_2.fetchAll
  L10_2 = L8_2
  L11_2 = {}
  L11_2["@owner"] = L5_2
  L11_2["@cleanedPlate"] = L7_2
  L12_2 = A0_2.vehiclePlate
  L11_2["@plate"] = L12_2
  function L12_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3
    L1_3 = A0_3[1]
    if not L1_3 then
      return
    end
    L2_3 = L1_3.garage
    if L2_3 then
      L2_3 = L1_3.garageSpotID
      if L2_3 then
        L3_3 = L1_3.garage
        L2_3 = L1_1
        L2_3 = L2_3[L3_3]
        if L2_3 then
          L3_3 = L1_3.garage
          L2_3 = L1_1
          L2_3 = L2_3[L3_3]
          L3_3 = L1_3.garageSpotID
          L2_3 = L2_3[L3_3]
          if L2_3 then
            L3_3 = L1_3.garage
            L2_3 = L1_1
            L2_3 = L2_3[L3_3]
            L3_3 = L1_3.garageSpotID
            L2_3 = L2_3[L3_3]
            L3_3 = L3_2
            L2_3.owner = L3_3
            L2_3 = TriggerClientEvent
            L3_3 = "vms_garagesv2:cl:newVehicleOwner"
            L4_3 = -1
            L5_3 = L1_3.garage
            L6_3 = L1_3.garageSpotID
            L8_3 = L1_3.garage
            L7_3 = L1_1
            L7_3 = L7_3[L8_3]
            L8_3 = L1_3.garageSpotID
            L7_3 = L7_3[L8_3]
            L2_3(L3_3, L4_3, L5_3, L6_3, L7_3)
          end
        end
      end
    end
    L2_3 = SV
    L2_3 = L2_3.addMoney
    L3_3 = L4_2
    L4_3 = A0_2.paymentMethod
    L5_3 = tonumber
    L6_3 = A0_2.price
    L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3 = L5_3(L6_3)
    L2_3(L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3)
    L2_3 = SV
    L2_3 = L2_3.removeMoney
    L3_3 = L2_2
    L4_3 = A0_2.paymentMethod
    L5_3 = tonumber
    L6_3 = A0_2.price
    L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3 = L5_3(L6_3)
    L2_3(L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3)
    L2_3 = TriggerClientEvent
    L3_3 = "vms_garagesv2:notification"
    L4_3 = L1_2
    L5_3 = TRANSLATE
    L6_3 = "notify.agreement:you_purchased_vehicle"
    L7_3 = A0_2.vehiclePlate
    L8_3 = A0_2.price
    L5_3 = L5_3(L6_3, L7_3, L8_3)
    L6_3 = 6500
    L7_3 = "success"
    L2_3(L3_3, L4_3, L5_3, L6_3, L7_3)
    L2_3 = TriggerClientEvent
    L3_3 = "vms_garagesv2:notification"
    L4_3 = tonumber
    L5_3 = A0_2.sellerId
    L4_3 = L4_3(L5_3)
    L5_3 = TRANSLATE
    L6_3 = "notify.agreement:you_sold_vehicle"
    L7_3 = A0_2.vehiclePlate
    L8_3 = A0_2.price
    L5_3 = L5_3(L6_3, L7_3, L8_3)
    L6_3 = 6500
    L7_3 = "success"
    L2_3(L3_3, L4_3, L5_3, L6_3, L7_3)
    L2_3 = SV
    L2_3 = L2_3.Webhook
    L3_3 = "VEHICLE_SELL"
    L4_3 = SV
    L4_3 = L4_3.WebhookText
    L4_3 = L4_3["TITLE.VEHICLE_SELL"]
    L5_3 = SV
    L5_3 = L5_3.WebhookText
    L5_3 = L5_3["DESCRIPTION.VEHICLE_SELL"]
    L6_3 = L5_3
    L5_3 = L5_3.format
    L7_3 = SV
    L7_3 = L7_3.getCharacterName
    L8_3 = L4_2
    L7_3 = L7_3(L8_3)
    L8_3 = A0_2.sellerId
    L9_3 = A0_2.vehiclePlate
    L10_3 = SV
    L10_3 = L10_3.getCharacterName
    L11_3 = L2_2
    L10_3 = L10_3(L11_3)
    L11_3 = L1_2
    L12_3 = A0_2.price
    L5_3 = L5_3(L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3)
    L6_3 = 16053285
    L7_3 = L5_2
    L8_3 = " => "
    L9_3 = L3_2
    L7_3 = L7_3 .. L8_3 .. L9_3
    L2_3(L3_3, L4_3, L5_3, L6_3, L7_3)
    L2_3 = "UPDATE `%s` SET `%s` = @newOwner WHERE (`%s` LIKE @cleanedPlate OR `%s` LIKE @plate) AND `%s` = @lastOwner"
    L3_3 = L2_3
    L2_3 = L2_3.format
    L4_3 = SV
    L4_3 = L4_3.Database
    L4_3 = L4_3["table:owned_vehicles"]
    L5_3 = SV
    L5_3 = L5_3.Database
    L5_3 = L5_3["column:owner"]
    L6_3 = SV
    L6_3 = L6_3.Database
    L6_3 = L6_3["column:plate"]
    L7_3 = SV
    L7_3 = L7_3.Database
    L7_3 = L7_3["column:plate"]
    L8_3 = SV
    L8_3 = L8_3.Database
    L8_3 = L8_3["column:owner"]
    L2_3 = L2_3(L3_3, L4_3, L5_3, L6_3, L7_3, L8_3)
    L3_3 = MySQL
    L3_3 = L3_3.Async
    L3_3 = L3_3.execute
    L4_3 = L2_3
    L5_3 = {}
    L6_3 = L3_2
    L5_3["@newOwner"] = L6_3
    L6_3 = L5_2
    L5_3["@lastOwner"] = L6_3
    L6_3 = L7_2
    L5_3["@cleanedPlate"] = L6_3
    L6_3 = A0_2.vehiclePlate
    L5_3["@plate"] = L6_3
    L3_3(L4_3, L5_3)
  end
  L9_2(L10_2, L11_2, L12_2)
end
L23_1(L24_1, L25_1)
L23_1 = RegisterNetEvent
L24_1 = "vms_garagesv2:sv:towVehicle"
function L25_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L4_2 = source
  L5_2 = SV
  L5_2 = L5_2.getPlayer
  L6_2 = L4_2
  L5_2 = L5_2(L6_2)
  L6_2 = SV
  L6_2 = L6_2.getIdentifier
  L7_2 = L5_2
  L6_2 = L6_2(L7_2)
  L7_2 = SV
  L7_2 = L7_2.getPlayerJob
  L8_2 = L5_2
  L7_2 = L7_2(L8_2)
  L8_2 = Config
  L8_2 = L8_2.Impounds
  L8_2 = L8_2[A1_2]
  if not L8_2 then
    L8_2 = library
    L8_2 = L8_2.Debug
    L9_2 = "Impound \"%s\" does not exist!"
    L10_2 = L9_2
    L9_2 = L9_2.format
    L11_2 = A1_2
    L9_2 = L9_2(L10_2, L11_2)
    L10_2 = "warn"
    L8_2(L9_2, L10_2)
    return
  end
  L8_2 = GetPlayerPed
  L9_2 = L4_2
  L8_2 = L8_2(L9_2)
  L9_2 = GetEntityCoords
  L10_2 = L8_2
  L9_2 = L9_2(L10_2)
  L10_2 = tostring
  L11_2 = A0_2
  L10_2 = L10_2(L11_2)
  L11_2 = L10_2
  L10_2 = L10_2.match
  L12_2 = "^%s*(.-)%s*$"
  L10_2 = L10_2(L11_2, L12_2)
  L11_2 = "SELECT * FROM `%s` WHERE (`%s` LIKE @cleanedPlate OR `%s` LIKE @plate)"
  L12_2 = L11_2
  L11_2 = L11_2.format
  L13_2 = SV
  L13_2 = L13_2.Database
  L13_2 = L13_2["table:owned_vehicles"]
  L14_2 = SV
  L14_2 = L14_2.Database
  L14_2 = L14_2["column:plate"]
  L15_2 = SV
  L15_2 = L15_2.Database
  L15_2 = L15_2["column:plate"]
  L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2)
  L12_2 = MySQL
  L12_2 = L12_2.Async
  L12_2 = L12_2.fetchAll
  L13_2 = L11_2
  L14_2 = {}
  L14_2["@cleanedPlate"] = L10_2
  L14_2["@plate"] = A0_2
  function L15_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3
    L1_3 = A0_3[1]
    if L1_3 then
      L1_3 = nil
      L2_3 = Config
      L2_3 = L2_3.TowMenuJobsAccess
      L3_3 = L7_2
      L2_3 = L2_3[L3_3]
      if L2_3 then
        L2_3 = Config
        L2_3 = L2_3.TowMenuJobsAccess
        L3_3 = L7_2
        L2_3 = L2_3[L3_3]
        L1_3 = L2_3.label
      end
      L2_3 = L11_1
      L3_3 = tonumber
      L4_3 = A0_3[1]
      L4_3 = L4_3.netid
      L3_3 = L3_3(L4_3)
      L4_3 = A0_2
      L5_3 = A1_2
      L6_3 = A2_2
      L7_3 = A3_2
      L8_3 = L1_3
      L9_3 = {}
      L10_3 = L4_2
      L9_3.source = L10_3
      L10_3 = L5_2
      L9_3.player = L10_3
      L10_3 = L6_2
      L9_3.identifier = L10_3
      L10_3 = {}
      L11_3 = A0_3[1]
      L11_3 = L11_3.garage
      L12_3 = A0_3[1]
      L12_3 = L12_3.garageSpotID
      L10_3[1] = L11_3
      L10_3[2] = L12_3
      function L11_3(A0_4)
        local L1_4, L2_4, L3_4, L4_4, L5_4, L6_4
        L1_4 = TriggerClientEvent
        L2_4 = "vms_garagesv2:notification"
        L3_4 = L4_2
        L4_4 = A0_4[1]
        L5_4 = A0_4[2]
        L6_4 = A0_4[3]
        L1_4(L2_4, L3_4, L4_4, L5_4, L6_4)
      end
      L2_3(L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3)
    end
  end
  L12_2(L13_2, L14_2, L15_2)
end
L23_1(L24_1, L25_1)
L23_1 = RegisterNetEvent
L24_1 = "vms_garagesv2:sv:updateVehicle"
function L25_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L4_2 = source
  L5_2 = NetworkGetEntityFromNetworkId
  L6_2 = A0_2
  L5_2 = L5_2(L6_2)
  if L5_2 then
    L6_2 = DoesEntityExist
    L7_2 = L5_2
    L6_2 = L6_2(L7_2)
    if L6_2 then
      goto lbl_13
    end
  end
  do return end
  ::lbl_13::
  L6_2 = Entity
  L7_2 = L5_2
  L6_2 = L6_2(L7_2)
  L6_2 = L6_2.state
  L7_2 = L6_2
  L6_2 = L6_2.set
  L8_2 = Config
  L8_2 = L8_2.VehiclePropertiesStateBag
  if not L8_2 then
    L8_2 = "VehicleProperties"
  end
  L9_2 = A1_2
  L10_2 = Config
  L10_2 = L10_2.ForcePropertiesSync
  L6_2(L7_2, L8_2, L9_2, L10_2)
  if A3_2 then
    L6_2 = A1_2.plate
    if L6_2 then
      L7_2 = Entity
      L8_2 = L5_2
      L7_2 = L7_2(L8_2)
      L7_2 = L7_2.state
      L8_2 = L7_2
      L7_2 = L7_2.set
      L9_2 = "PersistenceBlocked"
      L10_2 = A1_2.flooded
      L10_2 = true == L10_2
      L11_2 = false
      L7_2(L8_2, L9_2, L10_2, L11_2)
      L8_2 = L6_2
      L7_2 = L6_2.match
      L9_2 = "^%s*(.-)%s*$"
      L7_2 = L7_2(L8_2, L9_2)
      L8_2 = "UPDATE `%s` SET `%s` = @properties WHERE (`%s` LIKE @cleanedPlate OR `%s` LIKE @plate)"
      L9_2 = L8_2
      L8_2 = L8_2.format
      L10_2 = SV
      L10_2 = L10_2.Database
      L10_2 = L10_2["table:owned_vehicles"]
      L11_2 = SV
      L11_2 = L11_2.Database
      L11_2 = L11_2["column:vehicle"]
      L12_2 = SV
      L12_2 = L12_2.Database
      L12_2 = L12_2["column:plate"]
      L13_2 = SV
      L13_2 = L13_2.Database
      L13_2 = L13_2["column:plate"]
      L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2)
      L9_2 = MySQL
      L9_2 = L9_2.Async
      L9_2 = L9_2.execute
      L10_2 = L8_2
      L11_2 = {}
      L11_2["@cleanedPlate"] = L7_2
      L11_2["@plate"] = L6_2
      L12_2 = json
      L12_2 = L12_2.encode
      L13_2 = A1_2
      L12_2 = L12_2(L13_2)
      L11_2["@properties"] = L12_2
      L9_2(L10_2, L11_2)
    end
    return
  end
  L6_2 = Config
  L6_2 = L6_2.VehiclePersistence
  if L6_2 then
    L6_2 = SavePersistentVehicle
    L7_2 = L4_2
    L8_2 = L5_2
    L9_2 = A2_2
    L10_2 = false
    L6_2(L7_2, L8_2, L9_2, L10_2)
  end
end
L23_1(L24_1, L25_1)
L23_1 = Citizen
L23_1 = L23_1.CreateThread
function L24_1()
  local L0_2, L1_2
  L0_2 = Citizen
  L0_2 = L0_2.Wait
  L1_2 = 1000
  L0_2(L1_2)
  while true do
    L0_2 = GlobalState
    L1_2 = os
    L1_2 = L1_2.time
    L1_2 = L1_2()
    L0_2.OS_TIME = L1_2
    L0_2 = Citizen
    L0_2 = L0_2.Wait
    L1_2 = 10000
    L0_2(L1_2)
  end
end
L23_1(L24_1)
function L23_1()
  local L0_2, L1_2
  L0_2 = Citizen
  L0_2 = L0_2.CreateThread
  function L1_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3
    while true do
      L0_3 = os
      L0_3 = L0_3.time
      L0_3 = L0_3()
      L1_3 = pairs
      L2_3 = L2_1
      L1_3, L2_3, L3_3, L4_3 = L1_3(L2_3)
      for L5_3, L6_3 in L1_3, L2_3, L3_3, L4_3 do
        L7_3 = L6_3.time
        if -1 ~= L7_3 then
          L7_3 = L6_3.time
          if L0_3 >= L7_3 then
            L7_3 = MySQL
            L7_3 = L7_3.Async
            L7_3 = L7_3.execute
            L8_3 = "DELETE FROM parkings WHERE parking = @parking AND space = @space"
            L9_3 = {}
            L10_3 = L6_3.parking
            L9_3["@parking"] = L10_3
            L10_3 = L6_3.space
            L9_3["@space"] = L10_3
            L7_3(L8_3, L9_3)
            L8_3 = L6_3.parking
            L7_3 = L1_1
            L7_3 = L7_3[L8_3]
            if L7_3 then
              L8_3 = L6_3.parking
              L7_3 = L1_1
              L7_3 = L7_3[L8_3]
              L8_3 = L6_3.space
              L7_3 = L7_3[L8_3]
              if L7_3 then
                L8_3 = L6_3.parking
                L7_3 = L1_1
                L7_3 = L7_3[L8_3]
                L8_3 = L6_3.space
                L7_3 = L7_3[L8_3]
                L7_3.isRented = nil
                L8_3 = L6_3.parking
                L7_3 = L1_1
                L7_3 = L7_3[L8_3]
                L8_3 = L6_3.space
                L7_3 = L7_3[L8_3]
                L7_3.ownerName = nil
                L8_3 = L6_3.parking
                L7_3 = L1_1
                L7_3 = L7_3[L8_3]
                L8_3 = L6_3.space
                L7_3 = L7_3[L8_3]
                L7_3.time = nil
              end
            end
            L7_3 = L2_1
            L7_3[L5_3] = nil
          end
        end
      end
      L1_3 = Citizen
      L1_3 = L1_3.Wait
      L2_3 = 1800000
      L1_3(L2_3)
    end
  end
  L0_2(L1_2)
end
L24_1 = MySQL
L24_1 = L24_1.ready
function L25_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L0_2 = SV
  L0_2 = L0_2.Database
  L0_2 = L0_2["table:owned_vehicles"]
  if not L0_2 then
    L0_2 = error
    L1_2 = "Missing in SV.Database is the option ^8['table:owned_vehicles']^1, if you change the table name, change only the value, do not change the key!"
    L0_2(L1_2)
  end
  L0_2 = SV
  L0_2 = L0_2.Database
  L0_2 = L0_2["column:owner"]
  if not L0_2 then
    L0_2 = error
    L1_2 = "Missing in SV.Database is the option ['table:owner'], if you change the column name, change only the value, do not change the key!"
    L0_2(L1_2)
  end
  L0_2 = SV
  L0_2 = L0_2.Database
  L0_2 = L0_2["column:company"]
  if not L0_2 then
    L0_2 = error
    L1_2 = "Missing in SV.Database is the option ['table:company'], if you change the column name, change only the value, do not change the key!"
    L0_2(L1_2)
  end
  L0_2 = SV
  L0_2 = L0_2.Database
  L0_2 = L0_2["column:gang"]
  if not L0_2 then
    L0_2 = error
    L1_2 = "Missing in SV.Database is the option ['table:gang'], if you change the column name, change only the value, do not change the key!"
    L0_2(L1_2)
  end
  L0_2 = SV
  L0_2 = L0_2.Database
  L0_2 = L0_2["column:plate"]
  if not L0_2 then
    L0_2 = error
    L1_2 = "Missing in SV.Database is the option ['table:plate'], if you change the column name, change only the value, do not change the key!"
    L0_2(L1_2)
  end
  L0_2 = SV
  L0_2 = L0_2.Database
  L0_2 = L0_2["column:vehicle"]
  if not L0_2 then
    L0_2 = error
    L1_2 = "Missing in SV.Database is the option ['table:vehicle'], if you change the column name, change only the value, do not change the key!"
    L0_2(L1_2)
  end
  L0_2 = SV
  L0_2 = L0_2.Database
  L0_2 = L0_2["column:type"]
  if not L0_2 then
    L0_2 = error
    L1_2 = "Missing in SV.Database is the option ['table:type'], if you change the column name, change only the value, do not change the key!"
    L0_2(L1_2)
  end
  L0_2 = Config
  L0_2 = L0_2.AutoExecuteQuery
  if L0_2 then
    L0_2 = MySQL
    L0_2 = L0_2.Async
    L0_2 = L0_2.execute
    L1_2 = [[
            CREATE TABLE IF NOT EXISTS `%s` (
                `%s` varchar(80) DEFAULT NULL,
                `%s` varchar(70) DEFAULT NULL,
                `%s` varchar(12) DEFAULT NULL,
                `%s` varchar(12) DEFAULT NULL,
                `vin` varchar(17) DEFAULT NULL,
                `netid` int(11) DEFAULT NULL,
                `milage` int(11) DEFAULT NULL,
                `%s` longtext DEFAULT NULL,
                `%s` varchar(50) NOT NULL DEFAULT 'vehicle',
                `position` longtext DEFAULT NULL,
                `garage` varchar(50) DEFAULT NULL,
                `garageSpotID` int(11) DEFAULT NULL,
                `parking_date` int(11) DEFAULT NULL,
                `impound_date` int(11) DEFAULT NULL,
                `impound_data` longtext DEFAULT NULL,
                `insurance` longtext DEFAULT NULL
            ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
        ]]
    L2_2 = L1_2
    L1_2 = L1_2.format
    L3_2 = SV
    L3_2 = L3_2.Database
    L3_2 = L3_2["table:owned_vehicles"]
    L4_2 = SV
    L4_2 = L4_2.Database
    L4_2 = L4_2["column:owner"]
    L5_2 = SV
    L5_2 = L5_2.Database
    L5_2 = L5_2["column:company"]
    L6_2 = SV
    L6_2 = L6_2.Database
    L6_2 = L6_2["column:gang"]
    L7_2 = SV
    L7_2 = L7_2.Database
    L7_2 = L7_2["column:plate"]
    L8_2 = SV
    L8_2 = L8_2.Database
    L8_2 = L8_2["column:vehicle"]
    L9_2 = SV
    L9_2 = L9_2.Database
    L9_2 = L9_2["column:type"]
    L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
    L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
    L0_2 = MySQL
    L0_2 = L0_2.Async
    L0_2 = L0_2.execute
    L1_2 = "ALTER TABLE `%s` ADD COLUMN IF NOT EXISTS `%s` varchar(12) DEFAULT NULL"
    L2_2 = L1_2
    L1_2 = L1_2.format
    L3_2 = SV
    L3_2 = L3_2.Database
    L3_2 = L3_2["table:owned_vehicles"]
    L4_2 = SV
    L4_2 = L4_2.Database
    L4_2 = L4_2["column:gang"]
    L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L1_2(L2_2, L3_2, L4_2)
    L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
    L0_2 = MySQL
    L0_2 = L0_2.Async
    L0_2 = L0_2.execute
    L1_2 = "ALTER TABLE `%s` ADD COLUMN IF NOT EXISTS `position` longtext DEFAULT NULL"
    L2_2 = L1_2
    L1_2 = L1_2.format
    L3_2 = SV
    L3_2 = L3_2.Database
    L3_2 = L3_2["table:owned_vehicles"]
    L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L1_2(L2_2, L3_2)
    L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
    L0_2 = MySQL
    L0_2 = L0_2.Async
    L0_2 = L0_2.execute
    L1_2 = [[
            CREATE TABLE IF NOT EXISTS `parkings` (
                `owner` varchar(100) DEFAULT NULL,
                `ownerName` varchar(220) DEFAULT NULL,
                `parking` varchar(200) NOT NULL,
                `space` int(11) NOT NULL DEFAULT 0,
                `time` bigint(20) NOT NULL DEFAULT 0
            ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
        ]]
    L0_2(L1_2)
    L0_2 = MySQL
    L0_2 = L0_2.Async
    L0_2 = L0_2.execute
    L1_2 = [[
            CREATE TABLE IF NOT EXISTS `vms_business` (
                `id` varchar(50) NOT NULL DEFAULT '',
                `type` varchar(50) NOT NULL DEFAULT '',
                `owner` mediumtext DEFAULT NULL,
                `employees` longtext DEFAULT '{}',
                `stock` longtext DEFAULT '{}',
                `data` longtext DEFAULT '{}',
                `announcements` longtext DEFAULT '{}',
                `orders` longtext DEFAULT '{}',
                `history` longtext DEFAULT '{}'
            ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
        ]]
    L0_2(L1_2)
    L0_2 = Citizen
    L0_2 = L0_2.Wait
    L1_2 = 400
    L0_2(L1_2)
  end
  L0_2 = MySQL
  L0_2 = L0_2.Sync
  L0_2 = L0_2.execute
  L1_2 = "UPDATE `%s` SET `position` = NULL WHERE `garage` IS NOT NULL"
  L2_2 = L1_2
  L1_2 = L1_2.format
  L3_2 = SV
  L3_2 = L3_2.Database
  L3_2 = L3_2["table:owned_vehicles"]
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = {}
  L0_2(L1_2, L2_2)
  L0_2 = pairs
  L1_2 = Config
  L1_2 = L1_2.Garages
  L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
  for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
    L6_2 = L5_2.businessGarage
    if L6_2 then
      L6_2 = MySQL
      L6_2 = L6_2.Async
      L6_2 = L6_2.fetchAll
      L7_2 = "SELECT * FROM vms_business WHERE id = @id AND type = @type"
      L8_2 = {}
      L8_2["@id"] = L4_2
      L8_2["@type"] = "garage"
      function L9_2(A0_3)
        local L1_3, L2_3, L3_3, L4_3, L5_3
        if A0_3 then
          L1_3 = A0_3[1]
          if L1_3 then
            L1_3 = A0_3[1]
            L1_3 = L1_3.owner
            if L1_3 then
              L1_3 = businessGarages
              L2_3 = L4_2
              L3_3 = {}
              L3_3.type = "garage"
              L4_3 = A0_3[1]
              L4_3 = L4_3.owner
              L3_3.owner = L4_3
              L4_3 = json
              L4_3 = L4_3.decode
              L5_3 = A0_3[1]
              L5_3 = L5_3.data
              L4_3 = L4_3(L5_3)
              L3_3.data = L4_3
              L1_3[L2_3] = L3_3
            end
        end
        else
          L1_3 = MySQL
          L1_3 = L1_3.Async
          L1_3 = L1_3.execute
          L2_3 = "INSERT INTO vms_business (`id`, `type`, `owner`, `data`) VALUES (@id, @type, @owner, @data)"
          L3_3 = {}
          L4_3 = L4_2
          L3_3["@id"] = L4_3
          L3_3["@type"] = "garage"
          L3_3["@owner"] = nil
          L4_3 = json
          L4_3 = L4_3.encode
          L5_3 = {}
          L5_3.balance = 0
          L5_3.totalEarned = 0
          L4_3 = L4_3(L5_3)
          L3_3["@data"] = L4_3
          L1_3(L2_3, L3_3)
        end
      end
      L6_2(L7_2, L8_2, L9_2)
    end
  end
  L0_2 = MySQL
  L0_2 = L0_2.Async
  L0_2 = L0_2.fetchAll
  L1_2 = "SELECT * FROM `%s` WHERE garage IS NOT NULL AND impound_date IS NULL"
  L2_2 = L1_2
  L1_2 = L1_2.format
  L3_2 = SV
  L3_2 = L3_2.Database
  L3_2 = L3_2["table:owned_vehicles"]
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = {}
  function L3_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3
    if A0_3 then
      L1_3 = A0_3[1]
      if L1_3 then
        L1_3 = pairs
        L2_3 = A0_3
        L1_3, L2_3, L3_3, L4_3 = L1_3(L2_3)
        for L5_3, L6_3 in L1_3, L2_3, L3_3, L4_3 do
          L7_3 = L6_3.garageSpotID
          if L7_3 then
            L8_3 = L6_3.garage
            L7_3 = L1_1
            L7_3 = L7_3[L8_3]
            if not L7_3 then
              L8_3 = L6_3.garage
              L7_3 = L1_1
              L9_3 = {}
              L7_3[L8_3] = L9_3
            end
            L8_3 = L6_3.garage
            L7_3 = L1_1
            L7_3 = L7_3[L8_3]
            L8_3 = L6_3.garageSpotID
            L7_3 = L7_3[L8_3]
            if not L7_3 then
              L8_3 = L6_3.garage
              L7_3 = L1_1
              L7_3 = L7_3[L8_3]
              L8_3 = L6_3.garageSpotID
              L9_3 = {}
              L10_3 = SV
              L10_3 = L10_3.Database
              L10_3 = L10_3["column:owner"]
              L10_3 = L6_3[L10_3]
              L9_3.owner = L10_3
              L10_3 = SV
              L10_3 = L10_3.Database
              L10_3 = L10_3["column:company"]
              L10_3 = L6_3[L10_3]
              L9_3.company = L10_3
              L10_3 = SV
              L10_3 = L10_3.Database
              L10_3 = L10_3["column:gang"]
              L10_3 = L6_3[L10_3]
              L9_3.gang = L10_3
              L10_3 = SV
              L10_3 = L10_3.Database
              L10_3 = L10_3["column:plate"]
              L10_3 = L6_3[L10_3]
              L9_3.plate = L10_3
              L10_3 = tonumber
              L11_3 = L6_3.parking_date
              L10_3 = L10_3(L11_3)
              L9_3.parking_date = L10_3
              L10_3 = json
              L10_3 = L10_3.decode
              L11_3 = SV
              L11_3 = L11_3.Database
              L11_3 = L11_3["column:vehicle"]
              L11_3 = L6_3[L11_3]
              L10_3 = L10_3(L11_3)
              L9_3.mods = L10_3
              L7_3[L8_3] = L9_3
            end
          end
        end
      end
    end
  end
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = "SELECT `netid`, `%s`, `%s`"
  L1_2 = L0_2
  L0_2 = L0_2.format
  L2_2 = SV
  L2_2 = L2_2.Database
  L2_2 = L2_2["column:plate"]
  L3_2 = SV
  L3_2 = L3_2.Database
  L3_2 = L3_2["column:vehicle"]
  L0_2 = L0_2(L1_2, L2_2, L3_2)
  L1_2 = Config
  L1_2 = L1_2.VehiclePersistence
  if L1_2 then
    L1_2 = L0_2
    L2_2 = ", `position` "
    L1_2 = L1_2 .. L2_2
    L0_2 = L1_2
  end
  L1_2 = L0_2
  L2_2 = "FROM `%s` WHERE netid IS NOT NULL"
  L3_2 = L2_2
  L2_2 = L2_2.format
  L4_2 = SV
  L4_2 = L4_2.Database
  L4_2 = L4_2["table:owned_vehicles"]
  L2_2 = L2_2(L3_2, L4_2)
  L1_2 = L1_2 .. L2_2
  L0_2 = L1_2
  L1_2 = Config
  L1_2 = L1_2.VehiclePersistence
  if L1_2 then
    L1_2 = L0_2
    L2_2 = " OR position IS NOT NULL"
    L1_2 = L1_2 .. L2_2
    L0_2 = L1_2
  end
  L1_2 = MySQL
  L1_2 = L1_2.Async
  L1_2 = L1_2.fetchAll
  L2_2 = L0_2
  L3_2 = {}
  function L4_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3
    if A0_3 then
      L1_3 = A0_3[1]
      if L1_3 then
        L1_3 = pairs
        L2_3 = A0_3
        L1_3, L2_3, L3_3, L4_3 = L1_3(L2_3)
        for L5_3, L6_3 in L1_3, L2_3, L3_3, L4_3 do
          L7_3 = L6_3.netid
          if L7_3 then
            L7_3 = NetworkGetEntityFromNetworkId
            L8_3 = L6_3.netid
            L7_3 = L7_3(L8_3)
            if L7_3 then
              L8_3 = DoesEntityExist
              L9_3 = L7_3
              L8_3 = L8_3(L9_3)
              if L8_3 then
                L9_3 = DeleteEntity
                L10_3 = L7_3
                L9_3(L10_3)
              end
            end
          end
          L7_3 = Config
          L7_3 = L7_3.VehiclePersistence
          if L7_3 then
            L7_3 = L6_3.position
            if L7_3 then
              L7_3 = json
              L7_3 = L7_3.decode
              L8_3 = SV
              L8_3 = L8_3.Database
              L8_3 = L8_3["column:vehicle"]
              L8_3 = L6_3[L8_3]
              L7_3 = L7_3(L8_3)
              L8_3 = L7_3.plate
              if L8_3 then
                L8_3 = json
                L8_3 = L8_3.decode
                L9_3 = L6_3.position
                L8_3 = L8_3(L9_3)
                L9_3 = L7_3.flooded
                if not L9_3 then
                  if not L8_3 then
                    goto lbl_89
                  end
                  L9_3 = L8_3.z
                  if not (L9_3 < 0.0) then
                    L9_3 = L8_3.x
                    L10_3 = 14000.0
                    if not (L9_3 >= L10_3) then
                      L9_3 = L8_3.x
                      L10_3 = -14000.0
                      if not (L9_3 <= L10_3) then
                        L9_3 = L8_3.y
                        L10_3 = 14000.0
                        if not (L9_3 >= L10_3) then
                          L9_3 = L8_3.y
                          L10_3 = -14000.0
                          if not (L9_3 <= L10_3) then
                            goto lbl_89
                          end
                        end
                      end
                    end
                  end
                end
                L9_3 = MySQL
                L9_3 = L9_3.Sync
                L9_3 = L9_3.execute
                L10_3 = "UPDATE `%s` SET `position` = NULL WHERE `%s` = @plate"
                L11_3 = L10_3
                L10_3 = L10_3.format
                L12_3 = SV
                L12_3 = L12_3.Database
                L12_3 = L12_3["table:owned_vehicles"]
                L13_3 = SV
                L13_3 = L13_3.Database
                L13_3 = L13_3["column:plate"]
                L10_3 = L10_3(L11_3, L12_3, L13_3)
                L11_3 = {}
                L12_3 = L6_3.plate
                L11_3["@plate"] = L12_3
                L9_3(L10_3, L11_3)
                goto lbl_99
                ::lbl_89::
                L9_3 = vehiclesPersistedClient
                L10_3 = L7_3.plate
                L9_3[L10_3] = L8_3
                L9_3 = vehiclesPersisted
                L10_3 = L7_3.plate
                L11_3 = {}
                L11_3.position = L8_3
                L11_3.properties = L7_3
                L9_3[L10_3] = L11_3
              end
            end
          end
          ::lbl_99::
        end
      end
    end
    L1_3 = MySQL
    L1_3 = L1_3.Sync
    L1_3 = L1_3.execute
    L2_3 = "UPDATE `%s` SET `netid` = NULL WHERE `netid` IS NOT NULL"
    L3_3 = L2_3
    L2_3 = L2_3.format
    L4_3 = SV
    L4_3 = L4_3.Database
    L4_3 = L4_3["table:owned_vehicles"]
    L2_3 = L2_3(L3_3, L4_3)
    L3_3 = {}
    L1_3(L2_3, L3_3)
  end
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = Citizen
  L1_2 = L1_2.Wait
  L2_2 = 2000
  L1_2(L2_2)
  L1_2 = MySQL
  L1_2 = L1_2.Async
  L1_2 = L1_2.fetchAll
  L2_2 = "SELECT * FROM parkings"
  L3_2 = {}
  function L4_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3
    if A0_3 then
      L1_3 = A0_3[1]
      if L1_3 then
        L1_3 = pairs
        L2_3 = A0_3
        L1_3, L2_3, L3_3, L4_3 = L1_3(L2_3)
        for L5_3, L6_3 in L1_3, L2_3, L3_3, L4_3 do
          L7_3 = L6_3.time
          if L7_3 then
            L7_3 = L6_3.time
            if -1 ~= L7_3 then
              L7_3 = os
              L7_3 = L7_3.time
              L7_3 = L7_3()
              L8_3 = tonumber
              L9_3 = L6_3.time
              L8_3 = L8_3(L9_3)
              if L7_3 >= L8_3 then
                L7_3 = MySQL
                L7_3 = L7_3.Async
                L7_3 = L7_3.execute
                L8_3 = "DELETE FROM parkings WHERE parking = @parking AND space = @space"
                L9_3 = {}
                L10_3 = L6_3.parking
                L9_3["@parking"] = L10_3
                L10_3 = L6_3.space
                L9_3["@space"] = L10_3
                L7_3(L8_3, L9_3)
                return
              else
                L7_3 = L2_1
                L7_3 = #L7_3
                L8_3 = L7_3 + 1
                L7_3 = L2_1
                L9_3 = {}
                L10_3 = L6_3.owner
                L9_3.owner = L10_3
                L10_3 = L6_3.ownerName
                L9_3.ownerName = L10_3
                L10_3 = tonumber
                L11_3 = L6_3.time
                L10_3 = L10_3(L11_3)
                L9_3.time = L10_3
                L10_3 = L6_3.parking
                L9_3.parking = L10_3
                L10_3 = L6_3.space
                L9_3.space = L10_3
                L7_3[L8_3] = L9_3
              end
            end
          end
          L8_3 = L6_3.parking
          L7_3 = L1_1
          L7_3 = L7_3[L8_3]
          if not L7_3 then
            L8_3 = L6_3.parking
            L7_3 = L1_1
            L9_3 = {}
            L7_3[L8_3] = L9_3
          end
          L8_3 = L6_3.parking
          L7_3 = L1_1
          L7_3 = L7_3[L8_3]
          L8_3 = L6_3.space
          L7_3 = L7_3[L8_3]
          if not L7_3 then
            L8_3 = L6_3.parking
            L7_3 = L1_1
            L7_3 = L7_3[L8_3]
            L8_3 = L6_3.space
            L9_3 = {}
            L7_3[L8_3] = L9_3
          end
          L8_3 = L6_3.parking
          L7_3 = L1_1
          L7_3 = L7_3[L8_3]
          L8_3 = L6_3.space
          L7_3 = L7_3[L8_3]
          L8_3 = L6_3.owner
          L7_3.isRented = L8_3
          L8_3 = L6_3.parking
          L7_3 = L1_1
          L7_3 = L7_3[L8_3]
          L8_3 = L6_3.space
          L7_3 = L7_3[L8_3]
          L8_3 = L6_3.ownerName
          L7_3.ownerName = L8_3
          L8_3 = L6_3.parking
          L7_3 = L1_1
          L7_3 = L7_3[L8_3]
          L8_3 = L6_3.space
          L7_3 = L7_3[L8_3]
          L8_3 = tonumber
          L9_3 = L6_3.time
          L8_3 = L8_3(L9_3)
          L7_3.time = L8_3
        end
      end
    end
  end
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = "UPDATE `%s` SET netid = NULL, garage = @garage, impound_date = @impound_date, impound_data = @impound_data, garageSpotID = NULL WHERE `%s` = @type AND `garage` IS NULL"
  L2_2 = L1_2
  L1_2 = L1_2.format
  L3_2 = SV
  L3_2 = L3_2.Database
  L3_2 = L3_2["table:owned_vehicles"]
  L4_2 = SV
  L4_2 = L4_2.Database
  L4_2 = L4_2["column:type"]
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L2_2 = Config
  L2_2 = L2_2.VehiclePersistence
  if L2_2 then
    L2_2 = L1_2
    L3_2 = " AND `position` IS NULL"
    L2_2 = L2_2 .. L3_2
    L1_2 = L2_2
  end
  L2_2 = pairs
  L3_2 = Config
  L3_2 = L3_2.VehicleTypes
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = L7_2.autoAddToImpoundAfterRestart
    if L8_2 then
      L8_2 = Config
      L8_2 = L8_2.AutomaticImpound
      L9_2 = L7_2.name
      L8_2 = L8_2[L9_2]
      L9_2 = {}
      if L8_2 then
        L10_2 = L8_2.impounded_by
        if not L10_2 then
          L10_2 = nil
        end
        L9_2.impounded_by = L10_2
        L10_2 = L8_2.fine_title
        if not L10_2 then
          L10_2 = nil
        end
        L9_2.fine_title = L10_2
        L10_2 = L8_2.fine_amount
        if not L10_2 then
          L10_2 = nil
        end
        L9_2.fine_amount = L10_2
      end
      L10_2 = MySQL
      L10_2 = L10_2.Sync
      L10_2 = L10_2.execute
      L11_2 = L1_2
      L12_2 = {}
      L13_2 = L7_2.defaultImpound
      L12_2["@garage"] = L13_2
      L13_2 = os
      L13_2 = L13_2.time
      L13_2 = L13_2()
      L12_2["@impound_date"] = L13_2
      if L8_2 then
        L13_2 = json
        L13_2 = L13_2.encode
        L14_2 = L9_2
        L13_2 = L13_2(L14_2)
        if L13_2 then
          goto lbl_296
        end
      end
      L13_2 = nil
      ::lbl_296::
      L12_2["@impound_data"] = L13_2
      L13_2 = L7_2.name
      L12_2["@type"] = L13_2
      L10_2(L11_2, L12_2)
    else
      L8_2 = MySQL
      L8_2 = L8_2.Sync
      L8_2 = L8_2.execute
      L9_2 = "UPDATE `%s` SET netid = NULL WHERE `%s` = @type AND `garage` IS NULL"
      L10_2 = L9_2
      L9_2 = L9_2.format
      L11_2 = SV
      L11_2 = L11_2.Database
      L11_2 = L11_2["table:owned_vehicles"]
      L12_2 = SV
      L12_2 = L12_2.Database
      L12_2 = L12_2["column:type"]
      L9_2 = L9_2(L10_2, L11_2, L12_2)
      L10_2 = {}
      L11_2 = L7_2.name
      L10_2["@type"] = L11_2
      L8_2(L9_2, L10_2)
    end
  end
  L2_2 = L23_1
  L2_2()
end
L24_1(L25_1)
--   ____  _____ ____ ______   ______ _____ _____ ____     ___     _____ _____  _______ ____    ______   __  _______  __    _    ____    _____ ____  ___ _  _____ _____ ___  _   _    _        _     _   _                  ____  _ _                       _                 _______ _____ _  __     _   _ ____      _ ____ _____ _____
--  |  _ \| ____/ ___|  _ \ \ / /  _ \_   _| ____|  _ \   ( _ )   |  ___|_ _\ \/ / ____|  _ \  | __ ) \ / / |  ___\ \/ /   / \  |  _ \  |  ___|  _ \|_ _| |/ /_ _|_   _/ _ \| \ | |  / \      | |__ | |_| |_ _ __  ___ _   / / /_| (_)___  ___ ___  _ __ __| |  __ _  __ _   / / ____|_   _| |/ /__ _| | | | ___|  __| | ___|___  |___  |
--  | | | |  _|| |   | |_) \ V /| |_) || | |  _| | | | |  / _ \/\ | |_   | | \  /|  _| | | | | |  _ \\ V /  | |_   \  /   / _ \ | |_) | | |_  | |_) || || ' / | |  | || | | |  \| | / _ \     | '_ \| __| __| '_ \/ __(_) / / / _` | / __|/ __/ _ \| '__/ _` | / _` |/ _` | / /|  _|   | | | ' // _` | |_| |___ \ / _` |___ \  / /   / /
--  | |_| | |__| |___|  _ < | | |  __/ | | | |___| |_| | | (_>  < |  _|  | | /  \| |___| |_| | | |_) || |   |  _|  /  \  / ___ \|  __/  |  _| |  _ < | || . \ | |  | || |_| | |\  |/ ___ \ _  | | | | |_| |_| |_) \__ \_ / / / (_| | \__ \ (_| (_) | | | (_| || (_| | (_| |/ / | |___  | | | . \ (_| |  _  |___) | (_| |___) |/ /   / /
--  |____/|_____\____|_| \_\|_| |_|    |_| |_____|____/   \___/\/ |_|   |___/_/\_\_____|____/  |____/ |_|   |_|   /_/\_\/_/   \_\_|     |_|   |_| \_\___|_|\_\___| |_| \___/|_| \_/_/   \_(_) |_| |_|\__|\__| .__/|___(_)_/_/ \__,_|_|___/\___\___/|_|  \__,_(_)__, |\__, /_/  |_____| |_| |_|\_\__, |_| |_|____/ \__,_|____//_/   /_/
--                                                                                                                                                                                                          |_|                                                |___/ |___/                         |_|
-- https://discord.gg/ETKqH5d577
