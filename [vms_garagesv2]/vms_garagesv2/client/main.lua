--   ____  _____ ____ ______   ______ _____ _____ ____     ___     _____ _____  _______ ____    ______   __  _______  __    _    ____    _____ ____  ___ _  _____ _____ ___  _   _    _        _     _   _                  ____  _ _                       _                 _______ _____ _  __     _   _ ____      _ ____ _____ _____
--  |  _ \| ____/ ___|  _ \ \ / /  _ \_   _| ____|  _ \   ( _ )   |  ___|_ _\ \/ / ____|  _ \  | __ ) \ / / |  ___\ \/ /   / \  |  _ \  |  ___|  _ \|_ _| |/ /_ _|_   _/ _ \| \ | |  / \      | |__ | |_| |_ _ __  ___ _   / / /_| (_)___  ___ ___  _ __ __| |  __ _  __ _   / / ____|_   _| |/ /__ _| | | | ___|  __| | ___|___  |___  |
--  | | | |  _|| |   | |_) \ V /| |_) || | |  _| | | | |  / _ \/\ | |_   | | \  /|  _| | | | | |  _ \\ V /  | |_   \  /   / _ \ | |_) | | |_  | |_) || || ' / | |  | || | | |  \| | / _ \     | '_ \| __| __| '_ \/ __(_) / / / _` | / __|/ __/ _ \| '__/ _` | / _` |/ _` | / /|  _|   | | | ' // _` | |_| |___ \ / _` |___ \  / /   / /
--  | |_| | |__| |___|  _ < | | |  __/ | | | |___| |_| | | (_>  < |  _|  | | /  \| |___| |_| | | |_) || |   |  _|  /  \  / ___ \|  __/  |  _| |  _ < | || . \ | |  | || |_| | |\  |/ ___ \ _  | | | | |_| |_| |_) \__ \_ / / / (_| | \__ \ (_| (_) | | | (_| || (_| | (_| |/ / | |___  | | | . \ (_| |  _  |___) | (_| |___) |/ /   / /
--  |____/|_____\____|_| \_\|_| |_|    |_| |_____|____/   \___/\/ |_|   |___/_/\_\_____|____/  |____/ |_|   |_|   /_/\_\/_/   \_\_|     |_|   |_| \_\___|_|\_\___| |_| \___/|_| \_/_/   \_(_) |_| |_|\__|\__| .__/|___(_)_/_/ \__,_|_|___/\___\___/|_|  \__,_(_)__, |\__, /_/  |_____| |_| |_|\_\__, |_| |_|____/ \__,_|____//_/   /_/
--                                                                                                                                                                                                          |_|                                                |___/ |___/                         |_|
-- https://discord.gg/ETKqH5d577

local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = {}
DATACACHE = L0_1
L0_1 = {}
agreementData = L0_1
currentMenu = nil
OS_TIME = nil
L0_1 = {}
PlayerData = L0_1
myIdentifier = nil
playerName = nil
viewVehicle = nil
companyVehicles = nil
canUseAgain = true
L0_1 = {}
locatorBlips = L0_1
L0_1 = {}
employeesData = L0_1
billFrom = nil
L0_1 = {}
billCache = L0_1
L0_1 = {}
resellCache = L0_1
L0_1 = {}
transfersGaragesList = L0_1
cannotTakeVehicle = false
playerVehicle = nil
playerSeat = nil
L0_1 = {}
vehiclesPersistedToSpawn = L0_1
L0_1 = false
L1_1 = Config
L1_1 = L1_1.Core
if "ESX" == L1_1 then
  L1_1 = Config
  L1_1 = L1_1.CoreExport
  L1_1 = L1_1()
  ESX = L1_1
else
  L1_1 = Config
  L1_1 = L1_1.Core
  if "QB-Core" == L1_1 then
    L1_1 = Config
    L1_1 = L1_1.CoreExport
    L1_1 = L1_1()
    QBCore = L1_1
  end
end
L1_1 = RegisterNetEvent
L2_1 = Config
L2_1 = L2_1.PlayerLoaded
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = Config
  L1_2 = L1_2.Core
  L1_2 = A0_2 or L1_2
  if "ESX" ~= L1_2 or not A0_2 then
    L1_2 = Config
    L1_2 = L1_2.Core
    L1_2 = CL
    L1_2 = L1_2.GetPlayerData
    L1_2 = "QB-Core" == L1_2 and L1_2
  end
  PlayerData = L1_2
  L1_2 = Config
  L1_2 = L1_2.Core
  if "ESX" == L1_2 then
    L1_2 = PlayerData
    L1_2 = L1_2.identifier
    if L1_2 then
      goto lbl_35
    end
  end
  L1_2 = Config
  L1_2 = L1_2.Core
  L1_2 = PlayerData
  L1_2 = "QB-Core" == L1_2 and L1_2
  ::lbl_35::
  myIdentifier = L1_2
  waitingForLoadAfterRestart = true
  L1_2 = garageInteriorId
  if L1_2 then
    L1_2 = removeLocalVehicles
    L2_2 = garageInteriorId
    L3_2 = true
    L1_2(L2_2, L3_2)
    L1_2 = removeLocalVehicles
    L2_2 = garageInteriorId
    L3_2 = false
    L1_2(L2_2, L3_2)
    garageInteriorId = nil
  end
  L1_2 = Citizen
  L1_2 = L1_2.Wait
  L2_2 = 1000
  L1_2(L2_2)
  L1_2 = TriggerServerEvent
  L2_2 = "vms_garagesv2:fetchData"
  L1_2(L2_2)
  L1_2 = Config
  L1_2 = L1_2.VehiclePersistence
  if L1_2 then
    L1_2 = Config
    L1_2 = L1_2.PersistenceSpawnDelay
    if L1_2 >= 0 then
      L1_2 = Config
      L1_2 = L1_2.PersistenceSpawnDelay
      if L1_2 then
        goto lbl_69
      end
    end
    L1_2 = 0
    ::lbl_69::
    L2_2 = library
    L2_2 = L2_2.Debug
    L3_2 = "^5[PERSISTENCE]^7 Vehicle spawn delayed for %d ms"
    L4_2 = L3_2
    L3_2 = L3_2.format
    L5_2 = L1_2
    L3_2, L4_2, L5_2 = L3_2(L4_2, L5_2)
    L2_2(L3_2, L4_2, L5_2)
    L2_2 = SetTimeout
    L3_2 = L1_2
    function L4_2()
      local L0_3, L1_3
      L0_3 = true
      L0_1 = L0_3
      L0_3 = library
      L0_3 = L0_3.Debug
      L1_3 = "^2[PERSISTENCE]^7 Vehicle spawning is now allowed"
      L0_3(L1_3)
    end
    L2_2(L3_2, L4_2)
  end
end
L1_1(L2_1, L3_1)
L1_1 = RegisterNetEvent
L2_1 = Config
L2_1 = L2_1.PlayerSetJob
function L3_1(A0_2)
  local L1_2
  L1_2 = PlayerData
  L1_2.job = A0_2
  L1_2 = garageZone
  if L1_2 then
    L1_2 = refreshVehiclesAccess
    L1_2()
  end
  L1_2 = refreshBlips
  L1_2()
end
L1_1(L2_1, L3_1)
L1_1 = RegisterNetEvent
L2_1 = Config
L2_1 = L2_1.PlayerSetGang
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = Citizen
  L1_2 = L1_2.CreateThread
  function L2_2()
    local L0_3, L1_3
    L0_3 = Citizen
    L0_3 = L0_3.Wait
    L1_3 = 500
    L0_3(L1_3)
    L0_3 = CL
    L0_3 = L0_3.GetPlayerData
    L0_3 = L0_3()
    PlayerData = L0_3
    L0_3 = garageZone
    if L0_3 then
      L0_3 = refreshVehiclesAccess
      L0_3()
    end
    L0_3 = refreshBlips
    L0_3()
  end
  L1_2(L2_2)
end
L1_1(L2_1, L3_1)
L1_1 = RegisterNetEvent
L2_1 = "vms_garagesv2:fetchedData"
function L3_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2
  playerName = A2_2
  businessGarages = A1_2
  L4_2 = A3_2 or L4_2
  if not A3_2 then
    L4_2 = {}
  end
  vehiclesPersistedToSpawn = L4_2
  L4_2 = pairs
  L5_2 = A0_2
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
  for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
    L10_2 = string
    L10_2 = L10_2.find
    L11_2 = L8_2
    L12_2 = "HouseGarage:"
    L10_2 = L10_2(L11_2, L12_2)
    if L10_2 then
      L11_2 = Config
      L11_2 = L11_2.HousingGarages
      L11_2 = L11_2[L8_2]
      if L11_2 then
        L11_2 = pairs
        L12_2 = L9_2
        L11_2, L12_2, L13_2, L14_2 = L11_2(L12_2)
        for L15_2, L16_2 in L11_2, L12_2, L13_2, L14_2 do
          L17_2 = Config
          L17_2 = L17_2.HousingGarages
          L17_2 = L17_2[L8_2]
          L17_2 = L17_2.parkingSpaces
          if L17_2 then
            L17_2 = Config
            L17_2 = L17_2.HousingGarages
            L17_2 = L17_2[L8_2]
            L17_2 = L17_2.parkingSpaces
            L17_2 = L17_2[L15_2]
            if L17_2 then
              L17_2 = Config
              L17_2 = L17_2.HousingGarages
              L17_2 = L17_2[L8_2]
              L17_2 = L17_2.parkingSpaces
              L17_2 = L17_2[L15_2]
              L17_2.data = L16_2
              if L16_2 then
                L17_2 = L16_2.plate
                if L17_2 then
                  L17_2 = library
                  L17_2 = L17_2.Debug
                  L18_2 = "^6[FETCHED]^7 House Garage: "
                  L19_2 = L8_2
                  L20_2 = ":"
                  L21_2 = L15_2
                  L22_2 = " - ^4"
                  L23_2 = L16_2.plate
                  L18_2 = L18_2 .. L19_2 .. L20_2 .. L21_2 .. L22_2 .. L23_2
                  L17_2(L18_2)
                end
              end
            end
          end
        end
      end
    else
      L11_2 = Config
      L11_2 = L11_2.Garages
      L11_2 = L11_2[L8_2]
      if L11_2 then
        L11_2 = pairs
        L12_2 = L9_2
        L11_2, L12_2, L13_2, L14_2 = L11_2(L12_2)
        for L15_2, L16_2 in L11_2, L12_2, L13_2, L14_2 do
          L17_2 = Config
          L17_2 = L17_2.Garages
          L17_2 = L17_2[L8_2]
          L17_2 = L17_2.parkingSpaces
          if L17_2 then
            L17_2 = Config
            L17_2 = L17_2.Garages
            L17_2 = L17_2[L8_2]
            L17_2 = L17_2.parkingSpaces
            L17_2 = L17_2[L15_2]
            if L17_2 then
              L17_2 = Config
              L17_2 = L17_2.Garages
              L17_2 = L17_2[L8_2]
              L17_2 = L17_2.parkingSpaces
              L17_2 = L17_2[L15_2]
              L17_2.data = L16_2
              if L16_2 then
                L17_2 = L16_2.plate
                if L17_2 then
                  L17_2 = library
                  L17_2 = L17_2.Debug
                  L18_2 = "^6[FETCHED]^7 Garage: "
                  L19_2 = L8_2
                  L20_2 = ":"
                  L21_2 = L15_2
                  L22_2 = " - ^4"
                  L23_2 = L16_2.plate
                  L18_2 = L18_2 .. L19_2 .. L20_2 .. L21_2 .. L22_2 .. L23_2
                  L17_2(L18_2)
                end
              end
            end
          end
        end
      end
    end
  end
  L4_2 = Config
  L4_2 = L4_2.AllowTransferBetweenGarages
  if L4_2 then
    L4_2 = pairs
    L5_2 = Config
    L5_2 = L5_2.Garages
    L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
    for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
      L10_2 = L9_2.spawnPoint
      if L10_2 then
        L10_2 = L9_2.returnVehiclePoint
        if L10_2 then
          L10_2 = L9_2.parkingSpaces
          if not L10_2 then
            L10_2 = L9_2.requiredJob
            if not L10_2 then
              L10_2 = L9_2.requiredGang
              if not L10_2 then
                L10_2 = L9_2.hasAccess
                if not L10_2 then
                  L10_2 = true
                  if L10_2 then
                    goto lbl_153
                  end
                end
                L10_2 = L9_2.hasAccess
                L11_2 = PlayerData
                L12_2 = myIdentifier
                L10_2 = L10_2(L11_2, L12_2)
                L10_2 = true == L10_2
                ::lbl_153::
                if L10_2 then
                  L11_2 = transfersGaragesList
                  L12_2 = {}
                  L13_2 = L9_2.label
                  L12_2.label = L13_2
                  L13_2 = L9_2.type
                  L12_2.type = L13_2
                  L11_2[L8_2] = L12_2
                end
              end
            end
          end
        end
      end
    end
  end
  waitingForLoadAfterRestart = false
  L4_2 = Citizen
  L4_2 = L4_2.Wait
  L5_2 = 800
  L4_2(L5_2)
  L4_2 = refreshBlips
  L4_2()
  L4_2 = SetTimeout
  L5_2 = 800
  function L6_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3
    L0_3 = PlayerPedId
    L0_3 = L0_3()
    L1_3 = GetEntityCoords
    L2_3 = L0_3
    L1_3 = L1_3(L2_3)
    L2_3 = vec2
    L3_3 = L1_3.x
    L4_3 = L1_3.y
    L2_3 = L2_3(L3_3, L4_3)
    L3_3 = pairs
    L4_3 = Config
    L4_3 = L4_3.Garages
    L3_3, L4_3, L5_3, L6_3 = L3_3(L4_3)
    for L7_3, L8_3 in L3_3, L4_3, L5_3, L6_3 do
      L9_3 = L8_3.garageZone
      if L9_3 then
        L9_3 = isPointInPolygon
        L10_3 = L2_3
        L11_3 = L8_3.garageZone
        L9_3 = L9_3(L10_3, L11_3)
        if L9_3 then
          L9_3 = L1_3.z
          L10_3 = L8_3.minZ
          if L9_3 >= L10_3 then
            L9_3 = L1_3.z
            L10_3 = L8_3.maxZ
            if L9_3 <= L10_3 then
              L9_3 = isInGarageZone
              if not L9_3 then
                isInGarageZone = true
                L9_3 = EnterZone
                L10_3 = true
                L11_3 = L7_3
                L12_3 = "garage"
                L9_3(L10_3, L11_3, L12_3)
              end
              break
            end
          end
        end
      end
    end
  end
  L4_2(L5_2, L6_2)
end
L1_1(L2_1, L3_1)
L1_1 = RegisterNetEvent
L2_1 = "vms_garagesv2:cl:spawnedVehiclesPersisted"
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = vehiclesPersistedToSpawn
  L1_2 = L1_2[A0_2]
  if L1_2 then
    L1_2 = vehiclesPersistedToSpawn
    L1_2[A0_2] = nil
    L1_2 = library
    L1_2 = L1_2.Debug
    L2_2 = "^2[PERSISTENCE]^7 Spawned vehicle "
    L3_2 = A0_2
    L2_2 = L2_2 .. L3_2
    L1_2(L2_2)
  end
end
L1_1(L2_1, L3_1)
L1_1 = RegisterNetEvent
L2_1 = "vms_garagesv2:fetchedGarageData"
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L2_2 = Config
  L2_2 = L2_2.Garages
  L2_2 = L2_2[A0_2]
  if not L2_2 then
    L2_2 = Config
    L2_2 = L2_2.HousingGarages
    L2_2 = L2_2[A0_2]
  end
  L3_2 = L2_2.parkingSpaces
  if L3_2 then
    L3_2 = pairs
    L4_2 = L2_2.parkingSpaces
    L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
    for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
      L9_2 = garageZone
      if L9_2 == A0_2 then
        L9_2 = L8_2.vehicleId
        if L9_2 then
          L9_2 = DeleteEntity
          L10_2 = L8_2.vehicleId
          L9_2(L10_2)
          L8_2.vehicleId = nil
        end
      end
      L8_2.vehicleId = nil
      L8_2.data = nil
    end
    L3_2 = pairs
    L4_2 = A1_2
    L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
    for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
      L9_2 = L2_2.parkingSpaces
      L9_2 = L9_2[L7_2]
      L9_2.data = L8_2
      if L8_2 then
        L9_2 = L8_2.plate
        if L9_2 then
          L9_2 = library
          L9_2 = L9_2.Debug
          L10_2 = "^2[LOAD]^7 Garage: "
          L11_2 = A0_2
          L12_2 = ":"
          L13_2 = L7_2
          L14_2 = " - ^4"
          L15_2 = L8_2.plate
          L10_2 = L10_2 .. L11_2 .. L12_2 .. L13_2 .. L14_2 .. L15_2
          L9_2(L10_2)
        end
      end
    end
    L3_2 = garageZone
    if L3_2 == A0_2 then
      L3_2 = spawnLocalVehicles
      L3_2()
    end
  end
end
L1_1(L2_1, L3_1)
L1_1 = RegisterNetEvent
L2_1 = "vms_garagesv2:notification"
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = CL
  L3_2 = L3_2.Notification
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
end
L1_1(L2_1, L3_1)
L1_1 = AddEventHandler
L2_1 = "onResourceStart"
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = GetCurrentResourceName
  L1_2 = L1_2()
  if A0_2 ~= L1_2 then
    return
  end
  L1_2 = Config
  L1_2 = L1_2.Core
  if "ESX" == L1_2 then
    while true do
      L1_2 = ESX
      if L1_2 then
        break
      end
      L1_2 = Citizen
      L1_2 = L1_2.Wait
      L2_2 = 200
      L1_2(L2_2)
    end
    L1_2 = ESX
    L1_2 = L1_2.IsPlayerLoaded
    L1_2 = L1_2()
    if L1_2 then
      L1_2 = CL
      L1_2 = L1_2.GetPlayerData
      L1_2 = L1_2()
      PlayerData = L1_2
      L1_2 = PlayerData
      L1_2 = L1_2.identifier
      myIdentifier = L1_2
    end
  else
    L1_2 = Config
    L1_2 = L1_2.Core
    if "QB-Core" == L1_2 then
      while true do
        L1_2 = QBCore
        if L1_2 then
          break
        end
        L1_2 = Citizen
        L1_2 = L1_2.Wait
        L2_2 = 200
        L1_2(L2_2)
      end
      L1_2 = CL
      L1_2 = L1_2.GetPlayerData
      L1_2 = L1_2()
      if L1_2 then
        L1_2 = CL
        L1_2 = L1_2.GetPlayerData
        L1_2 = L1_2()
        L1_2 = L1_2.job
        if L1_2 then
          L1_2 = CL
          L1_2 = L1_2.GetPlayerData
          L1_2 = L1_2()
          PlayerData = L1_2
          L1_2 = PlayerData
          L1_2 = L1_2.citizenid
          myIdentifier = L1_2
        end
      end
    end
  end
  waitingForLoadAfterRestart = true
  L1_2 = Citizen
  L1_2 = L1_2.Wait
  L2_2 = 2500
  L1_2(L2_2)
  L1_2 = TriggerServerEvent
  L2_2 = "vms_garagesv2:fetchData"
  L1_2(L2_2)
  L1_2 = Config
  L1_2 = L1_2.VehiclePersistence
  if L1_2 then
    L1_2 = Config
    L1_2 = L1_2.PersistenceSpawnDelay
    if L1_2 >= 0 then
      L1_2 = Config
      L1_2 = L1_2.PersistenceSpawnDelay
      if L1_2 then
        goto lbl_82
      end
    end
    L1_2 = 0
    ::lbl_82::
    L2_2 = library
    L2_2 = L2_2.Debug
    L3_2 = "^5[PERSISTENCE]^7 Vehicle spawn delayed for %d ms"
    L4_2 = L3_2
    L3_2 = L3_2.format
    L5_2 = L1_2
    L3_2, L4_2, L5_2 = L3_2(L4_2, L5_2)
    L2_2(L3_2, L4_2, L5_2)
    L2_2 = SetTimeout
    L3_2 = L1_2
    function L4_2()
      local L0_3, L1_3
      L0_3 = true
      L0_1 = L0_3
      L0_3 = library
      L0_3 = L0_3.Debug
      L1_3 = "^2[PERSISTENCE]^7 Vehicle spawning is now allowed"
      L0_3(L1_3)
    end
    L2_2(L3_2, L4_2)
  end
end
L1_1(L2_1, L3_1)
L1_1 = RegisterNetEvent
L2_1 = "vms_garagesv2:updateBusiness"
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  if A2_2 then
    L3_2 = A2_2.sub
    if L3_2 then
      L3_2 = A2_2.sub
      if "data" == L3_2 then
        L3_2 = businessGarages
        L3_2 = L3_2[A0_2]
        L4_2 = A2_2.sub
        L5_2 = A2_2.value
        L3_2[L4_2] = L5_2
      else
        L3_2 = businessGarages
        L3_2 = L3_2[A0_2]
        L3_2 = L3_2.data
        L4_2 = A2_2.sub
        L5_2 = A2_2.value
        L3_2[L4_2] = L5_2
        L3_2 = A2_2.sub
        if "pricePerDay" == L3_2 then
          L3_2 = garageZone
          if L3_2 == A0_2 then
            L3_2 = currentMenu
            if "parkingRent" == L3_2 then
              L3_2 = SendNUIMessage
              L4_2 = {}
              L4_2.action = "updateParkingRent"
              L4_2.changedPrice = true
              L5_2 = A2_2.value
              L4_2.pricePerDay = L5_2
              L3_2(L4_2)
            end
          end
        else
          L3_2 = A2_2.sub
          if "priceForInfinity" == L3_2 then
            L3_2 = garageZone
            if L3_2 == A0_2 then
              L3_2 = currentMenu
              if "parkingRent" == L3_2 then
                L3_2 = SendNUIMessage
                L4_2 = {}
                L4_2.action = "updateParkingRent"
                L4_2.changedPrice = true
                L5_2 = A2_2.value
                L4_2.priceForInfinity = L5_2
                L3_2(L4_2)
              end
            end
          end
        end
      end
    else
      L3_2 = pairs
      L4_2 = A2_2
      L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
      for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
        L9_2 = L8_2.sub
        if "data" == L9_2 then
          L9_2 = businessGarages
          L9_2 = L9_2[A0_2]
          L10_2 = L8_2.sub
          L11_2 = L8_2.value
          L9_2[L10_2] = L11_2
        else
          L9_2 = businessGarages
          L9_2 = L9_2[A0_2]
          L9_2 = L9_2.data
          L10_2 = L8_2.sub
          L11_2 = L8_2.value
          L9_2[L10_2] = L11_2
        end
      end
    end
  else
    L3_2 = businessGarages
    L3_2[A0_2] = A1_2
  end
  L3_2 = currentMenu
  if L3_2 then
    L3_2 = currentMenu
    if "management" == L3_2 then
      L3_2 = garageZone
      if L3_2 then
        L3_2 = garageZone
        if L3_2 == A0_2 then
          if not A1_2 and not A2_2 then
            L3_2 = closeManagementMenu
            L3_2()
          else
            L3_2 = SendNUIMessage
            L4_2 = {}
            L4_2.action = "updateManagementMenu"
            L5_2 = businessGarages
            L6_2 = garageZone
            L5_2 = L5_2[L6_2]
            L4_2.garageData = L5_2
            L3_2(L4_2)
          end
        end
      end
    end
  end
end
L1_1(L2_1, L3_1)
L1_1 = RegisterNetEvent
L2_1 = "vms_garagesv2:deleteTakenVehicle"
function L3_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2
  L4_2 = garageZone
  if not L4_2 then
    L4_2 = garageInteriorId
  end
  if L4_2 and L4_2 == A0_2 then
    L5_2 = Config
    L5_2 = L5_2.HousingGarages
    L5_2 = L5_2[A0_2]
    if L5_2 then
      L5_2 = Config
      L5_2 = L5_2.HousingGarages
      L5_2 = L5_2[A0_2]
      L5_2 = L5_2.parkingSpaces
      L5_2 = L5_2[A1_2]
      if L5_2 then
        goto lbl_26
      end
    end
    L5_2 = Config
    L5_2 = L5_2.Garages
    L5_2 = L5_2[A0_2]
    L5_2 = L5_2.parkingSpaces
    L5_2 = L5_2[A1_2]
    ::lbl_26::
    if L5_2 then
      L6_2 = DoesEntityExist
      L7_2 = L5_2.vehicleId
      L6_2 = L6_2(L7_2)
      if L6_2 then
        L6_2 = DeleteEntity
        L7_2 = L5_2.vehicleId
        L6_2(L7_2)
      end
    end
  end
  L5_2 = Config
  L5_2 = L5_2.HousingGarages
  L5_2 = L5_2[A0_2]
  if L5_2 then
    L5_2 = Config
    L5_2 = L5_2.HousingGarages
    L5_2 = L5_2[A0_2]
    L5_2 = L5_2.parkingSpaces
    L5_2 = L5_2[A1_2]
    L5_2.vehicleId = nil
    L5_2 = Config
    L5_2 = L5_2.HousingGarages
    L5_2 = L5_2[A0_2]
    L5_2 = L5_2.parkingSpaces
    L5_2 = L5_2[A1_2]
    L5_2.data = A3_2
    L5_2 = Config
    L5_2 = L5_2.HousingGarages
    L5_2 = L5_2[A0_2]
    L5_2 = L5_2.parkingSpaces
    L5_2 = L5_2[A1_2]
    L5_2.occupied = false
  else
    L5_2 = Config
    L5_2 = L5_2.Garages
    L5_2 = L5_2[A0_2]
    L5_2 = L5_2.parkingSpaces
    L5_2 = L5_2[A1_2]
    L5_2.vehicleId = nil
    L5_2 = Config
    L5_2 = L5_2.Garages
    L5_2 = L5_2[A0_2]
    L5_2 = L5_2.parkingSpaces
    L5_2 = L5_2[A1_2]
    L5_2.data = A3_2
    L5_2 = Config
    L5_2 = L5_2.Garages
    L5_2 = L5_2[A0_2]
    L5_2 = L5_2.parkingSpaces
    L5_2 = L5_2[A1_2]
    L5_2.occupied = false
  end
end
L1_1(L2_1, L3_1)
L1_1 = RegisterNetEvent
L2_1 = "vms_garagesv2:parkedVehicle"
L1_1(L2_1)
L1_1 = AddEventHandler
L2_1 = "vms_garagesv2:parkedVehicle"
function L3_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2
  L4_2 = Config
  L4_2 = L4_2.HousingGarages
  L4_2 = L4_2[A0_2]
  if L4_2 then
    L4_2 = Config
    L4_2 = L4_2.HousingGarages
    L4_2 = L4_2[A0_2]
    L4_2 = L4_2.parkingSpaces
    L4_2 = L4_2[A1_2]
    L4_2.occupied = true
    L4_2 = Config
    L4_2 = L4_2.HousingGarages
    L4_2 = L4_2[A0_2]
    L4_2 = L4_2.parkingSpaces
    L4_2 = L4_2[A1_2]
    L4_2.data = A3_2
  else
    L4_2 = Config
    L4_2 = L4_2.Garages
    L4_2 = L4_2[A0_2]
    L4_2 = L4_2.parkingSpaces
    L4_2 = L4_2[A1_2]
    L4_2.occupied = true
    L4_2 = Config
    L4_2 = L4_2.Garages
    L4_2 = L4_2[A0_2]
    L4_2 = L4_2.parkingSpaces
    L4_2 = L4_2[A1_2]
    L4_2.data = A3_2
  end
  L4_2 = garageZone
  if not L4_2 then
    L4_2 = garageInteriorId
  end
  if L4_2 and L4_2 == A0_2 then
    L5_2 = spawnLocalVehicle
    L6_2 = A1_2
    L7_2 = Config
    L7_2 = L7_2.HousingGarages
    L7_2 = L7_2[A0_2]
    if L7_2 then
      L7_2 = true
      if L7_2 then
        goto lbl_50
      end
    end
    L7_2 = false
    ::lbl_50::
    L5_2(L6_2, L7_2)
  end
end
L1_1(L2_1, L3_1)
L1_1 = RegisterNetEvent
L2_1 = "vms_garagesv2:updateParkingSpot"
function L3_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  if A2_2 then
    L4_2 = Config
    L4_2 = L4_2.HousingGarages
    L4_2 = L4_2[A0_2]
    if L4_2 then
      goto lbl_11
    end
  end
  L4_2 = Config
  L4_2 = L4_2.Garages
  L4_2 = L4_2[A0_2]
  ::lbl_11::
  L5_2 = L4_2 or L5_2
  if L4_2 then
    L5_2 = L4_2.parkingSpaces
    if L5_2 then
      L5_2 = L5_2[A1_2]
    end
  end
  if L5_2 then
    L5_2 = A3_2.plate
    if L5_2 then
      L5_2 = L4_2.parkingSpaces
      L5_2 = L5_2[A1_2]
      L5_2 = L5_2.data
      L6_2 = A3_2.plate
      L5_2.plate = L6_2
      L5_2 = L4_2.parkingSpaces
      L5_2 = L5_2[A1_2]
      L5_2 = L5_2.data
      L5_2 = L5_2.mods
      L6_2 = A3_2.plate
      L5_2.plate = L6_2
      L5_2 = garageZone
      if not L5_2 then
        L5_2 = garageInteriorId
      end
      L5_2 = L5_2 == A0_2
      if L5_2 then
        L6_2 = SetVehicleNumberPlateText
        L7_2 = L4_2.parkingSpaces
        L7_2 = L7_2[A1_2]
        L7_2 = L7_2.vehicleId
        L8_2 = A3_2.plate
        L6_2(L7_2, L8_2)
      end
    end
  end
end
L1_1(L2_1, L3_1)
L1_1 = RegisterNetEvent
L2_1 = "vms_garagesv2:paidForParking"
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  if "ok" == A0_2 then
    L3_2 = {}
    DATACACHE = L3_2
    L3_2 = SendNUIMessage
    L4_2 = {}
    L4_2.action = "closePayStation"
    L3_2(L4_2)
    L3_2 = SetNuiFocus
    L4_2 = false
    L5_2 = false
    L3_2(L4_2, L5_2)
    L3_2 = Citizen
    L3_2 = L3_2.Wait
    L4_2 = 100
    L3_2(L4_2)
    L3_2 = library
    L3_2 = L3_2.PlayAnimation
    L4_2 = PlayerPedId
    L4_2 = L4_2()
    L5_2 = "mini@sprunk@first_person"
    L6_2 = "PLYR_BUY_DRINK_PT1"
    L7_2 = 1700
    L8_2 = 1
    L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
    L3_2 = Citizen
    L3_2 = L3_2.Wait
    L4_2 = 1200
    L3_2(L4_2)
    L3_2 = PlaySoundFrontend
    L4_2 = -1
    L5_2 = "Degenatron_Star"
    L6_2 = "DLC_EXEC_ARC_MAC_SOUNDS"
    L7_2 = true
    L3_2(L4_2, L5_2, L6_2, L7_2)
    L3_2 = Citizen
    L3_2 = L3_2.Wait
    L4_2 = 50
    L3_2(L4_2)
    L3_2 = CL
    L3_2 = L3_2.Notification
    L4_2 = TRANSLATE
    L5_2 = "notify.pay_station:paid_for_parking"
    L6_2 = A2_2
    L7_2 = A1_2
    L4_2 = L4_2(L5_2, L6_2, L7_2)
    L5_2 = 5000
    L6_2 = "success"
    L3_2(L4_2, L5_2, L6_2)
  elseif "error" == A0_2 then
    L3_2 = CL
    L3_2 = L3_2.Notification
    L4_2 = TRANSLATE
    L5_2 = "notify.no_money"
    L4_2 = L4_2(L5_2)
    L5_2 = 5000
    L6_2 = "error"
    L3_2(L4_2, L5_2, L6_2)
  elseif "not_found" == A0_2 then
    L3_2 = CL
    L3_2 = L3_2.Notification
    L4_2 = TRANSLATE
    L5_2 = "notify.pay_station:not_found"
    L4_2 = L4_2(L5_2)
    L5_2 = 5000
    L6_2 = "info"
    L3_2(L4_2, L5_2, L6_2)
  end
end
L1_1(L2_1, L3_1)
L1_1 = RegisterNetEvent
L2_1 = "vms_garagesv2:updatePaidParking"
function L3_1(A0_2, A1_2, A2_2)
  local L3_2
  if not A0_2 and not A1_2 then
    return
  end
  L3_2 = Config
  L3_2 = L3_2.Garages
  L3_2 = L3_2[A0_2]
  if not L3_2 then
    return
  end
  L3_2 = Config
  L3_2 = L3_2.Garages
  L3_2 = L3_2[A0_2]
  L3_2 = L3_2.parkingSpaces
  L3_2 = L3_2[A1_2]
  if not L3_2 then
    return
  end
  L3_2 = Config
  L3_2 = L3_2.Garages
  L3_2 = L3_2[A0_2]
  L3_2 = L3_2.parkingSpaces
  L3_2 = L3_2[A1_2]
  L3_2 = L3_2.data
  if not L3_2 then
    return
  end
  L3_2 = Config
  L3_2 = L3_2.Garages
  L3_2 = L3_2[A0_2]
  L3_2 = L3_2.parkingSpaces
  L3_2 = L3_2[A1_2]
  L3_2 = L3_2.data
  L3_2.parking_date = A2_2
end
L1_1(L2_1, L3_1)
L1_1 = RegisterNetEvent
L2_1 = "vms_garagesv2:cl:rentedParkingSpace"
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = Config
  L3_2 = L3_2.Garages
  L3_2 = L3_2[A0_2]
  L3_2 = L3_2.parkingSpaces
  L3_2 = L3_2[A1_2]
  L3_2.data = A2_2
  L3_2 = garageZone
  if L3_2 then
    L3_2 = garageZone
    if L3_2 == A0_2 then
      L3_2 = currentMenu
      if "parkingRent" == L3_2 then
        L3_2 = camData
        L3_2 = L3_2.currentSlotId
        if L3_2 then
          L3_2 = SendNUIMessage
          L4_2 = {}
          L4_2.action = "updateParkingRent"
          L5_2 = camData
          L5_2 = L5_2.currentSlotId
          L4_2.parkingId = L5_2
          L5_2 = Config
          L5_2 = L5_2.Garages
          L5_2 = L5_2[A0_2]
          L5_2 = L5_2.parkingSpaces
          L5_2 = L5_2[A1_2]
          L5_2 = L5_2.data
          if L5_2 then
            L5_2 = Config
            L5_2 = L5_2.Garages
            L5_2 = L5_2[A0_2]
            L5_2 = L5_2.parkingSpaces
            L5_2 = L5_2[A1_2]
            L5_2 = L5_2.data
            L5_2 = L5_2.time
            if L5_2 then
              goto lbl_45
            end
          end
          L5_2 = false
          ::lbl_45::
          L4_2.rentTime = L5_2
          L5_2 = Config
          L5_2 = L5_2.Garages
          L5_2 = L5_2[A0_2]
          L5_2 = L5_2.parkingSpaces
          L5_2 = L5_2[A1_2]
          L5_2 = L5_2.data
          if L5_2 then
            L5_2 = Config
            L5_2 = L5_2.Garages
            L5_2 = L5_2[A0_2]
            L5_2 = L5_2.parkingSpaces
            L5_2 = L5_2[A1_2]
            L5_2 = L5_2.data
            L5_2 = L5_2.isRented
            if L5_2 then
              L5_2 = true
              if L5_2 then
                goto lbl_67
              end
            end
          end
          L5_2 = false
          ::lbl_67::
          L4_2.isRented = L5_2
          L5_2 = Config
          L5_2 = L5_2.Garages
          L5_2 = L5_2[A0_2]
          L5_2 = L5_2.parkingSpaces
          L5_2 = L5_2[A1_2]
          L5_2 = L5_2.data
          if L5_2 then
            L5_2 = Config
            L5_2 = L5_2.Garages
            L5_2 = L5_2[A0_2]
            L5_2 = L5_2.parkingSpaces
            L5_2 = L5_2[A1_2]
            L5_2 = L5_2.data
            L5_2 = L5_2.isRented
            L6_2 = myIdentifier
          end
          L5_2 = L5_2 == L6_2 or L5_2
          L4_2.isMySpace = L5_2
          L3_2(L4_2)
        end
      end
    end
  end
end
L1_1(L2_1, L3_1)
L1_1 = RegisterNetEvent
L2_1 = "vms_garagesv2:cl:getAgreement"
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = openAgreement
  L2_2 = A0_2
  L1_2(L2_2)
end
L1_1(L2_1, L3_1)
L1_1 = RegisterNetEvent
L2_1 = "vms_garagesv2:cl:newVehicleOwner"
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = Config
  L3_2 = L3_2.Garages
  L3_2 = L3_2[A0_2]
  L3_2 = L3_2.parkingSpaces
  L3_2 = L3_2[A1_2]
  L3_2 = L3_2.data
  L4_2 = A2_2.owner
  if not L4_2 then
    L4_2 = nil
  end
  L3_2.owner = L4_2
  L3_2 = Config
  L3_2 = L3_2.Garages
  L3_2 = L3_2[A0_2]
  L3_2 = L3_2.parkingSpaces
  L3_2 = L3_2[A1_2]
  L3_2 = L3_2.data
  L4_2 = A2_2.company
  if not L4_2 then
    L4_2 = nil
  end
  L3_2.company = L4_2
  L3_2 = garageZone
  if L3_2 == A0_2 then
    L3_2 = Config
    L3_2 = L3_2.Garages
    L3_2 = L3_2[A0_2]
    L3_2 = L3_2.parkingSpaces
    L3_2 = L3_2[A1_2]
    L3_2 = L3_2.vehicleId
    if L3_2 then
      L4_2 = isPlayerAllowedToGetVehicle
      L5_2 = {}
      L6_2 = A2_2.owner
      L5_2.owner = L6_2
      L6_2 = A2_2.company
      L5_2.company = L6_2
      L6_2 = A2_2.gang
      L5_2.gang = L6_2
      L4_2 = L4_2(L5_2)
      if L4_2 then
        L4_2 = SetVehicleDoorsLocked
        L5_2 = L3_2
        L6_2 = 1
        L4_2(L5_2, L6_2)
      else
        L4_2 = SetVehicleDoorsLocked
        L5_2 = L3_2
        L6_2 = 2
        L4_2(L5_2, L6_2)
      end
    end
  end
end
L1_1(L2_1, L3_1)
L1_1 = RegisterNetEvent
L2_1 = "vms_garagesv2:cl:locatedVehicle"
function L3_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L4_2 = A1_2
  if not L4_2 and A2_2 then
    L5_2 = Config
    L5_2 = L5_2.Impounds
    L5_2 = L5_2[A2_2]
    if L5_2 then
      L5_2 = Config
      L5_2 = L5_2.Impounds
      L5_2 = L5_2[A2_2]
      L4_2 = L5_2.blipCoords
      L5_2 = CL
      L5_2 = L5_2.Notification
      L6_2 = TRANSLATE
      L7_2 = "notify.locator:located_vehicle_impound"
      L8_2 = A0_2
      L9_2 = Config
      L9_2 = L9_2.Impounds
      L9_2 = L9_2[A2_2]
      L9_2 = L9_2.label
      L6_2 = L6_2(L7_2, L8_2, L9_2)
      L7_2 = 12500
      L8_2 = "success"
      L5_2(L6_2, L7_2, L8_2)
    else
      L5_2 = Config
      L5_2 = L5_2.Garages
      L5_2 = L5_2[A2_2]
      if L5_2 then
        L5_2 = Config
        L5_2 = L5_2.Garages
        L5_2 = L5_2[A2_2]
        L4_2 = L5_2.blipCoords
        L5_2 = CL
        L5_2 = L5_2.Notification
        L6_2 = TRANSLATE
        L7_2 = "notify.locator:located_vehicle_garage"
        L8_2 = A0_2
        L9_2 = Config
        L9_2 = L9_2.Garages
        L9_2 = L9_2[A2_2]
        L9_2 = L9_2.label
        L6_2 = L6_2(L7_2, L8_2, L9_2)
        L7_2 = 12500
        L8_2 = "success"
        L5_2(L6_2, L7_2, L8_2)
      else
        L5_2 = Config
        L5_2 = L5_2.HousingGarages
        L5_2 = L5_2[A2_2]
        if L5_2 then
          L5_2 = Config
          L5_2 = L5_2.HousingGarages
          L5_2 = L5_2[A2_2]
          L4_2 = L5_2.houseCoords
          L5_2 = GetNameOfZone
          L6_2 = myCoords
          L5_2 = L5_2(L6_2)
          L6_2 = GetStreetNameAtCoord
          L7_2 = L4_2.x
          L8_2 = L4_2.y
          L9_2 = L4_2.z
          L6_2, L7_2 = L6_2(L7_2, L8_2, L9_2)
          L8_2 = GetStreetNameFromHashKey
          L9_2 = L6_2
          L8_2 = L8_2(L9_2)
          L9_2 = GetStreetNameFromHashKey
          L10_2 = L7_2
          L9_2 = L9_2(L10_2)
          if "" ~= L9_2 then
            L10_2 = "%s, %s"
            L11_2 = L10_2
            L10_2 = L10_2.format
            L12_2 = L9_2
            L13_2 = GetLabelText
            L14_2 = L5_2
            L13_2, L14_2 = L13_2(L14_2)
            L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2)
            L5_2 = L10_2
          else
            L10_2 = GetLabelText
            L11_2 = L5_2
            L10_2 = L10_2(L11_2)
            L5_2 = L10_2
          end
          L10_2 = CL
          L10_2 = L10_2.Notification
          L11_2 = TRANSLATE
          L12_2 = "notify.locator:located_vehicle_house_garage"
          L13_2 = A0_2
          L14_2 = L5_2
          L11_2 = L11_2(L12_2, L13_2, L14_2)
          L12_2 = 12500
          L13_2 = "success"
          L10_2(L11_2, L12_2, L13_2)
        end
      end
    end
    L5_2 = Citizen
    L5_2 = L5_2.Wait
    L6_2 = 200
    L5_2(L6_2)
  end
  L5_2 = locatorBlips
  L5_2 = #L5_2
  L5_2 = L5_2 + 1
  if not A2_2 then
    if A3_2 then
      L6_2 = CL
      L6_2 = L6_2.Notification
      L7_2 = TRANSLATE
      L8_2 = "notify.locator:located_vehicle"
      L9_2 = A0_2
      L7_2 = L7_2(L8_2, L9_2)
      L8_2 = 12500
      L9_2 = "success"
      L6_2(L7_2, L8_2, L9_2)
    else
      L6_2 = CL
      L6_2 = L6_2.Notification
      L7_2 = TRANSLATE
      L8_2 = Config
      L8_2 = L8_2.LocatorBlip
      L8_2 = L8_2.usePreciseLocation
      if L8_2 then
        L8_2 = "notify.locator:located_vehicle_precise"
        if L8_2 then
          goto lbl_134
        end
      end
      L8_2 = "notify.locator:located_vehicle"
      ::lbl_134::
      L9_2 = A0_2
      L7_2 = L7_2(L8_2, L9_2)
      L8_2 = 12500
      L9_2 = "success"
      L6_2(L7_2, L8_2, L9_2)
    end
  end
  L6_2 = locatorBlips
  L7_2 = {}
  L6_2[L5_2] = L7_2
  L6_2 = locatorBlips
  L6_2 = L6_2[L5_2]
  L6_2.alpha = 220
  if not A3_2 then
    L6_2 = Config
    L6_2 = L6_2.LocatorBlip
    L6_2 = L6_2.usePreciseLocation
    if not L6_2 then
      L6_2 = L4_2.x
      L7_2 = math
      L7_2 = L7_2.random
      L8_2 = math
      L8_2 = L8_2.floor
      L9_2 = Config
      L9_2 = L9_2.LocatorBlip
      L9_2 = L9_2.radiusNotPrecise
      L9_2 = L9_2 + 10.0
      L8_2 = L8_2(L9_2)
      L8_2 = -L8_2
      L9_2 = Config
      L9_2 = L9_2.LocatorBlip
      L9_2 = L9_2.radiusNotPrecise
      L9_2 = L9_2 - 10.0
      L7_2 = L7_2(L8_2, L9_2)
      L6_2 = L6_2 + L7_2
      L7_2 = L4_2.y
      L8_2 = math
      L8_2 = L8_2.random
      L9_2 = math
      L9_2 = L9_2.floor
      L10_2 = Config
      L10_2 = L10_2.LocatorBlip
      L10_2 = L10_2.radiusNotPrecise
      L10_2 = L10_2 + 10.0
      L9_2 = L9_2(L10_2)
      L9_2 = -L9_2
      L10_2 = Config
      L10_2 = L10_2.LocatorBlip
      L10_2 = L10_2.radiusNotPrecise
      L10_2 = L10_2 - 10.0
      L8_2 = L8_2(L9_2, L10_2)
      L7_2 = L7_2 + L8_2
      L8_2 = vec
      L9_2 = L6_2
      L10_2 = L7_2
      L11_2 = L4_2.z
      L8_2 = L8_2(L9_2, L10_2, L11_2)
      L4_2 = L8_2
      L8_2 = locatorBlips
      L8_2 = L8_2[L5_2]
      L9_2 = AddBlipForRadius
      L10_2 = L4_2
      L11_2 = Config
      L11_2 = L11_2.LocatorBlip
      L11_2 = L11_2.radiusNotPrecise
      L9_2 = L9_2(L10_2, L11_2)
      L8_2.radius = L9_2
      L8_2 = SetBlipHighDetail
      L9_2 = locatorBlips
      L9_2 = L9_2[L5_2]
      L9_2 = L9_2.radius
      L10_2 = true
      L8_2(L9_2, L10_2)
      L8_2 = SetBlipColour
      L9_2 = locatorBlips
      L9_2 = L9_2[L5_2]
      L9_2 = L9_2.radius
      L10_2 = Config
      L10_2 = L10_2.LocatorBlip
      L10_2 = L10_2.color
      L8_2(L9_2, L10_2)
      L8_2 = SetBlipAlpha
      L9_2 = locatorBlips
      L9_2 = L9_2[L5_2]
      L9_2 = L9_2.radius
      L10_2 = locatorBlips
      L10_2 = L10_2[L5_2]
      L10_2 = L10_2.alpha
      L8_2(L9_2, L10_2)
      L8_2 = SetBlipAsShortRange
      L9_2 = locatorBlips
      L9_2 = L9_2[L5_2]
      L9_2 = L9_2.radius
      L10_2 = true
      L8_2(L9_2, L10_2)
    end
  end
  L6_2 = locatorBlips
  L6_2 = L6_2[L5_2]
  L7_2 = AddBlipForCoord
  L8_2 = L4_2
  L7_2 = L7_2(L8_2)
  L6_2.blip = L7_2
  L6_2 = SetBlipSprite
  L7_2 = locatorBlips
  L7_2 = L7_2[L5_2]
  L7_2 = L7_2.blip
  L8_2 = Config
  L8_2 = L8_2.LocatorBlip
  L8_2 = L8_2.sprite
  L6_2(L7_2, L8_2)
  L6_2 = SetBlipDisplay
  L7_2 = locatorBlips
  L7_2 = L7_2[L5_2]
  L7_2 = L7_2.blip
  L8_2 = Config
  L8_2 = L8_2.LocatorBlip
  L8_2 = L8_2.display
  L6_2(L7_2, L8_2)
  L6_2 = SetBlipScale
  L7_2 = locatorBlips
  L7_2 = L7_2[L5_2]
  L7_2 = L7_2.blip
  L8_2 = Config
  L8_2 = L8_2.LocatorBlip
  L8_2 = L8_2.scale
  L6_2(L7_2, L8_2)
  L6_2 = SetBlipColour
  L7_2 = locatorBlips
  L7_2 = L7_2[L5_2]
  L7_2 = L7_2.blip
  L8_2 = Config
  L8_2 = L8_2.LocatorBlip
  L8_2 = L8_2.color
  L6_2(L7_2, L8_2)
  L6_2 = SetBlipAsShortRange
  L7_2 = locatorBlips
  L7_2 = L7_2[L5_2]
  L7_2 = L7_2.blip
  L8_2 = false
  L6_2(L7_2, L8_2)
  L6_2 = BeginTextCommandSetBlipName
  L7_2 = "STRING"
  L6_2(L7_2)
  L6_2 = AddTextComponentString
  L7_2 = Config
  L7_2 = L7_2.LocatorBlip
  L7_2 = L7_2.name
  L6_2(L7_2)
  L6_2 = EndTextCommandSetBlipName
  L7_2 = locatorBlips
  L7_2 = L7_2[L5_2]
  L7_2 = L7_2.blip
  L6_2(L7_2)
  L6_2 = Citizen
  L6_2 = L6_2.CreateThread
  function L7_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = L5_2
    L1_3 = Citizen
    L1_3 = L1_3.Wait
    L2_3 = Config
    L2_3 = L2_3.LocatorBlip
    L2_3 = L2_3.showTime
    L1_3(L2_3)
    while true do
      L1_3 = locatorBlips
      L1_3 = L1_3[L0_3]
      L1_3 = L1_3.alpha
      if 0 == L1_3 then
        break
      end
      L1_3 = locatorBlips
      L1_3 = L1_3[L0_3]
      L2_3 = locatorBlips
      L2_3 = L2_3[L0_3]
      L2_3 = L2_3.alpha
      L2_3 = L2_3 - 1
      L1_3.alpha = L2_3
      L1_3 = Config
      L1_3 = L1_3.LocatorBlip
      L1_3 = L1_3.usePreciseLocation
      if not L1_3 then
        L1_3 = SetBlipAlpha
        L2_3 = locatorBlips
        L2_3 = L2_3[L0_3]
        L2_3 = L2_3.radius
        L3_3 = locatorBlips
        L3_3 = L3_3[L0_3]
        L3_3 = L3_3.alpha
        L1_3(L2_3, L3_3)
      end
      L1_3 = SetBlipAlpha
      L2_3 = locatorBlips
      L2_3 = L2_3[L0_3]
      L2_3 = L2_3.blip
      L3_3 = locatorBlips
      L3_3 = L3_3[L0_3]
      L3_3 = L3_3.alpha
      L1_3(L2_3, L3_3)
      L1_3 = locatorBlips
      L1_3 = L1_3[L0_3]
      L1_3 = L1_3.alpha
      if 0 == L1_3 then
        L1_3 = Config
        L1_3 = L1_3.LocatorBlip
        L1_3 = L1_3.usePreciseLocation
        if not L1_3 then
          L1_3 = RemoveBlip
          L2_3 = locatorBlips
          L2_3 = L2_3[L0_3]
          L2_3 = L2_3.radius
          L1_3(L2_3)
        end
        L1_3 = RemoveBlip
        L2_3 = locatorBlips
        L2_3 = L2_3[L0_3]
        L2_3 = L2_3.blip
        L1_3(L2_3)
        L1_3 = locatorBlips
        L1_3[L0_3] = nil
        break
      end
      L1_3 = Citizen
      L1_3 = L1_3.Wait
      L2_3 = 200
      L1_3(L2_3)
    end
  end
  L6_2(L7_2)
end
L1_1(L2_1, L3_1)
L1_1 = RegisterNetEvent
L2_1 = "vms_garagesv2:cl:purchasedCompanyVehicle"
function L3_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = SendNUIMessage
  L1_2 = {}
  L1_2.action = "clearUI"
  L0_2(L1_2)
  L0_2 = CL
  L0_2 = L0_2.Notification
  L1_2 = TRANSLATE
  L2_2 = "notify.manage:purchased_vehicle"
  L1_2 = L1_2(L2_2)
  L2_2 = 3500
  L3_2 = "success"
  L0_2(L1_2, L2_2, L3_2)
end
L1_1(L2_1, L3_1)
L1_1 = RegisterNetEvent
L2_1 = "vms_garagesv2:cl:purchasedGangVehicle"
function L3_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = SendNUIMessage
  L1_2 = {}
  L1_2.action = "clearUI"
  L0_2(L1_2)
  L0_2 = CL
  L0_2 = L0_2.Notification
  L1_2 = TRANSLATE
  L2_2 = "notify.manage_gang:purchased_vehicle"
  L1_2 = L1_2(L2_2)
  L2_2 = 3500
  L3_2 = "success"
  L0_2(L1_2, L2_2, L3_2)
end
L1_1(L2_1, L3_1)
L1_1 = RegisterNetEvent
L2_1 = "vms_garagesv2:cl:transferedPrivateVehicle"
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = garageZone
  if A0_2 ~= L1_2 then
    return
  end
  L1_2 = currentMenu
  if "garage" == L1_2 then
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
    L1_2 = Citizen
    L1_2 = L1_2.Wait
    L2_2 = 180
    L1_2(L2_2)
    L1_2 = openGarage
    L2_2 = Config
    L2_2 = L2_2.Garages
    L2_2 = L2_2[A0_2]
    L3_2 = true
    L1_2(L2_2, L3_2)
  end
end
L1_1(L2_1, L3_1)
L1_1 = RegisterNetEvent
L2_1 = "vms_garagesv2:cl:getBill"
function L3_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2
  L5_2 = impoundZone
  if L5_2 ~= A1_2 then
    return
  end
  currentMenu = "bill"
  billFrom = A0_2
  L5_2 = {}
  L5_2.impoundId = A1_2
  L5_2.plate = A2_2
  L5_2.date = A3_2
  L6_2 = A4_2.fine_title
  L5_2.fineTitle = L6_2
  L6_2 = A4_2.fine_amount
  L5_2.fineAmount = L6_2
  L6_2 = A4_2.impounded_by
  L5_2.impoundedBy = L6_2
  billCache = L5_2
  L5_2 = SetNuiFocus
  L6_2 = true
  L7_2 = true
  L5_2(L6_2, L7_2)
  L5_2 = SendNUIMessage
  L6_2 = {}
  L6_2.action = "openReceipt"
  L7_2 = billCache
  L6_2.billData = L7_2
  L5_2(L6_2)
end
L1_1(L2_1, L3_1)
L1_1 = RegisterNetEvent
L2_1 = "vms_garagesv2:cl:paidImpound"
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  if A0_2 and "issuer" == A0_2 then
    L1_2 = currentMenu
    if "impound" == L1_2 then
      L1_2 = impoundZone
      if L1_2 then
        L1_2 = Config
        L1_2 = L1_2.Impounds
        L2_2 = impoundZone
        L1_2 = L1_2[L2_2]
        L2_2 = openImpound
        L3_2 = L1_2
        L2_2(L3_2)
      end
    end
  else
    billFrom = nil
    L1_2 = {}
    billCache = L1_2
    L1_2 = SetNuiFocus
    L2_2 = false
    L3_2 = false
    L1_2(L2_2, L3_2)
    L1_2 = SendNUIMessage
    L2_2 = {}
    L2_2.action = "closeReceipt"
    L1_2(L2_2)
  end
end
L1_1(L2_1, L3_1)
L1_1 = RegisterNetEvent
L2_1 = "vms_garagesv2:cl:resellInvoice"
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  if not A0_2 then
    return
  end
  if not A1_2 then
    return
  end
  if not A2_2 then
    return
  end
  L3_2 = {}
  L3_2.sellerId = A2_2
  L3_2.garageId = A0_2
  L3_2.resellData = A1_2
  resellCache = L3_2
  L3_2 = resellCache
  L3_2 = L3_2.resellData
  L4_2 = playerName
  L3_2.buyerName = L4_2
  L3_2 = SetNuiFocus
  L4_2 = true
  L5_2 = true
  L3_2(L4_2, L5_2)
  L3_2 = SendNUIMessage
  L4_2 = {}
  L4_2.action = "openResell"
  L4_2.resellData = A1_2
  L5_2 = playerName
  L4_2.characterName = L5_2
  L3_2(L4_2)
end
L1_1(L2_1, L3_1)
L1_1 = RegisterNetEvent
L2_1 = "vms_garagesv2:cl:spawnedByModel"
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = NetworkGetEntityFromNetworkId
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L4_2 = A1_2 or L4_2
  if not A1_2 then
    L4_2 = GetVehicleNumberPlateText
    L5_2 = L3_2
    L4_2 = L4_2(L5_2)
  end
  L5_2 = TaskWarpPedIntoVehicle
  L6_2 = PlayerPedId
  L6_2 = L6_2()
  L7_2 = L3_2
  L8_2 = -1
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = Citizen
  L5_2 = L5_2.Wait
  L6_2 = 20
  L5_2(L6_2)
  L5_2 = Config
  L5_2 = L5_2.AddVehicleKeysOn
  L5_2 = L5_2[A2_2]
  if L5_2 then
    L5_2 = CL
    L5_2 = L5_2.GiveVehicleKeys
    L6_2 = L3_2
    L7_2 = L4_2
    L5_2(L6_2, L7_2)
  end
  L5_2 = CL
  L5_2 = L5_2.SetVehicleFuel
  L6_2 = L3_2
  L7_2 = 100
  L5_2(L6_2, L7_2)
  L5_2 = Citizen
  L5_2 = L5_2.Wait
  L6_2 = 600
  L5_2(L6_2)
  L5_2 = DoScreenFadeIn
  L6_2 = 350
  L5_2(L6_2)
end
L1_1(L2_1, L3_1)
L1_1 = RegisterNetEvent
L2_1 = "vms_garagesv2:cl:spawnedByPlate"
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = NetworkGetEntityFromNetworkId
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L4_2 = TaskWarpPedIntoVehicle
  L5_2 = PlayerPedId
  L5_2 = L5_2()
  L6_2 = L3_2
  L7_2 = -1
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = Citizen
  L4_2 = L4_2.Wait
  L5_2 = 20
  L4_2(L5_2)
  L4_2 = CL
  L4_2 = L4_2.SetOnVehicleSpawn
  L5_2 = L3_2
  L6_2 = A1_2
  L4_2(L5_2, L6_2)
  L4_2 = Config
  L4_2 = L4_2.AddVehicleKeysOn
  L4_2 = L4_2[A2_2]
  if L4_2 then
    L4_2 = CL
    L4_2 = L4_2.GiveVehicleKeys
    L5_2 = L3_2
    L6_2 = A1_2.plate
    L4_2(L5_2, L6_2)
  end
  L4_2 = Citizen
  L4_2 = L4_2.Wait
  L5_2 = 600
  L4_2(L5_2)
  L4_2 = DoScreenFadeIn
  L5_2 = 350
  L4_2(L5_2)
end
L1_1(L2_1, L3_1)
L1_1 = RegisterNetEvent
L2_1 = "vms_garagesv2:cannotTakeVehicle"
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = CL
  L1_2 = L1_2.Notification
  L2_2 = TRANSLATE
  L3_2 = "notify.someone_took_vehicle"
  L2_2 = L2_2(L3_2)
  L3_2 = 3500
  L4_2 = "info"
  L1_2(L2_2, L3_2, L4_2)
  if "garage" == A0_2 then
    L1_2 = openGarage
    L2_2 = camData
    L2_2 = L2_2.currentGarage
    L3_2 = false
    L4_2 = true
    L1_2(L2_2, L3_2, L4_2)
  else
    L1_2 = openImpound
    L2_2 = Config
    L2_2 = L2_2.Impounds
    L3_2 = impoundZone
    L2_2 = L2_2[L3_2]
    L1_2(L2_2)
  end
end
L1_1(L2_1, L3_1)
L1_1 = RegisterNetEvent
L2_1 = "vms_garagesv2:cl:setProperties"
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = NetToVeh
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if not L2_2 or 0 == L2_2 then
    return
  end
  L3_2 = CL
  L3_2 = L3_2.SetVehicleProperties
  L4_2 = L2_2
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
end
L1_1(L2_1, L3_1)
L1_1 = Config
L1_1 = L1_1.RegisterStateBag
if L1_1 then
  L1_1 = AddStateBagChangeHandler
  L2_1 = Config
  L2_1 = L2_1.VehiclePropertiesStateBag
  L3_1 = nil
  function L4_1(A0_2, A1_2, A2_2)
    local L3_2, L4_2, L5_2, L6_2, L7_2
    L3_2 = Config
    L3_2 = L3_2.WaitForProperties
    if L3_2 then
      L3_2 = Citizen
      L3_2 = L3_2.Wait
      L4_2 = Config
      L4_2 = L4_2.WaitForPropertiesTime
      if not L4_2 then
        L4_2 = 500
      end
      L3_2(L4_2)
    end
    if not A2_2 then
      return
    end
    L4_2 = A0_2
    L3_2 = A0_2.gsub
    L5_2 = "entity:"
    L6_2 = ""
    L3_2 = L3_2(L4_2, L5_2, L6_2)
    L4_2 = NetToVeh
    L5_2 = tonumber
    L6_2 = L3_2
    L5_2, L6_2, L7_2 = L5_2(L6_2)
    L4_2 = L4_2(L5_2, L6_2, L7_2)
    L5_2 = NetworkGetEntityOwner
    L6_2 = L4_2
    L5_2 = L5_2(L6_2)
    L6_2 = PlayerId
    L6_2 = L6_2()
    if L5_2 ~= L6_2 then
      return
    end
    L5_2 = DoesEntityExist
    L6_2 = L4_2
    L5_2 = L5_2(L6_2)
    if L5_2 then
      L5_2 = CL
      L5_2 = L5_2.SetVehicleProperties
      L6_2 = L4_2
      L7_2 = A2_2
      L5_2(L6_2, L7_2)
    else
      L5_2 = Citizen
      L5_2 = L5_2.CreateThread
      function L6_2()
        local L0_3, L1_3, L2_3, L3_3, L4_3
        L0_3 = Citizen
        L0_3 = L0_3.Wait
        L1_3 = 500
        L0_3(L1_3)
        L0_3 = NetToVeh
        L1_3 = tonumber
        L2_3 = L3_2
        L1_3, L2_3, L3_3, L4_3 = L1_3(L2_3)
        L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3)
        L1_3 = false
        L2_3 = SetTimeout
        L3_3 = 2000
        function L4_3()
          local L0_4, L1_4
          L0_4 = true
          L1_3 = L0_4
        end
        L2_3(L3_3, L4_3)
        repeat
          L2_3 = NetToVeh
          L3_3 = tonumber
          L4_3 = L3_2
          L3_3, L4_3 = L3_3(L4_3)
          L2_3 = L2_3(L3_3, L4_3)
          L0_3 = L2_3
          L2_3 = Wait
          L3_3 = 50
          L2_3(L3_3)
          L2_3 = DoesEntityExist
          L3_3 = L0_3
          L2_3 = L2_3(L3_3)
        until L2_3 or L1_3
        L2_3 = DoesEntityExist
        L3_3 = L0_3
        L2_3 = L2_3(L3_3)
        if L2_3 then
          L2_3 = CL
          L2_3 = L2_3.SetVehicleProperties
          L3_3 = L0_3
          L4_3 = A2_2
          L2_3(L3_3, L4_3)
        end
      end
      L5_2(L6_2)
    end
  end
  L1_1(L2_1, L3_1, L4_1)
end
L1_1 = RegisterNetEvent
L2_1 = "vms_garagesv2:updateUndergroundPropertyGarage"
function L3_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L4_2 = Config
  L4_2 = L4_2.Garages
  L5_2 = "vms_housing:parking:%s:%s"
  L6_2 = L5_2
  L5_2 = L5_2.format
  L7_2 = A0_2
  L8_2 = A1_2
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L4_2 = L4_2[L5_2]
  if L4_2 then
    L5_2 = vector4
    L6_2 = A2_2.enterOnFoot
    L6_2 = L6_2.x
    L7_2 = A2_2.enterOnFoot
    L7_2 = L7_2.y
    L8_2 = A2_2.enterOnFoot
    L8_2 = L8_2.z
    L9_2 = A2_2.enterOnFoot
    L9_2 = L9_2.w
    L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
    L4_2.enterOnFoot = L5_2
    L5_2 = vector4
    L6_2 = A2_2.enterWithVehicle
    L6_2 = L6_2.x
    L7_2 = A2_2.enterWithVehicle
    L7_2 = L7_2.y
    L8_2 = A2_2.enterWithVehicle
    L8_2 = L8_2.z
    L9_2 = A2_2.enterWithVehicle
    L9_2 = L9_2.w
    L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
    L4_2.enterWithVehicle = L5_2
    L5_2 = pairs
    L6_2 = L4_2.parkingSpaces
    L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
    for L9_2, L10_2 in L5_2, L6_2, L7_2, L8_2 do
      L10_2.hasAccess = nil
    end
    L5_2 = pairs
    L6_2 = A3_2
    L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
    for L9_2, L10_2 in L5_2, L6_2, L7_2, L8_2 do
      L11_2 = L4_2.parkingSpaces
      L12_2 = tonumber
      L13_2 = L9_2
      L12_2 = L12_2(L13_2)
      L11_2 = L11_2[L12_2]
      if L11_2 then
        L11_2 = L4_2.parkingSpaces
        L12_2 = tonumber
        L13_2 = L9_2
        L12_2 = L12_2(L13_2)
        L11_2 = L11_2[L12_2]
        function L12_2()
          local L0_3, L1_3, L2_3, L3_3
          L0_3 = GetResourceState
          L1_3 = "vms_housing"
          L0_3 = L0_3(L1_3)
          if "started" == L0_3 then
            L0_3 = exports
            L0_3 = L0_3.vms_housing
            L1_3 = L0_3
            L0_3 = L0_3.HasAnyPermission
            L2_3 = tostring
            L3_3 = L10_2
            L2_3, L3_3 = L2_3(L3_3)
            return L0_3(L1_3, L2_3, L3_3)
          end
          L0_3 = false
          return L0_3
        end
        L11_2.hasAccess = L12_2
      end
    end
  end
end
L1_1(L2_1, L3_1)
L1_1 = {}
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  if A0_2 then
    L3_2 = DoesEntityExist
    L4_2 = A0_2
    L3_2 = L3_2(L4_2)
    if L3_2 then
      goto lbl_9
    end
  end
  do return end
  ::lbl_9::
  L3_2 = false
  L4_2 = Config
  L4_2 = L4_2.VehiclePersistence
  if L4_2 then
    L3_2 = true
    L4_2 = garageZone
    if L4_2 then
      L4_2 = Config
      L4_2 = L4_2.VehiclePersistenceZones
      L4_2 = L4_2.Garage
      if not L4_2 then
        L3_2 = false
      end
    end
    L4_2 = impoundZone
    if L4_2 then
      L4_2 = Config
      L4_2 = L4_2.VehiclePersistenceZones
      L4_2 = L4_2.Impound
      if not L4_2 then
        L3_2 = false
      end
    end
  end
  L4_2 = CL
  L4_2 = L4_2.GetVehicleProperties
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  if nil ~= A2_2 then
    L4_2.flooded = A2_2
  end
  L5_2 = TriggerServerEvent
  L6_2 = "vms_garagesv2:sv:updateVehicle"
  L7_2 = NetworkGetNetworkIdFromEntity
  L8_2 = A0_2
  L7_2 = L7_2(L8_2)
  L8_2 = L4_2
  L9_2 = L3_2
  L10_2 = A1_2
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
end
L3_1 = CreateThread
function L4_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  while true do
    L0_2 = PlayerPedId
    L0_2 = L0_2()
    L1_2 = GetVehiclePedIsIn
    L2_2 = L0_2
    L3_2 = false
    L1_2 = L1_2(L2_2, L3_2)
    if L1_2 > 0 then
      L2_2 = playerVehicle
      if L1_2 ~= L2_2 then
        playerSeat = false
      end
      playerVehicle = L1_2
      L2_2 = playerSeat
      if -1 == L2_2 then
        L2_2 = IsEntityInWater
        L3_2 = playerVehicle
        L2_2 = L2_2(L3_2)
        if L2_2 then
          L2_2 = GetEntitySubmergedLevel
          L3_2 = playerVehicle
          L2_2 = L2_2(L3_2)
          L3_2 = 0.535
          if L2_2 > L3_2 then
            L2_2 = L1_1.flooded
            if not L2_2 then
              L1_1.flooded = true
              L2_2 = L2_1
              L3_2 = playerVehicle
              L4_2 = true
              L5_2 = L1_1.flooded
              L2_2(L3_2, L4_2, L5_2)
            end
        end
        else
          L2_2 = L1_1.flooded
          if L2_2 then
            L1_1.flooded = false
            L2_2 = L2_1
            L3_2 = playerVehicle
            L4_2 = true
            L5_2 = L1_1.flooded
            L2_2(L3_2, L4_2, L5_2)
          end
        end
      end
      L2_2 = playerSeat
      if L2_2 then
        L2_2 = GetPedInVehicleSeat
        L3_2 = L1_2
        L4_2 = playerSeat
        L2_2 = L2_2(L3_2, L4_2)
      end
      if L2_2 ~= L0_2 then
        L2_2 = -1
        L3_2 = GetVehicleMaxNumberOfPassengers
        L4_2 = L1_2
        L3_2 = L3_2(L4_2)
        L3_2 = L3_2 - 1
        L4_2 = 1
        for L5_2 = L2_2, L3_2, L4_2 do
          L6_2 = GetPedInVehicleSeat
          L7_2 = L1_2
          L8_2 = L5_2
          L6_2 = L6_2(L7_2, L8_2)
          if L6_2 == L0_2 then
            L6_2 = Config
            L6_2 = L6_2.VehiclePersistence
            if L6_2 and -1 == L5_2 then
              L6_2 = Entity
              L7_2 = playerVehicle
              L6_2 = L6_2(L7_2)
              L6_2 = L6_2.state
              L7_2 = Config
              L7_2 = L7_2.VehiclePropertiesStateBag
              if not L7_2 then
                L7_2 = "VehicleProperties"
              end
              L6_2 = L6_2[L7_2]
              if L6_2 then
                L7_2 = L6_2.flooded
                L1_1.flooded = L7_2
                L7_2 = TriggerServerEvent
                L8_2 = "vms_garagesv2:sv:updateVehiclePersistence"
                L9_2 = false
                L7_2(L8_2, L9_2)
              end
            end
            L6_2 = playerSeat
            if -1 == L6_2 then
              L6_2 = L2_1
              L7_2 = playerVehicle
              L6_2(L7_2)
            end
            playerSeat = L5_2
            L6_2 = CL
            L6_2 = L6_2.OnVehiclePersistent
            L7_2 = "enter"
            L8_2 = playerVehicle
            L9_2 = playerSeat
            L6_2(L7_2, L8_2, L9_2)
            break
          end
        end
      end
    else
      L2_2 = playerVehicle
      if L2_2 then
        L2_2 = L2_1
        L3_2 = playerVehicle
        L2_2(L3_2)
        L2_2 = CL
        L2_2 = L2_2.OnVehiclePersistent
        L3_2 = "exit"
        L4_2 = playerVehicle
        L5_2 = playerSeat
        L2_2(L3_2, L4_2, L5_2)
      end
      playerVehicle = false
      playerSeat = false
      L2_2 = {}
      L1_1 = L2_2
    end
    L2_2 = Config
    L2_2 = L2_2.VehiclePersistence
    if L2_2 then
      L2_2 = L0_1
      if L2_2 then
        L2_2 = pairs
        L3_2 = vehiclesPersistedToSpawn
        L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
        for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
          if L7_2 then
            L8_2 = GetEntityCoords
            L9_2 = PlayerPedId
            L9_2, L10_2, L11_2, L12_2, L13_2 = L9_2()
            L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2)
            L9_2 = vector3
            L10_2 = L7_2.x
            L11_2 = L7_2.y
            L12_2 = L7_2.z
            L9_2 = L9_2(L10_2, L11_2, L12_2)
            L10_2 = L8_2 - L9_2
            L10_2 = #L10_2
            if L10_2 < 80.0 then
              L11_2 = TriggerServerEvent
              L12_2 = "vms_garagesv2:cl:spawnVehiclesPersisted"
              L13_2 = L6_2
              L11_2(L12_2, L13_2)
              L11_2 = Citizen
              L11_2 = L11_2.Wait
              L12_2 = Config
              L12_2 = L12_2.PersistenceSpawnThrottle
              if not L12_2 then
                L12_2 = 20
              end
              L11_2(L12_2)
            end
          end
        end
      end
    end
    L2_2 = Wait
    L3_2 = 600
    L2_2(L3_2)
  end
end
L3_1(L4_1)
L3_1 = CreateThread
function L4_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  L0_2 = {}
  while true do
    L1_2 = Config
    L1_2 = L1_2.VehiclePersistence
    if not L1_2 then
      break
    end
    L1_2 = GetGamePool
    L2_2 = "CVehicle"
    L1_2 = L1_2(L2_2)
    L2_2 = {}
    L3_2 = ipairs
    L4_2 = L1_2
    L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
    for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
      if L8_2 then
        L9_2 = DoesEntityExist
        L10_2 = L8_2
        L9_2 = L9_2(L10_2)
        if L9_2 then
          L9_2 = Entity
          L10_2 = L8_2
          L9_2 = L9_2(L10_2)
          L9_2 = L9_2.state
          L9_2 = L9_2.VehiclePersistence
          if L9_2 then
            L10_2 = Entity
            L11_2 = L8_2
            L10_2 = L10_2(L11_2)
            L10_2 = L10_2.state
            L11_2 = Config
            L11_2 = L11_2.VehiclePropertiesStateBag
            if not L11_2 then
              L11_2 = "VehicleProperties"
            end
            L10_2 = L10_2[L11_2]
            if L10_2 then
              L11_2 = L10_2.plate
              if L11_2 then
                L11_2 = L10_2.plate
                L12_2 = L0_2[L11_2]
                L13_2 = IsEntityInWater
                L14_2 = L8_2
                L13_2 = L13_2(L14_2)
                L14_2 = GetEntitySubmergedLevel
                L15_2 = L8_2
                L14_2 = L14_2(L15_2)
                L15_2 = 0.535
                L14_2 = L14_2 > L15_2
                L15_2 = L13_2 or L15_2
                if L13_2 then
                  L15_2 = L14_2
                end
                if nil == L12_2 then
                  L2_2[L11_2] = L15_2
                else
                  if L12_2 ~= L15_2 then
                    if L15_2 then
                      L16_2 = L2_1
                      L17_2 = L8_2
                      L18_2 = true
                      L19_2 = true
                      L16_2(L17_2, L18_2, L19_2)
                    else
                      L16_2 = L2_1
                      L17_2 = L8_2
                      L18_2 = true
                      L19_2 = false
                      L16_2(L17_2, L18_2, L19_2)
                    end
                  end
                  L2_2[L11_2] = L15_2
                end
              end
            end
          end
        end
      end
    end
    L0_2 = L2_2
    L3_2 = Wait
    L4_2 = 1000
    L3_2(L4_2)
  end
end
L3_1(L4_1)
--   ____  _____ ____ ______   ______ _____ _____ ____     ___     _____ _____  _______ ____    ______   __  _______  __    _    ____    _____ ____  ___ _  _____ _____ ___  _   _    _        _     _   _                  ____  _ _                       _                 _______ _____ _  __     _   _ ____      _ ____ _____ _____
--  |  _ \| ____/ ___|  _ \ \ / /  _ \_   _| ____|  _ \   ( _ )   |  ___|_ _\ \/ / ____|  _ \  | __ ) \ / / |  ___\ \/ /   / \  |  _ \  |  ___|  _ \|_ _| |/ /_ _|_   _/ _ \| \ | |  / \      | |__ | |_| |_ _ __  ___ _   / / /_| (_)___  ___ ___  _ __ __| |  __ _  __ _   / / ____|_   _| |/ /__ _| | | | ___|  __| | ___|___  |___  |
--  | | | |  _|| |   | |_) \ V /| |_) || | |  _| | | | |  / _ \/\ | |_   | | \  /|  _| | | | | |  _ \\ V /  | |_   \  /   / _ \ | |_) | | |_  | |_) || || ' / | |  | || | | |  \| | / _ \     | '_ \| __| __| '_ \/ __(_) / / / _` | / __|/ __/ _ \| '__/ _` | / _` |/ _` | / /|  _|   | | | ' // _` | |_| |___ \ / _` |___ \  / /   / /
--  | |_| | |__| |___|  _ < | | |  __/ | | | |___| |_| | | (_>  < |  _|  | | /  \| |___| |_| | | |_) || |   |  _|  /  \  / ___ \|  __/  |  _| |  _ < | || . \ | |  | || |_| | |\  |/ ___ \ _  | | | | |_| |_| |_) \__ \_ / / / (_| | \__ \ (_| (_) | | | (_| || (_| | (_| |/ / | |___  | | | . \ (_| |  _  |___) | (_| |___) |/ /   / /
--  |____/|_____\____|_| \_\|_| |_|    |_| |_____|____/   \___/\/ |_|   |___/_/\_\_____|____/  |____/ |_|   |_|   /_/\_\/_/   \_\_|     |_|   |_| \_\___|_|\_\___| |_| \___/|_| \_/_/   \_(_) |_| |_|\__|\__| .__/|___(_)_/_/ \__,_|_|___/\___\___/|_|  \__,_(_)__, |\__, /_/  |_____| |_| |_|\_\__, |_| |_|____/ \__,_|____//_/   /_/
--                                                                                                                                                                                                          |_|                                                |___/ |___/                         |_|
-- https://discord.gg/ETKqH5d577
