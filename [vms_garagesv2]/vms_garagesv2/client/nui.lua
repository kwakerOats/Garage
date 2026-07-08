--   ____  _____ ____ ______   ______ _____ _____ ____     ___     _____ _____  _______ ____    ______   __  _______  __    _    ____    _____ ____  ___ _  _____ _____ ___  _   _    _        _     _   _                  ____  _ _                       _                 _______ _____ _  __     _   _ ____      _ ____ _____ _____
--  |  _ \| ____/ ___|  _ \ \ / /  _ \_   _| ____|  _ \   ( _ )   |  ___|_ _\ \/ / ____|  _ \  | __ ) \ / / |  ___\ \/ /   / \  |  _ \  |  ___|  _ \|_ _| |/ /_ _|_   _/ _ \| \ | |  / \      | |__ | |_| |_ _ __  ___ _   / / /_| (_)___  ___ ___  _ __ __| |  __ _  __ _   / / ____|_   _| |/ /__ _| | | | ___|  __| | ___|___  |___  |
--  | | | |  _|| |   | |_) \ V /| |_) || | |  _| | | | |  / _ \/\ | |_   | | \  /|  _| | | | | |  _ \\ V /  | |_   \  /   / _ \ | |_) | | |_  | |_) || || ' / | |  | || | | |  \| | / _ \     | '_ \| __| __| '_ \/ __(_) / / / _` | / __|/ __/ _ \| '__/ _` | / _` |/ _` | / /|  _|   | | | ' // _` | |_| |___ \ / _` |___ \  / /   / /
--  | |_| | |__| |___|  _ < | | |  __/ | | | |___| |_| | | (_>  < |  _|  | | /  \| |___| |_| | | |_) || |   |  _|  /  \  / ___ \|  __/  |  _| |  _ < | || . \ | |  | || |_| | |\  |/ ___ \ _  | | | | |_| |_| |_) \__ \_ / / / (_| | \__ \ (_| (_) | | | (_| || (_| | (_| |/ / | |___  | | | . \ (_| |  _  |___) | (_| |___) |/ /   / /
--  |____/|_____\____|_| \_\|_| |_|    |_| |_____|____/   \___/\/ |_|   |___/_/\_\_____|____/  |____/ |_|   |_|   /_/\_\/_/   \_\_|     |_|   |_| \_\___|_|\_\___| |_| \___/|_| \_/_/   \_(_) |_| |_|\__|\__| .__/|___(_)_/_/ \__,_|_|___/\___\___/|_|  \__,_(_)__, |\__, /_/  |_____| |_| |_|\_\__, |_| |_|____/ \__,_|____//_/   /_/
--                                                                                                                                                                                                          |_|                                                |___/ |___/                         |_|
-- https://discord.gg/ETKqH5d577

local L0_1, L1_1, L2_1
L0_1 = RegisterNUICallback
L1_1 = "loaded"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = SendNUIMessage
  L3_2 = {}
  L3_2.action = "loaded"
  L4_2 = Config
  L4_2 = L4_2.Language
  L3_2.lang = L4_2
  L4_2 = Config
  L4_2 = L4_2.AgreementPaymentMethods
  L3_2.agreementPaymentMethods = L4_2
  L4_2 = Config
  L4_2 = L4_2.AutomaticSellPercentageFromPrice
  L3_2.sellPercentage = L4_2
  L4_2 = Config
  L4_2 = L4_2.AllowImpoundLocator
  L3_2.impoundLocator = L4_2
  L4_2 = Config
  L4_2 = L4_2.PriceOfLocationCheck
  L3_2.priceOfLocation = L4_2
  L4_2 = Config
  L4_2 = L4_2.VehicleTypes
  L3_2.vehicleTypes = L4_2
  L4_2 = Config
  L4_2 = L4_2.AllowJobImpoundsTakeVehWithoutPaying
  L3_2.allowJobImpoundsTakeVehWithoutPaying = L4_2
  L4_2 = Config
  L4_2 = L4_2.AllowTransferBetweenGarages
  L3_2.allowTransferBetweenGarages = L4_2
  L4_2 = Config
  L4_2 = L4_2.TransferBetweenGaragesPrice
  L3_2.transferBetweenGaragesPrice = L4_2
  L2_2(L3_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNuiCallback
L1_1 = "close"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = currentMenu
  if "paystation" == L1_2 then
    L1_2 = closePayStation
    L1_2()
  else
    L1_2 = currentMenu
    if "parkingRent" == L1_2 then
      L1_2 = closeParkingRent
      L1_2()
    else
      L1_2 = currentMenu
      if "agreement" == L1_2 then
        L1_2 = closeAgreement
        L1_2()
      else
        L1_2 = currentMenu
        if "impound" == L1_2 then
          L1_2 = closeImpound
          L1_2()
        else
          L1_2 = currentMenu
          if "garage" == L1_2 then
            L1_2 = closeGarage
            L1_2()
          else
            L1_2 = currentMenu
            if "purchase" == L1_2 then
              L1_2 = closePurchaseMenu
              L1_2()
            else
              L1_2 = currentMenu
              if "management" == L1_2 then
                L1_2 = closeManagementMenu
                L1_2()
              else
                L1_2 = currentMenu
                if "tow" == L1_2 then
                  L1_2 = closeTowMenu
                  L1_2()
                else
                  L1_2 = currentMenu
                  if "bill" == L1_2 then
                    L1_2 = TriggerServerEvent
                    L2_2 = "vms_garagesv2:sv:payBill"
                    L3_2 = "cancel"
                    L4_2 = nil
                    L5_2 = billFrom
                    L6_2 = billCache
                    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
                    L1_2 = SendNUIMessage
                    L2_2 = {}
                    L2_2.action = "closeReceipt"
                    L1_2(L2_2)
                    billFrom = nil
                    L1_2 = {}
                    billCache = L1_2
                  else
                    L1_2 = currentMenu
                    if "parking_creator" == L1_2 then
                      L1_2 = TriggerServerEvent
                      L2_2 = "vms_garagesv2:sv:closedParkingCreator"
                      L1_2(L2_2)
                      L1_2 = Creator
                      L1_2 = L1_2.CloseCompletly
                      L1_2()
                      L1_2 = SendNUIMessage
                      L2_2 = {}
                      L2_2.action = "closeParkingCreator"
                      L1_2(L2_2)
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
  end
  L1_2 = CL
  L1_2 = L1_2.Hud
  L1_2 = L1_2.Enable
  L1_2()
  L1_2 = SetNuiFocus
  L2_2 = false
  L3_2 = false
  L1_2(L2_2, L3_2)
  currentMenu = nil
  L1_2 = {}
  DATACACHE = L1_2
  companyVehicles = nil
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNuiCallback
L1_1 = "findVehicle"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = garageZone
  if not L1_2 then
    return
  end
  L1_2 = currentMenu
  if "paystation" ~= L1_2 then
    return
  end
  L1_2 = A0_2.licensePlate
  if not L1_2 then
    return
  end
  L1_2 = string
  L1_2 = L1_2.upper
  L2_2 = A0_2.licensePlate
  L1_2 = L1_2(L2_2)
  L2_2 = Config
  L2_2 = L2_2.Garages
  L3_2 = garageZone
  L2_2 = L2_2[L3_2]
  L3_2 = nil
  L4_2 = nil
  L5_2 = pairs
  L6_2 = Config
  L6_2 = L6_2.Garages
  L7_2 = garageZone
  L6_2 = L6_2[L7_2]
  L6_2 = L6_2.parkingSpaces
  L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
  for L9_2, L10_2 in L5_2, L6_2, L7_2, L8_2 do
    if L10_2 then
      L11_2 = L10_2.data
      if L11_2 then
        L11_2 = L10_2.data
        L11_2 = L11_2.plate
        if L11_2 == L1_2 then
          L4_2 = L9_2
          L3_2 = L10_2
          break
        end
      end
    end
  end
  if not L3_2 then
    L5_2 = CL
    L5_2 = L5_2.Notification
    L6_2 = TRANSLATE
    L7_2 = "notify.pay_station:not_found"
    L6_2 = L6_2(L7_2)
    L7_2 = 5000
    L8_2 = "info"
    L5_2(L6_2, L7_2, L8_2)
    return
  end
  if L3_2 then
    L5_2 = math
    L5_2 = L5_2.floor
    L6_2 = tonumber
    L7_2 = GlobalState
    L7_2 = L7_2.OS_TIME
    L6_2 = L6_2(L7_2)
    L7_2 = tonumber
    L8_2 = L3_2.data
    L8_2 = L8_2.parking_date
    L7_2 = L7_2(L8_2)
    L6_2 = L6_2 - L7_2
    L6_2 = L6_2 / 3600
    L5_2 = L5_2(L6_2)
    L6_2 = {}
    L6_2.type = "payStation"
    L6_2.spotId = L4_2
    L6_2.licensePlate = L1_2
    L7_2 = tonumber
    L8_2 = GlobalState
    L8_2 = L8_2.OS_TIME
    L7_2 = L7_2(L8_2)
    L6_2.currentTime = L7_2
    L7_2 = tonumber
    L8_2 = L3_2.data
    L8_2 = L8_2.parking_date
    L7_2 = L7_2(L8_2)
    L6_2.timestamp = L7_2
    L7_2 = L2_2.pricePerHour
    L7_2 = L5_2 * L7_2
    L6_2.price = L7_2
    DATACACHE = L6_2
    L6_2 = SendNUIMessage
    L7_2 = {}
    L7_2.action = "openParkingTicket"
    L7_2.licensePlate = L1_2
    L8_2 = tonumber
    L9_2 = GlobalState
    L9_2 = L9_2.OS_TIME
    L8_2 = L8_2(L9_2)
    L7_2.currentTime = L8_2
    L8_2 = tonumber
    L9_2 = L3_2.data
    L9_2 = L9_2.parking_date
    L8_2 = L8_2(L9_2)
    L7_2.timestamp = L8_2
    L7_2.hoursCount = L5_2
    L8_2 = L2_2.pricePerHour
    L8_2 = L5_2 * L8_2
    L7_2.price = L8_2
    L6_2(L7_2)
  end
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNuiCallback
L1_1 = "payStation"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = garageZone
  if not L1_2 then
    return
  end
  L1_2 = currentMenu
  if "paystation" ~= L1_2 then
    return
  end
  L1_2 = DATACACHE
  L1_2 = L1_2.licensePlate
  if L1_2 then
    L1_2 = A0_2.type
    if L1_2 then
      L1_2 = TriggerServerEvent
      L2_2 = "vms_garagesv2:payForParking"
      L3_2 = A0_2.type
      L4_2 = DATACACHE
      L5_2 = garageZone
      L1_2(L2_2, L3_2, L4_2, L5_2)
    end
  end
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNuiCallback
L1_1 = "parkingRent"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = garageZone
  if not L1_2 then
    return
  end
  L1_2 = currentMenu
  if "parkingRent" ~= L1_2 then
    return
  end
  L1_2 = A0_2.action
  if L1_2 then
    L1_2 = A0_2.action
    if "switch" == L1_2 then
      L1_2 = A0_2.direction
      if "left" == L1_2 then
        L1_2 = camData
        L1_2 = L1_2.parkingSlots
        L2_2 = camData
        L2_2 = L2_2.currentSlotId
        L2_2 = L2_2 - 1
        L1_2 = L1_2[L2_2]
        if L1_2 then
          L1_2 = camData
          L2_2 = camData
          L2_2 = L2_2.currentSlotId
          L2_2 = L2_2 - 1
          L1_2.currentSlotId = L2_2
        else
          L1_2 = camData
          L2_2 = camData
          L2_2 = L2_2.parkingSlots
          L2_2 = #L2_2
          L1_2.currentSlotId = L2_2
        end
        L1_2 = library
        L1_2 = L1_2.ParkingCamera
        L2_2 = "switch"
        L3_2 = {}
        L4_2 = rCamera1
        L3_2.cam1 = L4_2
        L4_2 = rCamera2
        L3_2.cam2 = L4_2
        L4_2 = camData
        L4_2 = L4_2.parkingSlots
        L5_2 = camData
        L5_2 = L5_2.currentSlotId
        L4_2 = L4_2[L5_2]
        L4_2 = L4_2.camCoords
        L3_2.camCoords = L4_2
        L4_2 = camData
        L4_2 = L4_2.parkingSlots
        L5_2 = camData
        L5_2 = L5_2.currentSlotId
        L4_2 = L4_2[L5_2]
        L4_2 = L4_2.coords
        L3_2.coords = L4_2
        L1_2, L2_2 = L1_2(L2_2, L3_2)
        rCamera2 = L2_2
        rCamera1 = L1_2
        L1_2 = Config
        L1_2 = L1_2.Garages
        L2_2 = garageZone
        L1_2 = L1_2[L2_2]
        L1_2 = L1_2.parkingSpaces
        L2_2 = camData
        L2_2 = L2_2.currentSlotId
        L1_2 = L1_2[L2_2]
        L1_2 = L1_2.data
        L2_2 = SendNUIMessage
        L3_2 = {}
        L3_2.action = "updateParkingRent"
        L4_2 = camData
        L4_2 = L4_2.currentSlotId
        L3_2.parkingId = L4_2
        if L1_2 then
          L4_2 = L1_2.isRented
          if L4_2 then
            L4_2 = true
            if L4_2 then
              goto lbl_90
            end
          end
        end
        L4_2 = false
        ::lbl_90::
        L3_2.isRented = L4_2
        if L1_2 then
          L4_2 = L1_2.isRented
          L5_2 = myIdentifier
        end
        L4_2 = L4_2 == L5_2 or L4_2
        L3_2.isMySpace = L4_2
        if L1_2 then
          L4_2 = L1_2.time
          if L4_2 then
            goto lbl_108
          end
        end
        L4_2 = nil
        ::lbl_108::
        L3_2.rentTime = L4_2
        L2_2(L3_2)
      else
        L1_2 = A0_2.direction
        if "right" == L1_2 then
          L1_2 = camData
          L1_2 = L1_2.parkingSlots
          L2_2 = camData
          L2_2 = L2_2.currentSlotId
          L2_2 = L2_2 + 1
          L1_2 = L1_2[L2_2]
          if L1_2 then
            L1_2 = camData
            L2_2 = camData
            L2_2 = L2_2.currentSlotId
            L2_2 = L2_2 + 1
            L1_2.currentSlotId = L2_2
          else
            L1_2 = camData
            L1_2.currentSlotId = 1
          end
          L1_2 = library
          L1_2 = L1_2.ParkingCamera
          L2_2 = "switch"
          L3_2 = {}
          L4_2 = rCamera1
          L3_2.cam1 = L4_2
          L4_2 = rCamera2
          L3_2.cam2 = L4_2
          L4_2 = camData
          L4_2 = L4_2.parkingSlots
          L5_2 = camData
          L5_2 = L5_2.currentSlotId
          L4_2 = L4_2[L5_2]
          L4_2 = L4_2.camCoords
          L3_2.camCoords = L4_2
          L4_2 = camData
          L4_2 = L4_2.parkingSlots
          L5_2 = camData
          L5_2 = L5_2.currentSlotId
          L4_2 = L4_2[L5_2]
          L4_2 = L4_2.coords
          L3_2.coords = L4_2
          L1_2, L2_2 = L1_2(L2_2, L3_2)
          rCamera2 = L2_2
          rCamera1 = L1_2
          L1_2 = Config
          L1_2 = L1_2.Garages
          L2_2 = garageZone
          L1_2 = L1_2[L2_2]
          L1_2 = L1_2.parkingSpaces
          L2_2 = camData
          L2_2 = L2_2.currentSlotId
          L1_2 = L1_2[L2_2]
          L1_2 = L1_2.data
          L2_2 = SendNUIMessage
          L3_2 = {}
          L3_2.action = "updateParkingRent"
          L4_2 = camData
          L4_2 = L4_2.currentSlotId
          L3_2.parkingId = L4_2
          if L1_2 then
            L4_2 = L1_2.isRented
            if L4_2 then
              L4_2 = true
              if L4_2 then
                goto lbl_183
              end
            end
          end
          L4_2 = false
          ::lbl_183::
          L3_2.isRented = L4_2
          if L1_2 then
            L4_2 = L1_2.isRented
            L5_2 = myIdentifier
          end
          L4_2 = L4_2 == L5_2 or L4_2
          L3_2.isMySpace = L4_2
          if L1_2 then
            L4_2 = L1_2.time
            if L4_2 then
              goto lbl_201
            end
          end
          L4_2 = nil
          ::lbl_201::
          L3_2.rentTime = L4_2
          L2_2(L3_2)
        end
      end
    end
  end
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNuiCallback
L1_1 = "rentParkingSpace"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = garageZone
  if not L1_2 then
    return
  end
  L1_2 = currentMenu
  if "parkingRent" ~= L1_2 then
    return
  end
  L1_2 = canUseAgain
  if L1_2 then
    canUseAgain = false
    L1_2 = tonumber
    L2_2 = A0_2.days
    L1_2 = L1_2(L2_2)
    L2_2 = TriggerServerEvent
    L3_2 = "vms_garagesv2:sv:rentParkingSpace"
    L4_2 = garageZone
    L5_2 = camData
    L5_2 = L5_2.currentSlotId
    L6_2 = L1_2
    L2_2(L3_2, L4_2, L5_2, L6_2)
    L2_2 = Citizen
    L2_2 = L2_2.CreateThread
    function L3_2()
      local L0_3, L1_3
      L0_3 = Citizen
      L0_3 = L0_3.Wait
      L1_3 = 500
      L0_3(L1_3)
      canUseAgain = true
    end
    L2_2(L3_2)
  else
    L1_2 = CL
    L1_2 = L1_2.Notification
    L2_2 = TRANSLATE
    L3_2 = "notify.wait"
    L2_2 = L2_2(L3_2)
    L3_2 = 2500
    L4_2 = "info"
    L1_2(L2_2, L3_2, L4_2)
  end
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNuiCallback
L1_1 = "transferBetweenGarages"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = garageZone
  if not L1_2 then
    return
  end
  L1_2 = A0_2.newGarage
  L2_2 = A0_2.plate
  L3_2 = TriggerServerEvent
  L4_2 = "vms_garagesv2:sv:transferBetweenGarages"
  L5_2 = garageZone
  L6_2 = L1_2
  L7_2 = L2_2
  L3_2(L4_2, L5_2, L6_2, L7_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNuiCallback
L1_1 = "viewVehicle"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = camData
  L2_2 = L2_2.isImpound
  if L2_2 then
    L2_2 = camData
    L2_2 = L2_2.currentImpound
    L2_2 = L2_2.impoundData
    if L2_2 then
      goto lbl_19
    end
  end
  L2_2 = camData
  L2_2 = L2_2.isImpound
  if not L2_2 then
    L2_2 = camData
    L2_2 = L2_2.currentGarage
    L2_2 = L2_2.garageData
    ::lbl_19::
    if L2_2 then
      L2_2 = A0_2.id
      if L2_2 then
        L2_2 = tonumber
        L3_2 = A0_2.id
        L2_2 = L2_2(L3_2)
        if L2_2 then
          goto lbl_31
        end
        L2_2 = A0_2.id
        if L2_2 then
          goto lbl_31
        end
      end
      L2_2 = nil
      ::lbl_31::
      if L2_2 then
        L3_2 = camData
        L3_2 = L3_2.myVehicles
        L3_2 = L3_2[L2_2]
        if L3_2 then
          goto lbl_39
        end
      end
      L3_2 = nil
      ::lbl_39::
      L4_2 = A0_2.model
      if L4_2 then
        L3_2 = A0_2
      end
      L4_2 = companyVehicles
      if L4_2 then
        L4_2 = {}
        L5_2 = companyVehicles
        L6_2 = A0_2.plate
        L5_2 = L5_2[L6_2]
        L5_2 = L5_2.vehicle
        L4_2.vehicle = L5_2
        L3_2 = L4_2
      end
      L4_2 = viewVehicle
      if L4_2 then
        L4_2 = DeleteEntity
        L5_2 = viewVehicle
        L4_2(L5_2)
        L4_2 = Citizen
        L4_2 = L4_2.Wait
        L5_2 = 5
        L4_2(L5_2)
        viewVehicle = nil
      end
      if not L3_2 then
        L4_2 = A1_2
        L5_2 = true
        L4_2(L5_2)
        return
      end
      L4_2 = A0_2.model
      if L4_2 then
        L4_2 = A0_2.model
        if L4_2 then
          goto lbl_85
        end
      end
      L4_2 = L3_2.vehicle
      if L4_2 then
        L4_2 = L3_2.vehicle
        L4_2 = L4_2.model
        if L4_2 then
          goto lbl_85
        end
      end
      L4_2 = L3_2.model
      ::lbl_85::
      L5_2 = tonumber
      L6_2 = L4_2
      L5_2 = L5_2(L6_2)
      L5_2 = L4_2 or L5_2
      if not L5_2 or not L4_2 then
        L5_2 = joaat
        L6_2 = L4_2
        L5_2 = L5_2(L6_2)
      end
      L6_2 = Config
      L6_2 = L6_2.ShowLoadingText
      if L6_2 then
        L6_2 = CreateThread
        function L7_2()
          local L0_3, L1_3, L2_3, L3_3
          while true do
            L0_3 = viewVehicle
            if L0_3 then
              break
            end
            L0_3 = camData
            L0_3 = L0_3.currentImpound
            if L0_3 then
              L0_3 = CL
              L0_3 = L0_3.DrawText3D
              L1_3 = camData
              L1_3 = L1_3.currentImpound
              L1_3 = L1_3.impoundData
              L1_3 = L1_3.vehicleCoords
              L1_3 = L1_3.xyz
              L2_3 = TRANSLATE
              L3_3 = "3dtext.loading"
              L2_3 = L2_3(L3_3)
              L3_3 = Config
              L3_3 = L3_3.LoadingTextScale
              L0_3(L1_3, L2_3, L3_3)
            else
              L0_3 = CL
              L0_3 = L0_3.DrawText3D
              L1_3 = camData
              L1_3 = L1_3.currentGarage
              L1_3 = L1_3.garageData
              L1_3 = L1_3.vehicleCoords
              L1_3 = L1_3.xyz
              L2_3 = TRANSLATE
              L3_3 = "3dtext.loading"
              L2_3 = L2_3(L3_3)
              L3_3 = Config
              L3_3 = L3_3.LoadingTextScale
              L0_3(L1_3, L2_3, L3_3)
            end
            L0_3 = Wait
            L1_3 = 1
            L0_3(L1_3)
          end
        end
        L6_2(L7_2)
      end
      L6_2 = library
      L6_2 = L6_2.RequestEntity
      L7_2 = L5_2
      L6_2(L7_2)
      L6_2 = camData
      L6_2 = L6_2.currentImpound
      if L6_2 then
        L6_2 = CreateVehicle
        L7_2 = L5_2
        L8_2 = camData
        L8_2 = L8_2.currentImpound
        L8_2 = L8_2.impoundData
        L8_2 = L8_2.vehicleCoords
        L8_2 = L8_2.xyz
        L9_2 = camData
        L9_2 = L9_2.currentImpound
        L9_2 = L9_2.impoundData
        L9_2 = L9_2.vehicleCoords
        L9_2 = L9_2.w
        L10_2 = false
        L11_2 = true
        L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
        viewVehicle = L6_2
        L6_2 = SetEntityHeading
        L7_2 = viewVehicle
        L8_2 = camData
        L8_2 = L8_2.currentImpound
        L8_2 = L8_2.impoundData
        L8_2 = L8_2.vehicleCoords
        L8_2 = L8_2.w
        L6_2(L7_2, L8_2)
      else
        L6_2 = CreateVehicle
        L7_2 = L5_2
        L8_2 = camData
        L8_2 = L8_2.currentGarage
        L8_2 = L8_2.garageData
        L8_2 = L8_2.vehicleCoords
        L8_2 = L8_2.xyz
        L9_2 = camData
        L9_2 = L9_2.currentGarage
        L9_2 = L9_2.garageData
        L9_2 = L9_2.vehicleCoords
        L9_2 = L9_2.w
        L10_2 = false
        L11_2 = true
        L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
        viewVehicle = L6_2
        L6_2 = SetEntityHeading
        L7_2 = viewVehicle
        L8_2 = camData
        L8_2 = L8_2.currentGarage
        L8_2 = L8_2.garageData
        L8_2 = L8_2.vehicleCoords
        L8_2 = L8_2.w
        L6_2(L7_2, L8_2)
      end
      L6_2 = A0_2.model
      if not L6_2 then
        L6_2 = L3_2.vehicle
        if L6_2 then
          L6_2 = CL
          L6_2 = L6_2.SetVehicleProperties
          L7_2 = viewVehicle
          L8_2 = L3_2.vehicle
          L6_2(L7_2, L8_2)
          L6_2 = CL
          L6_2 = L6_2.SetOnVehicleSpawnLocally
          L7_2 = viewVehicle
          L8_2 = L3_2.vehicle
          L6_2(L7_2, L8_2)
      end
      elseif L3_2 then
        L6_2 = L3_2.model
        if L6_2 then
          L6_2 = L3_2.customProperties
          if L6_2 then
            L6_2 = CL
            L6_2 = L6_2.SetVehicleProperties
            L7_2 = viewVehicle
            L8_2 = L3_2.customProperties
            L6_2(L7_2, L8_2)
            L6_2 = CL
            L6_2 = L6_2.SetOnVehicleSpawnLocally
            L7_2 = viewVehicle
            L8_2 = L3_2.customProperties
            L6_2(L7_2, L8_2)
          end
        end
      end
    end
  end
  L2_2 = A1_2
  L3_2 = true
  L2_2(L3_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNuiCallback
L1_1 = "removeViewVehicle"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  if A0_2 then
    L2_2 = A0_2.clearCompany
    if L2_2 then
      companyVehicles = nil
    end
  end
  L2_2 = viewVehicle
  if L2_2 then
    L2_2 = DeleteEntity
    L3_2 = viewVehicle
    L2_2(L3_2)
    L2_2 = Citizen
    L2_2 = L2_2.Wait
    L3_2 = 5
    L2_2(L3_2)
    viewVehicle = nil
  end
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNuiCallback
L1_1 = "takeImpoundVehicle"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = CL
  L2_2 = L2_2.IsAreaClear
  L3_2 = camData
  L3_2 = L3_2.currentImpound
  L3_2 = L3_2.spawnPoint
  L3_2 = L3_2.xyz
  L4_2 = 6.5
  L2_2 = L2_2(L3_2, L4_2)
  if not L2_2 then
    L2_2 = CL
    L2_2 = L2_2.Notification
    L3_2 = TRANSLATE
    L4_2 = "notify.area_is_occupied"
    L3_2 = L3_2(L4_2)
    L4_2 = 4500
    L5_2 = "info"
    return L2_2(L3_2, L4_2, L5_2)
  end
  L2_2 = A0_2.vehPlate
  L3_2 = TriggerServerEvent
  L4_2 = "vms_garagesv2:paidImpound"
  L5_2 = impoundZone
  L6_2 = L2_2
  L7_2 = true
  L3_2(L4_2, L5_2, L6_2, L7_2)
  L3_2 = closeImpound
  L3_2()
  L3_2 = CL
  L3_2 = L3_2.Hud
  L3_2 = L3_2.Enable
  L3_2()
  L3_2 = SetNuiFocus
  L4_2 = false
  L5_2 = false
  L3_2(L4_2, L5_2)
  currentMenu = nil
  L3_2 = {}
  DATACACHE = L3_2
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNuiCallback
L1_1 = "giveBillForImpound"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = A0_2.vehPlate
  L3_2 = CL
  L3_2 = L3_2.GetClosestPlayer
  L3_2, L4_2 = L3_2()
  if not L3_2 or -1 == L3_2 or L4_2 > 6.0 then
    L5_2 = CL
    L5_2 = L5_2.Notification
    L6_2 = TRANSLATE
    L7_2 = "notify.no_players_around"
    L6_2 = L6_2(L7_2)
    L7_2 = 4500
    L8_2 = "error"
    L5_2(L6_2, L7_2, L8_2)
    return
  end
  L5_2 = GetPlayerServerId
  L6_2 = L3_2
  L5_2 = L5_2(L6_2)
  L6_2 = TriggerServerEvent
  L7_2 = "vms_garagesv2:sv:sendBill"
  L8_2 = L5_2
  L9_2 = impoundZone
  L10_2 = L2_2
  L6_2(L7_2, L8_2, L9_2, L10_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNuiCallback
L1_1 = "payForImpound"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = CL
  L2_2 = L2_2.IsAreaClear
  L3_2 = camData
  L3_2 = L3_2.currentImpound
  L3_2 = L3_2.spawnPoint
  L3_2 = L3_2.xyz
  L4_2 = 4.0
  L2_2 = L2_2(L3_2, L4_2)
  if not L2_2 then
    L2_2 = CL
    L2_2 = L2_2.Notification
    L3_2 = TRANSLATE
    L4_2 = "notify.area_is_occupied"
    L3_2 = L3_2(L4_2)
    L4_2 = 4500
    L5_2 = "info"
    return L2_2(L3_2, L4_2, L5_2)
  end
  L2_2 = A0_2.paymentMethod
  L3_2 = A0_2.vehPlate
  L4_2 = library
  L4_2 = L4_2.Callback
  L5_2 = "vms_garagesv2:payForImpound"
  function L6_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
    if A0_3 then
      L1_3 = SendNUIMessage
      L2_3 = {}
      L2_3.action = "closeImpound"
      L1_3(L2_3)
      L1_3 = viewVehicle
      if L1_3 then
        L1_3 = library
        L1_3 = L1_3.StopAnimation
        L2_3 = PlayerPedId
        L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3 = L2_3()
        L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3)
        L1_3 = Citizen
        L1_3 = L1_3.Wait
        L2_3 = 25
        L1_3(L2_3)
        L1_3 = TaskEnterVehicle
        L2_3 = PlayerPedId
        L2_3 = L2_3()
        L3_3 = viewVehicle
        L4_3 = 20000
        L5_3 = -1
        L6_3 = 1.5
        L7_3 = 1
        L8_3 = 0
        L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3)
        L1_3 = Citizen
        L1_3 = L1_3.Wait
        L2_3 = 2500
        L1_3(L2_3)
      else
        L1_3 = library
        L1_3 = L1_3.StopAnimation
        L2_3 = PlayerPedId
        L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3 = L2_3()
        L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3)
      end
      L1_3 = DoScreenFadeOut
      L2_3 = 350
      L1_3(L2_3)
      L1_3 = Citizen
      L1_3 = L1_3.Wait
      L2_3 = 500
      L1_3(L2_3)
      L1_3 = CL
      L1_3 = L1_3.Hud
      L1_3 = L1_3.Enable
      L1_3()
      L1_3 = library
      L1_3 = L1_3.ParkingCamera
      L2_3 = "remove"
      L3_3 = {}
      L4_3 = rCamera1
      L3_3.cam1 = L4_3
      L4_3 = rCamera2
      L3_3.cam2 = L4_3
      L1_3, L2_3 = L1_3(L2_3, L3_3)
      rCamera2 = L2_3
      rCamera1 = L1_3
      L1_3 = viewVehicle
      if L1_3 then
        L1_3 = DeleteEntity
        L2_3 = viewVehicle
        L1_3(L2_3)
        L1_3 = Citizen
        L1_3 = L1_3.Wait
        L2_3 = 5
        L1_3(L2_3)
        viewVehicle = nil
      end
      L1_3 = SetNuiFocus
      L2_3 = false
      L3_3 = false
      L1_3(L2_3, L3_3)
      L1_3 = Citizen
      L1_3 = L1_3.Wait
      L2_3 = 50
      L1_3(L2_3)
      L1_3 = TriggerServerEvent
      L2_3 = "vms_garagesv2:paidImpound"
      L3_3 = impoundZone
      L4_3 = L3_2
      L1_3(L2_3, L3_3, L4_3)
      L1_3 = Citizen
      L1_3 = L1_3.Wait
      L2_3 = 600
      L1_3(L2_3)
      L1_3 = {}
      camData = L1_3
      L1_3 = DoScreenFadeIn
      L2_3 = 350
      L1_3(L2_3)
    end
  end
  L7_2 = impoundZone
  L8_2 = L3_2
  L9_2 = L2_2
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNuiCallback
L1_1 = "takeOutVehicle"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = A0_2.paymentMethod
  L3_2 = A0_2.vehPlate
  L4_2 = A0_2.vehModel
  L5_2 = SendNUIMessage
  L6_2 = {}
  L6_2.action = "closeGarage"
  L5_2(L6_2)
  L5_2 = viewVehicle
  if L5_2 then
    L5_2 = library
    L5_2 = L5_2.StopAnimation
    L6_2 = PlayerPedId
    L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L6_2()
    L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
    L5_2 = Citizen
    L5_2 = L5_2.Wait
    L6_2 = 25
    L5_2(L6_2)
    L5_2 = TaskEnterVehicle
    L6_2 = PlayerPedId
    L6_2 = L6_2()
    L7_2 = viewVehicle
    L8_2 = 20000
    L9_2 = -1
    L10_2 = 1.5
    L11_2 = 1
    L12_2 = 0
    L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
    L5_2 = Citizen
    L5_2 = L5_2.Wait
    L6_2 = 2500
    L5_2(L6_2)
  else
    L5_2 = library
    L5_2 = L5_2.StopAnimation
    L6_2 = PlayerPedId
    L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L6_2()
    L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  end
  L5_2 = DoScreenFadeOut
  L6_2 = 350
  L5_2(L6_2)
  L5_2 = Citizen
  L5_2 = L5_2.Wait
  L6_2 = 500
  L5_2(L6_2)
  L5_2 = CL
  L5_2 = L5_2.Hud
  L5_2 = L5_2.Enable
  L5_2()
  L5_2 = library
  L5_2 = L5_2.ParkingCamera
  L6_2 = "remove"
  L7_2 = {}
  L8_2 = rCamera1
  L7_2.cam1 = L8_2
  L8_2 = rCamera2
  L7_2.cam2 = L8_2
  L5_2, L6_2 = L5_2(L6_2, L7_2)
  rCamera2 = L6_2
  rCamera1 = L5_2
  L5_2 = viewVehicle
  if L5_2 then
    L5_2 = DeleteEntity
    L6_2 = viewVehicle
    L5_2(L6_2)
    L5_2 = Citizen
    L5_2 = L5_2.Wait
    L6_2 = 5
    L5_2(L6_2)
    viewVehicle = nil
  end
  L5_2 = SetNuiFocus
  L6_2 = false
  L7_2 = false
  L5_2(L6_2, L7_2)
  L5_2 = Citizen
  L5_2 = L5_2.Wait
  L6_2 = 50
  L5_2(L6_2)
  L5_2 = TriggerServerEvent
  L6_2 = "vms_garagesv2:takeOutVehicle"
  L7_2 = garageZone
  L8_2 = L3_2
  L9_2 = L4_2
  L5_2(L6_2, L7_2, L8_2, L9_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNuiCallback
L1_1 = "locateVehicle"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = string
  L2_2 = L2_2.upper
  L3_2 = A0_2.vehPlate
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
  L3_2 = A0_2.paymentMethod
  L4_2 = locateVehicle
  L5_2 = L2_2
  L6_2 = L3_2
  L7_2 = A0_2.isByLocationMenu
  L4_2(L5_2, L6_2, L7_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNuiCallback
L1_1 = "buyCompanyVehicle"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = A0_2.model
  L3_2 = A0_2.player
  L4_2 = A0_2.grade
  if not L2_2 then
    return
  end
  L5_2 = library
  L5_2 = L5_2.GeneratePlate
  L6_2 = camData
  L6_2 = L6_2.currentGarage
  L6_2 = L6_2.platePrefix
  L7_2 = camData
  L7_2 = L7_2.currentGarage
  L7_2 = L7_2.plateFormat
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = Config
  L6_2 = L6_2.Garages
  L7_2 = garageZone
  L6_2 = L6_2[L7_2]
  L7_2 = L6_2.requiredJob
  if L7_2 then
    L7_2 = TriggerServerEvent
    L8_2 = "vms_garagesv2:sv:buyCompanyVehicle"
    L9_2 = garageZone
    L10_2 = {}
    L10_2.selectedModel = L2_2
    L10_2.selectedPlayer = L3_2
    L10_2.selectedGrade = L4_2
    L10_2.plate = L5_2
    L7_2(L8_2, L9_2, L10_2)
  else
    L7_2 = L6_2.requiredGang
    if L7_2 then
      L7_2 = TriggerServerEvent
      L8_2 = "vms_garagesv2:sv:buyGangVehicle"
      L9_2 = garageZone
      L10_2 = {}
      L10_2.selectedModel = L2_2
      L10_2.selectedPlayer = L3_2
      L10_2.selectedGrade = L4_2
      L10_2.plate = L5_2
      L7_2(L8_2, L9_2, L10_2)
    end
  end
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNuiCallback
L1_1 = "getCompanyVehicles"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = canUseAgain
  if not L2_2 then
    L2_2 = CL
    L2_2 = L2_2.Notification
    L3_2 = TRANSLATE
    L4_2 = "notify.wait"
    L3_2 = L3_2(L4_2)
    L4_2 = 2500
    L5_2 = "info"
    L2_2(L3_2, L4_2, L5_2)
    return
  end
  canUseAgain = false
  L2_2 = Config
  L2_2 = L2_2.Garages
  L3_2 = garageZone
  L2_2 = L2_2[L3_2]
  L3_2 = L2_2.requiredJob
  if L3_2 then
    L3_2 = library
    L3_2 = L3_2.Callback
    L4_2 = "vms_garagesv2:getCompanyVehicles"
    function L5_2(A0_3, A1_3, A2_3)
      local L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3
      if A0_3 and A1_3 then
        L3_3 = viewVehicle
        if L3_3 then
          L3_3 = DeleteEntity
          L4_3 = viewVehicle
          L3_3(L4_3)
          L3_3 = Citizen
          L3_3 = L3_3.Wait
          L4_3 = 5
          L3_3(L4_3)
          viewVehicle = nil
        end
        L3_3 = {}
        L4_3 = pairs
        L5_3 = A1_3
        L4_3, L5_3, L6_3, L7_3 = L4_3(L5_3)
        for L8_3, L9_3 in L4_3, L5_3, L6_3, L7_3 do
          L9_3.ownerColumnName = A2_3
          L10_3 = CL
          L10_3 = L10_3.GetVehicleLabel
          L11_3 = tonumber
          L12_3 = L9_3.vehicle
          L12_3 = L12_3.model
          L11_3, L12_3, L13_3, L14_3 = L11_3(L12_3)
          L10_3 = L10_3(L11_3, L12_3, L13_3, L14_3)
          L9_3.label = L10_3
          L10_3 = L9_3[A2_3]
          if L10_3 then
            L10_3 = employeesData
            L11_3 = L9_3[A2_3]
            L10_3 = L10_3[L11_3]
            if L10_3 then
              goto lbl_40
            end
          end
          L10_3 = nil
          ::lbl_40::
          L9_3.playerName = L10_3
          L10_3 = string
          L10_3 = L10_3.match
          L11_3 = L9_3.company
          L12_3 = ":(%d+)"
          L10_3 = L10_3(L11_3, L12_3)
          L11_3 = L9_3.company
          if L11_3 and L10_3 then
            L11_3 = {}
            L11_3.id = L10_3
            L12_3 = Config
            L12_3 = L12_3.CompanyGrades
            L13_3 = CL
            L13_3 = L13_3.GetPlayerJob
            L14_3 = "name"
            L13_3 = L13_3(L14_3)
            L12_3 = L12_3[L13_3]
            L12_3 = L12_3[L10_3]
            L12_3 = L12_3.label
            L11_3.label = L12_3
            L9_3.grade = L11_3
          end
          L11_3 = L9_3.plate
          L3_3[L11_3] = L9_3
        end
        companyVehicles = L3_3
        L4_3 = A1_2
        L5_3 = companyVehicles
        L4_3(L5_3)
      end
    end
    L3_2(L4_2, L5_2)
  else
    L3_2 = L2_2.requiredGang
    if L3_2 then
      L3_2 = library
      L3_2 = L3_2.Callback
      L4_2 = "vms_garagesv2:getGangVehicles"
      function L5_2(A0_3, A1_3, A2_3)
        local L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3
        if A0_3 and A1_3 then
          L3_3 = viewVehicle
          if L3_3 then
            L3_3 = DeleteEntity
            L4_3 = viewVehicle
            L3_3(L4_3)
            L3_3 = Citizen
            L3_3 = L3_3.Wait
            L4_3 = 5
            L3_3(L4_3)
            viewVehicle = nil
          end
          L3_3 = {}
          L4_3 = pairs
          L5_3 = A1_3
          L4_3, L5_3, L6_3, L7_3 = L4_3(L5_3)
          for L8_3, L9_3 in L4_3, L5_3, L6_3, L7_3 do
            L9_3.ownerColumnName = A2_3
            L10_3 = CL
            L10_3 = L10_3.GetVehicleLabel
            L11_3 = tonumber
            L12_3 = L9_3.vehicle
            L12_3 = L12_3.model
            L11_3, L12_3, L13_3, L14_3 = L11_3(L12_3)
            L10_3 = L10_3(L11_3, L12_3, L13_3, L14_3)
            L9_3.label = L10_3
            L10_3 = L9_3[A2_3]
            if L10_3 then
              L10_3 = employeesData
              L11_3 = L9_3[A2_3]
              L10_3 = L10_3[L11_3]
              if L10_3 then
                goto lbl_40
              end
            end
            L10_3 = nil
            ::lbl_40::
            L9_3.playerName = L10_3
            L10_3 = string
            L10_3 = L10_3.match
            L11_3 = L9_3.gang
            L12_3 = ":(%d+)"
            L10_3 = L10_3(L11_3, L12_3)
            L11_3 = L9_3.gang
            if L11_3 and L10_3 then
              L11_3 = {}
              L11_3.id = L10_3
              L12_3 = Config
              L12_3 = L12_3.GangGrades
              L13_3 = CL
              L13_3 = L13_3.GetPlayerGang
              L14_3 = "name"
              L13_3 = L13_3(L14_3)
              L12_3 = L12_3[L13_3]
              L12_3 = L12_3[L10_3]
              L12_3 = L12_3.label
              L11_3.label = L12_3
              L9_3.grade = L11_3
            end
            L11_3 = L9_3.plate
            L3_3[L11_3] = L9_3
          end
          companyVehicles = L3_3
          L4_3 = A1_2
          L5_3 = companyVehicles
          L4_3(L5_3)
        end
      end
      L3_2(L4_2, L5_2)
    end
  end
  L3_2 = Citizen
  L3_2 = L3_2.CreateThread
  function L4_2()
    local L0_3, L1_3
    L0_3 = Citizen
    L0_3 = L0_3.Wait
    L1_3 = 3500
    L0_3(L1_3)
    canUseAgain = true
  end
  L3_2(L4_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNuiCallback
L1_1 = "transferCompanyVehicle"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2.plate
  L2_2 = A0_2.player
  L3_2 = A0_2.playerName
  L4_2 = A0_2.grade
  if not L1_2 then
    return
  end
  companyVehicles = nil
  L5_2 = viewVehicle
  if L5_2 then
    L5_2 = DeleteEntity
    L6_2 = viewVehicle
    L5_2(L6_2)
    L5_2 = Citizen
    L5_2 = L5_2.Wait
    L6_2 = 5
    L5_2(L6_2)
    viewVehicle = nil
  end
  L5_2 = Config
  L5_2 = L5_2.Garages
  L6_2 = garageZone
  L5_2 = L5_2[L6_2]
  L6_2 = L5_2.requiredJob
  if L6_2 then
    L6_2 = TriggerServerEvent
    L7_2 = "vms_garagesv2:sv:transferCompanyVehicle"
    L8_2 = garageZone
    L9_2 = {}
    L9_2.plate = L1_2
    L9_2.player = L2_2
    L9_2.playerName = L3_2
    L9_2.grade = L4_2
    L6_2(L7_2, L8_2, L9_2)
  else
    L6_2 = L5_2.requiredGang
    if L6_2 then
      L6_2 = TriggerServerEvent
      L7_2 = "vms_garagesv2:sv:transferGangVehicle"
      L8_2 = garageZone
      L9_2 = {}
      L9_2.plate = L1_2
      L9_2.player = L2_2
      L9_2.playerName = L3_2
      L9_2.grade = L4_2
      L6_2(L7_2, L8_2, L9_2)
    end
  end
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNuiCallback
L1_1 = "getEmployees"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = {}
  employeesData = L2_2
  L2_2 = Config
  L2_2 = L2_2.Garages
  L3_2 = garageZone
  L2_2 = L2_2[L3_2]
  L3_2 = L2_2.requiredJob
  if L3_2 then
    L3_2 = library
    L3_2 = L3_2.Callback
    L4_2 = "vms_garagesv2:getEmployees"
    function L5_2(A0_3)
      local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3
      if A0_3 then
        L1_3 = Config
        L1_3 = L1_3.Core
        if "ESX" == L1_3 then
          L1_3 = pairs
          L2_3 = A0_3
          L1_3, L2_3, L3_3, L4_3 = L1_3(L2_3)
          for L5_3, L6_3 in L1_3, L2_3, L3_3, L4_3 do
            L7_3 = employeesData
            L8_3 = L6_3.identifier
            L9_3 = L6_3.firstname
            L10_3 = " "
            L11_3 = L6_3.lastname
            L9_3 = L9_3 .. L10_3 .. L11_3
            L7_3[L8_3] = L9_3
          end
        else
          L1_3 = Config
          L1_3 = L1_3.Core
          if "QB-Core" == L1_3 then
            L1_3 = pairs
            L2_3 = A0_3
            L1_3, L2_3, L3_3, L4_3 = L1_3(L2_3)
            for L5_3, L6_3 in L1_3, L2_3, L3_3, L4_3 do
              L7_3 = employeesData
              L8_3 = L6_3.citizenid
              L9_3 = L6_3.charinfo
              L9_3 = L9_3.firstname
              L10_3 = " "
              L11_3 = L6_3.charinfo
              L11_3 = L11_3.lastname
              L9_3 = L9_3 .. L10_3 .. L11_3
              L7_3[L8_3] = L9_3
            end
          end
        end
        L1_3 = A1_2
        L2_3 = employeesData
        L1_3(L2_3)
      end
    end
    L3_2(L4_2, L5_2)
  else
    L3_2 = L2_2.requiredGang
    if L3_2 then
      L3_2 = library
      L3_2 = L3_2.Callback
      L4_2 = "vms_garagesv2:getGangMembers"
      function L5_2(A0_3)
        local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3
        if A0_3 then
          L1_3 = Config
          L1_3 = L1_3.Core
          if "ESX" == L1_3 then
            L1_3 = pairs
            L2_3 = A0_3
            L1_3, L2_3, L3_3, L4_3 = L1_3(L2_3)
            for L5_3, L6_3 in L1_3, L2_3, L3_3, L4_3 do
              L7_3 = employeesData
              L8_3 = L6_3.identifier
              L9_3 = L6_3.firstname
              L10_3 = " "
              L11_3 = L6_3.lastname
              L9_3 = L9_3 .. L10_3 .. L11_3
              L7_3[L8_3] = L9_3
            end
          else
            L1_3 = Config
            L1_3 = L1_3.Core
            if "QB-Core" == L1_3 then
              L1_3 = pairs
              L2_3 = A0_3
              L1_3, L2_3, L3_3, L4_3 = L1_3(L2_3)
              for L5_3, L6_3 in L1_3, L2_3, L3_3, L4_3 do
                L7_3 = employeesData
                L8_3 = L6_3.citizenid
                L9_3 = L6_3.charinfo
                L9_3 = L9_3.firstname
                L10_3 = " "
                L11_3 = L6_3.charinfo
                L11_3 = L11_3.lastname
                L9_3 = L9_3 .. L10_3 .. L11_3
                L7_3[L8_3] = L9_3
              end
            end
          end
          L1_3 = A1_2
          L2_3 = employeesData
          L1_3(L2_3)
        end
      end
      L3_2(L4_2, L5_2)
    end
  end
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNuiCallback
L1_1 = "sendAgreement"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2.selectedBuyer
  if L1_2 then
    L1_2 = A0_2.resellData
    if L1_2 then
      L1_2 = TriggerServerEvent
      L2_2 = "vms_garagesv2:sv:giveAgreement"
      L3_2 = A0_2
      L1_2(L2_2, L3_2)
      L1_2 = closeAgreement
      L1_2()
    end
  end
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNuiCallback
L1_1 = "agreementDone"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = agreementData
  if L1_2 then
    L1_2 = agreementData
    L1_2 = L1_2.selectedBuyer
    if L1_2 then
      L1_2 = TriggerServerEvent
      L2_2 = "vms_garagesv2:sv:signedAgreement"
      L3_2 = agreementData
      L1_2(L2_2, L3_2)
      L1_2 = closeAgreement
      L1_2()
    end
  end
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNuiCallback
L1_1 = "tow"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = towVehicle
  L2_2 = towData
  L2_2 = L2_2.plate
  L3_2 = A0_2.impound
  L4_2 = A0_2.fine
  L5_2 = A0_2.fine_amount
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNuiCallback
L1_1 = "purchaseBusiness"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = garageZone
  if not L2_2 then
    return
  end
  L2_2 = Config
  L2_2 = L2_2.Garages
  L3_2 = garageZone
  L2_2 = L2_2[L3_2]
  if not L2_2 then
    return
  end
  L3_2 = canUseAgain
  if L3_2 then
    canUseAgain = false
    L3_2 = library
    L3_2 = L3_2.Callback
    L4_2 = "vms_garagesv2:purchaseParking"
    function L5_2(A0_3)
      local L1_3, L2_3, L3_3, L4_3
      if A0_3 then
        L1_3 = closePurchaseMenu
        L1_3()
        L1_3 = CL
        L1_3 = L1_3.Notification
        L2_3 = TRANSLATE
        L3_3 = "notify.purchase:bought"
        L4_3 = L2_2.purchasePrice
        L2_3 = L2_3(L3_3, L4_3)
        L3_3 = 5000
        L4_3 = "success"
        L1_3(L2_3, L3_3, L4_3)
      end
    end
    L6_2 = garageZone
    L3_2(L4_2, L5_2, L6_2)
    L3_2 = Citizen
    L3_2 = L3_2.CreateThread
    function L4_2()
      local L0_3, L1_3
      L0_3 = Citizen
      L0_3 = L0_3.Wait
      L1_3 = 2500
      L0_3(L1_3)
      canUseAgain = true
    end
    L3_2(L4_2)
  else
    L3_2 = CL
    L3_2 = L3_2.Notification
    L4_2 = TRANSLATE
    L5_2 = "notify.wait"
    L4_2 = L4_2(L5_2)
    L5_2 = 2500
    L6_2 = "info"
    L3_2(L4_2, L5_2, L6_2)
  end
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNUICallback
L1_1 = "withdraw"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = garageZone
  if not L2_2 then
    return
  end
  L2_2 = currentMenu
  if not L2_2 then
    L2_2 = currentMenu
    if "management" ~= L2_2 then
      return
    end
  end
  L2_2 = tonumber
  L3_2 = A0_2.money
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = tonumber
    L3_2 = A0_2.money
    L2_2 = L2_2(L3_2)
    if L2_2 >= 1 then
      L2_2 = TriggerServerEvent
      L3_2 = "vms_garagesv2:withdraw"
      L4_2 = garageZone
      L5_2 = tonumber
      L6_2 = A0_2.money
      L5_2, L6_2 = L5_2(L6_2)
      L2_2(L3_2, L4_2, L5_2, L6_2)
    end
  end
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNUICallback
L1_1 = "deposit"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = garageZone
  if not L2_2 then
    return
  end
  L2_2 = currentMenu
  if not L2_2 then
    L2_2 = currentMenu
    if "management" ~= L2_2 then
      return
    end
  end
  L2_2 = tonumber
  L3_2 = A0_2.money
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = tonumber
    L3_2 = A0_2.money
    L2_2 = L2_2(L3_2)
    if L2_2 >= 1 then
      L2_2 = TriggerServerEvent
      L3_2 = "vms_garagesv2:deposit"
      L4_2 = garageZone
      L5_2 = tonumber
      L6_2 = A0_2.money
      L5_2, L6_2 = L5_2(L6_2)
      L2_2(L3_2, L4_2, L5_2, L6_2)
    end
  end
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNUICallback
L1_1 = "sell"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = garageZone
  if not L2_2 then
    return
  end
  L2_2 = currentMenu
  if not L2_2 then
    L2_2 = currentMenu
    if "management" ~= L2_2 then
      return
    end
  end
  L2_2 = TriggerServerEvent
  L3_2 = "vms_garagesv2:sellAutomatically"
  L4_2 = garageZone
  L2_2(L3_2, L4_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNUICallback
L1_1 = "resell"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2
  L2_2 = garageZone
  if not L2_2 then
    return
  end
  L2_2 = currentMenu
  if not L2_2 then
    L2_2 = currentMenu
    if "management" ~= L2_2 then
      return
    end
  end
  L2_2 = CL
  L2_2 = L2_2.GetClosestPlayers
  L2_2 = L2_2()
  L3_2 = {}
  if not L2_2 then
    L4_2 = CL
    L4_2 = L4_2.Notification
    L5_2 = TRANSLATE
    L6_2 = "notify.no_players_around"
    L5_2 = L5_2(L6_2)
    L6_2 = 3000
    L7_2 = "error"
    L4_2(L5_2, L6_2, L7_2)
    return
  end
  L4_2 = pairs
  L5_2 = L2_2
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
  for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
    L10_2 = #L3_2
    L10_2 = L10_2 + 1
    L11_2 = GetPlayerServerId
    L12_2 = L9_2
    L11_2 = L11_2(L12_2)
    L3_2[L10_2] = L11_2
  end
  L4_2 = library
  L4_2 = L4_2.PlayAnimation
  L5_2 = PlayerPedId
  L5_2 = L5_2()
  L6_2 = "missfam4"
  L7_2 = "base"
  L8_2 = -1
  L9_2 = 1
  L10_2 = {}
  L11_2 = "p_amb_clipboard_01"
  L12_2 = nil
  L13_2 = true
  L14_2 = {}
  L15_2 = PlayerPedId
  L15_2 = L15_2()
  L14_2.attachTo = L15_2
  L15_2 = GetPedBoneIndex
  L16_2 = PlayerPedId
  L16_2 = L16_2()
  L17_2 = 36029
  L15_2 = L15_2(L16_2, L17_2)
  L14_2.boneIndex = L15_2
  L15_2 = {}
  L16_2 = 0.16
  L17_2 = 0.08
  L18_2 = 0.1
  L19_2 = -130.0
  L20_2 = -50.0
  L21_2 = 0.0
  L15_2[1] = L16_2
  L15_2[2] = L17_2
  L15_2[3] = L18_2
  L15_2[4] = L19_2
  L15_2[5] = L20_2
  L15_2[6] = L21_2
  L14_2.placement = L15_2
  L15_2 = true
  L10_2[1] = L11_2
  L10_2[2] = L12_2
  L10_2[3] = L13_2
  L10_2[4] = L14_2
  L10_2[5] = L15_2
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  L4_2 = SendNUIMessage
  L5_2 = {}
  L5_2.action = "openResell"
  L5_2.type = "seller"
  L5_2.players = L3_2
  L6_2 = playerName
  L5_2.characterName = L6_2
  L4_2(L5_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNUICallback
L1_1 = "resellSend"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = garageZone
  if not L2_2 then
    return
  end
  L2_2 = currentMenu
  if not L2_2 then
    L2_2 = currentMenu
    if "management" ~= L2_2 then
      return
    end
  end
  L2_2 = A0_2.selectedBuyer
  if L2_2 then
    L2_2 = A0_2.resellData
    if L2_2 then
      L2_2 = closeManagementMenu
      L2_2()
      L2_2 = TriggerServerEvent
      L3_2 = "vms_garagesv2:sv:resellSelectedBuyer"
      L4_2 = garageZone
      L5_2 = A0_2.resellData
      L6_2 = A0_2.selectedBuyer
      L2_2(L3_2, L4_2, L5_2, L6_2)
    end
  end
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNUICallback
L1_1 = "resellDone"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = garageZone
  if not L2_2 then
    return
  end
  L2_2 = SetNuiFocus
  L3_2 = false
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = TriggerServerEvent
  L3_2 = "vms_garagesv2:sv:resellAccepted"
  L4_2 = resellCache
  L4_2 = L4_2.garageId
  L5_2 = resellCache
  L5_2 = L5_2.resellData
  L6_2 = resellCache
  L6_2 = L6_2.sellerId
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNUICallback
L1_1 = "changePricePerDay"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2.price
  L3_2 = tonumber
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L3_2 = tonumber
    L4_2 = L2_2
    L3_2 = L3_2(L4_2)
    if not (L3_2 < 0) then
      goto lbl_13
    end
  end
  do return end
  ::lbl_13::
  L3_2 = garageZone
  if not L3_2 then
    return
  end
  L3_2 = businessGarages
  L4_2 = garageZone
  L3_2 = L3_2[L4_2]
  if not L3_2 then
    return
  end
  L3_2 = TriggerServerEvent
  L4_2 = "vms_garagesv2:sv:changePrice"
  L5_2 = garageZone
  L6_2 = "day"
  L7_2 = tonumber
  L8_2 = L2_2
  L7_2, L8_2 = L7_2(L8_2)
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNUICallback
L1_1 = "changePriceInfinity"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2.price
  L3_2 = tonumber
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L3_2 = tonumber
    L4_2 = L2_2
    L3_2 = L3_2(L4_2)
    if not (L3_2 < 0) then
      goto lbl_13
    end
  end
  do return end
  ::lbl_13::
  L3_2 = garageZone
  if not L3_2 then
    return
  end
  L3_2 = businessGarages
  L4_2 = garageZone
  L3_2 = L3_2[L4_2]
  if not L3_2 then
    return
  end
  L3_2 = TriggerServerEvent
  L4_2 = "vms_garagesv2:sv:changePrice"
  L5_2 = garageZone
  L6_2 = "infinity"
  L7_2 = tonumber
  L8_2 = L2_2
  L7_2, L8_2 = L7_2(L8_2)
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNUICallback
L1_1 = "bill"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2.action
  if "pay" == L2_2 then
    L2_2 = TriggerServerEvent
    L3_2 = "vms_garagesv2:sv:payBill"
    L4_2 = "pay"
    L5_2 = A0_2.type
    L6_2 = billFrom
    L7_2 = billCache
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  else
    L2_2 = TriggerServerEvent
    L3_2 = "vms_garagesv2:sv:payBill"
    L4_2 = "cancel"
    L5_2 = nil
    L6_2 = billFrom
    L7_2 = billCache
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
    L2_2 = SetNuiFocus
    L3_2 = false
    L4_2 = false
    L2_2(L3_2, L4_2)
    L2_2 = SendNUIMessage
    L3_2 = {}
    L3_2.action = "closeReceipt"
    L2_2(L3_2)
    billFrom = nil
    L2_2 = {}
    billCache = L2_2
  end
end
L0_1(L1_1, L2_1)
--   ____  _____ ____ ______   ______ _____ _____ ____     ___     _____ _____  _______ ____    ______   __  _______  __    _    ____    _____ ____  ___ _  _____ _____ ___  _   _    _        _     _   _                  ____  _ _                       _                 _______ _____ _  __     _   _ ____      _ ____ _____ _____
--  |  _ \| ____/ ___|  _ \ \ / /  _ \_   _| ____|  _ \   ( _ )   |  ___|_ _\ \/ / ____|  _ \  | __ ) \ / / |  ___\ \/ /   / \  |  _ \  |  ___|  _ \|_ _| |/ /_ _|_   _/ _ \| \ | |  / \      | |__ | |_| |_ _ __  ___ _   / / /_| (_)___  ___ ___  _ __ __| |  __ _  __ _   / / ____|_   _| |/ /__ _| | | | ___|  __| | ___|___  |___  |
--  | | | |  _|| |   | |_) \ V /| |_) || | |  _| | | | |  / _ \/\ | |_   | | \  /|  _| | | | | |  _ \\ V /  | |_   \  /   / _ \ | |_) | | |_  | |_) || || ' / | |  | || | | |  \| | / _ \     | '_ \| __| __| '_ \/ __(_) / / / _` | / __|/ __/ _ \| '__/ _` | / _` |/ _` | / /|  _|   | | | ' // _` | |_| |___ \ / _` |___ \  / /   / /
--  | |_| | |__| |___|  _ < | | |  __/ | | | |___| |_| | | (_>  < |  _|  | | /  \| |___| |_| | | |_) || |   |  _|  /  \  / ___ \|  __/  |  _| |  _ < | || . \ | |  | || |_| | |\  |/ ___ \ _  | | | | |_| |_| |_) \__ \_ / / / (_| | \__ \ (_| (_) | | | (_| || (_| | (_| |/ / | |___  | | | . \ (_| |  _  |___) | (_| |___) |/ /   / /
--  |____/|_____\____|_| \_\|_| |_|    |_| |_____|____/   \___/\/ |_|   |___/_/\_\_____|____/  |____/ |_|   |_|   /_/\_\/_/   \_\_|     |_|   |_| \_\___|_|\_\___| |_| \___/|_| \_/_/   \_(_) |_| |_|\__|\__| .__/|___(_)_/_/ \__,_|_|___/\___\___/|_|  \__,_(_)__, |\__, /_/  |_____| |_| |_|\_\__, |_| |_|____/ \__,_|____//_/   /_/
--                                                                                                                                                                                                          |_|                                                |___/ |___/                         |_|
-- https://discord.gg/ETKqH5d577
