--   ____  _____ ____ ______   ______ _____ _____ ____     ___     _____ _____  _______ ____    ______   __  _______  __    _    ____    _____ ____  ___ _  _____ _____ ___  _   _    _        _     _   _                  ____  _ _                       _                 _______ _____ _  __     _   _ ____      _ ____ _____ _____
--  |  _ \| ____/ ___|  _ \ \ / /  _ \_   _| ____|  _ \   ( _ )   |  ___|_ _\ \/ / ____|  _ \  | __ ) \ / / |  ___\ \/ /   / \  |  _ \  |  ___|  _ \|_ _| |/ /_ _|_   _/ _ \| \ | |  / \      | |__ | |_| |_ _ __  ___ _   / / /_| (_)___  ___ ___  _ __ __| |  __ _  __ _   / / ____|_   _| |/ /__ _| | | | ___|  __| | ___|___  |___  |
--  | | | |  _|| |   | |_) \ V /| |_) || | |  _| | | | |  / _ \/\ | |_   | | \  /|  _| | | | | |  _ \\ V /  | |_   \  /   / _ \ | |_) | | |_  | |_) || || ' / | |  | || | | |  \| | / _ \     | '_ \| __| __| '_ \/ __(_) / / / _` | / __|/ __/ _ \| '__/ _` | / _` |/ _` | / /|  _|   | | | ' // _` | |_| |___ \ / _` |___ \  / /   / /
--  | |_| | |__| |___|  _ < | | |  __/ | | | |___| |_| | | (_>  < |  _|  | | /  \| |___| |_| | | |_) || |   |  _|  /  \  / ___ \|  __/  |  _| |  _ < | || . \ | |  | || |_| | |\  |/ ___ \ _  | | | | |_| |_| |_) \__ \_ / / / (_| | \__ \ (_| (_) | | | (_| || (_| | (_| |/ / | |___  | | | . \ (_| |  _  |___) | (_| |___) |/ /   / /
--  |____/|_____\____|_| \_\|_| |_|    |_| |_____|____/   \___/\/ |_|   |___/_/\_\_____|____/  |____/ |_|   |_|   /_/\_\/_/   \_\_|     |_|   |_| \_\___|_|\_\___| |_| \___/|_| \_/_/   \_(_) |_| |_|\__|\__| .__/|___(_)_/_/ \__,_|_|___/\___\___/|_|  \__,_(_)__, |\__, /_/  |_____| |_| |_|\_\__, |_| |_|____/ \__,_|____//_/   /_/
--                                                                                                                                                                                                          |_|                                                |___/ |___/                         |_|
-- https://discord.gg/ETKqH5d577

local L0_1, L1_1, L2_1
L0_1 = {}
L1_1 = {}
L0_1.VehicleTypes = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = Config
  L2_2 = L2_2.Debug
  if not L2_2 then
    return
  end
  if A1_2 then
    if "error" == A1_2 then
      L2_2 = error
      L3_2 = A0_2
      L2_2(L3_2)
    else
      L2_2 = warn
      L3_2 = A0_2
      L2_2(L3_2)
    end
  else
    L2_2 = print
    L3_2 = A0_2
    L2_2(L3_2)
  end
end
L0_1.Debug = L1_1
function L1_1(A0_2, A1_2, ...)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = Config
  L2_2 = L2_2.Core
  if "ESX" == L2_2 then
    L2_2 = Core
    L2_2 = L2_2.RegisterServerCallback
    L3_2 = A0_2
    L4_2 = A1_2
    L5_2 = ...
    L2_2(L3_2, L4_2, L5_2)
  else
    L2_2 = Config
    L2_2 = L2_2.Core
    if "QB-Core" == L2_2 then
      L2_2 = Core
      L2_2 = L2_2.Functions
      L2_2 = L2_2.CreateCallback
      L3_2 = A0_2
      L4_2 = A1_2
      L5_2 = ...
      L2_2(L3_2, L4_2, L5_2)
    end
  end
end
L0_1.RegisterCallback = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L3_2 = tonumber
  L4_2 = A0_2.model
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L3_2 = A0_2.model
    if L3_2 then
      goto lbl_12
    end
  end
  L3_2 = joaat
  L4_2 = A0_2.model
  L3_2 = L3_2(L4_2)
  ::lbl_12::
  L4_2 = library
  L4_2 = L4_2.VehicleTypes
  L4_2 = L4_2[L3_2]
  if not L4_2 then
    L5_2 = library
    L5_2 = L5_2.Debug
    L6_2 = "[^5Info^7] Vehicle type not found for '"
    L7_2 = tostring
    L8_2 = A0_2.model
    L7_2 = L7_2(L8_2)
    L8_2 = "'."
    L6_2 = L6_2 .. L7_2 .. L8_2
    L5_2(L6_2)
    L5_2 = CreateVehicle
    L6_2 = L3_2
    L7_2 = A0_2.coords
    L7_2 = L7_2.x
    L8_2 = A0_2.coords
    L8_2 = L8_2.y
    L9_2 = -100.0
    L10_2 = A0_2.heading
    L11_2 = true
    L12_2 = true
    L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
    L6_2 = GetGameTimer
    L6_2 = L6_2()
    while true do
      L7_2 = DoesEntityExist
      L8_2 = L5_2
      L7_2 = L7_2(L8_2)
      if L7_2 then
        break
      end
      if A2_2 then
        L7_2 = GetGameTimer
        L7_2 = L7_2()
        L7_2 = L7_2 - L6_2
        L8_2 = 5000
        if L7_2 > L8_2 then
          L7_2 = library
          L7_2 = L7_2.Debug
          L8_2 = "[^1Error^7] Vehicle model '"
          L9_2 = tostring
          L10_2 = A0_2.model
          L9_2 = L9_2(L10_2)
          L10_2 = "' failed to spawn within the time limit of 5000 ms."
          L8_2 = L8_2 .. L9_2 .. L10_2
          L9_2 = "error"
          L7_2(L8_2, L9_2)
          break
        end
      end
      L7_2 = Citizen
      L7_2 = L7_2.Wait
      L8_2 = 1
      L7_2(L8_2)
    end
    L7_2 = DoesEntityExist
    L8_2 = L5_2
    L7_2 = L7_2(L8_2)
    if not L7_2 then
      L7_2 = library
      L7_2 = L7_2.Debug
      L8_2 = "[^1Error^7] Unable to create a vehicle '"
      L9_2 = tostring
      L10_2 = A0_2.model
      L9_2 = L9_2(L10_2)
      L10_2 = "' to obtain vehicle type."
      L8_2 = L8_2 .. L9_2 .. L10_2
      return L7_2(L8_2)
    end
    L7_2 = library
    L7_2 = L7_2.VehicleTypes
    L8_2 = GetVehicleType
    L9_2 = L5_2
    L8_2 = L8_2(L9_2)
    L7_2[L3_2] = L8_2
    L7_2 = library
    L7_2 = L7_2.Debug
    L8_2 = "[^5Info^7] Vehicle type '"
    L9_2 = library
    L9_2 = L9_2.VehicleTypes
    L9_2 = L9_2[L3_2]
    L10_2 = "' created for '"
    L11_2 = tostring
    L12_2 = A0_2.model
    L11_2 = L11_2(L12_2)
    L12_2 = "'."
    L8_2 = L8_2 .. L9_2 .. L10_2 .. L11_2 .. L12_2
    L7_2(L8_2)
    L7_2 = DeleteEntity
    L8_2 = L5_2
    L7_2(L8_2)
    L7_2 = library
    L7_2 = L7_2.VehicleTypes
    L4_2 = L7_2[L3_2]
  end
  L5_2 = CreateVehicleServerSetter
  L6_2 = L3_2
  L7_2 = L4_2
  L8_2 = A0_2.coords
  L8_2 = L8_2.xyz
  L9_2 = A0_2.heading
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
  L6_2 = A0_2.bucket
  if L6_2 then
    L6_2 = SetEntityRoutingBucket
    L7_2 = L5_2
    L8_2 = A0_2.bucket
    L6_2(L7_2, L8_2)
  end
  L6_2 = A0_2.garage
  if L6_2 then
    L6_2 = TriggerClientEvent
    L7_2 = "vms_garagesv2:deleteTakenVehicle"
    L8_2 = -1
    L9_2 = A0_2.garage
    L9_2 = L9_2.id
    L10_2 = A0_2.garage
    L10_2 = L10_2.spotid
    L11_2 = A0_2.garage
    L11_2 = L11_2.isHousing
    L12_2 = {}
    L13_2 = A0_2.garage
    L13_2 = L13_2.isRented
    L12_2.isRented = L13_2
    L13_2 = A0_2.garage
    L13_2 = L13_2.ownerName
    L12_2.ownerName = L13_2
    L13_2 = A0_2.garage
    L13_2 = L13_2.time
    L12_2.time = L13_2
    L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  end
  while true do
    L6_2 = GetVehicleNumberPlateText
    L7_2 = L5_2
    L6_2 = L6_2(L7_2)
    if "" ~= L6_2 then
      break
    end
    L6_2 = Wait
    L7_2 = 0
    L6_2(L7_2)
  end
  L6_2 = A0_2.ped
  if L6_2 then
    L6_2 = SetPedIntoVehicle
    L7_2 = A0_2.ped
    L8_2 = L5_2
    L9_2 = -1
    L6_2(L7_2, L8_2, L9_2)
  end
  L6_2 = NetworkGetNetworkIdFromEntity
  L7_2 = L5_2
  L6_2 = L6_2(L7_2)
  L7_2 = Entity
  L8_2 = L5_2
  L7_2 = L7_2(L8_2)
  L7_2 = L7_2.state
  L8_2 = L7_2
  L7_2 = L7_2.set
  L9_2 = Config
  L9_2 = L9_2.VehiclePropertiesStateBag
  L10_2 = A0_2.props
  L11_2 = true
  L7_2(L8_2, L9_2, L10_2, L11_2)
  L7_2 = GetGameTimer
  L7_2 = L7_2()
  while true do
    L8_2 = DoesEntityExist
    L9_2 = L5_2
    L8_2 = L8_2(L9_2)
    if L8_2 then
      break
    end
    if A2_2 then
      L8_2 = GetGameTimer
      L8_2 = L8_2()
      L8_2 = L8_2 - L7_2
      if A2_2 < L8_2 then
        L8_2 = library
        L8_2 = L8_2.Debug
        L9_2 = "[^1Error^7] Vehicle model '"
        L10_2 = tostring
        L11_2 = A0_2.model
        L10_2 = L10_2(L11_2)
        L11_2 = "' failed to spawn within the time limit of "
        L12_2 = tostring
        L13_2 = A2_2
        L12_2 = L12_2(L13_2)
        L13_2 = " ms."
        L9_2 = L9_2 .. L10_2 .. L11_2 .. L12_2 .. L13_2
        L8_2(L9_2)
        L8_2 = A1_2
        L9_2 = nil
        L10_2 = nil
        L8_2(L9_2, L10_2)
        return
      end
    end
    L8_2 = Citizen
    L8_2 = L8_2.Wait
    L9_2 = 1
    L8_2(L9_2)
  end
  L8_2 = A0_2.source
  if L8_2 then
    L8_2 = GetGameTimer
    L8_2 = L8_2()
    L8_2 = L8_2 + 5000
    while true do
      L9_2 = NetworkGetEntityOwner
      L10_2 = L5_2
      L9_2 = L9_2(L10_2)
      L10_2 = A0_2.source
      if L9_2 == L10_2 then
        break
      end
      L9_2 = GetGameTimer
      L9_2 = L9_2()
      if L8_2 <= L9_2 then
        L9_2 = library
        L9_2 = L9_2.Debug
        L10_2 = "[^3Warning^7] Cannot found entity owner for 'entity:"
        L11_2 = L5_2
        L12_2 = "'."
        L10_2 = L10_2 .. L11_2 .. L12_2
        L9_2(L10_2)
        break
      end
      L9_2 = Citizen
      L9_2 = L9_2.Wait
      L10_2 = 5
      L9_2(L10_2)
    end
  end
  L8_2 = FreezeEntityPosition
  L9_2 = L5_2
  L10_2 = false
  L8_2(L9_2, L10_2)
  L8_2 = SetEntityOrphanMode
  L9_2 = L5_2
  L10_2 = 2
  L8_2(L9_2, L10_2)
  L8_2 = library
  L8_2 = L8_2.Debug
  L9_2 = "[^2Taken Vehicle^7] VehId: "
  L10_2 = L5_2
  L11_2 = ", NetId:"
  L12_2 = L6_2
  L9_2 = L9_2 .. L10_2 .. L11_2 .. L12_2
  L8_2(L9_2)
  L8_2 = A1_2
  L9_2 = L5_2
  L10_2 = L6_2
  L8_2(L9_2, L10_2)
end
L0_1.SpawnVehicle = L1_1
function L1_1(A0_2, A1_2)
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
L0_1.IsPointInPolygon = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2
  L4_2 = A0_2.z
  if not (A2_2 > L4_2) then
    L4_2 = A0_2.z
    if not (A3_2 < L4_2) then
      goto lbl_9
    end
  end
  L4_2 = false
  do return L4_2 end
  ::lbl_9::
  L4_2 = library
  L4_2 = L4_2.IsPointInPolygon
  L5_2 = A0_2
  L6_2 = A1_2
  return L4_2(L5_2, L6_2)
end
L0_1.IsInsidePolyZone = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = 0
  L4_2 = 0
  L5_2 = #A0_2
  L6_2 = 1
  L7_2 = L5_2
  L8_2 = 1
  for L9_2 = L6_2, L7_2, L8_2 do
    L10_2 = A0_2[L9_2]
    L10_2 = L10_2.x
    L3_2 = L3_2 + L10_2
    L10_2 = A0_2[L9_2]
    L10_2 = L10_2.y
    L4_2 = L4_2 + L10_2
  end
  L6_2 = vector3
  L7_2 = L3_2 / L5_2
  L8_2 = L4_2 / L5_2
  if A1_2 and A2_2 then
    L9_2 = A1_2 + A2_2
    L9_2 = L9_2 / 2
    if L9_2 then
      goto lbl_33
    end
  end
  L9_2 = 0.0
  ::lbl_33::
  L6_2 = L6_2(L7_2, L8_2, L9_2)
  return L6_2
end
L0_1.GetZoneCenter = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = GetAllVehicles
  L2_2 = L2_2()
  L3_2 = pairs
  L4_2 = L2_2
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = DoesEntityExist
    L10_2 = L8_2
    L9_2 = L9_2(L10_2)
    if L9_2 then
      L9_2 = GetEntityCoords
      L10_2 = L8_2
      L9_2 = L9_2(L10_2)
      L10_2 = A1_2.xyz
      L11_2 = L9_2.xyz
      L10_2 = L10_2 - L11_2
      L10_2 = #L10_2
      if L10_2 < 4.0 then
        L11_2 = false
        return L11_2
      end
    end
  end
  L3_2 = true
  return L3_2
end
L0_1.IsAreaClear = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = math
  L1_2 = L1_2.floor
  L2_2 = tonumber
  L3_2 = GlobalState
  L3_2 = L3_2.OS_TIME
  L2_2 = L2_2(L3_2)
  L2_2 = L2_2 - A0_2
  L2_2 = L2_2 / 86400
  return L1_2(L2_2)
end
L0_1.GetDays = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = string
  L1_2 = L1_2.match
  L2_2 = A0_2
  L3_2 = "([^:]+):?(%d*)"
  L1_2, L2_2 = L1_2(L2_2, L3_2)
  L3_2 = {}
  L3_2.name = L1_2
  L4_2 = tonumber
  L5_2 = L2_2
  L4_2 = L4_2(L5_2)
  L3_2.grade = L4_2
  return L3_2
end
L0_1.ParseGroup = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = library
  L1_2 = L1_2.ParseGroup
  L2_2 = A0_2.requiredGroupName
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = L1_2.name
    L3_2 = A0_2.groupName
    if L2_2 == L3_2 then
      goto lbl_13
    end
  end
  L2_2 = false
  do return L2_2 end
  ::lbl_13::
  L2_2 = tonumber
  L3_2 = A0_2.groupGrade
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = 0
  end
  L3_2 = A0_2.groupType
  if "company" == L3_2 then
    L3_2 = Config
    L3_2 = L3_2.CompanyGrades
    L4_2 = A0_2.groupName
    L3_2 = L3_2[L4_2]
    if L3_2 then
      goto lbl_32
    end
  end
  L3_2 = Config
  L3_2 = L3_2.GangGrades
  L4_2 = A0_2.groupName
  L3_2 = L3_2[L4_2]
  ::lbl_32::
  L4_2 = L3_2 or L4_2
  if L3_2 then
    L4_2 = tostring
    L5_2 = L2_2
    L4_2 = L4_2(L5_2)
    L4_2 = L3_2[L4_2]
    if L4_2 then
      L4_2 = L4_2.isBoss
    end
    L4_2 = true == L4_2
  end
  L5_2 = L1_2.grade
  if L5_2 then
    L5_2 = L1_2.grade
    if "unknown" ~= L5_2 then
      goto lbl_61
    end
  end
  L5_2 = A0_2.vehicleOwner
  L5_2 = not L5_2
  do return L5_2 end
  ::lbl_61::
  L5_2 = L1_2.grade
  if L5_2 == L2_2 then
    L5_2 = true
    return L5_2
  end
  L5_2 = A0_2.groupType
  if "company" == L5_2 then
    L5_2 = Config
    L5_2 = L5_2.AllowCompanyAccessAboveRank
    if L5_2 then
      L5_2 = L1_2.grade
      if L2_2 > L5_2 then
        L5_2 = true
        return L5_2
      end
    end
  end
  L5_2 = A0_2.groupType
  if "gang" == L5_2 then
    L5_2 = Config
    L5_2 = L5_2.AllowGangAccessAboveRank
    if L5_2 then
      L5_2 = L1_2.grade
      if L2_2 > L5_2 then
        L5_2 = true
        return L5_2
      end
    end
  end
  if L4_2 then
    L5_2 = true
    return L5_2
  end
end
L0_1.HasGroupAccess = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = businessGarages
  L1_2 = L1_2[A0_2]
  L1_2 = L1_2.data
  L1_2 = L1_2.balance
  return L1_2
end
L0_1.GetCompanyMoney = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2
  L4_2 = businessGarages
  L4_2 = L4_2[A0_2]
  L4_2 = L4_2.data
  L5_2 = businessGarages
  L5_2 = L5_2[A0_2]
  L5_2 = L5_2.data
  L5_2 = L5_2.balance
  L5_2 = L5_2 + A1_2
  L4_2.balance = L5_2
  if A2_2 then
    L4_2 = businessGarages
    L4_2 = L4_2[A0_2]
    L4_2 = L4_2.data
    L5_2 = businessGarages
    L5_2 = L5_2[A0_2]
    L5_2 = L5_2.data
    L5_2 = L5_2.totalEarned
    L5_2 = L5_2 + A1_2
    L4_2.totalEarned = L5_2
  end
  if A3_2 then
    L4_2 = A3_2
    L4_2()
  end
end
L0_1.AddCompanyMoney = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  L3_2 = businessGarages
  L3_2 = L3_2[A0_2]
  L3_2 = L3_2.data
  L4_2 = businessGarages
  L4_2 = L4_2[A0_2]
  L4_2 = L4_2.data
  L4_2 = L4_2.balance
  L4_2 = L4_2 - A1_2
  L3_2.balance = L4_2
  if A2_2 then
    L3_2 = A2_2
    L3_2()
  end
end
L0_1.RemoveCompanyMoney = L1_1
library = L0_1
L0_1 = exports
L1_1 = "getCompanyMoney"
L2_1 = library
L2_1 = L2_1.GetCompanyMoney
L0_1(L1_1, L2_1)
L0_1 = exports
L1_1 = "addCompanyMoney"
L2_1 = library
L2_1 = L2_1.AddCompanyMoney
L0_1(L1_1, L2_1)
L0_1 = exports
L1_1 = "removeCompanyMoney"
L2_1 = library
L2_1 = L2_1.RemoveCompanyMoney
L0_1(L1_1, L2_1)
--   ____  _____ ____ ______   ______ _____ _____ ____     ___     _____ _____  _______ ____    ______   __  _______  __    _    ____    _____ ____  ___ _  _____ _____ ___  _   _    _        _     _   _                  ____  _ _                       _                 _______ _____ _  __     _   _ ____      _ ____ _____ _____
--  |  _ \| ____/ ___|  _ \ \ / /  _ \_   _| ____|  _ \   ( _ )   |  ___|_ _\ \/ / ____|  _ \  | __ ) \ / / |  ___\ \/ /   / \  |  _ \  |  ___|  _ \|_ _| |/ /_ _|_   _/ _ \| \ | |  / \      | |__ | |_| |_ _ __  ___ _   / / /_| (_)___  ___ ___  _ __ __| |  __ _  __ _   / / ____|_   _| |/ /__ _| | | | ___|  __| | ___|___  |___  |
--  | | | |  _|| |   | |_) \ V /| |_) || | |  _| | | | |  / _ \/\ | |_   | | \  /|  _| | | | | |  _ \\ V /  | |_   \  /   / _ \ | |_) | | |_  | |_) || || ' / | |  | || | | |  \| | / _ \     | '_ \| __| __| '_ \/ __(_) / / / _` | / __|/ __/ _ \| '__/ _` | / _` |/ _` | / /|  _|   | | | ' // _` | |_| |___ \ / _` |___ \  / /   / /
--  | |_| | |__| |___|  _ < | | |  __/ | | | |___| |_| | | (_>  < |  _|  | | /  \| |___| |_| | | |_) || |   |  _|  /  \  / ___ \|  __/  |  _| |  _ < | || . \ | |  | || |_| | |\  |/ ___ \ _  | | | | |_| |_| |_) \__ \_ / / / (_| | \__ \ (_| (_) | | | (_| || (_| | (_| |/ / | |___  | | | . \ (_| |  _  |___) | (_| |___) |/ /   / /
--  |____/|_____\____|_| \_\|_| |_|    |_| |_____|____/   \___/\/ |_|   |___/_/\_\_____|____/  |____/ |_|   |_|   /_/\_\/_/   \_\_|     |_|   |_| \_\___|_|\_\___| |_| \___/|_| \_/_/   \_(_) |_| |_|\__|\__| .__/|___(_)_/_/ \__,_|_|___/\___\___/|_|  \__,_(_)__, |\__, /_/  |_____| |_| |_|\_\__, |_| |_|____/ \__,_|____//_/   /_/
--                                                                                                                                                                                                          |_|                                                |___/ |___/                         |_|
-- https://discord.gg/ETKqH5d577
