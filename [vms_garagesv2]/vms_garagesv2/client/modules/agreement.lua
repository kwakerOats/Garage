--   ____  _____ ____ ______   ______ _____ _____ ____     ___     _____ _____  _______ ____    ______   __  _______  __    _    ____    _____ ____  ___ _  _____ _____ ___  _   _    _        _     _   _                  ____  _ _                       _                 _______ _____ _  __     _   _ ____      _ ____ _____ _____
--  |  _ \| ____/ ___|  _ \ \ / /  _ \_   _| ____|  _ \   ( _ )   |  ___|_ _\ \/ / ____|  _ \  | __ ) \ / / |  ___\ \/ /   / \  |  _ \  |  ___|  _ \|_ _| |/ /_ _|_   _/ _ \| \ | |  / \      | |__ | |_| |_ _ __  ___ _   / / /_| (_)___  ___ ___  _ __ __| |  __ _  __ _   / / ____|_   _| |/ /__ _| | | | ___|  __| | ___|___  |___  |
--  | | | |  _|| |   | |_) \ V /| |_) || | |  _| | | | |  / _ \/\ | |_   | | \  /|  _| | | | | |  _ \\ V /  | |_   \  /   / _ \ | |_) | | |_  | |_) || || ' / | |  | || | | |  \| | / _ \     | '_ \| __| __| '_ \/ __(_) / / / _` | / __|/ __/ _ \| '__/ _` | / _` |/ _` | / /|  _|   | | | ' // _` | |_| |___ \ / _` |___ \  / /   / /
--  | |_| | |__| |___|  _ < | | |  __/ | | | |___| |_| | | (_>  < |  _|  | | /  \| |___| |_| | | |_) || |   |  _|  /  \  / ___ \|  __/  |  _| |  _ < | || . \ | |  | || |_| | |\  |/ ___ \ _  | | | | |_| |_| |_) \__ \_ / / / (_| | \__ \ (_| (_) | | | (_| || (_| | (_| |/ / | |___  | | | . \ (_| |  _  |___) | (_| |___) |/ /   / /
--  |____/|_____\____|_| \_\|_| |_|    |_| |_____|____/   \___/\/ |_|   |___/_/\_\_____|____/  |____/ |_|   |_|   /_/\_\/_/   \_\_|     |_|   |_| \_\___|_|\_\___| |_| \___/|_| \_/_/   \_(_) |_| |_|\__|\__| .__/|___(_)_/_/ \__,_|_|___/\___\___/|_|  \__,_(_)__, |\__, /_/  |_____| |_| |_|\_\__, |_| |_|____/ \__,_|____//_/   /_/
--                                                                                                                                                                                                          |_|                                                |___/ |___/                         |_|
-- https://discord.gg/ETKqH5d577

local L0_1, L1_1, L2_1, L3_1
L0_1 = Config
L0_1 = L0_1.UseSaleAgreement
if not L0_1 then
  return
end
L0_1 = true
L1_1 = Config
L1_1 = L1_1.UseSaleAgreementCommand
if L1_1 then
  L1_1 = RegisterCommand
  L2_1 = Config
  L2_1 = L2_1.SaleAgreementCommand
  function L3_1()
    local L0_2, L1_2
    L0_2 = openAgreement
    L0_2()
  end
  L1_1(L2_1, L3_1)
end
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L1_2 = waitingForLoadAfterRestart
  if L1_2 then
    return
  end
  if A0_2 then
    L1_2 = {}
    L2_2 = A0_2.sellerId
    L1_2.sellerId = L2_2
    L2_2 = A0_2.selectedBuyer
    L1_2.selectedBuyer = L2_2
    L2_2 = A0_2.resellData
    L2_2 = L2_2.sellerName
    L1_2.sellerName = L2_2
    L2_2 = A0_2.resellData
    L2_2 = L2_2.price
    L1_2.price = L2_2
    L2_2 = A0_2.resellData
    L2_2 = L2_2.date
    L1_2.date = L2_2
    L2_2 = A0_2.resellData
    L2_2 = L2_2.vehiclePlate
    L1_2.vehiclePlate = L2_2
    L2_2 = A0_2.resellData
    L2_2 = L2_2.paymentMethod
    L1_2.paymentMethod = L2_2
    agreementData = L1_2
    L1_2 = library
    L1_2 = L1_2.PlayAnimation
    L2_2 = PlayerPedId
    L2_2 = L2_2()
    L3_2 = "missfam4"
    L4_2 = "base"
    L5_2 = -1
    L6_2 = 1
    L7_2 = {}
    L8_2 = "p_amb_clipboard_01"
    L9_2 = nil
    L10_2 = true
    L11_2 = {}
    L12_2 = PlayerPedId
    L12_2 = L12_2()
    L11_2.attachTo = L12_2
    L12_2 = GetPedBoneIndex
    L13_2 = PlayerPedId
    L13_2 = L13_2()
    L14_2 = 36029
    L12_2 = L12_2(L13_2, L14_2)
    L11_2.boneIndex = L12_2
    L12_2 = {}
    L13_2 = 0.16
    L14_2 = 0.08
    L15_2 = 0.1
    L16_2 = -130.0
    L17_2 = -50.0
    L18_2 = 0.0
    L12_2[1] = L13_2
    L12_2[2] = L14_2
    L12_2[3] = L15_2
    L12_2[4] = L16_2
    L12_2[5] = L17_2
    L12_2[6] = L18_2
    L11_2.placement = L12_2
    L12_2 = true
    L7_2[1] = L8_2
    L7_2[2] = L9_2
    L7_2[3] = L10_2
    L7_2[4] = L11_2
    L7_2[5] = L12_2
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
    currentMenu = "agreement"
    L1_2 = SetNuiFocus
    L2_2 = true
    L3_2 = true
    L1_2(L2_2, L3_2)
    L1_2 = SendNUIMessage
    L2_2 = {}
    L2_2.action = "openAgreement"
    L2_2.type = "buyer"
    L2_2.data = A0_2
    L3_2 = playerName
    L2_2.characterName = L3_2
    L1_2(L2_2)
    return
  end
  L1_2 = L0_1
  if not L1_2 then
    L1_2 = CL
    L1_2 = L1_2.Notification
    L2_2 = TRANSLATE
    L3_2 = "notify.wait"
    L2_2 = L2_2(L3_2)
    L3_2 = 2500
    L4_2 = "info"
    return L1_2(L2_2, L3_2, L4_2)
  end
  L1_2 = false
  L0_1 = L1_2
  L1_2 = library
  L1_2 = L1_2.Callback
  L2_2 = "vms_garagesv2:getMyVehicles"
  function L3_2(A0_3, A1_3, A2_3)
    local L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3
    if not A2_3 then
      L3_3 = CL
      L3_3 = L3_3.Notification
      L4_3 = TRANSLATE
      L5_3 = "notify.dont_have_agreement_item"
      L4_3 = L4_3(L5_3)
      L5_3 = 4500
      L6_3 = "error"
      L3_3(L4_3, L5_3, L6_3)
      return
    end
    if A0_3 and A1_3 then
      L3_3 = CL
      L3_3 = L3_3.GetClosestPlayers
      L3_3 = L3_3()
      L4_3 = {}
      if not L3_3 then
        L5_3 = CL
        L5_3 = L5_3.Notification
        L6_3 = TRANSLATE
        L7_3 = "notify.no_players_around"
        L6_3 = L6_3(L7_3)
        L7_3 = 3000
        L8_3 = "error"
        L5_3(L6_3, L7_3, L8_3)
        return
      end
      L5_3 = pairs
      L6_3 = L3_3
      L5_3, L6_3, L7_3, L8_3 = L5_3(L6_3)
      for L9_3, L10_3 in L5_3, L6_3, L7_3, L8_3 do
        L11_3 = #L4_3
        L11_3 = L11_3 + 1
        L12_3 = GetPlayerServerId
        L13_3 = L10_3
        L12_3 = L12_3(L13_3)
        L4_3[L11_3] = L12_3
      end
      L5_3 = library
      L5_3 = L5_3.PlayAnimation
      L6_3 = PlayerPedId
      L6_3 = L6_3()
      L7_3 = "missfam4"
      L8_3 = "base"
      L9_3 = -1
      L10_3 = 1
      L11_3 = {}
      L12_3 = "p_amb_clipboard_01"
      L13_3 = nil
      L14_3 = true
      L15_3 = {}
      L16_3 = PlayerPedId
      L16_3 = L16_3()
      L15_3.attachTo = L16_3
      L16_3 = GetPedBoneIndex
      L17_3 = PlayerPedId
      L17_3 = L17_3()
      L18_3 = 36029
      L16_3 = L16_3(L17_3, L18_3)
      L15_3.boneIndex = L16_3
      L16_3 = {}
      L17_3 = 0.16
      L18_3 = 0.08
      L19_3 = 0.1
      L20_3 = -130.0
      L21_3 = -50.0
      L22_3 = 0.0
      L16_3[1] = L17_3
      L16_3[2] = L18_3
      L16_3[3] = L19_3
      L16_3[4] = L20_3
      L16_3[5] = L21_3
      L16_3[6] = L22_3
      L15_3.placement = L16_3
      L16_3 = true
      L11_3[1] = L12_3
      L11_3[2] = L13_3
      L11_3[3] = L14_3
      L11_3[4] = L15_3
      L11_3[5] = L16_3
      L5_3(L6_3, L7_3, L8_3, L9_3, L10_3, L11_3)
      L5_3 = nil
      L6_3 = CL
      L6_3 = L6_3.GetPlayerJob
      L7_3 = "name"
      L6_3 = L6_3(L7_3)
      L7_3 = tostring
      L8_3 = CL
      L8_3 = L8_3.GetPlayerJob
      L9_3 = "grade"
      L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3 = L8_3(L9_3)
      L7_3 = L7_3(L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3)
      L8_3 = Config
      L8_3 = L8_3.CompanyGrades
      L8_3 = L8_3[L6_3]
      if L8_3 then
        L8_3 = Config
        L8_3 = L8_3.CompanyGrades
        L8_3 = L8_3[L6_3]
        L8_3 = L8_3[L7_3]
        if L8_3 then
          L8_3 = Config
          L8_3 = L8_3.CompanyGrades
          L8_3 = L8_3[L6_3]
          L8_3 = L8_3[L7_3]
          L8_3 = L8_3.isBoss
          if L8_3 then
            L8_3 = {}
            L9_3 = CL
            L9_3 = L9_3.GetPlayerJob
            L10_3 = "label"
            L9_3 = L9_3(L10_3)
            L8_3.label = L9_3
            L8_3.name = L6_3
            L5_3 = L8_3
          end
        end
      end
      L8_3 = nil
      L9_3 = CL
      L9_3 = L9_3.GetPlayerJob
      L10_3 = "name"
      L9_3 = L9_3(L10_3)
      L10_3 = tostring
      L11_3 = CL
      L11_3 = L11_3.GetPlayerJob
      L12_3 = "grade"
      L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3 = L11_3(L12_3)
      L10_3 = L10_3(L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3)
      if L9_3 then
        L11_3 = Config
        L11_3 = L11_3.GangGrades
        L11_3 = L11_3[L9_3]
        if L11_3 then
          L11_3 = Config
          L11_3 = L11_3.GangGrades
          L11_3 = L11_3[L9_3]
          L11_3 = L11_3[L10_3]
          if L11_3 then
            L11_3 = Config
            L11_3 = L11_3.GangGrades
            L11_3 = L11_3[L9_3]
            L11_3 = L11_3[L10_3]
            L11_3 = L11_3.isBoss
            if L11_3 then
              L11_3 = {}
              L12_3 = CL
              L12_3 = L12_3.GetPlayerGang
              L13_3 = "label"
              L12_3 = L12_3(L13_3)
              L11_3.label = L12_3
              L11_3.name = L9_3
              L8_3 = L11_3
            end
          end
        end
      end
      currentMenu = "agreement"
      L11_3 = SetNuiFocus
      L12_3 = true
      L13_3 = true
      L11_3(L12_3, L13_3)
      L11_3 = SendNUIMessage
      L12_3 = {}
      L12_3.action = "openAgreement"
      L12_3.type = "seller"
      L12_3.myVehiclesList = A1_3
      L12_3.players = L4_3
      L12_3.companies = L5_3
      L12_3.gangs = L8_3
      L13_3 = playerName
      L12_3.characterName = L13_3
      L11_3(L12_3)
    else
      L3_3 = CL
      L3_3 = L3_3.Notification
      L4_3 = TRANSLATE
      L5_3 = "notify.dont_have_any_vehicle"
      L4_3 = L4_3(L5_3)
      L5_3 = 4500
      L6_3 = "error"
      L3_3(L4_3, L5_3, L6_3)
    end
  end
  L1_2(L2_2, L3_2)
  L1_2 = Citizen
  L1_2 = L1_2.CreateThread
  function L2_2()
    local L0_3, L1_3
    L0_3 = Wait
    L1_3 = 4500
    L0_3(L1_3)
    L0_3 = true
    L0_1 = L0_3
  end
  L1_2(L2_2)
end
openAgreement = L1_1
function L1_1()
  local L0_2, L1_2, L2_2
  L0_2 = SendNUIMessage
  L1_2 = {}
  L1_2.action = "closeAgreement"
  L0_2(L1_2)
  L0_2 = library
  L0_2 = L0_2.StopAnimation
  L1_2 = PlayerPedId
  L1_2, L2_2 = L1_2()
  L0_2(L1_2, L2_2)
  L0_2 = CL
  L0_2 = L0_2.Hud
  L0_2 = L0_2.Enable
  L0_2()
  L0_2 = SetNuiFocus
  L1_2 = false
  L2_2 = false
  L0_2(L1_2, L2_2)
  currentMenu = nil
  L0_2 = {}
  agreementData = L0_2
end
closeAgreement = L1_1
L1_1 = RegisterNetEvent
L2_1 = "vms_garagesv2:openAgreement"
function L3_1()
  local L0_2, L1_2
  L0_2 = openAgreement
  L0_2()
end
L1_1(L2_1, L3_1)
L1_1 = exports
L2_1 = "openAgreement"
L3_1 = openAgreement
L1_1(L2_1, L3_1)
--   ____  _____ ____ ______   ______ _____ _____ ____     ___     _____ _____  _______ ____    ______   __  _______  __    _    ____    _____ ____  ___ _  _____ _____ ___  _   _    _        _     _   _                  ____  _ _                       _                 _______ _____ _  __     _   _ ____      _ ____ _____ _____
--  |  _ \| ____/ ___|  _ \ \ / /  _ \_   _| ____|  _ \   ( _ )   |  ___|_ _\ \/ / ____|  _ \  | __ ) \ / / |  ___\ \/ /   / \  |  _ \  |  ___|  _ \|_ _| |/ /_ _|_   _/ _ \| \ | |  / \      | |__ | |_| |_ _ __  ___ _   / / /_| (_)___  ___ ___  _ __ __| |  __ _  __ _   / / ____|_   _| |/ /__ _| | | | ___|  __| | ___|___  |___  |
--  | | | |  _|| |   | |_) \ V /| |_) || | |  _| | | | |  / _ \/\ | |_   | | \  /|  _| | | | | |  _ \\ V /  | |_   \  /   / _ \ | |_) | | |_  | |_) || || ' / | |  | || | | |  \| | / _ \     | '_ \| __| __| '_ \/ __(_) / / / _` | / __|/ __/ _ \| '__/ _` | / _` |/ _` | / /|  _|   | | | ' // _` | |_| |___ \ / _` |___ \  / /   / /
--  | |_| | |__| |___|  _ < | | |  __/ | | | |___| |_| | | (_>  < |  _|  | | /  \| |___| |_| | | |_) || |   |  _|  /  \  / ___ \|  __/  |  _| |  _ < | || . \ | |  | || |_| | |\  |/ ___ \ _  | | | | |_| |_| |_) \__ \_ / / / (_| | \__ \ (_| (_) | | | (_| || (_| | (_| |/ / | |___  | | | . \ (_| |  _  |___) | (_| |___) |/ /   / /
--  |____/|_____\____|_| \_\|_| |_|    |_| |_____|____/   \___/\/ |_|   |___/_/\_\_____|____/  |____/ |_|   |_|   /_/\_\/_/   \_\_|     |_|   |_| \_\___|_|\_\___| |_| \___/|_| \_/_/   \_(_) |_| |_|\__|\__| .__/|___(_)_/_/ \__,_|_|___/\___\___/|_|  \__,_(_)__, |\__, /_/  |_____| |_| |_|\_\__, |_| |_|____/ \__,_|____//_/   /_/
--                                                                                                                                                                                                          |_|                                                |___/ |___/                         |_|
-- https://discord.gg/ETKqH5d577
