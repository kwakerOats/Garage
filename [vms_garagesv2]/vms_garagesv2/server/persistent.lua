--   ____  _____ ____ ______   ______ _____ _____ ____     ___     _____ _____  _______ ____    ______   __  _______  __    _    ____    _____ ____  ___ _  _____ _____ ___  _   _    _        _     _   _                  ____  _ _                       _                 _______ _____ _  __     _   _ ____      _ ____ _____ _____
--  |  _ \| ____/ ___|  _ \ \ / /  _ \_   _| ____|  _ \   ( _ )   |  ___|_ _\ \/ / ____|  _ \  | __ ) \ / / |  ___\ \/ /   / \  |  _ \  |  ___|  _ \|_ _| |/ /_ _|_   _/ _ \| \ | |  / \      | |__ | |_| |_ _ __  ___ _   / / /_| (_)___  ___ ___  _ __ __| |  __ _  __ _   / / ____|_   _| |/ /__ _| | | | ___|  __| | ___|___  |___  |
--  | | | |  _|| |   | |_) \ V /| |_) || | |  _| | | | |  / _ \/\ | |_   | | \  /|  _| | | | | |  _ \\ V /  | |_   \  /   / _ \ | |_) | | |_  | |_) || || ' / | |  | || | | |  \| | / _ \     | '_ \| __| __| '_ \/ __(_) / / / _` | / __|/ __/ _ \| '__/ _` | / _` |/ _` | / /|  _|   | | | ' // _` | |_| |___ \ / _` |___ \  / /   / /
--  | |_| | |__| |___|  _ < | | |  __/ | | | |___| |_| | | (_>  < |  _|  | | /  \| |___| |_| | | |_) || |   |  _|  /  \  / ___ \|  __/  |  _| |  _ < | || . \ | |  | || |_| | |\  |/ ___ \ _  | | | | |_| |_| |_) \__ \_ / / / (_| | \__ \ (_| (_) | | | (_| || (_| | (_| |/ / | |___  | | | . \ (_| |  _  |___) | (_| |___) |/ /   / /
--  |____/|_____\____|_| \_\|_| |_|    |_| |_____|____/   \___/\/ |_|   |___/_/\_\_____|____/  |____/ |_|   |_|   /_/\_\/_/   \_\_|     |_|   |_| \_\___|_|\_\___| |_| \___/|_| \_/_/   \_(_) |_| |_|\__|\__| .__/|___(_)_/_/ \__,_|_|___/\___\___/|_|  \__,_(_)__, |\__, /_/  |_____| |_| |_|\_\__, |_| |_|____/ \__,_|____//_/   /_/
--                                                                                                                                                                                                          |_|                                                |___/ |___/                         |_|
-- https://discord.gg/ETKqH5d577

local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = {}
vehiclesPersisted = L0_1
L0_1 = {}
vehiclesPersistedClient = L0_1
function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = Config
  L2_2 = L2_2.VehiclePersistence
  if not L2_2 then
    return
  end
  L2_2 = Entity
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L2_2 = L2_2.state
  L3_2 = L2_2
  L2_2 = L2_2.set
  L4_2 = "VehiclePersistence"
  if A1_2 then
    L5_2 = true
    if L5_2 then
      goto lbl_18
    end
  end
  L5_2 = nil
  ::lbl_18::
  L6_2 = true
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
VehiclePersistence = L0_1
L0_1 = exports
L1_1 = "vehiclePersistence"
L2_1 = VehiclePersistence
L0_1(L1_1, L2_1)
L0_1 = Config
L0_1 = L0_1.VehiclePersistence
if not L0_1 then
  return
end
function L0_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  if not A2_2 then
    L3_2 = vehiclesPersistedClient
    L3_2 = L3_2[A1_2]
    if not L3_2 then
      return
    end
  end
  L3_2 = vehiclesPersistedClient
  L3_2[A1_2] = nil
  L3_2 = A2_2 or L3_2
  if not A2_2 then
    L3_2 = vehiclesPersisted
    L3_2 = L3_2[A1_2]
  end
  L4_2 = L3_2.properties
  L5_2 = L3_2.position
  if L5_2 then
    L6_2 = L5_2.bucket
    if L6_2 then
      goto lbl_22
    end
  end
  L6_2 = nil
  ::lbl_22::
  L7_2 = L4_2 or L7_2
  if L4_2 then
    L7_2 = L4_2.model
  end
  L8_2 = L4_2 or L8_2
  if L4_2 then
    L8_2 = L4_2.plate
  end
  if L7_2 and L5_2 and L8_2 then
    L9_2 = library
    L9_2 = L9_2.SpawnVehicle
    L10_2 = {}
    L10_2.model = L7_2
    L11_2 = vector3
    L12_2 = L5_2.x
    L13_2 = L5_2.y
    L14_2 = L5_2.z
    L11_2 = L11_2(L12_2, L13_2, L14_2)
    L10_2.coords = L11_2
    L11_2 = L5_2.w
    L10_2.heading = L11_2
    L10_2.props = L4_2
    L10_2.bucket = L6_2
    function L11_2(A0_3, A1_3)
      local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
      L2_3 = SV
      L2_3 = L2_3.OnVehicleSpawn
      L3_3 = A0_3
      L4_3 = L4_2
      L2_3(L3_3, L4_3)
      L2_3 = TriggerClientEvent
      L3_3 = "vms_garagesv2:cl:setProperties"
      L4_3 = NetworkGetEntityOwner
      L5_3 = A0_3
      L4_3 = L4_3(L5_3)
      L5_3 = A1_3
      L6_3 = L4_2
      L2_3(L3_3, L4_3, L5_3, L6_3)
      L2_3 = L8_2
      L3_3 = L2_3
      L2_3 = L2_3.match
      L4_3 = "^%s*(.-)%s*$"
      L2_3 = L2_3(L3_3, L4_3)
      L3_3 = [[
                UPDATE `%s`
                    SET `netid` = @netid
                WHERE (`%s` = @cleanedPlate OR `%s` = @plate)
            ]]
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
      L6_3["@netid"] = A1_3
      L6_3["@cleanedPlate"] = L2_3
      L7_3 = L8_2
      L6_3["@plate"] = L7_3
      L4_3(L5_3, L6_3)
      L4_3 = VehiclePersistence
      L5_3 = A0_3
      L6_3 = true
      L4_3(L5_3, L6_3)
      L4_3 = SetEntityCoords
      L5_3 = A0_3
      L6_3 = L5_2.x
      L7_3 = L5_2.y
      L8_3 = L5_2.z
      L4_3(L5_3, L6_3, L7_3, L8_3)
      L4_3 = SetEntityHeading
      L5_3 = A0_3
      L6_3 = L5_2.w
      L4_3(L5_3, L6_3)
      L4_3 = Config
      L4_3 = L4_3.PersistenceLocked
      if L4_3 then
        L4_3 = SetVehicleDoorsLocked
        L5_3 = A0_3
        L6_3 = 2
        L4_3(L5_3, L6_3)
      end
    end
    L9_2(L10_2, L11_2)
  end
  if not A2_2 then
    L9_2 = TriggerClientEvent
    L10_2 = "vms_garagesv2:cl:spawnedVehiclesPersisted"
    L11_2 = -1
    L12_2 = L8_2
    L9_2(L10_2, L11_2, L12_2)
  end
  L9_2 = vehiclesPersisted
  L9_2[L8_2] = nil
end
SpawnPersistentVehicle = L0_1
L0_1 = RegisterNetEvent
L1_1 = "vms_garagesv2:cl:spawnVehiclesPersisted"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = source
  L2_2 = Citizen
  L2_2 = L2_2.CreateThread
  function L3_2()
    local L0_3, L1_3, L2_3
    L0_3 = SpawnPersistentVehicle
    L1_3 = L1_2
    L2_3 = A0_2
    L0_3(L1_3, L2_3)
  end
  L2_2(L3_2)
end
L0_1(L1_1, L2_1)
function L0_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L3_2 = GetEntityCoords
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  L4_2 = GetEntityHeading
  L5_2 = A1_2
  L4_2 = L4_2(L5_2)
  L5_2 = Entity
  L6_2 = A1_2
  L5_2 = L5_2(L6_2)
  L5_2 = L5_2.state
  L5_2 = L5_2.PersistenceBlocked
  L5_2 = A0_2 or L5_2
  if not L5_2 and A0_2 then
    L5_2 = isInInterior
    L6_2 = A0_2
    L5_2 = L5_2(L6_2)
  end
  if L5_2 then
    return
  end
  if A2_2 then
    L6_2 = Entity
    L7_2 = A1_2
    L6_2 = L6_2(L7_2)
    L6_2 = L6_2.state
    L6_2 = L6_2.VehiclePersistence
    if L6_2 then
      goto lbl_32
    end
  end
  L6_2 = false
  ::lbl_32::
  L7_2 = Entity
  L8_2 = A1_2
  L7_2 = L7_2(L8_2)
  L7_2 = L7_2.state
  L8_2 = Config
  L8_2 = L8_2.VehiclePropertiesStateBag
  if not L8_2 then
    L8_2 = "VehicleProperties"
  end
  L7_2 = L7_2[L8_2]
  if not L7_2 then
    return
  end
  L8_2 = vector3
  L9_2 = L3_2.x
  L9_2 = L9_2 + 0.0
  L10_2 = L3_2.y
  L10_2 = L10_2 + 0.0
  L11_2 = L3_2.z
  L11_2 = L11_2 + 0.0
  L8_2 = L8_2(L9_2, L10_2, L11_2)
  L3_2 = L8_2
  L4_2 = L4_2 + 0.0
  L8_2 = L7_2.flooded
  if L8_2 then
    L6_2 = false
  end
  L8_2 = L7_2.plate
  if not L8_2 then
    return
  end
  L10_2 = L8_2
  L9_2 = L8_2.match
  L11_2 = "^%s*(.-)%s*$"
  L9_2 = L9_2(L10_2, L11_2)
  L10_2 = [[
        UPDATE `%s`
            SET
                `netid` = @netid,
                `position` = %s
            WHERE (`%s` LIKE @cleanedPlate OR `%s` LIKE @plate)
    ]]
  L11_2 = L10_2
  L10_2 = L10_2.format
  L12_2 = SV
  L12_2 = L12_2.Database
  L12_2 = L12_2["table:owned_vehicles"]
  if L6_2 then
    L13_2 = "JSON_OBJECT('x', @x, 'y', @y, 'z', @z, 'w', @w)"
    if L13_2 then
      goto lbl_81
    end
  end
  L13_2 = "NULL"
  ::lbl_81::
  L14_2 = SV
  L14_2 = L14_2.Database
  L14_2 = L14_2["column:plate"]
  L15_2 = SV
  L15_2 = L15_2.Database
  L15_2 = L15_2["column:plate"]
  L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2)
  L11_2 = MySQL
  L11_2 = L11_2.Async
  L11_2 = L11_2.execute
  L12_2 = L10_2
  L13_2 = {}
  L14_2 = NetworkGetNetworkIdFromEntity
  L15_2 = A1_2
  L14_2 = L14_2(L15_2)
  L13_2["@netid"] = L14_2
  L13_2["@cleanedPlate"] = L9_2
  L13_2["@plate"] = L8_2
  L14_2 = L3_2.x
  L13_2["@x"] = L14_2
  L14_2 = L3_2.y
  L13_2["@y"] = L14_2
  L14_2 = L3_2.z
  L13_2["@z"] = L14_2
  L13_2["@w"] = L4_2
  L11_2(L12_2, L13_2)
end
SavePersistentVehicle = L0_1
function L0_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L0_2 = GetGamePool
  L1_2 = "CVehicle"
  L0_2 = L0_2(L1_2)
  L1_2 = 1
  L2_2 = #L0_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = L0_2[L4_2]
    L6_2 = DoesEntityExist
    L7_2 = L5_2
    L6_2 = L6_2(L7_2)
    if L6_2 then
      L6_2 = Entity
      L7_2 = L5_2
      L6_2 = L6_2(L7_2)
      L6_2 = L6_2.state
      L6_2 = L6_2.VehiclePersistence
      if L6_2 then
        L6_2 = SavePersistentVehicle
        L7_2 = nil
        L8_2 = L5_2
        L9_2 = true
        L6_2(L7_2, L8_2, L9_2)
        L6_2 = VehiclePersistence
        L7_2 = L5_2
        L8_2 = false
        L6_2(L7_2, L8_2)
      end
    end
  end
end
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = {}
  L2_2 = -1
  L3_2 = 7
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = GetPedInVehicleSeat
    L7_2 = A0_2
    L8_2 = L5_2
    L6_2 = L6_2(L7_2, L8_2)
    if 0 ~= L6_2 then
      L7_2 = table
      L7_2 = L7_2.insert
      L8_2 = L1_2
      L9_2 = {}
      L9_2.ped = L6_2
      L9_2.seat = L5_2
      L7_2(L8_2, L9_2)
    end
  end
  return L1_2
end
L2_1 = RegisterNetEvent
L3_1 = "vms_garagesv2:sv:updateVehiclePersistence"
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = source
  L2_2 = GetPlayerPed
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L3_2 = GetVehiclePedIsIn
  L4_2 = L2_2
  L5_2 = false
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 and 0 ~= L3_2 then
    L4_2 = GetPedInVehicleSeat
    L5_2 = L3_2
    L6_2 = -1
    L4_2 = L4_2(L5_2, L6_2)
    if L4_2 == L2_2 then
      L4_2 = SavePersistentVehicle
      L5_2 = L1_2
      L6_2 = L3_2
      L7_2 = false
      L4_2(L5_2, L6_2, L7_2)
    end
  end
end
L2_1(L3_1, L4_1)
L2_1 = {}
L3_1 = CreateThread
function L4_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  while true do
    L0_2 = L2_1
    L0_2 = #L0_2
    if L0_2 > 0 then
      L0_2 = table
      L0_2 = L0_2.remove
      L1_2 = L2_1
      L2_2 = 1
      L0_2 = L0_2(L1_2, L2_2)
      L1_2 = Wait
      L2_2 = 150
      L1_2(L2_2)
      L1_2 = SpawnPersistentVehicle
      L2_2 = nil
      L3_2 = L0_2.properties
      L3_2 = L3_2.plate
      L4_2 = L0_2
      L1_2(L2_2, L3_2, L4_2)
    else
      L0_2 = Wait
      L1_2 = 500
      L0_2(L1_2)
    end
    L0_2 = Wait
    L1_2 = 0
    L0_2(L1_2)
  end
end
L3_1(L4_1)
L3_1 = AddEventHandler
L4_1 = "entityRemoved"
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = Entity
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.state
  L1_2 = L1_2.VehiclePersistence
  if not L1_2 then
    return
  end
  L1_2 = GetEntityCoords
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = GetEntityHeading
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = GetEntityRoutingBucket
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L4_2 = {}
  L5_2 = {}
  L6_2 = L1_2.x
  L5_2.x = L6_2
  L6_2 = L1_2.y
  L5_2.y = L6_2
  L6_2 = L1_2.z
  L5_2.z = L6_2
  L5_2.w = L2_2
  L5_2.bucket = L3_2
  L4_2.position = L5_2
  L5_2 = Entity
  L6_2 = A0_2
  L5_2 = L5_2(L6_2)
  L5_2 = L5_2.state
  L6_2 = Config
  L6_2 = L6_2.VehiclePropertiesStateBag
  if not L6_2 then
    L6_2 = "VehicleProperties"
  end
  L5_2 = L5_2[L6_2]
  L4_2.properties = L5_2
  L5_2 = L1_1
  L6_2 = A0_2
  L5_2 = L5_2(L6_2)
  L4_2.passengers = L5_2
  L5_2 = table
  L5_2 = L5_2.insert
  L6_2 = L2_1
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
end
L3_1(L4_1, L5_1)
L3_1 = AddEventHandler
L4_1 = "onResourceStop"
function L5_1(A0_2)
  local L1_2
  L1_2 = GetCurrentResourceName
  L1_2 = L1_2()
  if A0_2 ~= L1_2 then
    return
  end
  L1_2 = L0_1
  L1_2()
end
L3_1(L4_1, L5_1)
L3_1 = AddEventHandler
L4_1 = Config
L4_1 = L4_1.PlayerLogoutServer
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L1_2 = GetPlayerPed
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = GetVehiclePedIsIn
  L3_2 = L1_2
  L4_2 = false
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = GetEntityCoords
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  if L2_2 and 0 ~= L2_2 then
    L4_2 = GetPedInVehicleSeat
    L5_2 = L2_2
    L6_2 = -1
    L4_2 = L4_2(L5_2, L6_2)
    if L4_2 == L1_2 then
      L4_2 = true
      L5_2 = Config
      L5_2 = L5_2.VehiclePersistenceZones
      L5_2 = L5_2.Garage
      if not L5_2 then
        L5_2 = pairs
        L6_2 = Config
        L6_2 = L6_2.Garages
        L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
        for L9_2, L10_2 in L5_2, L6_2, L7_2, L8_2 do
          L11_2 = L10_2.garageZone
          if L11_2 then
            L11_2 = library
            L11_2 = L11_2.IsInsidePolyZone
            L12_2 = L3_2
            L13_2 = L10_2.garageZone
            L14_2 = L10_2.minZ
            L15_2 = L10_2.maxZ
            L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2)
            if L11_2 then
              L4_2 = false
              break
            end
          end
        end
      end
      L5_2 = Config
      L5_2 = L5_2.VehiclePersistenceZones
      L5_2 = L5_2.Impound
      if not L5_2 and L4_2 then
        L5_2 = pairs
        L6_2 = Config
        L6_2 = L6_2.Impounds
        L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
        for L9_2, L10_2 in L5_2, L6_2, L7_2, L8_2 do
          L11_2 = L10_2.garageZone
          if L11_2 then
            L11_2 = library
            L11_2 = L11_2.IsInsidePolyZone
            L12_2 = L3_2
            L13_2 = L10_2.garageZone
            L14_2 = L10_2.minZ
            L15_2 = L10_2.maxZ
            L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2)
            if L11_2 then
              L4_2 = false
              break
            end
          end
        end
      end
      if not L4_2 then
        return
      end
      L5_2 = SavePersistentVehicle
      L6_2 = A0_2
      L7_2 = L2_2
      L8_2 = true
      L5_2(L6_2, L7_2, L8_2)
    end
  end
end
L3_1(L4_1, L5_1)
--   ____  _____ ____ ______   ______ _____ _____ ____     ___     _____ _____  _______ ____    ______   __  _______  __    _    ____    _____ ____  ___ _  _____ _____ ___  _   _    _        _     _   _                  ____  _ _                       _                 _______ _____ _  __     _   _ ____      _ ____ _____ _____
--  |  _ \| ____/ ___|  _ \ \ / /  _ \_   _| ____|  _ \   ( _ )   |  ___|_ _\ \/ / ____|  _ \  | __ ) \ / / |  ___\ \/ /   / \  |  _ \  |  ___|  _ \|_ _| |/ /_ _|_   _/ _ \| \ | |  / \      | |__ | |_| |_ _ __  ___ _   / / /_| (_)___  ___ ___  _ __ __| |  __ _  __ _   / / ____|_   _| |/ /__ _| | | | ___|  __| | ___|___  |___  |
--  | | | |  _|| |   | |_) \ V /| |_) || | |  _| | | | |  / _ \/\ | |_   | | \  /|  _| | | | | |  _ \\ V /  | |_   \  /   / _ \ | |_) | | |_  | |_) || || ' / | |  | || | | |  \| | / _ \     | '_ \| __| __| '_ \/ __(_) / / / _` | / __|/ __/ _ \| '__/ _` | / _` |/ _` | / /|  _|   | | | ' // _` | |_| |___ \ / _` |___ \  / /   / /
--  | |_| | |__| |___|  _ < | | |  __/ | | | |___| |_| | | (_>  < |  _|  | | /  \| |___| |_| | | |_) || |   |  _|  /  \  / ___ \|  __/  |  _| |  _ < | || . \ | |  | || |_| | |\  |/ ___ \ _  | | | | |_| |_| |_) \__ \_ / / / (_| | \__ \ (_| (_) | | | (_| || (_| | (_| |/ / | |___  | | | . \ (_| |  _  |___) | (_| |___) |/ /   / /
--  |____/|_____\____|_| \_\|_| |_|    |_| |_____|____/   \___/\/ |_|   |___/_/\_\_____|____/  |____/ |_|   |_|   /_/\_\/_/   \_\_|     |_|   |_| \_\___|_|\_\___| |_| \___/|_| \_/_/   \_(_) |_| |_|\__|\__| .__/|___(_)_/_/ \__,_|_|___/\___\___/|_|  \__,_(_)__, |\__, /_/  |_____| |_| |_|\_\__, |_| |_|____/ \__,_|____//_/   /_/
--                                                                                                                                                                                                          |_|                                                |___/ |___/                         |_|
-- https://discord.gg/ETKqH5d577
