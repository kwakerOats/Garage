--   ____  _____ ____ ______   ______ _____ _____ ____     ___     _____ _____  _______ ____    ______   __  _______  __    _    ____    _____ ____  ___ _  _____ _____ ___  _   _    _        _     _   _                  ____  _ _                       _                 _______ _____ _  __     _   _ ____      _ ____ _____ _____
--  |  _ \| ____/ ___|  _ \ \ / /  _ \_   _| ____|  _ \   ( _ )   |  ___|_ _\ \/ / ____|  _ \  | __ ) \ / / |  ___\ \/ /   / \  |  _ \  |  ___|  _ \|_ _| |/ /_ _|_   _/ _ \| \ | |  / \      | |__ | |_| |_ _ __  ___ _   / / /_| (_)___  ___ ___  _ __ __| |  __ _  __ _   / / ____|_   _| |/ /__ _| | | | ___|  __| | ___|___  |___  |
--  | | | |  _|| |   | |_) \ V /| |_) || | |  _| | | | |  / _ \/\ | |_   | | \  /|  _| | | | | |  _ \\ V /  | |_   \  /   / _ \ | |_) | | |_  | |_) || || ' / | |  | || | | |  \| | / _ \     | '_ \| __| __| '_ \/ __(_) / / / _` | / __|/ __/ _ \| '__/ _` | / _` |/ _` | / /|  _|   | | | ' // _` | |_| |___ \ / _` |___ \  / /   / /
--  | |_| | |__| |___|  _ < | | |  __/ | | | |___| |_| | | (_>  < |  _|  | | /  \| |___| |_| | | |_) || |   |  _|  /  \  / ___ \|  __/  |  _| |  _ < | || . \ | |  | || |_| | |\  |/ ___ \ _  | | | | |_| |_| |_) \__ \_ / / / (_| | \__ \ (_| (_) | | | (_| || (_| | (_| |/ / | |___  | | | . \ (_| |  _  |___) | (_| |___) |/ /   / /
--  |____/|_____\____|_| \_\|_| |_|    |_| |_____|____/   \___/\/ |_|   |___/_/\_\_____|____/  |____/ |_|   |_|   /_/\_\/_/   \_\_|     |_|   |_| \_\___|_|\_\___| |_| \___/|_| \_/_/   \_(_) |_| |_|\__|\__| .__/|___(_)_/_/ \__,_|_|___/\___\___/|_|  \__,_(_)__, |\__, /_/  |_____| |_| |_|\_\__, |_| |_|____/ \__,_|____//_/   /_/
--                                                                                                                                                                                                          |_|                                                |___/ |___/                         |_|
-- https://discord.gg/ETKqH5d577

local L0_1, L1_1
L0_1 = {}
L0_1.IsPlayingAnimation = false
L0_1.IsHaveProp = false
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
    elseif "warn" == A1_2 then
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
    L2_2 = ESX
    L2_2 = L2_2.TriggerServerCallback
    L3_2 = A0_2
    L4_2 = A1_2
    L5_2 = ...
    L2_2(L3_2, L4_2, L5_2)
  else
    L2_2 = QBCore
    L2_2 = L2_2.Functions
    L2_2 = L2_2.TriggerCallback
    L3_2 = A0_2
    L4_2 = A1_2
    L5_2 = ...
    L2_2(L3_2, L4_2, L5_2)
  end
end
L0_1.Callback = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = tonumber
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L1_2 = A0_2 or L1_2
  if not L1_2 or not A0_2 then
    L1_2 = GetHashKey
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
  end
  L2_2 = RequestModel
  L3_2 = L1_2
  L2_2(L3_2)
  L2_2 = false
  L3_2 = SetTimeout
  L4_2 = 5000
  function L5_2()
    local L0_3, L1_3
    L0_3 = true
    L2_2 = L0_3
  end
  L3_2(L4_2, L5_2)
  repeat
    L3_2 = RequestModel
    L4_2 = L1_2
    L3_2(L4_2)
    L3_2 = Wait
    L4_2 = 50
    L3_2(L4_2)
    L3_2 = HasModelLoaded
    L4_2 = L1_2
    L3_2 = L3_2(L4_2)
  until L3_2 or L2_2
  L3_2 = HasModelLoaded
  L4_2 = L1_2
  L3_2 = L3_2(L4_2)
  L3_2 = L2_2 or L3_2
  if not L3_2 and L2_2 then
    L3_2 = false
  end
  return L3_2
end
L0_1.RequestEntity = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = library
  L1_2 = L1_2.RequestEntity
  L2_2 = A0_2.model
  L1_2(L2_2)
  L1_2 = CreatePed
  L2_2 = 4
  L3_2 = A0_2.model
  L4_2 = A0_2.coords
  L4_2 = L4_2.x
  L5_2 = A0_2.coords
  L5_2 = L5_2.y
  L6_2 = A0_2.coords
  L6_2 = L6_2.z
  L7_2 = A0_2.coords
  L7_2 = L7_2.w
  if not L7_2 then
    L7_2 = 0.0
  end
  L8_2 = false
  L9_2 = true
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L2_2 = FreezeEntityPosition
  L3_2 = L1_2
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = SetEntityInvincible
  L3_2 = L1_2
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = SetEntityCoords
  L3_2 = L1_2
  L4_2 = A0_2.coords
  L4_2 = L4_2.x
  L5_2 = A0_2.coords
  L5_2 = L5_2.y
  L6_2 = A0_2.coords
  L6_2 = L6_2.z
  L7_2 = A0_2.coords
  L7_2 = L7_2.w
  if not L7_2 then
    L7_2 = 0.0
  end
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  L2_2 = TaskSetBlockingOfNonTemporaryEvents
  L3_2 = L1_2
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = A0_2.animation
  if L2_2 then
    L2_2 = library
    L2_2 = L2_2.PlayAnimation
    L3_2 = L1_2
    L4_2 = A0_2.animation
    L4_2 = L4_2[1]
    L5_2 = A0_2.animation
    L5_2 = L5_2[2]
    L6_2 = -1
    L7_2 = 1
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  end
  return L1_2
end
L0_1.SpawnPed = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2
  L5_2 = PlayerPedId
  L5_2 = L5_2()
  if A1_2 then
    L6_2 = vec
    L7_2 = A1_2.x
    L8_2 = A1_2.y
    L9_2 = A1_2.z
    L6_2 = L6_2(L7_2, L8_2, L9_2)
    if L6_2 then
      goto lbl_15
    end
  end
  L6_2 = GetEntityCoords
  L7_2 = L5_2
  L6_2 = L6_2(L7_2)
  ::lbl_15::
  L7_2 = library
  L7_2 = L7_2.RequestEntity
  L8_2 = A0_2
  L7_2(L8_2)
  L7_2 = CreateObject
  L8_2 = A0_2
  L9_2 = L6_2.xyz
  L10_2 = A2_2
  L11_2 = false
  L12_2 = true
  L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
  if A3_2 then
    L8_2 = AttachEntityToEntity
    L9_2 = L7_2
    L10_2 = A3_2.attachTo
    L11_2 = A3_2.boneIndex
    L12_2 = A3_2.placement
    L12_2 = L12_2[1]
    L13_2 = A3_2.placement
    L13_2 = L13_2[2]
    L14_2 = A3_2.placement
    L14_2 = L14_2[3]
    L15_2 = A3_2.placement
    L15_2 = L15_2[4]
    L16_2 = A3_2.placement
    L16_2 = L16_2[5]
    L17_2 = A3_2.placement
    L17_2 = L17_2[6]
    L18_2 = true
    L19_2 = true
    L20_2 = false
    L21_2 = true
    L22_2 = 1
    L23_2 = true
    L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2)
  end
  if A4_2 then
    L8_2 = SetEntityCollision
    L9_2 = L7_2
    L10_2 = false
    L11_2 = true
    L8_2(L9_2, L10_2, L11_2)
  end
  return L7_2
end
L0_1.SpawnProp = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = false
  L2_2 = SetTimeout
  L3_2 = 5000
  function L4_2()
    local L0_3, L1_3
    L0_3 = true
    L1_2 = L0_3
  end
  L2_2(L3_2, L4_2)
  repeat
    L2_2 = RequestAnimDict
    L3_2 = A0_2
    L2_2(L3_2)
    L2_2 = Wait
    L3_2 = 50
    L2_2(L3_2)
    L2_2 = HasAnimDictLoaded
    L3_2 = A0_2
    L2_2 = L2_2(L3_2)
  until L2_2 or L1_2
end
L0_1.LoadDict = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L6_2 = library
  L6_2 = L6_2.LoadDict
  L7_2 = A1_2
  L6_2(L7_2)
  if A5_2 then
    L6_2 = library
    L7_2 = library
    L7_2 = L7_2.SpawnProp
    L8_2 = GetHashKey
    L9_2 = A5_2[1]
    L8_2 = L8_2(L9_2)
    L9_2 = A5_2[2]
    L10_2 = A5_2[3]
    L11_2 = A5_2[4]
    L12_2 = A5_2[5]
    L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
    L6_2.IsHaveProp = L7_2
  end
  L6_2 = library
  L6_2.IsPlayingAnimation = true
  L6_2 = TaskPlayAnim
  L7_2 = A0_2
  L8_2 = A1_2
  L9_2 = A2_2
  L10_2 = 8.0
  L11_2 = 8.0
  L12_2 = A3_2
  L13_2 = A4_2
  L14_2 = 0
  L15_2 = false
  L16_2 = false
  L17_2 = false
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
end
L0_1.PlayAnimation = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = library
  L1_2 = L1_2.IsHaveProp
  if L1_2 then
    L1_2 = DeleteEntity
    L2_2 = library
    L2_2 = L2_2.IsHaveProp
    L1_2(L2_2)
    L1_2 = library
    L1_2.IsHaveProp = nil
  end
  L1_2 = library
  L1_2 = L1_2.IsPlayingAnimation
  if L1_2 then
    L1_2 = ClearPedTasks
    L2_2 = A0_2
    L1_2(L2_2)
  end
  L1_2 = library
  L1_2.IsPlayingAnimation = false
end
L0_1.StopAnimation = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2.allowedModels
  if L2_2 then
    L2_2 = GetEntityModel
    L3_2 = A1_2
    L2_2 = L2_2(L3_2)
    L3_2 = A0_2.allowedModels
    L3_2 = L3_2[L2_2]
    return L3_2
  else
    L2_2 = true
    return L2_2
  end
end
L0_1.IsModelAllowed = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2.requiredJob
  if L1_2 then
    L1_2 = A0_2.requiredJob
    L2_2 = CL
    L2_2 = L2_2.GetPlayerJob
    L3_2 = "name"
    L2_2 = L2_2(L3_2)
    L1_2 = L1_2[L2_2]
    if L1_2 then
      L2_2 = type
      L3_2 = L1_2
      L2_2 = L2_2(L3_2)
      if "table" == L2_2 then
        L2_2 = CL
        L2_2 = L2_2.GetPlayerJob
        L3_2 = "grade"
        L2_2 = L2_2(L3_2)
        L3_2 = ipairs
        L4_2 = L1_2
        L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
        for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
          if L2_2 == L8_2 then
            L9_2 = true
            return L9_2
          end
        end
      else
        L2_2 = true
        return L2_2
      end
    end
    L2_2 = false
    return L2_2
  else
    L1_2 = true
    return L1_2
  end
end
L0_1.IsJobAllowed = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = A0_2.requiredGang
  if L1_2 then
    L1_2 = CL
    L1_2 = L1_2.GetPlayerGang
    L2_2 = "name"
    L1_2 = L1_2(L2_2)
    if not L1_2 then
      L2_2 = false
      return L2_2
    end
    L2_2 = A0_2.requiredGang
    L2_2 = L2_2[L1_2]
    if L2_2 then
      L3_2 = type
      L4_2 = L2_2
      L3_2 = L3_2(L4_2)
      if "table" == L3_2 then
        L3_2 = CL
        L3_2 = L3_2.GetPlayerGang
        L4_2 = "grade"
        L3_2 = L3_2(L4_2)
        L4_2 = ipairs
        L5_2 = L2_2
        L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
        for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
          if L3_2 == L9_2 then
            L10_2 = true
            return L10_2
          end
        end
      else
        L3_2 = true
        return L3_2
      end
    end
    L3_2 = false
    return L3_2
  else
    L1_2 = true
    return L1_2
  end
end
L0_1.IsGangAllowed = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = GetEntitySpeed
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L4_2 = Config
  L4_2 = L4_2.MaxSpeedToPark
  if L3_2 >= L4_2 then
    L4_2 = CL
    L4_2 = L4_2.Notification
    L5_2 = TRANSLATE
    L6_2 = "notify.stop_to_park"
    L5_2 = L5_2(L6_2)
    L6_2 = 4000
    L7_2 = "info"
    L4_2(L5_2, L6_2, L7_2)
    return
  end
  L4_2 = A1_2.isForRent
  if not L4_2 then
    L4_2 = true
    return L4_2
  end
  L4_2 = A2_2.data
  if not L4_2 then
    L4_2 = false
    return L4_2
  end
  L4_2 = A2_2.data
  L4_2 = L4_2.isRented
  if not L4_2 then
    L4_2 = false
    return L4_2
  end
  L4_2 = A2_2.data
  L4_2 = L4_2.isRented
  L5_2 = myIdentifier
  if L4_2 == L5_2 then
    L4_2 = true
    return L4_2
  end
end
L0_1.IsAllowedToPark = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2.isForRent
  if L2_2 then
    L2_2 = A1_2.data
    if L2_2 then
      L2_2 = A1_2.data
      L2_2 = L2_2.isRented
      if L2_2 then
        L2_2 = A1_2.data
        L2_2 = L2_2.isRented
        L3_2 = myIdentifier
        if L2_2 == L3_2 then
          L2_2 = true
          return L2_2
        end
      end
    end
  end
end
L0_1.IsMyParkingSpace = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = ""
  L2_2 = math
  L2_2 = L2_2.floor
  L3_2 = A0_2 / 86400
  L2_2 = L2_2(L3_2)
  L3_2 = math
  L3_2 = L3_2.floor
  L4_2 = A0_2 % 86400
  L4_2 = L4_2 / 3600
  L3_2 = L3_2(L4_2)
  if L2_2 > 0 then
    L4_2 = TRANSLATE
    L5_2 = "3dtext.parked_days"
    L6_2 = L2_2
    if L2_2 > 1 then
      L7_2 = TRANSLATE
      L8_2 = "3dtext.timer:days"
      L7_2 = L7_2(L8_2)
      if L7_2 then
        goto lbl_29
      end
    end
    L7_2 = TRANSLATE
    L8_2 = "3dtext.timer:day"
    L7_2 = L7_2(L8_2)
    ::lbl_29::
    L8_2 = L3_2
    if L3_2 > 1 then
      L9_2 = TRANSLATE
      L10_2 = "3dtext.timer:hours"
      L9_2 = L9_2(L10_2)
      if L9_2 then
        goto lbl_40
      end
    end
    L9_2 = TRANSLATE
    L10_2 = "3dtext.timer:hour"
    L9_2 = L9_2(L10_2)
    ::lbl_40::
    L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
    L5_2 = false
    return L4_2, L5_2
  elseif L3_2 > 0 then
    L4_2 = TRANSLATE
    L5_2 = "3dtext.parked_hours"
    L6_2 = L3_2
    if L3_2 > 1 then
      L7_2 = TRANSLATE
      L8_2 = "3dtext.timer:hours"
      L7_2 = L7_2(L8_2)
      if L7_2 then
        goto lbl_59
      end
    end
    L7_2 = TRANSLATE
    L8_2 = "3dtext.timer:hour"
    L7_2 = L7_2(L8_2)
    ::lbl_59::
    L4_2 = L4_2(L5_2, L6_2, L7_2)
    L5_2 = false
    return L4_2, L5_2
  else
    L4_2 = TRANSLATE
    L5_2 = "3dtext.parked_hours"
    L6_2 = "-1"
    L7_2 = TRANSLATE
    L8_2 = "3dtext.timer:hour"
    L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2)
    L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
    L5_2 = true
    return L4_2, L5_2
  end
end
L0_1.FormatParkedTime = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = math
  L1_2 = L1_2.floor
  L2_2 = tonumber
  L3_2 = GlobalState
  L3_2 = L3_2.OS_TIME
  L2_2 = L2_2(L3_2)
  L3_2 = tonumber
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L2_2 = L2_2 - L3_2
  L2_2 = L2_2 / 86400
  return L1_2(L2_2)
end
L0_1.GetDays = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  if "create" == A0_2 then
    L2_2 = 80.0
    L3_2 = CreateCamWithParams
    L4_2 = "DEFAULT_SCRIPTED_CAMERA"
    L5_2 = A1_2.camCoords
    L5_2 = L5_2.x
    L6_2 = A1_2.camCoords
    L6_2 = L6_2.y
    L7_2 = A1_2.camCoords
    L7_2 = L7_2.z
    L8_2 = 0.0
    L9_2 = 0.0
    L10_2 = 0.0
    L11_2 = A1_2.camFov
    if not L11_2 then
      L11_2 = 80.0
    end
    L12_2 = false
    L13_2 = 2
    L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
    L4_2 = SetCamActive
    L5_2 = L3_2
    L6_2 = true
    L4_2(L5_2, L6_2)
    L4_2 = PointCamAtCoord
    L5_2 = L3_2
    L6_2 = A1_2.coords
    L6_2 = L6_2.x
    L7_2 = A1_2.coords
    L7_2 = L7_2.y
    L8_2 = A1_2.coords
    L8_2 = L8_2.z
    L4_2(L5_2, L6_2, L7_2, L8_2)
    L4_2 = CreateCamWithParams
    L5_2 = "DEFAULT_SCRIPTED_CAMERA"
    L6_2 = A1_2.camCoords
    L6_2 = L6_2.x
    L7_2 = A1_2.camCoords
    L7_2 = L7_2.y
    L8_2 = A1_2.camCoords
    L8_2 = L8_2.z
    L9_2 = 0.0
    L10_2 = 0.0
    L11_2 = 0.0
    L12_2 = A1_2.camFov
    if not L12_2 then
      L12_2 = 80.0
    end
    L13_2 = false
    L14_2 = 2
    L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
    L5_2 = SetCamActive
    L6_2 = L4_2
    L7_2 = false
    L5_2(L6_2, L7_2)
    L5_2 = RenderScriptCams
    L6_2 = true
    L7_2 = true
    L8_2 = 450
    L9_2 = true
    L10_2 = true
    L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
    L5_2 = L3_2
    L6_2 = L4_2
    return L5_2, L6_2
  elseif "remove" == A0_2 then
    L2_2 = DestroyCam
    L3_2 = A1_2.cam1
    L4_2 = false
    L2_2(L3_2, L4_2)
    L2_2 = SetCamActive
    L3_2 = A1_2.cam1
    L4_2 = false
    L2_2(L3_2, L4_2)
    L2_2 = DestroyCam
    L3_2 = A1_2.cam2
    L2_2(L3_2)
    L2_2 = SetCamActive
    L3_2 = A1_2.cam2
    L4_2 = false
    L2_2(L3_2, L4_2)
    L2_2 = RenderScriptCams
    L3_2 = false
    L4_2 = true
    L5_2 = 450
    L6_2 = true
    L7_2 = true
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
    L2_2 = nil
    L3_2 = nil
    return L2_2, L3_2
  elseif "switch" == A0_2 then
    L2_2 = IsCamActive
    L3_2 = A1_2.cam1
    L2_2 = L2_2(L3_2)
    L3_2 = SetCamCoord
    if L2_2 then
      L4_2 = A1_2.cam2
      if L4_2 then
        goto lbl_107
      end
    end
    L4_2 = A1_2.cam1
    ::lbl_107::
    L5_2 = A1_2.camCoords
    L5_2 = L5_2.x
    L6_2 = A1_2.camCoords
    L6_2 = L6_2.y
    L7_2 = A1_2.camCoords
    L7_2 = L7_2.z
    L3_2(L4_2, L5_2, L6_2, L7_2)
    L3_2 = PointCamAtCoord
    if L2_2 then
      L4_2 = A1_2.cam2
      if L4_2 then
        goto lbl_121
      end
    end
    L4_2 = A1_2.cam1
    ::lbl_121::
    L5_2 = A1_2.coords
    L5_2 = L5_2.x
    L6_2 = A1_2.coords
    L6_2 = L6_2.y
    L7_2 = A1_2.coords
    L7_2 = L7_2.z
    L3_2(L4_2, L5_2, L6_2, L7_2)
    L3_2 = SetCamActive
    if L2_2 then
      L4_2 = A1_2.cam2
      if L4_2 then
        goto lbl_135
      end
    end
    L4_2 = A1_2.cam1
    ::lbl_135::
    L5_2 = true
    L3_2(L4_2, L5_2)
    L3_2 = SetCamActive
    if L2_2 then
      L4_2 = A1_2.cam1
      if L4_2 then
        goto lbl_144
      end
    end
    L4_2 = A1_2.cam2
    ::lbl_144::
    L5_2 = false
    L3_2(L4_2, L5_2)
    L3_2 = SetCamActiveWithInterp
    if L2_2 then
      L4_2 = A1_2.cam2
      if L4_2 then
        goto lbl_153
      end
    end
    L4_2 = A1_2.cam1
    ::lbl_153::
    if L2_2 then
      L5_2 = A1_2.cam1
      if L5_2 then
        goto lbl_159
      end
    end
    L5_2 = A1_2.cam2
    ::lbl_159::
    L6_2 = 450
    L7_2 = true
    L8_2 = true
    L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
    L3_2 = A1_2.cam1
    L4_2 = A1_2.cam2
    return L3_2, L4_2
  end
end
L0_1.ParkingCamera = L1_1
function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2
  L0_2 = {}
  L1_2 = "A"
  L2_2 = "B"
  L3_2 = "C"
  L4_2 = "D"
  L5_2 = "E"
  L6_2 = "F"
  L7_2 = "G"
  L8_2 = "H"
  L9_2 = "I"
  L10_2 = "J"
  L11_2 = "K"
  L12_2 = "L"
  L13_2 = "M"
  L14_2 = "N"
  L15_2 = "O"
  L16_2 = "P"
  L17_2 = "Q"
  L18_2 = "R"
  L19_2 = "S"
  L20_2 = "T"
  L21_2 = "U"
  L22_2 = "V"
  L23_2 = "W"
  L24_2 = "X"
  L25_2 = "Y"
  L26_2 = "Z"
  L0_2[1] = L1_2
  L0_2[2] = L2_2
  L0_2[3] = L3_2
  L0_2[4] = L4_2
  L0_2[5] = L5_2
  L0_2[6] = L6_2
  L0_2[7] = L7_2
  L0_2[8] = L8_2
  L0_2[9] = L9_2
  L0_2[10] = L10_2
  L0_2[11] = L11_2
  L0_2[12] = L12_2
  L0_2[13] = L13_2
  L0_2[14] = L14_2
  L0_2[15] = L15_2
  L0_2[16] = L16_2
  L0_2[17] = L17_2
  L0_2[18] = L18_2
  L0_2[19] = L19_2
  L0_2[20] = L20_2
  L0_2[21] = L21_2
  L0_2[22] = L22_2
  L0_2[23] = L23_2
  L0_2[24] = L24_2
  L0_2[25] = L25_2
  L0_2[26] = L26_2
  L1_2 = math
  L1_2 = L1_2.random
  L2_2 = #L0_2
  L1_2 = L1_2(L2_2)
  L1_2 = L0_2[L1_2]
  return L1_2
end
L0_1.RandomLetter = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  if not A1_2 then
    L2_2 = error
    L3_2 = "No plateFormat option configured in the garage!"
    return L2_2(L3_2)
  end
  L2_2 = A1_2
  L3_2 = ""
  L4_2 = false
  while true do
    L5_2 = 0
    L6_2 = 1
    L7_2 = #L2_2
    L8_2 = 1
    for L9_2 = L6_2, L7_2, L8_2 do
      L11_2 = L2_2
      L10_2 = L2_2.sub
      L12_2 = L9_2
      L13_2 = L9_2
      L10_2 = L10_2(L11_2, L12_2, L13_2)
      if " " == L10_2 then
        L11_2 = L3_2
        L12_2 = " "
        L11_2 = L11_2 .. L12_2
        L3_2 = L11_2
        L5_2 = L5_2 + 1
      else
        L11_2 = tonumber
        L12_2 = L10_2
        L11_2 = L11_2(L12_2)
        if L11_2 then
          L11_2 = tostring
          L12_2 = math
          L12_2 = L12_2.random
          L13_2 = 0
          L14_2 = 9
          L12_2, L13_2, L14_2 = L12_2(L13_2, L14_2)
          L11_2 = L11_2(L12_2, L13_2, L14_2)
          L12_2 = L3_2
          L13_2 = L11_2
          L12_2 = L12_2 .. L13_2
          L3_2 = L12_2
          L5_2 = L5_2 + 1
        else
          L11_2 = library
          L11_2 = L11_2.RandomLetter
          L11_2 = L11_2()
          L12_2 = L3_2
          L13_2 = L11_2
          L12_2 = L12_2 .. L13_2
          L3_2 = L12_2
          L5_2 = L5_2 + 1
        end
      end
    end
    if L5_2 < 8 then
      L6_2 = 1
      L7_2 = 8
      L7_2 = L7_2 - L5_2
      L8_2 = 1
      for L9_2 = L6_2, L7_2, L8_2 do
        L10_2 = L9_2 % 2
        if 1 == L10_2 then
          L10_2 = L3_2
          L11_2 = tostring
          L12_2 = math
          L12_2 = L12_2.random
          L13_2 = 0
          L14_2 = 9
          L12_2, L13_2, L14_2 = L12_2(L13_2, L14_2)
          L11_2 = L11_2(L12_2, L13_2, L14_2)
          L10_2 = L10_2 .. L11_2
          L3_2 = L10_2
        else
          L10_2 = L3_2
          L11_2 = library
          L11_2 = L11_2.RandomLetter
          L11_2 = L11_2()
          L10_2 = L10_2 .. L11_2
          L3_2 = L10_2
        end
      end
    elseif L5_2 > 8 then
      L7_2 = L3_2
      L6_2 = L3_2.sub
      L8_2 = 1
      L9_2 = 8
      L6_2 = L6_2(L7_2, L8_2, L9_2)
      L3_2 = L6_2
    end
    if A0_2 then
      L6_2 = string
      L6_2 = L6_2.len
      L7_2 = A0_2
      L6_2 = L6_2(L7_2)
      if L6_2 < 8 then
        L7_2 = string
        L7_2 = L7_2.sub
        L8_2 = L3_2
        L9_2 = L6_2 + 1
        L7_2 = L7_2(L8_2, L9_2)
        L8_2 = A0_2
        L9_2 = L7_2
        L8_2 = L8_2 .. L9_2
        L3_2 = L8_2
      end
    end
    L6_2 = library
    L6_2 = L6_2.Callback
    L7_2 = "vms_garagesv2:isPlateTaken"
    function L8_2(A0_3)
      local L1_3
      if not A0_3 then
        L1_3 = true
        L4_2 = L1_3
      end
    end
    L9_2 = L3_2
    L6_2(L7_2, L8_2, L9_2)
    L6_2 = Citizen
    L6_2 = L6_2.Wait
    L7_2 = 100
    L6_2(L7_2)
    if L4_2 then
      break
    end
    L3_2 = ""
    L6_2 = Citizen
    L6_2 = L6_2.Wait
    L7_2 = 100
    L6_2(L7_2)
  end
  return L3_2
end
L0_1.GeneratePlate = L1_1
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
  if not L5_2 then
    L5_2 = A0_2.vehicleOwner
    L5_2 = not L5_2
    return L5_2
  end
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
library = L0_1
--   ____  _____ ____ ______   ______ _____ _____ ____     ___     _____ _____  _______ ____    ______   __  _______  __    _    ____    _____ ____  ___ _  _____ _____ ___  _   _    _        _     _   _                  ____  _ _                       _                 _______ _____ _  __     _   _ ____      _ ____ _____ _____
--  |  _ \| ____/ ___|  _ \ \ / /  _ \_   _| ____|  _ \   ( _ )   |  ___|_ _\ \/ / ____|  _ \  | __ ) \ / / |  ___\ \/ /   / \  |  _ \  |  ___|  _ \|_ _| |/ /_ _|_   _/ _ \| \ | |  / \      | |__ | |_| |_ _ __  ___ _   / / /_| (_)___  ___ ___  _ __ __| |  __ _  __ _   / / ____|_   _| |/ /__ _| | | | ___|  __| | ___|___  |___  |
--  | | | |  _|| |   | |_) \ V /| |_) || | |  _| | | | |  / _ \/\ | |_   | | \  /|  _| | | | | |  _ \\ V /  | |_   \  /   / _ \ | |_) | | |_  | |_) || || ' / | |  | || | | |  \| | / _ \     | '_ \| __| __| '_ \/ __(_) / / / _` | / __|/ __/ _ \| '__/ _` | / _` |/ _` | / /|  _|   | | | ' // _` | |_| |___ \ / _` |___ \  / /   / /
--  | |_| | |__| |___|  _ < | | |  __/ | | | |___| |_| | | (_>  < |  _|  | | /  \| |___| |_| | | |_) || |   |  _|  /  \  / ___ \|  __/  |  _| |  _ < | || . \ | |  | || |_| | |\  |/ ___ \ _  | | | | |_| |_| |_) \__ \_ / / / (_| | \__ \ (_| (_) | | | (_| || (_| | (_| |/ / | |___  | | | . \ (_| |  _  |___) | (_| |___) |/ /   / /
--  |____/|_____\____|_| \_\|_| |_|    |_| |_____|____/   \___/\/ |_|   |___/_/\_\_____|____/  |____/ |_|   |_|   /_/\_\/_/   \_\_|     |_|   |_| \_\___|_|\_\___| |_| \___/|_| \_/_/   \_(_) |_| |_|\__|\__| .__/|___(_)_/_/ \__,_|_|___/\___\___/|_|  \__,_(_)__, |\__, /_/  |_____| |_| |_|\_\__, |_| |_|____/ \__,_|____//_/   /_/
--                                                                                                                                                                                                          |_|                                                |___/ |___/                         |_|
-- https://discord.gg/ETKqH5d577
