--   ____  _____ ____ ______   ______ _____ _____ ____     ___     _____ _____  _______ ____    ______   __  _______  __    _    ____    _____ ____  ___ _  _____ _____ ___  _   _    _        _     _   _                  ____  _ _                       _                 _______ _____ _  __     _   _ ____      _ ____ _____ _____
--  |  _ \| ____/ ___|  _ \ \ / /  _ \_   _| ____|  _ \   ( _ )   |  ___|_ _\ \/ / ____|  _ \  | __ ) \ / / |  ___\ \/ /   / \  |  _ \  |  ___|  _ \|_ _| |/ /_ _|_   _/ _ \| \ | |  / \      | |__ | |_| |_ _ __  ___ _   / / /_| (_)___  ___ ___  _ __ __| |  __ _  __ _   / / ____|_   _| |/ /__ _| | | | ___|  __| | ___|___  |___  |
--  | | | |  _|| |   | |_) \ V /| |_) || | |  _| | | | |  / _ \/\ | |_   | | \  /|  _| | | | | |  _ \\ V /  | |_   \  /   / _ \ | |_) | | |_  | |_) || || ' / | |  | || | | |  \| | / _ \     | '_ \| __| __| '_ \/ __(_) / / / _` | / __|/ __/ _ \| '__/ _` | / _` |/ _` | / /|  _|   | | | ' // _` | |_| |___ \ / _` |___ \  / /   / /
--  | |_| | |__| |___|  _ < | | |  __/ | | | |___| |_| | | (_>  < |  _|  | | /  \| |___| |_| | | |_) || |   |  _|  /  \  / ___ \|  __/  |  _| |  _ < | || . \ | |  | || |_| | |\  |/ ___ \ _  | | | | |_| |_| |_) \__ \_ / / / (_| | \__ \ (_| (_) | | | (_| || (_| | (_| |/ / | |___  | | | . \ (_| |  _  |___) | (_| |___) |/ /   / /
--  |____/|_____\____|_| \_\|_| |_|    |_| |_____|____/   \___/\/ |_|   |___/_/\_\_____|____/  |____/ |_|   |_|   /_/\_\/_/   \_\_|     |_|   |_| \_\___|_|\_\___| |_| \___/|_| \_/_/   \_(_) |_| |_|\__|\__| .__/|___(_)_/_/ \__,_|_|___/\___\___/|_|  \__,_(_)__, |\__, /_/  |_____| |_| |_|\_\__, |_| |_|____/ \__,_|____//_/   /_/
--                                                                                                                                                                                                          |_|                                                |___/ |___/                         |_|
-- https://discord.gg/ETKqH5d577

local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1, L22_1, L23_1, L24_1, L25_1, L26_1, L27_1, L28_1, L29_1, L30_1, L31_1, L32_1, L33_1, L34_1, L35_1, L36_1, L37_1, L38_1, L39_1, L40_1, L41_1
L0_1 = Config
L0_1 = L0_1.ParkingCreator
if L0_1 then
  L0_1 = Config
  L0_1 = L0_1.ParkingCreator
  L0_1 = L0_1.Enabled
  if L0_1 then
    goto lbl_12
  end
end
do return end
::lbl_12::
L0_1 = false
L1_1 = nil
L2_1 = false
L3_1 = false
L4_1 = false
L5_1 = false
L6_1 = false
L7_1 = false
L8_1 = false
L9_1 = false
L10_1 = false
L11_1 = false
L12_1 = false
L13_1 = false
L14_1 = false
L15_1 = false
L16_1 = false
L17_1 = false
L18_1 = false
L19_1 = {}
L20_1 = {}
L19_1.points = L20_1
L19_1.minZ = -90.0
L19_1.maxZ = 90.0
L20_1 = nil
L21_1 = 1
L22_1 = {}
L23_1 = 1
L24_1 = {}
L25_1 = {}
L26_1 = {}
L26_1.interiorId = 1
L27_1 = vec
L28_1 = 0.0
L29_1 = 0.0
L30_1 = 0.0
L27_1 = L27_1(L28_1, L29_1, L30_1)
L26_1.enterCoords = L27_1
L26_1.radius = 5.0
L26_1.vehicle = nil
L26_1.heading = 0.0
L27_1 = {}
L27_1.interiorId = 1
L28_1 = vec
L29_1 = 0.0
L30_1 = 0.0
L31_1 = 0.0
L28_1 = L28_1(L29_1, L30_1, L31_1)
L27_1.enterVehCoords = L28_1
L27_1.enterVehHeading = 0.0
L28_1 = vec
L29_1 = 0.0
L30_1 = 0.0
L31_1 = 0.0
L28_1 = L28_1(L29_1, L30_1, L31_1)
L27_1.enterPedCoords = L28_1
L27_1.enterPedHeading = 0.0
L27_1.vehicle = nil
L27_1.ped = nil
L28_1 = {}
L28_1.menuPoint = nil
L28_1.vehicleCoords = nil
L28_1.vehicleHeading = nil
L28_1.pedCoords = nil
L28_1.pedHeading = nil
L28_1.cameraCoords = nil
L28_1.cameraFov = nil
L28_1.spawnpointCoords = nil
L28_1.returnCoords = nil
L28_1.vehModel = nil
L28_1.vehicle = nil
L28_1.spawnpointVehicle = nil
L28_1.ped = nil
L29_1 = {}
L29_1.vehicleCoords = nil
L29_1.vehicleHeading = nil
L29_1.pedCoords = nil
L29_1.pedHeading = nil
L29_1.cameraCoords = nil
L29_1.cameraFov = nil
L29_1.vehModel = nil
L29_1.vehicle = nil
L29_1.ped = nil
L30_1 = {}
L30_1.camera = nil
L31_1 = {}
L32_1 = {}
L33_1 = {}
L34_1 = Config
L34_1 = L34_1.ParkingCreator
L34_1 = L34_1.Controls
L34_1 = L34_1.SELECT
L34_1 = L34_1.controlName
L33_1.keys = L34_1
L34_1 = TRANSLATE
L35_1 = "key_hint.default:set"
L34_1 = L34_1(L35_1)
L33_1.label = L34_1
L34_1 = {}
L35_1 = Config
L35_1 = L35_1.ParkingCreator
L35_1 = L35_1.Controls
L35_1 = L35_1.CANCEL
L35_1 = L35_1.controlName
L34_1.keys = L35_1
L35_1 = TRANSLATE
L36_1 = "key_hint.default:cancel_all"
L35_1 = L35_1(L36_1)
L34_1.label = L35_1
L32_1[1] = L33_1
L32_1[2] = L34_1
L31_1.default = L32_1
L32_1 = {}
L33_1 = {}
L34_1 = Config
L34_1 = L34_1.ParkingCreator
L34_1 = L34_1.Controls
L34_1 = L34_1.SELECT
L34_1 = L34_1.controlName
L33_1.keys = L34_1
L34_1 = TRANSLATE
L35_1 = "key_hint.interior:select"
L34_1 = L34_1(L35_1)
L33_1.label = L34_1
L34_1 = {}
L35_1 = Config
L35_1 = L35_1.ParkingCreator
L35_1 = L35_1.Controls
L35_1 = L35_1.SCROLL_DOWN
L35_1 = L35_1.controlName
L34_1.keys = L35_1
L35_1 = TRANSLATE
L36_1 = "key_hint.interior:next"
L35_1 = L35_1(L36_1)
L34_1.label = L35_1
L35_1 = {}
L36_1 = Config
L36_1 = L36_1.ParkingCreator
L36_1 = L36_1.Controls
L36_1 = L36_1.SCROLL_UP
L36_1 = L36_1.controlName
L35_1.keys = L36_1
L36_1 = TRANSLATE
L37_1 = "key_hint.interior:previous"
L36_1 = L36_1(L37_1)
L35_1.label = L36_1
L36_1 = {}
L37_1 = Config
L37_1 = L37_1.ParkingCreator
L37_1 = L37_1.Controls
L37_1 = L37_1.CANCEL
L37_1 = L37_1.controlName
L36_1.keys = L37_1
L37_1 = TRANSLATE
L38_1 = "key_hint.default:cancel_all"
L37_1 = L37_1(L38_1)
L36_1.label = L37_1
L32_1[1] = L33_1
L32_1[2] = L34_1
L32_1[3] = L35_1
L32_1[4] = L36_1
L31_1.interior = L32_1
L32_1 = {}
L33_1 = {}
L34_1 = Config
L34_1 = L34_1.ParkingCreator
L34_1 = L34_1.Controls
L34_1 = L34_1.SELECT
L34_1 = L34_1.controlName
L33_1.keys = L34_1
L34_1 = TRANSLATE
L35_1 = "key_hint.polyzone:add"
L34_1 = L34_1(L35_1)
L33_1.label = L34_1
L34_1 = {}
L35_1 = Config
L35_1 = L35_1.ParkingCreator
L35_1 = L35_1.Controls
L35_1 = L35_1.BACK
L35_1 = L35_1.controlName
L34_1.keys = L35_1
L35_1 = TRANSLATE
L36_1 = "key_hint.polyzone:delete"
L35_1 = L35_1(L36_1)
L34_1.label = L35_1
L35_1 = {}
L36_1 = Config
L36_1 = L36_1.ParkingCreator
L36_1 = L36_1.Controls
L36_1 = L36_1.SCROLL_DOWN
L36_1 = L36_1.controlName
L35_1.keys = L36_1
L36_1 = TRANSLATE
L37_1 = "key_hint.polyzone:height_plus"
L36_1 = L36_1(L37_1)
L35_1.label = L36_1
L36_1 = {}
L37_1 = Config
L37_1 = L37_1.ParkingCreator
L37_1 = L37_1.Controls
L37_1 = L37_1.SCROLL_UP
L37_1 = L37_1.controlName
L36_1.keys = L37_1
L37_1 = TRANSLATE
L38_1 = "key_hint.polyzone:height_minus"
L37_1 = L37_1(L38_1)
L36_1.label = L37_1
L37_1 = {}
L38_1 = Config
L38_1 = L38_1.ParkingCreator
L38_1 = L38_1.Controls
L38_1 = L38_1.ENTER
L38_1 = L38_1.controlName
L37_1.keys = L38_1
L38_1 = TRANSLATE
L39_1 = "key_hint.polyzone:save"
L38_1 = L38_1(L39_1)
L37_1.label = L38_1
L38_1 = {}
L39_1 = Config
L39_1 = L39_1.ParkingCreator
L39_1 = L39_1.Controls
L39_1 = L39_1.CANCEL
L39_1 = L39_1.controlName
L38_1.keys = L39_1
L39_1 = TRANSLATE
L40_1 = "key_hint.default:cancel_all"
L39_1 = L39_1(L40_1)
L38_1.label = L39_1
L32_1[1] = L33_1
L32_1[2] = L34_1
L32_1[3] = L35_1
L32_1[4] = L36_1
L32_1[5] = L37_1
L32_1[6] = L38_1
L31_1.polyzone = L32_1
L32_1 = {}
L33_1 = {}
L34_1 = Config
L34_1 = L34_1.ParkingCreator
L34_1 = L34_1.Controls
L34_1 = L34_1.SELECT
L34_1 = L34_1.controlName
L33_1.keys = L34_1
L34_1 = TRANSLATE
L35_1 = "key_hint.ped:set"
L34_1 = L34_1(L35_1)
L33_1.label = L34_1
L34_1 = {}
L35_1 = Config
L35_1 = L35_1.ParkingCreator
L35_1 = L35_1.Controls
L35_1 = L35_1.SCROLL_DOWN
L35_1 = L35_1.controlName
L34_1.keys = L35_1
L35_1 = TRANSLATE
L36_1 = "key_hint.ped:heading_plus"
L35_1 = L35_1(L36_1)
L34_1.label = L35_1
L35_1 = {}
L36_1 = Config
L36_1 = L36_1.ParkingCreator
L36_1 = L36_1.Controls
L36_1 = L36_1.SCROLL_UP
L36_1 = L36_1.controlName
L35_1.keys = L36_1
L36_1 = TRANSLATE
L37_1 = "key_hint.ped:heading_minus"
L36_1 = L36_1(L37_1)
L35_1.label = L36_1
L36_1 = {}
L37_1 = Config
L37_1 = L37_1.ParkingCreator
L37_1 = L37_1.Controls
L37_1 = L37_1.LEFT_CTRL
L37_1 = L37_1.controlName
L36_1.keys = L37_1
L37_1 = TRANSLATE
L38_1 = "key_hint.ped:heading_slow_down"
L37_1 = L37_1(L38_1)
L36_1.label = L37_1
L37_1 = {}
L38_1 = Config
L38_1 = L38_1.ParkingCreator
L38_1 = L38_1.Controls
L38_1 = L38_1.CANCEL
L38_1 = L38_1.controlName
L37_1.keys = L38_1
L38_1 = TRANSLATE
L39_1 = "key_hint.default:cancel_all"
L38_1 = L38_1(L39_1)
L37_1.label = L38_1
L32_1[1] = L33_1
L32_1[2] = L34_1
L32_1[3] = L35_1
L32_1[4] = L36_1
L32_1[5] = L37_1
L31_1.ped = L32_1
L32_1 = {}
L33_1 = {}
L34_1 = Config
L34_1 = L34_1.ParkingCreator
L34_1 = L34_1.Controls
L34_1 = L34_1.SELECT
L34_1 = L34_1.controlName
L33_1.keys = L34_1
L34_1 = TRANSLATE
L35_1 = "key_hint.parking_spaces:add"
L34_1 = L34_1(L35_1)
L33_1.label = L34_1
L34_1 = {}
L35_1 = Config
L35_1 = L35_1.ParkingCreator
L35_1 = L35_1.Controls
L35_1 = L35_1.BACK
L35_1 = L35_1.controlName
L34_1.keys = L35_1
L35_1 = TRANSLATE
L36_1 = "key_hint.parking_spaces:delete"
L35_1 = L35_1(L36_1)
L34_1.label = L35_1
L35_1 = {}
L36_1 = Config
L36_1 = L36_1.ParkingCreator
L36_1 = L36_1.Controls
L36_1 = L36_1.SCROLL_DOWN
L36_1 = L36_1.controlName
L35_1.keys = L36_1
L36_1 = TRANSLATE
L37_1 = "key_hint.parking_spaces:heading_plus"
L36_1 = L36_1(L37_1)
L35_1.label = L36_1
L36_1 = {}
L37_1 = Config
L37_1 = L37_1.ParkingCreator
L37_1 = L37_1.Controls
L37_1 = L37_1.SCROLL_UP
L37_1 = L37_1.controlName
L36_1.keys = L37_1
L37_1 = TRANSLATE
L38_1 = "key_hint.parking_spaces:heading_minus"
L37_1 = L37_1(L38_1)
L36_1.label = L37_1
L37_1 = {}
L38_1 = Config
L38_1 = L38_1.ParkingCreator
L38_1 = L38_1.Controls
L38_1 = L38_1.LEFT_CTRL
L38_1 = L38_1.controlName
L37_1.keys = L38_1
L38_1 = TRANSLATE
L39_1 = "key_hint.parking_spaces:heading_slow_down"
L38_1 = L38_1(L39_1)
L37_1.label = L38_1
L38_1 = {}
L39_1 = Config
L39_1 = L39_1.ParkingCreator
L39_1 = L39_1.Controls
L39_1 = L39_1.ENTER
L39_1 = L39_1.controlName
L38_1.keys = L39_1
L39_1 = TRANSLATE
L40_1 = "key_hint.parking_spaces:save"
L39_1 = L39_1(L40_1)
L38_1.label = L39_1
L39_1 = {}
L40_1 = Config
L40_1 = L40_1.ParkingCreator
L40_1 = L40_1.Controls
L40_1 = L40_1.CANCEL
L40_1 = L40_1.controlName
L39_1.keys = L40_1
L40_1 = TRANSLATE
L41_1 = "key_hint.default:cancel_all"
L40_1 = L40_1(L41_1)
L39_1.label = L40_1
L32_1[1] = L33_1
L32_1[2] = L34_1
L32_1[3] = L35_1
L32_1[4] = L36_1
L32_1[5] = L37_1
L32_1[6] = L38_1
L32_1[7] = L39_1
L31_1["parking.spaces"] = L32_1
L32_1 = {}
L33_1 = {}
L34_1 = Config
L34_1 = L34_1.ParkingCreator
L34_1 = L34_1.Controls
L34_1 = L34_1.SELECT
L34_1 = L34_1.controlName
L33_1.keys = L34_1
L34_1 = TRANSLATE
L35_1 = "key_hint.pay_stations:add"
L34_1 = L34_1(L35_1)
L33_1.label = L34_1
L34_1 = {}
L35_1 = Config
L35_1 = L35_1.ParkingCreator
L35_1 = L35_1.Controls
L35_1 = L35_1.BACK
L35_1 = L35_1.controlName
L34_1.keys = L35_1
L35_1 = TRANSLATE
L36_1 = "key_hint.pay_stations:delete"
L35_1 = L35_1(L36_1)
L34_1.label = L35_1
L35_1 = {}
L36_1 = Config
L36_1 = L36_1.ParkingCreator
L36_1 = L36_1.Controls
L36_1 = L36_1.ENTER
L36_1 = L36_1.controlName
L35_1.keys = L36_1
L36_1 = TRANSLATE
L37_1 = "key_hint.pay_stations:save"
L36_1 = L36_1(L37_1)
L35_1.label = L36_1
L36_1 = {}
L37_1 = Config
L37_1 = L37_1.ParkingCreator
L37_1 = L37_1.Controls
L37_1 = L37_1.CANCEL
L37_1 = L37_1.controlName
L36_1.keys = L37_1
L37_1 = TRANSLATE
L38_1 = "key_hint.default:cancel_all"
L37_1 = L37_1(L38_1)
L36_1.label = L37_1
L32_1[1] = L33_1
L32_1[2] = L34_1
L32_1[3] = L35_1
L32_1[4] = L36_1
L31_1["parking.pay_stations"] = L32_1
L32_1 = {}
L33_1 = {}
L34_1 = Config
L34_1 = L34_1.ParkingCreator
L34_1 = L34_1.Controls
L34_1 = L34_1.SELECT
L34_1 = L34_1.controlName
L33_1.keys = L34_1
L34_1 = TRANSLATE
L35_1 = "key_hint.npc:add"
L34_1 = L34_1(L35_1)
L33_1.label = L34_1
L34_1 = {}
L35_1 = Config
L35_1 = L35_1.ParkingCreator
L35_1 = L35_1.Controls
L35_1 = L35_1.BACK
L35_1 = L35_1.controlName
L34_1.keys = L35_1
L35_1 = TRANSLATE
L36_1 = "key_hint.npc:delete"
L35_1 = L35_1(L36_1)
L34_1.label = L35_1
L35_1 = {}
L36_1 = Config
L36_1 = L36_1.ParkingCreator
L36_1 = L36_1.Controls
L36_1 = L36_1.SCROLL_DOWN
L36_1 = L36_1.controlName
L35_1.keys = L36_1
L36_1 = TRANSLATE
L37_1 = "key_hint.npc:heading_plus"
L36_1 = L36_1(L37_1)
L35_1.label = L36_1
L36_1 = {}
L37_1 = Config
L37_1 = L37_1.ParkingCreator
L37_1 = L37_1.Controls
L37_1 = L37_1.SCROLL_UP
L37_1 = L37_1.controlName
L36_1.keys = L37_1
L37_1 = TRANSLATE
L38_1 = "key_hint.npc:heading_minus"
L37_1 = L37_1(L38_1)
L36_1.label = L37_1
L37_1 = {}
L38_1 = Config
L38_1 = L38_1.ParkingCreator
L38_1 = L38_1.Controls
L38_1 = L38_1.LEFT_CTRL
L38_1 = L38_1.controlName
L37_1.keys = L38_1
L38_1 = TRANSLATE
L39_1 = "key_hint.npc:heading_slow_down"
L38_1 = L38_1(L39_1)
L37_1.label = L38_1
L38_1 = {}
L39_1 = Config
L39_1 = L39_1.ParkingCreator
L39_1 = L39_1.Controls
L39_1 = L39_1.ENTER
L39_1 = L39_1.controlName
L38_1.keys = L39_1
L39_1 = TRANSLATE
L40_1 = "key_hint.npc:save"
L39_1 = L39_1(L40_1)
L38_1.label = L39_1
L39_1 = {}
L40_1 = Config
L40_1 = L40_1.ParkingCreator
L40_1 = L40_1.Controls
L40_1 = L40_1.CANCEL
L40_1 = L40_1.controlName
L39_1.keys = L40_1
L40_1 = TRANSLATE
L41_1 = "key_hint.default:cancel_all"
L40_1 = L40_1(L41_1)
L39_1.label = L40_1
L32_1[1] = L33_1
L32_1[2] = L34_1
L32_1[3] = L35_1
L32_1[4] = L36_1
L32_1[5] = L37_1
L32_1[6] = L38_1
L32_1[7] = L39_1
L31_1["parking.npc"] = L32_1
L32_1 = {}
L33_1 = {}
L34_1 = Config
L34_1 = L34_1.ParkingCreator
L34_1 = L34_1.Controls
L34_1 = L34_1.SELECT
L34_1 = L34_1.controlName
L33_1.keys = L34_1
L34_1 = TRANSLATE
L35_1 = "key_hint.vehicle:set"
L34_1 = L34_1(L35_1)
L33_1.label = L34_1
L34_1 = {}
L35_1 = Config
L35_1 = L35_1.ParkingCreator
L35_1 = L35_1.Controls
L35_1 = L35_1.SCROLL_DOWN
L35_1 = L35_1.controlName
L34_1.keys = L35_1
L35_1 = TRANSLATE
L36_1 = "key_hint.vehicle:heading_plus"
L35_1 = L35_1(L36_1)
L34_1.label = L35_1
L35_1 = {}
L36_1 = Config
L36_1 = L36_1.ParkingCreator
L36_1 = L36_1.Controls
L36_1 = L36_1.SCROLL_UP
L36_1 = L36_1.controlName
L35_1.keys = L36_1
L36_1 = TRANSLATE
L37_1 = "key_hint.vehicle:heading_minus"
L36_1 = L36_1(L37_1)
L35_1.label = L36_1
L36_1 = {}
L37_1 = Config
L37_1 = L37_1.ParkingCreator
L37_1 = L37_1.Controls
L37_1 = L37_1.LEFT_CTRL
L37_1 = L37_1.controlName
L36_1.keys = L37_1
L37_1 = TRANSLATE
L38_1 = "key_hint.vehicle:heading_slow_down"
L37_1 = L37_1(L38_1)
L36_1.label = L37_1
L37_1 = {}
L38_1 = Config
L38_1 = L38_1.ParkingCreator
L38_1 = L38_1.Controls
L38_1 = L38_1.CANCEL
L38_1 = L38_1.controlName
L37_1.keys = L38_1
L38_1 = TRANSLATE
L39_1 = "key_hint.default:cancel_all"
L38_1 = L38_1(L39_1)
L37_1.label = L38_1
L32_1[1] = L33_1
L32_1[2] = L34_1
L32_1[3] = L35_1
L32_1[4] = L36_1
L32_1[5] = L37_1
L31_1["garage.vehicle"] = L32_1
L32_1 = {}
L33_1 = {}
L34_1 = Config
L34_1 = L34_1.ParkingCreator
L34_1 = L34_1.Controls
L34_1 = L34_1.SELECT
L34_1 = L34_1.controlName
L33_1.keys = L34_1
L34_1 = TRANSLATE
L35_1 = "key_hint.camera:set"
L34_1 = L34_1(L35_1)
L33_1.label = L34_1
L34_1 = {}
L35_1 = Config
L35_1 = L35_1.ParkingCreator
L35_1 = L35_1.Controls
L35_1 = L35_1.SCROLL_UP
L35_1 = L35_1.controlName
L34_1.keys = L35_1
L35_1 = TRANSLATE
L36_1 = "key_hint.camera:fov_plus"
L35_1 = L35_1(L36_1)
L34_1.label = L35_1
L35_1 = {}
L36_1 = Config
L36_1 = L36_1.ParkingCreator
L36_1 = L36_1.Controls
L36_1 = L36_1.SCROLL_DOWN
L36_1 = L36_1.controlName
L35_1.keys = L36_1
L36_1 = TRANSLATE
L37_1 = "key_hint.camera:fov_minus"
L36_1 = L36_1(L37_1)
L35_1.label = L36_1
L36_1 = {}
L37_1 = Config
L37_1 = L37_1.ParkingCreator
L37_1 = L37_1.Controls
L37_1 = L37_1.CANCEL
L37_1 = L37_1.controlName
L36_1.keys = L37_1
L37_1 = TRANSLATE
L38_1 = "key_hint.default:cancel_all"
L37_1 = L37_1(L38_1)
L36_1.label = L37_1
L32_1[1] = L33_1
L32_1[2] = L34_1
L32_1[3] = L35_1
L32_1[4] = L36_1
L31_1["garage.camera"] = L32_1
L32_1 = {}
L33_1 = {}
L34_1 = Config
L34_1 = L34_1.ParkingCreator
L34_1 = L34_1.Controls
L34_1 = L34_1.SELECT
L34_1 = L34_1.controlName
L33_1.keys = L34_1
L34_1 = TRANSLATE
L35_1 = "key_hint.vehicle_enter:set"
L34_1 = L34_1(L35_1)
L33_1.label = L34_1
L34_1 = {}
L35_1 = Config
L35_1 = L35_1.ParkingCreator
L35_1 = L35_1.Controls
L35_1 = L35_1.SCROLL_DOWN
L35_1 = L35_1.controlName
L34_1.keys = L35_1
L35_1 = TRANSLATE
L36_1 = "key_hint.vehicle_enter:radius_plus"
L35_1 = L35_1(L36_1)
L34_1.label = L35_1
L35_1 = {}
L36_1 = Config
L36_1 = L36_1.ParkingCreator
L36_1 = L36_1.Controls
L36_1 = L36_1.SCROLL_UP
L36_1 = L36_1.controlName
L35_1.keys = L36_1
L36_1 = TRANSLATE
L37_1 = "key_hint.vehicle_enter:radius_minus"
L36_1 = L36_1(L37_1)
L35_1.label = L36_1
L36_1 = {}
L37_1 = Config
L37_1 = L37_1.ParkingCreator
L37_1 = L37_1.Controls
L37_1 = L37_1.ARROW_RIGHT
L37_1 = L37_1.controlName
L36_1.keys = L37_1
L37_1 = TRANSLATE
L38_1 = "key_hint.vehicle_enter:heading_plus"
L37_1 = L37_1(L38_1)
L36_1.label = L37_1
L37_1 = {}
L38_1 = Config
L38_1 = L38_1.ParkingCreator
L38_1 = L38_1.Controls
L38_1 = L38_1.ARROW_LEFT
L38_1 = L38_1.controlName
L37_1.keys = L38_1
L38_1 = TRANSLATE
L39_1 = "key_hint.vehicle_enter:heading_minus"
L38_1 = L38_1(L39_1)
L37_1.label = L38_1
L38_1 = {}
L39_1 = Config
L39_1 = L39_1.ParkingCreator
L39_1 = L39_1.Controls
L39_1 = L39_1.LEFT_CTRL
L39_1 = L39_1.controlName
L38_1.keys = L39_1
L39_1 = TRANSLATE
L40_1 = "key_hint.vehicle_enter:heading_slow_down"
L39_1 = L39_1(L40_1)
L38_1.label = L39_1
L39_1 = {}
L40_1 = Config
L40_1 = L40_1.ParkingCreator
L40_1 = L40_1.Controls
L40_1 = L40_1.CANCEL
L40_1 = L40_1.controlName
L39_1.keys = L40_1
L40_1 = TRANSLATE
L41_1 = "key_hint.default:cancel_all"
L40_1 = L40_1(L41_1)
L39_1.label = L40_1
L32_1[1] = L33_1
L32_1[2] = L34_1
L32_1[3] = L35_1
L32_1[4] = L36_1
L32_1[5] = L37_1
L32_1[6] = L38_1
L32_1[7] = L39_1
L31_1["housing_garage.vehicle_enter"] = L32_1
L30_1.buttonsHints = L31_1
function L31_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = RequestScaleformMovie
  L3_2 = "INSTRUCTIONAL_BUTTONS"
  L2_2 = L2_2(L3_2)
  L3_2 = BeginScaleformMovieMethod
  L4_2 = L2_2
  L5_2 = "CLEAR_ALL"
  L3_2(L4_2, L5_2)
  L3_2 = EndScaleformMovieMethod
  L3_2()
  L3_2 = BeginScaleformMovieMethod
  L4_2 = L2_2
  L5_2 = "TOGGLE_MOUSE_BUTTONS"
  L3_2(L4_2, L5_2)
  L3_2 = ScaleformMovieMethodAddParamBool
  L4_2 = 0
  L3_2(L4_2)
  L3_2 = EndScaleformMovieMethod
  L3_2()
  L3_2 = 1
  L4_2 = A0_2.buttonsHints
  L4_2 = L4_2[A1_2]
  L4_2 = #L4_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = BeginScaleformMovieMethod
    L8_2 = L2_2
    L9_2 = "SET_DATA_SLOT"
    L7_2(L8_2, L9_2)
    L7_2 = ScaleformMovieMethodAddParamInt
    L8_2 = L6_2
    L7_2(L8_2)
    L7_2 = PushScaleformMovieMethodParameterString
    L8_2 = A0_2.buttonsHints
    L8_2 = L8_2[A1_2]
    L8_2 = L8_2[L6_2]
    L8_2 = L8_2.keys
    L7_2(L8_2)
    L7_2 = PushScaleformMovieMethodParameterString
    L8_2 = A0_2.buttonsHints
    L8_2 = L8_2[A1_2]
    L8_2 = L8_2[L6_2]
    L8_2 = L8_2.label
    L7_2(L8_2)
    L7_2 = EndScaleformMovieMethod
    L7_2()
  end
  L3_2 = BeginScaleformMovieMethod
  L4_2 = L2_2
  L5_2 = "DRAW_INSTRUCTIONAL_BUTTONS"
  L3_2(L4_2, L5_2)
  L3_2 = EndScaleformMovieMethod
  L3_2()
  L3_2 = DrawScaleformMovieFullscreen
  L4_2 = L2_2
  L5_2 = 255
  L6_2 = 255
  L7_2 = 255
  L8_2 = 255
  L9_2 = 0
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
end
L30_1.DrawButtonsHint = L31_1
function L31_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = L22_1
  L0_2 = #L0_2
  if L0_2 >= 1 then
    L0_2 = pairs
    L1_2 = L22_1
    L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
    for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
      L6_2 = DeleteVehicle
      L7_2 = L5_2.vehicle
      L6_2(L7_2)
      L6_2 = DeleteEntity
      L7_2 = L5_2.vehicle
      L6_2(L7_2)
      L5_2.vehicle = nil
    end
  end
  L0_2 = L26_1.vehicle
  if L0_2 then
    L0_2 = DoesEntityExist
    L1_2 = L26_1.vehicle
    L0_2 = L0_2(L1_2)
    if L0_2 then
      L0_2 = DeleteVehicle
      L1_2 = L26_1.vehicle
      L0_2(L1_2)
      L0_2 = DeleteEntity
      L1_2 = L26_1.vehicle
      L0_2(L1_2)
      L26_1.vehicle = nil
    end
  end
  L0_2 = L29_1.vehicle
  if L0_2 then
    L0_2 = DoesEntityExist
    L1_2 = L29_1.vehicle
    L0_2 = L0_2(L1_2)
    if L0_2 then
      L0_2 = DeleteVehicle
      L1_2 = L29_1.vehicle
      L0_2(L1_2)
      L0_2 = DeleteEntity
      L1_2 = L29_1.vehicle
      L0_2(L1_2)
      L29_1.vehicle = nil
    end
  end
  L0_2 = false
  L0_1 = L0_2
  L0_2 = L1_1
  if L0_2 then
    L0_2 = SetEntityCoords
    L1_2 = PlayerPedId
    L1_2 = L1_2()
    L2_2 = L1_1.xyz
    L0_2(L1_2, L2_2)
  end
  L0_2 = Creator
  L0_2 = L0_2.RemoveGarageSettings
  L0_2()
  L0_2 = false
  L2_1 = L0_2
  L0_2 = false
  L3_1 = L0_2
  L0_2 = false
  L4_1 = L0_2
  L0_2 = false
  L6_1 = L0_2
  L0_2 = false
  L7_1 = L0_2
  L0_2 = false
  L5_1 = L0_2
  L0_2 = false
  L8_1 = L0_2
  L0_2 = false
  L9_1 = L0_2
  L0_2 = false
  L10_1 = L0_2
  L0_2 = false
  L11_1 = L0_2
  L0_2 = false
  L12_1 = L0_2
  L0_2 = false
  L13_1 = L0_2
  L0_2 = false
  L14_1 = L0_2
  L0_2 = false
  L15_1 = L0_2
  L0_2 = false
  L16_1 = L0_2
  L0_2 = false
  L17_1 = L0_2
  L0_2 = false
  L18_1 = L0_2
  L0_2 = {}
  L1_2 = {}
  L0_2.points = L1_2
  L0_2.minZ = -90.0
  L0_2.maxZ = 90.0
  L19_1 = L0_2
  L0_2 = 1
  L21_1 = L0_2
  L0_2 = {}
  L22_1 = L0_2
  L0_2 = 1
  L23_1 = L0_2
  L0_2 = {}
  L24_1 = L0_2
  L0_2 = {}
  L25_1 = L0_2
  L0_2 = {}
  L0_2.interiorId = 1
  L1_2 = vec
  L2_2 = 0.0
  L3_2 = 0.0
  L4_2 = 0.0
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L0_2.enterCoords = L1_2
  L0_2.radius = 5.0
  L0_2.vehicle = nil
  L0_2.heading = 0.0
  L26_1 = L0_2
  L0_2 = {}
  L0_2.interiorId = 1
  L1_2 = vec
  L2_2 = 0.0
  L3_2 = 0.0
  L4_2 = 0.0
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L0_2.enterVehCoords = L1_2
  L0_2.enterVehHeading = 0.0
  L1_2 = vec
  L2_2 = 0.0
  L3_2 = 0.0
  L4_2 = 0.0
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L0_2.enterPedCoords = L1_2
  L0_2.enterPedHeading = 0.0
  L0_2.vehicle = nil
  L0_2.ped = nil
  L27_1 = L0_2
  L0_2 = {}
  L0_2.menuPoint = nil
  L0_2.vehicleCoords = nil
  L0_2.vehicleHeading = nil
  L0_2.pedCoords = nil
  L0_2.pedHeading = nil
  L0_2.cameraCoords = nil
  L0_2.cameraFov = nil
  L0_2.spawnpointCoords = nil
  L0_2.returnCoords = nil
  L0_2.vehModel = nil
  L0_2.vehicle = nil
  L0_2.spawnpointVehicle = nil
  L0_2.ped = nil
  L28_1 = L0_2
  L0_2 = {}
  L0_2.vehicleCoords = nil
  L0_2.vehicleHeading = nil
  L0_2.pedCoords = nil
  L0_2.pedHeading = nil
  L0_2.cameraCoords = nil
  L0_2.cameraFov = nil
  L0_2.vehModel = nil
  L0_2.vehicle = nil
  L0_2.ped = nil
  L29_1 = L0_2
  L0_2 = nil
  L1_1 = L0_2
  L0_2 = Creator
  L1_2 = L0_2
  L0_2 = L0_2.DeleteCamera
  L0_2(L1_2)
  L0_2 = EnableAllControlActions
  L1_2 = 0
  L0_2(L1_2)
end
L30_1.CloseCompletly = L31_1
function L31_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = table
  L1_2 = L1_2.unpack
  L2_2 = GetGameplayCamCoord
  L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L2_2()
  L1_2, L2_2, L3_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  L4_2 = table
  L4_2 = L4_2.unpack
  L5_2 = GetGameplayCamRot
  L6_2 = 2
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L5_2(L6_2)
  L4_2, L5_2, L6_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  L7_2 = GetGameplayCamFov
  L7_2 = L7_2()
  L8_2 = CreateCam
  L9_2 = "DEFAULT_SCRIPTED_CAMERA"
  L10_2 = true
  L8_2 = L8_2(L9_2, L10_2)
  A0_2.camera = L8_2
  L8_2 = SetCamCoord
  L9_2 = A0_2.camera
  L10_2 = L1_2
  L11_2 = L2_2
  L12_2 = L3_2 + 20.0
  L8_2(L9_2, L10_2, L11_2, L12_2)
  L8_2 = SetCamRot
  L9_2 = A0_2.camera
  L10_2 = L4_2
  L11_2 = L5_2
  L12_2 = L6_2
  L13_2 = 2
  L8_2(L9_2, L10_2, L11_2, L12_2, L13_2)
  L8_2 = SetCamFov
  L9_2 = A0_2.camera
  L10_2 = L7_2
  L8_2(L9_2, L10_2)
  L8_2 = RenderScriptCams
  L9_2 = true
  L10_2 = true
  L11_2 = 500
  L12_2 = true
  L13_2 = true
  L8_2(L9_2, L10_2, L11_2, L12_2, L13_2)
  L8_2 = FreezeEntityPosition
  L9_2 = PlayerPedId
  L9_2 = L9_2()
  L10_2 = true
  L8_2(L9_2, L10_2)
end
L30_1.CreateCamera = L31_1
function L31_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2.camera
  if L1_2 then
    L1_2 = RenderScriptCams
    L2_2 = false
    L3_2 = true
    L4_2 = 500
    L5_2 = true
    L6_2 = true
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
    L1_2 = SetCamActive
    L2_2 = A0_2.camera
    L3_2 = false
    L1_2(L2_2, L3_2)
    L1_2 = DetachCam
    L2_2 = A0_2.camera
    L1_2(L2_2)
    L1_2 = DestroyCam
    L2_2 = A0_2.camera
    L3_2 = true
    L1_2(L2_2, L3_2)
    A0_2.camera = nil
  end
end
L30_1.DeleteCamera = L31_1
function L31_1(A0_2)
  local L1_2, L2_2
  L1_2 = true
  L2_1 = L1_2
  L1_2 = A0_2.CreateCamera
  L2_2 = A0_2
  L1_2(L2_2)
  L1_2 = Citizen
  L1_2 = L1_2.CreateThread
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3
    while true do
      L0_3 = L2_1
      if not L0_3 then
        break
      end
      L0_3 = startRaycast
      L0_3()
      L0_3 = rotateCamInputs
      L0_3()
      L0_3 = moveCamInputs
      L0_3()
      L0_3 = DisabledControls
      L0_3()
      L0_3 = A0_2.DrawButtonsHint
      L1_3 = A0_2
      L2_3 = "polyzone"
      L0_3(L1_3, L2_3)
      L0_3 = L19_1.points
      L0_3 = #L0_3
      if L0_3 >= 1 then
        L0_3 = 1
        L1_3 = L19_1.points
        L1_3 = #L1_3
        L2_3 = 1
        for L3_3 = L0_3, L1_3, L2_3 do
          L4_3 = DrawLine
          L5_3 = L19_1.points
          L5_3 = L5_3[L3_3]
          L5_3 = L5_3.x
          L6_3 = L19_1.points
          L6_3 = L6_3[L3_3]
          L6_3 = L6_3.y
          L7_3 = L19_1.minZ
          L8_3 = L19_1.points
          L8_3 = L8_3[L3_3]
          L8_3 = L8_3.x
          L9_3 = L19_1.points
          L9_3 = L9_3[L3_3]
          L9_3 = L9_3.y
          L10_3 = L19_1.maxZ
          L11_3 = 178
          L12_3 = 128
          L13_3 = 255
          L14_3 = 230
          L4_3(L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3)
          L4_3 = L19_1.points
          L4_3 = #L4_3
          if L3_3 < L4_3 then
            L4_3 = _drawWall
            L5_3 = L19_1.points
            L5_3 = L5_3[L3_3]
            L6_3 = L19_1.points
            L7_3 = L3_3 + 1
            L6_3 = L6_3[L7_3]
            L7_3 = L19_1.minZ
            L8_3 = L19_1.maxZ
            L9_3 = 114
            L10_3 = 49
            L11_3 = 212
            L4_3(L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3)
          end
          L4_3 = L19_1.points
          L4_3 = #L4_3
          if L3_3 == L4_3 then
            L4_3 = _drawWall
            L5_3 = L19_1.points
            L5_3 = L5_3[L3_3]
            L6_3 = L19_1.points
            L6_3 = L6_3[1]
            L7_3 = L19_1.minZ
            L8_3 = L19_1.maxZ
            L9_3 = 114
            L10_3 = 49
            L11_3 = 212
            L4_3(L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3)
          end
        end
      end
      L0_3 = Citizen
      L0_3 = L0_3.Wait
      L1_3 = 0
      L0_3(L1_3)
    end
    L0_3 = L8_1
    if L0_3 then
      L0_3 = A0_2.GarageInteriorVehicleEnter
      L1_3 = A0_2
      L0_3(L1_3)
    else
      L0_3 = FreezeEntityPosition
      L1_3 = PlayerPedId
      L1_3 = L1_3()
      L2_3 = false
      L0_3(L1_3, L2_3)
      L0_3 = A0_2.DeleteCamera
      L1_3 = A0_2
      L0_3(L1_3)
    end
  end
  L1_2(L2_2)
end
L30_1.Polyzone = L31_1
function L31_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  L3_2 = true
  L3_1 = L3_2
  L3_2 = A0_2.CreateCamera
  L4_2 = A0_2
  L3_2(L4_2)
  L3_2 = L22_1
  L3_2 = #L3_2
  if L3_2 >= 1 then
    L3_2 = library
    L3_2 = L3_2.RequestEntity
    L4_2 = Config
    L4_2 = L4_2.ParkingCreator
    L4_2 = L4_2.VehicleTypesModels
    L5_2 = L20_1
    L4_2 = L4_2[L5_2]
    L3_2(L4_2)
    L3_2 = pairs
    L4_2 = L22_1
    L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
    for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
      L9_2 = L8_2.coords
      if L9_2 then
        L9_2 = CreateVehicle
        L10_2 = GetHashKey
        L11_2 = Config
        L11_2 = L11_2.ParkingCreator
        L11_2 = L11_2.VehicleTypesModels
        L12_2 = L20_1
        L11_2 = L11_2[L12_2]
        L10_2 = L10_2(L11_2)
        L11_2 = L8_2.coords
        L11_2 = L11_2.x
        L12_2 = L8_2.coords
        L12_2 = L12_2.y
        L13_2 = L8_2.coords
        L13_2 = L13_2.z
        L14_2 = L8_2.heading
        L15_2 = false
        L16_2 = true
        L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
        L8_2.vehicle = L9_2
        L9_2 = Citizen
        L9_2 = L9_2.Wait
        L10_2 = 5
        L9_2(L10_2)
        L9_2 = nil
        L10_2 = GetGroundZFor_3dCoord
        L11_2 = L8_2.coords
        L11_2 = L11_2.x
        L12_2 = L8_2.coords
        L12_2 = L12_2.y
        L13_2 = L8_2.coords
        L13_2 = L13_2.z
        L14_2 = 0
        L10_2, L11_2 = L10_2(L11_2, L12_2, L13_2, L14_2)
        if L10_2 then
          L12_2 = SetEntityCoords
          L13_2 = L8_2.vehicle
          L14_2 = L8_2.coords
          L14_2 = L14_2.x
          L15_2 = L8_2.coords
          L15_2 = L15_2.y
          L16_2 = L11_2
          L12_2(L13_2, L14_2, L15_2, L16_2)
          L12_2 = GetEntityRotation
          L13_2 = L8_2.vehicle
          L14_2 = 2
          L12_2 = L12_2(L13_2, L14_2)
          L13_2 = SetEntityHeading
          L14_2 = L8_2.vehicle
          L15_2 = L8_2.heading
          L13_2(L14_2, L15_2)
          L13_2 = SetEntityRotation
          L14_2 = L8_2.vehicle
          L15_2 = L12_2.x
          L16_2 = L12_2.y
          L17_2 = L8_2.heading
          L18_2 = 2
          L19_2 = true
          L13_2(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
        else
          L12_2 = SetEntityCoords
          L13_2 = L8_2.vehicle
          L14_2 = L8_2.coords
          L14_2 = L14_2.x
          L15_2 = L8_2.coords
          L15_2 = L15_2.y
          L16_2 = L8_2.coords
          L16_2 = L16_2.z
          L12_2(L13_2, L14_2, L15_2, L16_2)
          L12_2 = SetEntityHeading
          L13_2 = L8_2.vehicle
          L14_2 = L8_2.heading
          L12_2(L13_2, L14_2)
        end
        L12_2 = Citizen
        L12_2 = L12_2.Wait
        L13_2 = 5
        L12_2(L13_2)
        L12_2 = FreezeEntityPosition
        L14_2 = L21_1
        L13_2 = L22_1
        L13_2 = L13_2[L14_2]
        L13_2 = L13_2.vehicle
        L14_2 = true
        L12_2(L13_2, L14_2)
      end
    end
    L3_2 = Citizen
    L3_2 = L3_2.Wait
    L4_2 = 100
    L3_2(L4_2)
    L3_2 = L22_1
    L3_2 = #L3_2
    L3_2 = L3_2 + 1
    L21_1 = L3_2
    L4_2 = L21_1
    L3_2 = L22_1
    L5_2 = {}
    L3_2[L4_2] = L5_2
    L4_2 = L21_1
    L3_2 = L22_1
    L3_2 = L3_2[L4_2]
    L3_2.heading = 0.0
    L4_2 = L21_1
    L3_2 = L22_1
    L3_2 = L3_2[L4_2]
    L4_2 = CreateVehicle
    L5_2 = GetHashKey
    L6_2 = Config
    L6_2 = L6_2.ParkingCreator
    L6_2 = L6_2.VehicleTypesModels
    L7_2 = L20_1
    L6_2 = L6_2[L7_2]
    L5_2 = L5_2(L6_2)
    L6_2 = x
    L7_2 = y
    L8_2 = z
    L10_2 = L21_1
    L9_2 = L22_1
    L9_2 = L9_2[L10_2]
    L9_2 = L9_2.heading
    L10_2 = false
    L11_2 = true
    L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
    L3_2.vehicle = L4_2
    L3_2 = FreezeEntityPosition
    L5_2 = L21_1
    L4_2 = L22_1
    L4_2 = L4_2[L5_2]
    L4_2 = L4_2.vehicle
    L5_2 = true
    L3_2(L4_2, L5_2)
  else
    L3_2 = 1
    L21_1 = L3_2
    L4_2 = L21_1
    L3_2 = L22_1
    L5_2 = {}
    L3_2[L4_2] = L5_2
    L3_2 = library
    L3_2 = L3_2.RequestEntity
    L4_2 = Config
    L4_2 = L4_2.ParkingCreator
    L4_2 = L4_2.VehicleTypesModels
    L5_2 = L20_1
    L4_2 = L4_2[L5_2]
    L3_2(L4_2)
    L4_2 = L21_1
    L3_2 = L22_1
    L3_2 = L3_2[L4_2]
    L3_2.heading = 0.0
    L4_2 = L21_1
    L3_2 = L22_1
    L3_2 = L3_2[L4_2]
    L4_2 = CreateVehicle
    L5_2 = GetHashKey
    L6_2 = Config
    L6_2 = L6_2.ParkingCreator
    L6_2 = L6_2.VehicleTypesModels
    L7_2 = L20_1
    L6_2 = L6_2[L7_2]
    L5_2 = L5_2(L6_2)
    L6_2 = x
    L7_2 = y
    L8_2 = z
    L10_2 = L21_1
    L9_2 = L22_1
    L9_2 = L9_2[L10_2]
    L9_2 = L9_2.heading
    L10_2 = false
    L11_2 = true
    L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
    L3_2.vehicle = L4_2
    L3_2 = FreezeEntityPosition
    L5_2 = L21_1
    L4_2 = L22_1
    L4_2 = L4_2[L5_2]
    L4_2 = L4_2.vehicle
    L5_2 = true
    L3_2(L4_2, L5_2)
  end
  L3_2 = Citizen
  L3_2 = L3_2.CreateThread
  function L4_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3
    while true do
      L0_3 = L3_1
      if not L0_3 then
        break
      end
      L0_3 = startRaycast
      L0_3()
      L0_3 = rotateCamInputs
      L0_3()
      L0_3 = moveCamInputs
      L0_3()
      L0_3 = DisabledControls
      L0_3()
      L0_3 = A0_2.DrawButtonsHint
      L1_3 = A0_2
      L2_3 = "parking.spaces"
      L0_3(L1_3, L2_3)
      L0_3 = L19_1.points
      L0_3 = #L0_3
      if L0_3 >= 1 then
        L0_3 = 1
        L1_3 = L19_1.points
        L1_3 = #L1_3
        L2_3 = 1
        for L3_3 = L0_3, L1_3, L2_3 do
          L4_3 = L19_1.points
          L4_3 = #L4_3
          if L3_3 < L4_3 then
            L4_3 = _drawWall
            L5_3 = L19_1.points
            L5_3 = L5_3[L3_3]
            L6_3 = L19_1.points
            L7_3 = L3_3 + 1
            L6_3 = L6_3[L7_3]
            L7_3 = L19_1.minZ
            L8_3 = L19_1.maxZ
            L9_3 = 114
            L10_3 = 49
            L11_3 = 212
            L4_3(L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3)
          end
          L4_3 = L19_1.points
          L4_3 = #L4_3
          if L3_3 == L4_3 then
            L4_3 = _drawWall
            L5_3 = L19_1.points
            L5_3 = L5_3[L3_3]
            L6_3 = L19_1.points
            L6_3 = L6_3[1]
            L7_3 = L19_1.minZ
            L8_3 = L19_1.maxZ
            L9_3 = 114
            L10_3 = 49
            L11_3 = 212
            L4_3(L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3)
          end
        end
      end
      L0_3 = Citizen
      L0_3 = L0_3.Wait
      L1_3 = 0
      L0_3(L1_3)
    end
    L0_3 = FreezeEntityPosition
    L1_3 = PlayerPedId
    L1_3 = L1_3()
    L2_3 = false
    L0_3(L1_3, L2_3)
    L0_3 = A0_2.DeleteCamera
    L1_3 = A0_2
    L0_3(L1_3)
    L0_3 = L22_1
    L0_3 = #L0_3
    if L0_3 >= 1 then
      L0_3 = pairs
      L1_3 = L22_1
      L0_3, L1_3, L2_3, L3_3 = L0_3(L1_3)
      for L4_3, L5_3 in L0_3, L1_3, L2_3, L3_3 do
        L6_3 = DeleteVehicle
        L7_3 = L5_3.vehicle
        L6_3(L7_3)
        L6_3 = DeleteEntity
        L7_3 = L5_3.vehicle
        L6_3(L7_3)
        L5_3.vehicle = nil
      end
    end
  end
  L3_2(L4_2)
end
L30_1.ParkingSpaces = L31_1
function L31_1(A0_2)
  local L1_2, L2_2
  L1_2 = true
  L4_1 = L1_2
  L1_2 = L24_1
  L1_2 = #L1_2
  if L1_2 > 1 then
    L1_2 = L24_1
    L1_2 = #L1_2
    L1_2 = L1_2 + 1
    L23_1 = L1_2
  else
    L1_2 = 1
    L23_1 = L1_2
  end
  L1_2 = A0_2.CreateCamera
  L2_2 = A0_2
  L1_2(L2_2)
  L1_2 = Citizen
  L1_2 = L1_2.CreateThread
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3
    while true do
      L0_3 = L4_1
      if not L0_3 then
        break
      end
      L0_3 = startRaycast
      L0_3()
      L0_3 = rotateCamInputs
      L0_3()
      L0_3 = moveCamInputs
      L0_3()
      L0_3 = DisabledControls
      L0_3()
      L0_3 = A0_2.DrawButtonsHint
      L1_3 = A0_2
      L2_3 = "parking.pay_stations"
      L0_3(L1_3, L2_3)
      L0_3 = L19_1.points
      L0_3 = #L0_3
      if L0_3 >= 1 then
        L0_3 = 1
        L1_3 = L19_1.points
        L1_3 = #L1_3
        L2_3 = 1
        for L3_3 = L0_3, L1_3, L2_3 do
          L4_3 = L19_1.points
          L4_3 = #L4_3
          if L3_3 < L4_3 then
            L4_3 = _drawWall
            L5_3 = L19_1.points
            L5_3 = L5_3[L3_3]
            L6_3 = L19_1.points
            L7_3 = L3_3 + 1
            L6_3 = L6_3[L7_3]
            L7_3 = L19_1.minZ
            L8_3 = L19_1.maxZ
            L9_3 = 114
            L10_3 = 49
            L11_3 = 212
            L4_3(L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3)
          end
          L4_3 = L19_1.points
          L4_3 = #L4_3
          if L3_3 == L4_3 then
            L4_3 = _drawWall
            L5_3 = L19_1.points
            L5_3 = L5_3[L3_3]
            L6_3 = L19_1.points
            L6_3 = L6_3[1]
            L7_3 = L19_1.minZ
            L8_3 = L19_1.maxZ
            L9_3 = 114
            L10_3 = 49
            L11_3 = 212
            L4_3(L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3)
          end
        end
      end
      L0_3 = Citizen
      L0_3 = L0_3.Wait
      L1_3 = 0
      L0_3(L1_3)
    end
    L0_3 = FreezeEntityPosition
    L1_3 = PlayerPedId
    L1_3 = L1_3()
    L2_3 = false
    L0_3(L1_3, L2_3)
    L0_3 = A0_2.DeleteCamera
    L1_3 = A0_2
    L0_3(L1_3)
  end
  L1_2(L2_2)
end
L30_1.Paystations = L31_1
function L31_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L5_2 = library
  L5_2 = L5_2.RequestEntity
  L6_2 = A2_2
  L5_2 = L5_2(L6_2)
  if not L5_2 then
    L5_2 = CL
    L5_2 = L5_2.Notification
    L6_2 = TRANSLATE
    L7_2 = "notify.parkingcreator:defined_npc_model_doesnt_exist"
    L6_2 = L6_2(L7_2)
    L7_2 = 4500
    L8_2 = "error"
    return L5_2(L6_2, L7_2, L8_2)
  end
  if A3_2 then
    L5_2 = string
    L5_2 = L5_2.len
    L6_2 = A3_2
    L5_2 = L5_2(L6_2)
    if L5_2 >= 1 then
      goto lbl_32
    end
  end
  if A4_2 then
    L5_2 = string
    L5_2 = L5_2.len
    L6_2 = A4_2
    L5_2 = L5_2(L6_2)
    ::lbl_32::
    if L5_2 >= 1 then
      L5_2 = library
      L5_2 = L5_2.LoadDict
      L6_2 = A4_2
      L5_2 = L5_2(L6_2)
      if not L5_2 then
        L5_2 = CL
        L5_2 = L5_2.Notification
        L6_2 = TRANSLATE
        L7_2 = "notify.parkingcreator:defined_npc_anim_doesnt_exist"
        L6_2 = L6_2(L7_2)
        L7_2 = 4500
        L8_2 = "error"
        return L5_2(L6_2, L7_2, L8_2)
      end
    end
  end
  L5_2 = SetNuiFocus
  L6_2 = false
  L7_2 = false
  L5_2(L6_2, L7_2)
  L5_2 = SendNUIMessage
  L6_2 = {}
  L6_2.action = "hideParkingCreator"
  L5_2(L6_2)
  L5_2 = true
  L5_1 = L5_2
  L25_1.heading = 0.0
  L5_2 = vec
  L6_2 = 0.0
  L7_2 = 0.0
  L8_2 = 0.0
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L25_1.coords = L5_2
  L5_2 = library
  L5_2 = L5_2.SpawnPed
  L6_2 = {}
  L6_2.model = A2_2
  L7_2 = L25_1.coords
  L6_2.coords = L7_2
  L5_2 = L5_2(L6_2)
  L25_1.ped = L5_2
  L5_2 = SetEntityCollision
  L6_2 = L25_1.ped
  L7_2 = false
  L8_2 = false
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = FreezeEntityPosition
  L6_2 = L25_1.ped
  L7_2 = true
  L5_2(L6_2, L7_2)
  if A3_2 then
    L5_2 = string
    L5_2 = L5_2.len
    L6_2 = A3_2
    L5_2 = L5_2(L6_2)
    if L5_2 >= 1 then
      goto lbl_99
    end
  end
  if A4_2 then
    L5_2 = string
    L5_2 = L5_2.len
    L6_2 = A4_2
    L5_2 = L5_2(L6_2)
    ::lbl_99::
    if L5_2 >= 1 then
      L5_2 = library
      L5_2 = L5_2.PlayAnimation
      L6_2 = L25_1.ped
      L7_2 = A4_2
      L8_2 = A3_2
      L9_2 = -1
      L10_2 = 1
      L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
    end
  end
  L5_2 = A0_2.CreateCamera
  L6_2 = A0_2
  L5_2(L6_2)
  L5_2 = Citizen
  L5_2 = L5_2.CreateThread
  function L6_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3
    while true do
      L0_3 = L5_1
      if not L0_3 then
        break
      end
      L0_3 = startRaycast
      L0_3()
      L0_3 = rotateCamInputs
      L0_3()
      L0_3 = moveCamInputs
      L0_3()
      L0_3 = DisabledControls
      L0_3()
      L0_3 = A0_2.DrawButtonsHint
      L1_3 = A0_2
      L2_3 = "ped"
      L0_3(L1_3, L2_3)
      L0_3 = L19_1.points
      L0_3 = #L0_3
      if L0_3 >= 1 then
        L0_3 = 1
        L1_3 = L19_1.points
        L1_3 = #L1_3
        L2_3 = 1
        for L3_3 = L0_3, L1_3, L2_3 do
          L4_3 = L19_1.points
          L4_3 = #L4_3
          if L3_3 < L4_3 then
            L4_3 = _drawWall
            L5_3 = L19_1.points
            L5_3 = L5_3[L3_3]
            L6_3 = L19_1.points
            L7_3 = L3_3 + 1
            L6_3 = L6_3[L7_3]
            L7_3 = L19_1.minZ
            L8_3 = L19_1.maxZ
            L9_3 = 114
            L10_3 = 49
            L11_3 = 212
            L4_3(L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3)
          end
          L4_3 = L19_1.points
          L4_3 = #L4_3
          if L3_3 == L4_3 then
            L4_3 = _drawWall
            L5_3 = L19_1.points
            L5_3 = L5_3[L3_3]
            L6_3 = L19_1.points
            L6_3 = L6_3[1]
            L7_3 = L19_1.minZ
            L8_3 = L19_1.maxZ
            L9_3 = 114
            L10_3 = 49
            L11_3 = 212
            L4_3(L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3)
          end
        end
      end
      L0_3 = Citizen
      L0_3 = L0_3.Wait
      L1_3 = 0
      L0_3(L1_3)
    end
    L0_3 = FreezeEntityPosition
    L1_3 = PlayerPedId
    L1_3 = L1_3()
    L2_3 = false
    L0_3(L1_3, L2_3)
    L0_3 = A0_2.DeleteCamera
    L1_3 = A0_2
    L0_3(L1_3)
    L0_3 = DeleteEntity
    L1_3 = L25_1.ped
    L0_3(L1_3)
    L25_1.ped = nil
  end
  L5_2(L6_2)
end
L30_1.NPC = L31_1
function L31_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L0_1
  if not L1_2 then
    return
  end
  L1_2 = true
  L6_1 = L1_2
  L26_1.interiorId = 1
  L1_2 = SetCamCoord
  L2_2 = A0_2.camera
  L3_2 = Config
  L3_2 = L3_2.ParkingCreator
  L3_2 = L3_2.HouseGarageInteriors
  L4_2 = L26_1.interiorId
  L3_2 = L3_2[L4_2]
  L3_2 = L3_2.camCoords
  L3_2 = L3_2.xyz
  L1_2(L2_2, L3_2)
  L1_2 = SetCamFov
  L2_2 = A0_2.camera
  L3_2 = 85.0
  L1_2(L2_2, L3_2)
  L1_2 = SetEntityCoords
  L2_2 = PlayerPedId
  L2_2 = L2_2()
  L3_2 = Config
  L3_2 = L3_2.ParkingCreator
  L3_2 = L3_2.HouseGarageInteriors
  L4_2 = L26_1.interiorId
  L3_2 = L3_2[L4_2]
  L3_2 = L3_2.camCoords
  L3_2 = L3_2.xyz
  L1_2(L2_2, L3_2)
  L1_2 = Citizen
  L1_2 = L1_2.CreateThread
  function L2_2()
    local L0_3, L1_3, L2_3
    while true do
      L0_3 = L6_1
      if not L0_3 then
        break
      end
      L0_3 = keyControls
      L0_3()
      L0_3 = rotateCamInputs
      L0_3()
      L0_3 = DisabledControls
      L0_3()
      L0_3 = A0_2.DrawButtonsHint
      L1_3 = A0_2
      L2_3 = "interior"
      L0_3(L1_3, L2_3)
      L0_3 = Citizen
      L0_3 = L0_3.Wait
      L1_3 = 0
      L0_3(L1_3)
    end
    L0_3 = FreezeEntityPosition
    L1_3 = PlayerPedId
    L1_3 = L1_3()
    L2_3 = false
    L0_3(L1_3, L2_3)
    L0_3 = A0_2.DeleteCamera
    L1_3 = A0_2
    L0_3(L1_3)
  end
  L1_2(L2_2)
end
L30_1.HouseGarageInterior = L31_1
function L31_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = true
  L7_1 = L1_2
  L1_2 = A0_2.CreateCamera
  L2_2 = A0_2
  L1_2(L2_2)
  L1_2 = library
  L1_2 = L1_2.RequestEntity
  L2_2 = "adder"
  L1_2(L2_2)
  L26_1.heading = 0.0
  L1_2 = CreateVehicle
  L2_2 = GetHashKey
  L3_2 = "adder"
  L2_2 = L2_2(L3_2)
  L3_2 = x
  L4_2 = y
  L5_2 = z
  L6_2 = L26_1.heading
  L7_2 = false
  L8_2 = true
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  L26_1.vehicle = L1_2
  L1_2 = FreezeEntityPosition
  L2_2 = L26_1.vehicle
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = Citizen
  L1_2 = L1_2.CreateThread
  function L2_2()
    local L0_3, L1_3, L2_3
    while true do
      L0_3 = L7_1
      if not L0_3 then
        break
      end
      L0_3 = startRaycast
      L0_3()
      L0_3 = rotateCamInputs
      L0_3()
      L0_3 = moveCamInputs
      L0_3()
      L0_3 = DisabledControls
      L0_3()
      L0_3 = A0_2.DrawButtonsHint
      L1_3 = A0_2
      L2_3 = "housing_garage.vehicle_enter"
      L0_3(L1_3, L2_3)
      L0_3 = Citizen
      L0_3 = L0_3.Wait
      L1_3 = 0
      L0_3(L1_3)
    end
    L0_3 = L26_1.vehicle
    if L0_3 then
      L0_3 = DoesEntityExist
      L1_3 = L26_1.vehicle
      L0_3 = L0_3(L1_3)
      if L0_3 then
        L0_3 = DeleteVehicle
        L1_3 = L26_1.vehicle
        L0_3(L1_3)
        L0_3 = DeleteEntity
        L1_3 = L26_1.vehicle
        L0_3(L1_3)
        L26_1.vehicle = nil
      end
    end
    L0_3 = FreezeEntityPosition
    L1_3 = PlayerPedId
    L1_3 = L1_3()
    L2_3 = false
    L0_3(L1_3, L2_3)
    L0_3 = A0_2.HouseGarageInterior
    L1_3 = A0_2
    L0_3(L1_3)
  end
  L1_2(L2_2)
end
L30_1.HouseGarageEnter = L31_1
function L31_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = library
  L1_2 = L1_2.RequestEntity
  L2_2 = "adder"
  L1_2(L2_2)
  L1_2 = true
  L8_1 = L1_2
  L27_1.enterVehHeading = 0.0
  L1_2 = CreateVehicle
  L2_2 = GetHashKey
  L3_2 = "adder"
  L2_2 = L2_2(L3_2)
  L3_2 = x
  L4_2 = y
  L5_2 = z
  L6_2 = L27_1.enterVehHeading
  L7_2 = false
  L8_2 = true
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  L27_1.vehicle = L1_2
  L1_2 = FreezeEntityPosition
  L2_2 = L27_1.vehicle
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = Citizen
  L1_2 = L1_2.CreateThread
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3
    while true do
      L0_3 = L8_1
      if not L0_3 then
        break
      end
      L0_3 = startRaycast
      L0_3()
      L0_3 = rotateCamInputs
      L0_3()
      L0_3 = moveCamInputs
      L0_3()
      L0_3 = DisabledControls
      L0_3()
      L0_3 = A0_2.DrawButtonsHint
      L1_3 = A0_2
      L2_3 = "garage.vehicle"
      L0_3(L1_3, L2_3)
      L0_3 = L19_1.points
      L0_3 = #L0_3
      if L0_3 >= 1 then
        L0_3 = 1
        L1_3 = L19_1.points
        L1_3 = #L1_3
        L2_3 = 1
        for L3_3 = L0_3, L1_3, L2_3 do
          L4_3 = L19_1.points
          L4_3 = #L4_3
          if L3_3 < L4_3 then
            L4_3 = _drawWall
            L5_3 = L19_1.points
            L5_3 = L5_3[L3_3]
            L6_3 = L19_1.points
            L7_3 = L3_3 + 1
            L6_3 = L6_3[L7_3]
            L7_3 = L19_1.minZ
            L8_3 = L19_1.maxZ
            L9_3 = 114
            L10_3 = 49
            L11_3 = 212
            L4_3(L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3)
          end
          L4_3 = L19_1.points
          L4_3 = #L4_3
          if L3_3 == L4_3 then
            L4_3 = _drawWall
            L5_3 = L19_1.points
            L5_3 = L5_3[L3_3]
            L6_3 = L19_1.points
            L6_3 = L6_3[1]
            L7_3 = L19_1.minZ
            L8_3 = L19_1.maxZ
            L9_3 = 114
            L10_3 = 49
            L11_3 = 212
            L4_3(L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3)
          end
        end
      end
      L0_3 = Citizen
      L0_3 = L0_3.Wait
      L1_3 = 0
      L0_3(L1_3)
    end
    L0_3 = L27_1.vehicle
    if L0_3 then
      L0_3 = DoesEntityExist
      L1_3 = L27_1.vehicle
      L0_3 = L0_3(L1_3)
      if L0_3 then
        L0_3 = DeleteVehicle
        L1_3 = L27_1.vehicle
        L0_3(L1_3)
        L0_3 = DeleteEntity
        L1_3 = L27_1.vehicle
        L0_3(L1_3)
        L27_1.vehicle = nil
      end
    end
    L0_3 = FreezeEntityPosition
    L1_3 = PlayerPedId
    L1_3 = L1_3()
    L2_3 = false
    L0_3(L1_3, L2_3)
    L0_3 = false
    L8_1 = L0_3
    L0_3 = A0_2.GarageInteriorPedEnter
    L1_3 = A0_2
    L0_3(L1_3)
  end
  L1_2(L2_2)
end
L30_1.GarageInteriorVehicleEnter = L31_1
function L31_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = true
  L9_1 = L1_2
  L27_1.enterPedHeading = 0.0
  L1_2 = vec
  L2_2 = 0.0
  L3_2 = 0.0
  L4_2 = 0.0
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L27_1.enterPedCoords = L1_2
  L1_2 = library
  L1_2 = L1_2.SpawnPed
  L2_2 = {}
  L2_2.model = "mp_m_freemode_01"
  L3_2 = L27_1.enterPedCoords
  L2_2.coords = L3_2
  L1_2 = L1_2(L2_2)
  L27_1.ped = L1_2
  L1_2 = SetEntityCollision
  L2_2 = L27_1.ped
  L3_2 = false
  L4_2 = false
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = FreezeEntityPosition
  L2_2 = L27_1.ped
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = Citizen
  L1_2 = L1_2.CreateThread
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3
    while true do
      L0_3 = L9_1
      if not L0_3 then
        break
      end
      L0_3 = startRaycast
      L0_3()
      L0_3 = rotateCamInputs
      L0_3()
      L0_3 = moveCamInputs
      L0_3()
      L0_3 = DisabledControls
      L0_3()
      L0_3 = A0_2.DrawButtonsHint
      L1_3 = A0_2
      L2_3 = "ped"
      L0_3(L1_3, L2_3)
      L0_3 = L19_1.points
      L0_3 = #L0_3
      if L0_3 >= 1 then
        L0_3 = 1
        L1_3 = L19_1.points
        L1_3 = #L1_3
        L2_3 = 1
        for L3_3 = L0_3, L1_3, L2_3 do
          L4_3 = L19_1.points
          L4_3 = #L4_3
          if L3_3 < L4_3 then
            L4_3 = _drawWall
            L5_3 = L19_1.points
            L5_3 = L5_3[L3_3]
            L6_3 = L19_1.points
            L7_3 = L3_3 + 1
            L6_3 = L6_3[L7_3]
            L7_3 = L19_1.minZ
            L8_3 = L19_1.maxZ
            L9_3 = 114
            L10_3 = 49
            L11_3 = 212
            L4_3(L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3)
          end
          L4_3 = L19_1.points
          L4_3 = #L4_3
          if L3_3 == L4_3 then
            L4_3 = _drawWall
            L5_3 = L19_1.points
            L5_3 = L5_3[L3_3]
            L6_3 = L19_1.points
            L6_3 = L6_3[1]
            L7_3 = L19_1.minZ
            L8_3 = L19_1.maxZ
            L9_3 = 114
            L10_3 = 49
            L11_3 = 212
            L4_3(L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3)
          end
        end
      end
      L0_3 = Citizen
      L0_3 = L0_3.Wait
      L1_3 = 0
      L0_3(L1_3)
    end
    L0_3 = DeleteEntity
    L1_3 = L27_1.ped
    L0_3(L1_3)
    L27_1.ped = nil
    L0_3 = FreezeEntityPosition
    L1_3 = PlayerPedId
    L1_3 = L1_3()
    L2_3 = false
    L0_3(L1_3, L2_3)
    L0_3 = false
    L9_1 = L0_3
    L0_3 = A0_2.GarageInterior
    L1_3 = A0_2
    L0_3(L1_3)
  end
  L1_2(L2_2)
end
L30_1.GarageInteriorPedEnter = L31_1
function L31_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = true
  L10_1 = L1_2
  L27_1.interiorId = 1
  L1_2 = SetCamCoord
  L2_2 = A0_2.camera
  L3_2 = Config
  L3_2 = L3_2.ParkingCreator
  L3_2 = L3_2.GarageInteriors
  L4_2 = L27_1.interiorId
  L3_2 = L3_2[L4_2]
  L3_2 = L3_2.camCoords
  L3_2 = L3_2.xyz
  L1_2(L2_2, L3_2)
  L1_2 = SetCamFov
  L2_2 = A0_2.camera
  L3_2 = 85.0
  L1_2(L2_2, L3_2)
  L1_2 = SetEntityCoords
  L2_2 = PlayerPedId
  L2_2 = L2_2()
  L3_2 = Config
  L3_2 = L3_2.ParkingCreator
  L3_2 = L3_2.GarageInteriors
  L4_2 = L27_1.interiorId
  L3_2 = L3_2[L4_2]
  L3_2 = L3_2.camCoords
  L3_2 = L3_2.xyz
  L1_2(L2_2, L3_2)
  L1_2 = Citizen
  L1_2 = L1_2.CreateThread
  function L2_2()
    local L0_3, L1_3, L2_3
    while true do
      L0_3 = L10_1
      if not L0_3 then
        break
      end
      L0_3 = keyControls
      L0_3()
      L0_3 = rotateCamInputs
      L0_3()
      L0_3 = DisabledControls
      L0_3()
      L0_3 = A0_2.DrawButtonsHint
      L1_3 = A0_2
      L2_3 = "interior"
      L0_3(L1_3, L2_3)
      L0_3 = Citizen
      L0_3 = L0_3.Wait
      L1_3 = 0
      L0_3(L1_3)
    end
    L0_3 = FreezeEntityPosition
    L1_3 = PlayerPedId
    L1_3 = L1_3()
    L2_3 = false
    L0_3(L1_3, L2_3)
    L0_3 = A0_2.DeleteCamera
    L1_3 = A0_2
    L0_3(L1_3)
  end
  L1_2(L2_2)
end
L30_1.GarageInterior = L31_1
function L31_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = L11_1
  if L1_2 then
    L1_2 = L29_1.pedCoords
    if L1_2 then
      L1_2 = library
      L1_2 = L1_2.SpawnPed
      L2_2 = {}
      L2_2.model = "mp_m_freemode_01"
      L3_2 = L29_1.pedCoords
      L2_2.coords = L3_2
      L1_2 = L1_2(L2_2)
      L29_1.ped = L1_2
      L1_2 = SetEntityHeading
      L2_2 = L29_1.ped
      L3_2 = L29_1.pedHeading
      L1_2(L2_2, L3_2)
      L1_2 = SetEntityCollision
      L2_2 = L29_1.ped
      L3_2 = false
      L4_2 = false
      L1_2(L2_2, L3_2, L4_2)
      L1_2 = FreezeEntityPosition
      L2_2 = L29_1.ped
      L3_2 = true
      L1_2(L2_2, L3_2)
    end
    L1_2 = L29_1.vehicleCoords
    if L1_2 then
      L1_2 = L29_1.vehModel
      if L1_2 then
        L1_2 = library
        L1_2 = L1_2.RequestEntity
        L2_2 = L29_1.vehModel
        L1_2(L2_2)
        L1_2 = CreateVehicle
        L2_2 = GetHashKey
        L3_2 = L29_1.vehModel
        L2_2 = L2_2(L3_2)
        L3_2 = L29_1.vehicleCoords
        L3_2 = L3_2.x
        L4_2 = L29_1.vehicleCoords
        L4_2 = L4_2.y
        L5_2 = L29_1.vehicleCoords
        L5_2 = L5_2.z
        L6_2 = L29_1.vehicleHeading
        L7_2 = false
        L8_2 = true
        L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
        L29_1.vehicle = L1_2
        L1_2 = SetEntityCoords
        L2_2 = L29_1.vehicle
        L3_2 = L29_1.vehicleCoords
        L3_2 = L3_2.x
        L4_2 = L29_1.vehicleCoords
        L4_2 = L4_2.y
        L5_2 = L29_1.vehicleCoords
        L5_2 = L5_2.z
        L1_2(L2_2, L3_2, L4_2, L5_2)
        L1_2 = SetEntityHeading
        L2_2 = L29_1.vehicle
        L3_2 = L29_1.vehicleHeading
        L1_2(L2_2, L3_2)
        L1_2 = FreezeEntityPosition
        L2_2 = L29_1.vehicle
        L3_2 = true
        L1_2(L2_2, L3_2)
      end
    end
  else
    L1_2 = L28_1.pedCoords
    if L1_2 then
      L1_2 = library
      L1_2 = L1_2.SpawnPed
      L2_2 = {}
      L2_2.model = "mp_m_freemode_01"
      L3_2 = L28_1.pedCoords
      L2_2.coords = L3_2
      L1_2 = L1_2(L2_2)
      L28_1.ped = L1_2
      L1_2 = SetEntityHeading
      L2_2 = L28_1.ped
      L3_2 = L28_1.pedHeading
      L1_2(L2_2, L3_2)
      L1_2 = SetEntityCollision
      L2_2 = L28_1.ped
      L3_2 = false
      L4_2 = false
      L1_2(L2_2, L3_2, L4_2)
      L1_2 = FreezeEntityPosition
      L2_2 = L28_1.ped
      L3_2 = true
      L1_2(L2_2, L3_2)
    end
    L1_2 = L28_1.vehicleCoords
    if L1_2 then
      L1_2 = L28_1.vehModel
      if L1_2 then
        L1_2 = library
        L1_2 = L1_2.RequestEntity
        L2_2 = L28_1.vehModel
        L1_2(L2_2)
        L1_2 = CreateVehicle
        L2_2 = GetHashKey
        L3_2 = L28_1.vehModel
        L2_2 = L2_2(L3_2)
        L3_2 = L28_1.vehicleCoords
        L3_2 = L3_2.x
        L4_2 = L28_1.vehicleCoords
        L4_2 = L4_2.y
        L5_2 = L28_1.vehicleCoords
        L5_2 = L5_2.z
        L6_2 = L28_1.vehicleHeading
        L7_2 = false
        L8_2 = true
        L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
        L28_1.vehicle = L1_2
        L1_2 = SetEntityCoords
        L2_2 = L28_1.vehicle
        L3_2 = L28_1.vehicleCoords
        L3_2 = L3_2.x
        L4_2 = L28_1.vehicleCoords
        L4_2 = L4_2.y
        L5_2 = L28_1.vehicleCoords
        L5_2 = L5_2.z
        L1_2(L2_2, L3_2, L4_2, L5_2)
        L1_2 = SetEntityHeading
        L2_2 = L28_1.vehicle
        L3_2 = L28_1.vehicleHeading
        L1_2(L2_2, L3_2)
        L1_2 = FreezeEntityPosition
        L2_2 = L28_1.vehicle
        L3_2 = true
        L1_2(L2_2, L3_2)
      end
    end
    L1_2 = L28_1.spawnpointCoords
    if L1_2 then
      L1_2 = library
      L1_2 = L1_2.RequestEntity
      L2_2 = L28_1.vehModel
      L1_2(L2_2)
      L1_2 = CreateVehicle
      L2_2 = GetHashKey
      L3_2 = L28_1.vehModel
      L2_2 = L2_2(L3_2)
      L3_2 = L28_1.spawnpointCoords
      L3_2 = L3_2.x
      L4_2 = L28_1.spawnpointCoords
      L4_2 = L4_2.y
      L5_2 = L28_1.spawnpointCoords
      L5_2 = L5_2.z
      L6_2 = L28_1.spawnpointHeading
      if not L6_2 then
        L6_2 = 0.0
      end
      L7_2 = false
      L8_2 = true
      L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
      L28_1.spawnpointVehicle = L1_2
      L1_2 = SetEntityCoords
      L2_2 = L28_1.spawnpointVehicle
      L3_2 = L28_1.spawnpointCoords
      L3_2 = L3_2.x
      L4_2 = L28_1.spawnpointCoords
      L4_2 = L4_2.y
      L5_2 = L28_1.spawnpointCoords
      L5_2 = L5_2.z
      L1_2(L2_2, L3_2, L4_2, L5_2)
      L1_2 = SetEntityHeading
      L2_2 = L28_1.spawnpointVehicle
      L3_2 = L28_1.spawnpointHeading
      if not L3_2 then
        L3_2 = 0.0
      end
      L1_2(L2_2, L3_2)
      L1_2 = SetEntityAlpha
      L2_2 = L28_1.spawnpointVehicle
      L3_2 = 80
      L4_2 = true
      L1_2(L2_2, L3_2, L4_2)
      L1_2 = SetEntityCompletelyDisableCollision
      L2_2 = L28_1.spawnpointVehicle
      L3_2 = true
      L4_2 = false
      L1_2(L2_2, L3_2, L4_2)
      L1_2 = FreezeEntityPosition
      L2_2 = L28_1.spawnpointVehicle
      L3_2 = true
      L1_2(L2_2, L3_2)
    end
  end
end
L30_1.LoadGarage = L31_1
function L31_1(A0_2)
  local L1_2, L2_2
  L1_2 = L11_1
  if L1_2 then
    L1_2 = L29_1.ped
    if L1_2 then
      L1_2 = DeleteEntity
      L2_2 = L29_1.ped
      L1_2(L2_2)
      L29_1.ped = nil
    end
    L1_2 = L29_1.vehicle
    if L1_2 then
      L1_2 = DoesEntityExist
      L2_2 = L29_1.vehicle
      L1_2 = L1_2(L2_2)
      if L1_2 then
        L1_2 = DeleteVehicle
        L2_2 = L29_1.vehicle
        L1_2(L2_2)
        L1_2 = DeleteEntity
        L2_2 = L29_1.vehicle
        L1_2(L2_2)
        L29_1.vehicle = nil
      end
    end
  else
    L1_2 = L28_1.ped
    if L1_2 then
      L1_2 = DeleteEntity
      L2_2 = L28_1.ped
      L1_2(L2_2)
      L28_1.ped = nil
    end
    L1_2 = L28_1.vehicle
    if L1_2 then
      L1_2 = DoesEntityExist
      L2_2 = L28_1.vehicle
      L1_2 = L1_2(L2_2)
      if L1_2 then
        L1_2 = DeleteVehicle
        L2_2 = L28_1.vehicle
        L1_2(L2_2)
        L1_2 = DeleteEntity
        L2_2 = L28_1.vehicle
        L1_2(L2_2)
        L28_1.vehicle = nil
      end
    end
    L1_2 = L28_1.spawnpointVehicle
    if L1_2 then
      L1_2 = DoesEntityExist
      L2_2 = L28_1.spawnpointVehicle
      L1_2 = L1_2(L2_2)
      if L1_2 then
        L1_2 = DeleteVehicle
        L2_2 = L28_1.spawnpointVehicle
        L1_2(L2_2)
        L1_2 = DeleteEntity
        L2_2 = L28_1.spawnpointVehicle
        L1_2(L2_2)
        L28_1.spawnpointVehicle = nil
      end
    end
  end
end
L30_1.RemoveGarageSettings = L31_1
function L31_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = true
  L13_1 = L1_2
  L1_2 = SetNuiFocus
  L2_2 = false
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = SendNUIMessage
  L2_2 = {}
  L2_2.action = "hideParkingCreator"
  L1_2(L2_2)
  L1_2 = A0_2.CreateCamera
  L2_2 = A0_2
  L1_2(L2_2)
  L28_1.menuPoint = nil
  L1_2 = A0_2.LoadGarage
  L2_2 = A0_2
  L1_2(L2_2)
  L1_2 = Citizen
  L1_2 = L1_2.CreateThread
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3
    while true do
      L0_3 = L13_1
      if not L0_3 then
        break
      end
      L0_3 = startRaycast
      L0_3()
      L0_3 = rotateCamInputs
      L0_3()
      L0_3 = moveCamInputs
      L0_3()
      L0_3 = DisabledControls
      L0_3()
      L0_3 = A0_2.DrawButtonsHint
      L1_3 = A0_2
      L2_3 = "default"
      L0_3(L1_3, L2_3)
      L0_3 = L19_1.points
      L0_3 = #L0_3
      if L0_3 >= 1 then
        L0_3 = 1
        L1_3 = L19_1.points
        L1_3 = #L1_3
        L2_3 = 1
        for L3_3 = L0_3, L1_3, L2_3 do
          L4_3 = L19_1.points
          L4_3 = #L4_3
          if L3_3 < L4_3 then
            L4_3 = _drawWall
            L5_3 = L19_1.points
            L5_3 = L5_3[L3_3]
            L6_3 = L19_1.points
            L7_3 = L3_3 + 1
            L6_3 = L6_3[L7_3]
            L7_3 = L19_1.minZ
            L8_3 = L19_1.maxZ
            L9_3 = 114
            L10_3 = 49
            L11_3 = 212
            L4_3(L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3)
          end
          L4_3 = L19_1.points
          L4_3 = #L4_3
          if L3_3 == L4_3 then
            L4_3 = _drawWall
            L5_3 = L19_1.points
            L5_3 = L5_3[L3_3]
            L6_3 = L19_1.points
            L6_3 = L6_3[1]
            L7_3 = L19_1.minZ
            L8_3 = L19_1.maxZ
            L9_3 = 114
            L10_3 = 49
            L11_3 = 212
            L4_3(L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3)
          end
        end
      end
      L0_3 = Citizen
      L0_3 = L0_3.Wait
      L1_3 = 0
      L0_3(L1_3)
    end
    L0_3 = FreezeEntityPosition
    L1_3 = PlayerPedId
    L1_3 = L1_3()
    L2_3 = false
    L0_3(L1_3, L2_3)
    L0_3 = A0_2.DeleteCamera
    L1_3 = A0_2
    L0_3(L1_3)
    L0_3 = A0_2.RemoveGarageSettings
    L1_3 = A0_2
    L0_3(L1_3)
  end
  L1_2(L2_2)
end
L30_1.GarageMenuPoint = L31_1
function L31_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = true
  L14_1 = L1_2
  L1_2 = SetNuiFocus
  L2_2 = false
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = SendNUIMessage
  L2_2 = {}
  L2_2.action = "hideParkingCreator"
  L1_2(L2_2)
  L28_1.pedCoords = nil
  L28_1.pedHeading = nil
  L29_1.pedCoords = nil
  L29_1.pedHeading = nil
  L1_2 = A0_2.LoadGarage
  L2_2 = A0_2
  L1_2(L2_2)
  L1_2 = Citizen
  L1_2 = L1_2.Wait
  L2_2 = 50
  L1_2(L2_2)
  L1_2 = L11_1
  if L1_2 then
    L1_2 = vec
    L2_2 = 0.0
    L3_2 = 0.0
    L4_2 = 0.0
    L1_2 = L1_2(L2_2, L3_2, L4_2)
    L29_1.pedCoords = L1_2
    L29_1.pedHeading = 0.0
    L1_2 = library
    L1_2 = L1_2.SpawnPed
    L2_2 = {}
    L2_2.model = "mp_m_freemode_01"
    L3_2 = L29_1.pedCoords
    L2_2.coords = L3_2
    L1_2 = L1_2(L2_2)
    L29_1.ped = L1_2
    L1_2 = L29_1.ped
    if L1_2 then
      L1_2 = L29_1.vehicle
      if L1_2 then
        L1_2 = SetEntityNoCollisionEntity
        L2_2 = L29_1.ped
        L3_2 = L29_1.vehicle
        L4_2 = false
        L1_2(L2_2, L3_2, L4_2)
      end
    end
    L1_2 = SetEntityCollision
    L2_2 = L29_1.ped
    L3_2 = false
    L4_2 = false
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = FreezeEntityPosition
    L2_2 = L29_1.ped
    L3_2 = true
    L1_2(L2_2, L3_2)
  else
    L1_2 = vec
    L2_2 = 0.0
    L3_2 = 0.0
    L4_2 = 0.0
    L1_2 = L1_2(L2_2, L3_2, L4_2)
    L28_1.pedCoords = L1_2
    L28_1.pedHeading = 0.0
    L1_2 = library
    L1_2 = L1_2.SpawnPed
    L2_2 = {}
    L2_2.model = "mp_m_freemode_01"
    L3_2 = L28_1.pedCoords
    L2_2.coords = L3_2
    L1_2 = L1_2(L2_2)
    L28_1.ped = L1_2
    L1_2 = L28_1.ped
    if L1_2 then
      L1_2 = L28_1.vehicle
      if L1_2 then
        L1_2 = SetEntityNoCollisionEntity
        L2_2 = L28_1.ped
        L3_2 = L28_1.vehicle
        L4_2 = false
        L1_2(L2_2, L3_2, L4_2)
      end
    end
    L1_2 = SetEntityCollision
    L2_2 = L28_1.ped
    L3_2 = false
    L4_2 = false
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = FreezeEntityPosition
    L2_2 = L28_1.ped
    L3_2 = true
    L1_2(L2_2, L3_2)
  end
  L1_2 = A0_2.CreateCamera
  L2_2 = A0_2
  L1_2(L2_2)
  L1_2 = Citizen
  L1_2 = L1_2.CreateThread
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3
    while true do
      L0_3 = L14_1
      if not L0_3 then
        break
      end
      L0_3 = startRaycast
      L0_3()
      L0_3 = rotateCamInputs
      L0_3()
      L0_3 = moveCamInputs
      L0_3()
      L0_3 = DisabledControls
      L0_3()
      L0_3 = A0_2.DrawButtonsHint
      L1_3 = A0_2
      L2_3 = "ped"
      L0_3(L1_3, L2_3)
      L0_3 = L19_1.points
      L0_3 = #L0_3
      if L0_3 >= 1 then
        L0_3 = 1
        L1_3 = L19_1.points
        L1_3 = #L1_3
        L2_3 = 1
        for L3_3 = L0_3, L1_3, L2_3 do
          L4_3 = L19_1.points
          L4_3 = #L4_3
          if L3_3 < L4_3 then
            L4_3 = _drawWall
            L5_3 = L19_1.points
            L5_3 = L5_3[L3_3]
            L6_3 = L19_1.points
            L7_3 = L3_3 + 1
            L6_3 = L6_3[L7_3]
            L7_3 = L19_1.minZ
            L8_3 = L19_1.maxZ
            L9_3 = 114
            L10_3 = 49
            L11_3 = 212
            L4_3(L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3)
          end
          L4_3 = L19_1.points
          L4_3 = #L4_3
          if L3_3 == L4_3 then
            L4_3 = _drawWall
            L5_3 = L19_1.points
            L5_3 = L5_3[L3_3]
            L6_3 = L19_1.points
            L6_3 = L6_3[1]
            L7_3 = L19_1.minZ
            L8_3 = L19_1.maxZ
            L9_3 = 114
            L10_3 = 49
            L11_3 = 212
            L4_3(L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3)
          end
        end
      end
      L0_3 = Citizen
      L0_3 = L0_3.Wait
      L1_3 = 0
      L0_3(L1_3)
    end
    L0_3 = FreezeEntityPosition
    L1_3 = PlayerPedId
    L1_3 = L1_3()
    L2_3 = false
    L0_3(L1_3, L2_3)
    L0_3 = A0_2.DeleteCamera
    L1_3 = A0_2
    L0_3(L1_3)
    L0_3 = A0_2.RemoveGarageSettings
    L1_3 = A0_2
    L0_3(L1_3)
  end
  L1_2(L2_2)
end
L30_1.GaragePedPoint = L31_1
function L31_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = true
  L15_1 = L1_2
  L1_2 = SetNuiFocus
  L2_2 = false
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = SendNUIMessage
  L2_2 = {}
  L2_2.action = "hideParkingCreator"
  L1_2(L2_2)
  L28_1.vehicleCoords = nil
  L28_1.vehicleHeading = nil
  L29_1.vehicleCoords = nil
  L29_1.vehicleHeading = nil
  L1_2 = A0_2.LoadGarage
  L2_2 = A0_2
  L1_2(L2_2)
  L1_2 = Citizen
  L1_2 = L1_2.Wait
  L2_2 = 50
  L1_2(L2_2)
  L1_2 = L11_1
  if L1_2 then
    L1_2 = vec
    L2_2 = 0.0
    L3_2 = 0.0
    L4_2 = 0.0
    L1_2 = L1_2(L2_2, L3_2, L4_2)
    L29_1.vehicleCoords = L1_2
    L29_1.vehicleHeading = 0.0
    L1_2 = library
    L1_2 = L1_2.RequestEntity
    L2_2 = L29_1.vehModel
    L1_2(L2_2)
    L1_2 = CreateVehicle
    L2_2 = GetHashKey
    L3_2 = L29_1.vehModel
    L2_2 = L2_2(L3_2)
    L3_2 = L29_1.vehicleCoords
    L3_2 = L3_2.x
    L4_2 = L29_1.vehicleCoords
    L4_2 = L4_2.y
    L5_2 = L29_1.vehicleCoords
    L5_2 = L5_2.z
    L6_2 = L29_1.vehicleHeading
    L7_2 = false
    L8_2 = true
    L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
    L29_1.vehicle = L1_2
    L1_2 = SetEntityCoords
    L2_2 = L29_1.vehicle
    L3_2 = L29_1.vehicleCoords
    L3_2 = L3_2.x
    L4_2 = L29_1.vehicleCoords
    L4_2 = L4_2.y
    L5_2 = L29_1.vehicleCoords
    L5_2 = L5_2.z
    L1_2(L2_2, L3_2, L4_2, L5_2)
    L1_2 = SetEntityHeading
    L2_2 = L29_1.vehicle
    L3_2 = L29_1.vehicleHeading
    L1_2(L2_2, L3_2)
    L1_2 = FreezeEntityPosition
    L2_2 = L29_1.vehicle
    L3_2 = true
    L1_2(L2_2, L3_2)
    L1_2 = L29_1.ped
    if L1_2 then
      L1_2 = L29_1.vehicle
      if L1_2 then
        L1_2 = SetEntityNoCollisionEntity
        L2_2 = L29_1.ped
        L3_2 = L29_1.vehicle
        L4_2 = false
        L1_2(L2_2, L3_2, L4_2)
      end
    end
  else
    L1_2 = vec
    L2_2 = 0.0
    L3_2 = 0.0
    L4_2 = 0.0
    L1_2 = L1_2(L2_2, L3_2, L4_2)
    L28_1.vehicleCoords = L1_2
    L28_1.vehicleHeading = 0.0
    L1_2 = library
    L1_2 = L1_2.RequestEntity
    L2_2 = L28_1.vehModel
    L1_2(L2_2)
    L1_2 = CreateVehicle
    L2_2 = GetHashKey
    L3_2 = L28_1.vehModel
    L2_2 = L2_2(L3_2)
    L3_2 = L28_1.vehicleCoords
    L3_2 = L3_2.x
    L4_2 = L28_1.vehicleCoords
    L4_2 = L4_2.y
    L5_2 = L28_1.vehicleCoords
    L5_2 = L5_2.z
    L6_2 = L28_1.vehicleHeading
    L7_2 = false
    L8_2 = true
    L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
    L28_1.vehicle = L1_2
    L1_2 = SetEntityCoords
    L2_2 = L28_1.vehicle
    L3_2 = L28_1.vehicleCoords
    L3_2 = L3_2.x
    L4_2 = L28_1.vehicleCoords
    L4_2 = L4_2.y
    L5_2 = L28_1.vehicleCoords
    L5_2 = L5_2.z
    L1_2(L2_2, L3_2, L4_2, L5_2)
    L1_2 = SetEntityHeading
    L2_2 = L28_1.vehicle
    L3_2 = L28_1.vehicleHeading
    L1_2(L2_2, L3_2)
    L1_2 = FreezeEntityPosition
    L2_2 = L28_1.vehicle
    L3_2 = true
    L1_2(L2_2, L3_2)
    L1_2 = L28_1.ped
    if L1_2 then
      L1_2 = L28_1.vehicle
      if L1_2 then
        L1_2 = SetEntityNoCollisionEntity
        L2_2 = L28_1.ped
        L3_2 = L28_1.vehicle
        L4_2 = false
        L1_2(L2_2, L3_2, L4_2)
      end
    end
  end
  L1_2 = A0_2.CreateCamera
  L2_2 = A0_2
  L1_2(L2_2)
  L1_2 = Citizen
  L1_2 = L1_2.CreateThread
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3
    while true do
      L0_3 = L15_1
      if not L0_3 then
        break
      end
      L0_3 = startRaycast
      L0_3()
      L0_3 = rotateCamInputs
      L0_3()
      L0_3 = moveCamInputs
      L0_3()
      L0_3 = DisabledControls
      L0_3()
      L0_3 = A0_2.DrawButtonsHint
      L1_3 = A0_2
      L2_3 = "garage.vehicle"
      L0_3(L1_3, L2_3)
      L0_3 = L19_1.points
      L0_3 = #L0_3
      if L0_3 >= 1 then
        L0_3 = 1
        L1_3 = L19_1.points
        L1_3 = #L1_3
        L2_3 = 1
        for L3_3 = L0_3, L1_3, L2_3 do
          L4_3 = L19_1.points
          L4_3 = #L4_3
          if L3_3 < L4_3 then
            L4_3 = _drawWall
            L5_3 = L19_1.points
            L5_3 = L5_3[L3_3]
            L6_3 = L19_1.points
            L7_3 = L3_3 + 1
            L6_3 = L6_3[L7_3]
            L7_3 = L19_1.minZ
            L8_3 = L19_1.maxZ
            L9_3 = 114
            L10_3 = 49
            L11_3 = 212
            L4_3(L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3)
          end
          L4_3 = L19_1.points
          L4_3 = #L4_3
          if L3_3 == L4_3 then
            L4_3 = _drawWall
            L5_3 = L19_1.points
            L5_3 = L5_3[L3_3]
            L6_3 = L19_1.points
            L6_3 = L6_3[1]
            L7_3 = L19_1.minZ
            L8_3 = L19_1.maxZ
            L9_3 = 114
            L10_3 = 49
            L11_3 = 212
            L4_3(L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3)
          end
        end
      end
      L0_3 = Citizen
      L0_3 = L0_3.Wait
      L1_3 = 0
      L0_3(L1_3)
    end
    L0_3 = FreezeEntityPosition
    L1_3 = PlayerPedId
    L1_3 = L1_3()
    L2_3 = false
    L0_3(L1_3, L2_3)
    L0_3 = A0_2.DeleteCamera
    L1_3 = A0_2
    L0_3(L1_3)
    L0_3 = A0_2.RemoveGarageSettings
    L1_3 = A0_2
    L0_3(L1_3)
  end
  L1_2(L2_2)
end
L30_1.GarageVehiclePoint = L31_1
function L31_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = true
  L16_1 = L1_2
  L1_2 = SetNuiFocus
  L2_2 = false
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = SendNUIMessage
  L2_2 = {}
  L2_2.action = "hideParkingCreator"
  L1_2(L2_2)
  L28_1.cameraCoords = nil
  L29_1.cameraCoords = nil
  L1_2 = A0_2.LoadGarage
  L2_2 = A0_2
  L1_2(L2_2)
  L1_2 = A0_2.CreateCamera
  L2_2 = A0_2
  L1_2(L2_2)
  L1_2 = Citizen
  L1_2 = L1_2.Wait
  L2_2 = 50
  L1_2(L2_2)
  L1_2 = L11_1
  if L1_2 then
    L1_2 = PointCamAtCoord
    L2_2 = A0_2.camera
    L3_2 = L29_1.vehicleCoords
    L3_2 = L3_2.xyz
    L1_2(L2_2, L3_2)
  else
    L1_2 = PointCamAtCoord
    L2_2 = A0_2.camera
    L3_2 = L28_1.vehicleCoords
    L3_2 = L3_2.xyz
    L1_2(L2_2, L3_2)
  end
  L1_2 = Citizen
  L1_2 = L1_2.CreateThread
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3
    while true do
      L0_3 = L16_1
      if not L0_3 then
        break
      end
      L0_3 = startRaycast
      L0_3()
      L0_3 = moveCamInputs
      L0_3()
      L0_3 = DisabledControls
      L0_3()
      L0_3 = A0_2.DrawButtonsHint
      L1_3 = A0_2
      L2_3 = "garage.camera"
      L0_3(L1_3, L2_3)
      L0_3 = L19_1.points
      L0_3 = #L0_3
      if L0_3 >= 1 then
        L0_3 = 1
        L1_3 = L19_1.points
        L1_3 = #L1_3
        L2_3 = 1
        for L3_3 = L0_3, L1_3, L2_3 do
          L4_3 = L19_1.points
          L4_3 = #L4_3
          if L3_3 < L4_3 then
            L4_3 = _drawWall
            L5_3 = L19_1.points
            L5_3 = L5_3[L3_3]
            L6_3 = L19_1.points
            L7_3 = L3_3 + 1
            L6_3 = L6_3[L7_3]
            L7_3 = L19_1.minZ
            L8_3 = L19_1.maxZ
            L9_3 = 114
            L10_3 = 49
            L11_3 = 212
            L4_3(L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3)
          end
          L4_3 = L19_1.points
          L4_3 = #L4_3
          if L3_3 == L4_3 then
            L4_3 = _drawWall
            L5_3 = L19_1.points
            L5_3 = L5_3[L3_3]
            L6_3 = L19_1.points
            L6_3 = L6_3[1]
            L7_3 = L19_1.minZ
            L8_3 = L19_1.maxZ
            L9_3 = 114
            L10_3 = 49
            L11_3 = 212
            L4_3(L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3)
          end
        end
      end
      L0_3 = Citizen
      L0_3 = L0_3.Wait
      L1_3 = 0
      L0_3(L1_3)
    end
    L0_3 = FreezeEntityPosition
    L1_3 = PlayerPedId
    L1_3 = L1_3()
    L2_3 = false
    L0_3(L1_3, L2_3)
    L0_3 = A0_2.DeleteCamera
    L1_3 = A0_2
    L0_3(L1_3)
    L0_3 = A0_2.RemoveGarageSettings
    L1_3 = A0_2
    L0_3(L1_3)
  end
  L1_2(L2_2)
end
L30_1.GarageCameraPoint = L31_1
function L31_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = true
  L17_1 = L1_2
  L1_2 = SetNuiFocus
  L2_2 = false
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = SendNUIMessage
  L2_2 = {}
  L2_2.action = "hideParkingCreator"
  L1_2(L2_2)
  L28_1.spawnpointCoords = nil
  L28_1.spawnpointHeading = nil
  L1_2 = A0_2.LoadGarage
  L2_2 = A0_2
  L1_2(L2_2)
  L1_2 = Citizen
  L1_2 = L1_2.Wait
  L2_2 = 50
  L1_2(L2_2)
  L1_2 = vec
  L2_2 = 0.0
  L3_2 = 0.0
  L4_2 = 0.0
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L28_1.spawnpointCoords = L1_2
  L28_1.spawnpointHeading = 0.0
  L1_2 = library
  L1_2 = L1_2.RequestEntity
  L2_2 = L28_1.vehModel
  L1_2(L2_2)
  L1_2 = CreateVehicle
  L2_2 = GetHashKey
  L3_2 = L28_1.vehModel
  L2_2 = L2_2(L3_2)
  L3_2 = L28_1.spawnpointCoords
  L3_2 = L3_2.x
  L4_2 = L28_1.spawnpointCoords
  L4_2 = L4_2.y
  L5_2 = L28_1.spawnpointCoords
  L5_2 = L5_2.z
  L6_2 = L28_1.spawnpointHeading
  L7_2 = false
  L8_2 = true
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  L28_1.spawnpointVehicle = L1_2
  L1_2 = SetEntityCoords
  L2_2 = L28_1.spawnpointVehicle
  L3_2 = L28_1.spawnpointCoords
  L3_2 = L3_2.x
  L4_2 = L28_1.spawnpointCoords
  L4_2 = L4_2.y
  L5_2 = L28_1.spawnpointCoords
  L5_2 = L5_2.z
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = SetEntityHeading
  L2_2 = L28_1.spawnpointVehicle
  L3_2 = L28_1.spawnpointHeading
  L1_2(L2_2, L3_2)
  L1_2 = FreezeEntityPosition
  L2_2 = L28_1.spawnpointVehicle
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = L28_1.ped
  if L1_2 then
    L1_2 = SetEntityNoCollisionEntity
    L2_2 = L28_1.ped
    L3_2 = L28_1.spawnpointVehicle
    L4_2 = false
    L1_2(L2_2, L3_2, L4_2)
  end
  L1_2 = L28_1.vehicle
  if L1_2 then
    L1_2 = SetEntityNoCollisionEntity
    L2_2 = L28_1.vehicle
    L3_2 = L28_1.spawnpointVehicle
    L4_2 = false
    L1_2(L2_2, L3_2, L4_2)
  end
  L1_2 = A0_2.CreateCamera
  L2_2 = A0_2
  L1_2(L2_2)
  L1_2 = Citizen
  L1_2 = L1_2.CreateThread
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3
    while true do
      L0_3 = L17_1
      if not L0_3 then
        break
      end
      L0_3 = startRaycast
      L0_3()
      L0_3 = rotateCamInputs
      L0_3()
      L0_3 = moveCamInputs
      L0_3()
      L0_3 = DisabledControls
      L0_3()
      L0_3 = A0_2.DrawButtonsHint
      L1_3 = A0_2
      L2_3 = "default"
      L0_3(L1_3, L2_3)
      L0_3 = L19_1.points
      L0_3 = #L0_3
      if L0_3 >= 1 then
        L0_3 = 1
        L1_3 = L19_1.points
        L1_3 = #L1_3
        L2_3 = 1
        for L3_3 = L0_3, L1_3, L2_3 do
          L4_3 = L19_1.points
          L4_3 = #L4_3
          if L3_3 < L4_3 then
            L4_3 = _drawWall
            L5_3 = L19_1.points
            L5_3 = L5_3[L3_3]
            L6_3 = L19_1.points
            L7_3 = L3_3 + 1
            L6_3 = L6_3[L7_3]
            L7_3 = L19_1.minZ
            L8_3 = L19_1.maxZ
            L9_3 = 114
            L10_3 = 49
            L11_3 = 212
            L4_3(L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3)
          end
          L4_3 = L19_1.points
          L4_3 = #L4_3
          if L3_3 == L4_3 then
            L4_3 = _drawWall
            L5_3 = L19_1.points
            L5_3 = L5_3[L3_3]
            L6_3 = L19_1.points
            L6_3 = L6_3[1]
            L7_3 = L19_1.minZ
            L8_3 = L19_1.maxZ
            L9_3 = 114
            L10_3 = 49
            L11_3 = 212
            L4_3(L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3)
          end
        end
      end
      L0_3 = Citizen
      L0_3 = L0_3.Wait
      L1_3 = 0
      L0_3(L1_3)
    end
    L0_3 = FreezeEntityPosition
    L1_3 = PlayerPedId
    L1_3 = L1_3()
    L2_3 = false
    L0_3(L1_3, L2_3)
    L0_3 = A0_2.DeleteCamera
    L1_3 = A0_2
    L0_3(L1_3)
    L0_3 = A0_2.RemoveGarageSettings
    L1_3 = A0_2
    L0_3(L1_3)
  end
  L1_2(L2_2)
end
L30_1.GarageSpawnPoint = L31_1
function L31_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = true
  L18_1 = L1_2
  L1_2 = SetNuiFocus
  L2_2 = false
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = SendNUIMessage
  L2_2 = {}
  L2_2.action = "hideParkingCreator"
  L1_2(L2_2)
  L28_1.returnCoords = nil
  L1_2 = A0_2.LoadGarage
  L2_2 = A0_2
  L1_2(L2_2)
  L1_2 = A0_2.CreateCamera
  L2_2 = A0_2
  L1_2(L2_2)
  L1_2 = Citizen
  L1_2 = L1_2.CreateThread
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3
    while true do
      L0_3 = L18_1
      if not L0_3 then
        break
      end
      L0_3 = startRaycast
      L0_3()
      L0_3 = rotateCamInputs
      L0_3()
      L0_3 = moveCamInputs
      L0_3()
      L0_3 = DisabledControls
      L0_3()
      L0_3 = A0_2.DrawButtonsHint
      L1_3 = A0_2
      L2_3 = "default"
      L0_3(L1_3, L2_3)
      L0_3 = L19_1.points
      L0_3 = #L0_3
      if L0_3 >= 1 then
        L0_3 = 1
        L1_3 = L19_1.points
        L1_3 = #L1_3
        L2_3 = 1
        for L3_3 = L0_3, L1_3, L2_3 do
          L4_3 = L19_1.points
          L4_3 = #L4_3
          if L3_3 < L4_3 then
            L4_3 = _drawWall
            L5_3 = L19_1.points
            L5_3 = L5_3[L3_3]
            L6_3 = L19_1.points
            L7_3 = L3_3 + 1
            L6_3 = L6_3[L7_3]
            L7_3 = L19_1.minZ
            L8_3 = L19_1.maxZ
            L9_3 = 114
            L10_3 = 49
            L11_3 = 212
            L4_3(L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3)
          end
          L4_3 = L19_1.points
          L4_3 = #L4_3
          if L3_3 == L4_3 then
            L4_3 = _drawWall
            L5_3 = L19_1.points
            L5_3 = L5_3[L3_3]
            L6_3 = L19_1.points
            L6_3 = L6_3[1]
            L7_3 = L19_1.minZ
            L8_3 = L19_1.maxZ
            L9_3 = 114
            L10_3 = 49
            L11_3 = 212
            L4_3(L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3)
          end
        end
      end
      L0_3 = Citizen
      L0_3 = L0_3.Wait
      L1_3 = 0
      L0_3(L1_3)
    end
    L0_3 = FreezeEntityPosition
    L1_3 = PlayerPedId
    L1_3 = L1_3()
    L2_3 = false
    L0_3(L1_3, L2_3)
    L0_3 = A0_2.DeleteCamera
    L1_3 = A0_2
    L0_3(L1_3)
    L0_3 = A0_2.RemoveGarageSettings
    L1_3 = A0_2
    L0_3(L1_3)
  end
  L1_2(L2_2)
end
L30_1.GarageReturnPoint = L31_1
Creator = L30_1
function L30_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = DisableAllControlActions
  L1_2 = 0
  L0_2(L1_2)
  L0_2 = EnableControlAction
  L1_2 = 0
  L2_2 = 32
  L3_2 = true
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = EnableControlAction
  L1_2 = 0
  L2_2 = 33
  L3_2 = true
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = EnableControlAction
  L1_2 = 0
  L2_2 = 34
  L3_2 = true
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = EnableControlAction
  L1_2 = 0
  L2_2 = 35
  L3_2 = true
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = EnableControlAction
  L1_2 = 0
  L2_2 = 52
  L3_2 = true
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = EnableControlAction
  L1_2 = 0
  L2_2 = 46
  L3_2 = true
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = EnableControlAction
  L1_2 = 0
  L2_2 = 322
  L3_2 = true
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = EnableControlAction
  L1_2 = 0
  L2_2 = 220
  L3_2 = true
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = EnableControlAction
  L1_2 = 0
  L2_2 = 221
  L3_2 = true
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = EnableControlAction
  L1_2 = 0
  L2_2 = Config
  L2_2 = L2_2.ParkingCreator
  L2_2 = L2_2.Controls
  L2_2 = L2_2.LEFT_CTRL
  L2_2 = L2_2.controlIndex
  L3_2 = true
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = EnableControlAction
  L1_2 = 0
  L2_2 = Config
  L2_2 = L2_2.ParkingCreator
  L2_2 = L2_2.Controls
  L2_2 = L2_2.SELECT
  L2_2 = L2_2.controlIndex
  L3_2 = true
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = EnableControlAction
  L1_2 = 0
  L2_2 = Config
  L2_2 = L2_2.ParkingCreator
  L2_2 = L2_2.Controls
  L2_2 = L2_2.BACK
  L2_2 = L2_2.controlIndex
  L3_2 = true
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = EnableControlAction
  L1_2 = 0
  L2_2 = Config
  L2_2 = L2_2.ParkingCreator
  L2_2 = L2_2.Controls
  L2_2 = L2_2.SCROLL_DOWN
  L2_2 = L2_2.controlIndex
  L3_2 = true
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = EnableControlAction
  L1_2 = 0
  L2_2 = Config
  L2_2 = L2_2.ParkingCreator
  L2_2 = L2_2.Controls
  L2_2 = L2_2.SCROLL_UP
  L2_2 = L2_2.controlIndex
  L3_2 = true
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = EnableControlAction
  L1_2 = 0
  L2_2 = Config
  L2_2 = L2_2.ParkingCreator
  L2_2 = L2_2.Controls
  L2_2 = L2_2.ARROW_LEFT
  L2_2 = L2_2.controlIndex
  L3_2 = true
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = EnableControlAction
  L1_2 = 0
  L2_2 = Config
  L2_2 = L2_2.ParkingCreator
  L2_2 = L2_2.Controls
  L2_2 = L2_2.ARROW_RIGHT
  L2_2 = L2_2.controlIndex
  L3_2 = true
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = EnableControlAction
  L1_2 = 0
  L2_2 = Config
  L2_2 = L2_2.ParkingCreator
  L2_2 = L2_2.Controls
  L2_2 = L2_2.ENTER
  L2_2 = L2_2.controlIndex
  L3_2 = true
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = EnableControlAction
  L1_2 = 0
  L2_2 = Config
  L2_2 = L2_2.ParkingCreator
  L2_2 = L2_2.Controls
  L2_2 = L2_2.CANCEL
  L2_2 = L2_2.controlIndex
  L3_2 = true
  L0_2(L1_2, L2_2, L3_2)
end
DisabledControls = L30_1
function L30_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = nil
  L3_2 = nil
  L4_2 = nil
  if A1_2 then
    L5_2 = next
    L6_2 = A1_2
    L5_2 = L5_2(L6_2)
    if L5_2 then
      L5_2 = ipairs
      L6_2 = A1_2
      L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
      for L9_2, L10_2 in L5_2, L6_2, L7_2, L8_2 do
        L11_2 = L10_2.coords
        if L11_2 then
          L11_2 = A0_2.xyz
          L12_2 = L10_2.coords
          L12_2 = L12_2.xyz
          L11_2 = L11_2 - L12_2
          L11_2 = #L11_2
          if nil == L4_2 or L4_2 > L11_2 then
            L2_2 = L9_2
            L4_2 = L11_2
            L3_2 = L10_2
          end
        elseif L10_2 then
          L11_2 = L10_2.x
          if L11_2 then
            L11_2 = A0_2.xyz
            L12_2 = L10_2.xyz
            L11_2 = L11_2 - L12_2
            L11_2 = #L11_2
            if nil == L4_2 or L4_2 > L11_2 then
              L2_2 = L9_2
              L4_2 = L11_2
              L3_2 = L10_2
            end
          end
        end
      end
    end
  end
  L5_2 = L2_2
  L6_2 = L3_2
  L7_2 = L4_2
  return L5_2, L6_2, L7_2
end
function L31_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L1_2 = IsControlJustReleased
  L2_2 = 0
  L3_2 = Config
  L3_2 = L3_2.ParkingCreator
  L3_2 = L3_2.Controls
  L3_2 = L3_2.SELECT
  L3_2 = L3_2.controlIndex
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 then
    if A0_2 then
      L1_2 = vector3
      L2_2 = 0.0
      L3_2 = 0.0
      L4_2 = 0.0
      L1_2 = L1_2(L2_2, L3_2, L4_2)
      if A0_2 == L1_2 then
        L1_2 = CL
        L1_2 = L1_2.Notification
        L2_2 = TRANSLATE
        L3_2 = "notify.parkingcreator:polyzone_coords_error"
        L2_2 = L2_2(L3_2)
        L3_2 = 5000
        L4_2 = "error"
        return L1_2(L2_2, L3_2, L4_2)
      end
    end
    L1_2 = L2_1
    if L1_2 then
      L1_2 = L19_1.points
      L2_2 = L19_1.points
      L2_2 = #L2_2
      L1_2 = L1_2[L2_2]
      if L1_2 then
        L2_2 = L1_2.z
        if nil ~= L2_2 then
          L2_2 = A0_2.z
          L3_2 = L1_2.z
          if L2_2 < L3_2 then
            L2_2 = A0_2.z
            if L2_2 >= 0.0 then
              L2_2 = A0_2.z
              L2_2 = L2_2 - 5.0
              L19_1.minZ = L2_2
            else
              L2_2 = A0_2.z
              L2_2 = L2_2 + -5.0
              L19_1.minZ = L2_2
            end
          end
      end
      else
        L2_2 = A0_2.z
        if L2_2 >= 0.0 then
          L2_2 = A0_2.z
          L2_2 = L2_2 - 5.0
          L19_1.minZ = L2_2
        else
          L2_2 = A0_2.z
          L2_2 = L2_2 + -5.0
          L19_1.minZ = L2_2
        end
        L2_2 = A0_2.z
        L2_2 = L2_2 + 60.0
        L19_1.maxZ = L2_2
      end
      L2_2 = table
      L2_2 = L2_2.insert
      L3_2 = L19_1.points
      L4_2 = A0_2
      L2_2(L3_2, L4_2)
    else
      L1_2 = L3_1
      if L1_2 then
        L1_2 = GetEntityCoords
        L3_2 = L21_1
        L2_2 = L22_1
        L2_2 = L2_2[L3_2]
        L2_2 = L2_2.vehicle
        L1_2 = L1_2(L2_2)
        L2_2 = isPointInPolygon
        L3_2 = L1_2
        L4_2 = L19_1.points
        L2_2 = L2_2(L3_2, L4_2)
        if not L2_2 then
          L2_2 = CL
          L2_2 = L2_2.Notification
          L3_2 = TRANSLATE
          L4_2 = "notify.parkingcreator:out_of_polyzone"
          L3_2 = L3_2(L4_2)
          L4_2 = 5000
          L5_2 = "error"
          return L2_2(L3_2, L4_2, L5_2)
        end
        L3_2 = L21_1
        L2_2 = L22_1
        L2_2 = L2_2[L3_2]
        L3_2 = GetEntityCoords
        L5_2 = L21_1
        L4_2 = L22_1
        L4_2 = L4_2[L5_2]
        L4_2 = L4_2.vehicle
        L3_2 = L3_2(L4_2)
        L2_2.coords = L3_2
        L3_2 = L21_1
        L2_2 = L22_1
        L2_2 = L2_2[L3_2]
        L3_2 = GetEntityHeading
        L5_2 = L21_1
        L4_2 = L22_1
        L4_2 = L4_2[L5_2]
        L4_2 = L4_2.vehicle
        L3_2 = L3_2(L4_2)
        L2_2.heading = L3_2
        L2_2 = Citizen
        L2_2 = L2_2.Wait
        L3_2 = 5
        L2_2(L3_2)
        L2_2 = nil
        L3_2 = GetGroundZFor_3dCoord
        L4_2 = A0_2.x
        L5_2 = A0_2.y
        L6_2 = A0_2.z
        L7_2 = true
        L3_2, L4_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
        L5_2 = FreezeEntityPosition
        L7_2 = L21_1
        L6_2 = L22_1
        L6_2 = L6_2[L7_2]
        L6_2 = L6_2.vehicle
        L7_2 = false
        L5_2(L6_2, L7_2)
        if L3_2 then
          L5_2 = SetEntityCoords
          L7_2 = L21_1
          L6_2 = L22_1
          L6_2 = L6_2[L7_2]
          L6_2 = L6_2.vehicle
          L7_2 = A0_2.x
          L8_2 = A0_2.y
          L9_2 = L4_2
          L5_2(L6_2, L7_2, L8_2, L9_2)
          L5_2 = GetEntityRotation
          L7_2 = L21_1
          L6_2 = L22_1
          L6_2 = L6_2[L7_2]
          L6_2 = L6_2.vehicle
          L7_2 = 2
          L5_2 = L5_2(L6_2, L7_2)
          L6_2 = SetEntityHeading
          L8_2 = L21_1
          L7_2 = L22_1
          L7_2 = L7_2[L8_2]
          L7_2 = L7_2.vehicle
          L9_2 = L21_1
          L8_2 = L22_1
          L8_2 = L8_2[L9_2]
          L8_2 = L8_2.heading
          L6_2(L7_2, L8_2)
          L6_2 = SetEntityRotation
          L8_2 = L21_1
          L7_2 = L22_1
          L7_2 = L7_2[L8_2]
          L7_2 = L7_2.vehicle
          L8_2 = L5_2.x
          L9_2 = L5_2.y
          L11_2 = L21_1
          L10_2 = L22_1
          L10_2 = L10_2[L11_2]
          L10_2 = L10_2.heading
          L11_2 = 2
          L12_2 = true
          L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
          L7_2 = L21_1
          L6_2 = L22_1
          L6_2 = L6_2[L7_2]
          L7_2 = vector3
          L8_2 = L5_2.x
          L9_2 = L5_2.y
          L11_2 = L21_1
          L10_2 = L22_1
          L10_2 = L10_2[L11_2]
          L10_2 = L10_2.heading
          L7_2 = L7_2(L8_2, L9_2, L10_2)
          L6_2.rotation = L7_2
        else
          L5_2 = SetEntityCoords
          L7_2 = L21_1
          L6_2 = L22_1
          L6_2 = L6_2[L7_2]
          L6_2 = L6_2.vehicle
          L7_2 = A0_2.x
          L8_2 = A0_2.y
          L9_2 = A0_2.z
          L5_2(L6_2, L7_2, L8_2, L9_2)
          L5_2 = SetEntityHeading
          L7_2 = L21_1
          L6_2 = L22_1
          L6_2 = L6_2[L7_2]
          L6_2 = L6_2.vehicle
          L8_2 = L21_1
          L7_2 = L22_1
          L7_2 = L7_2[L8_2]
          L7_2 = L7_2.heading
          L5_2(L6_2, L7_2)
        end
        L5_2 = SetEntityInvincible
        L7_2 = L21_1
        L6_2 = L22_1
        L6_2 = L6_2[L7_2]
        L6_2 = L6_2.vehicle
        L7_2 = true
        L5_2(L6_2, L7_2)
        L5_2 = Citizen
        L5_2 = L5_2.Wait
        L6_2 = 5
        L5_2(L6_2)
        L5_2 = FreezeEntityPosition
        L7_2 = L21_1
        L6_2 = L22_1
        L6_2 = L6_2[L7_2]
        L6_2 = L6_2.vehicle
        L7_2 = true
        L5_2(L6_2, L7_2)
        L5_2 = L22_1
        L5_2 = #L5_2
        L5_2 = L5_2 + 1
        L21_1 = L5_2
        L6_2 = L21_1
        L5_2 = L22_1
        L7_2 = {}
        L8_2 = CreateVehicle
        L9_2 = GetHashKey
        L10_2 = Config
        L10_2 = L10_2.ParkingCreator
        L10_2 = L10_2.VehicleTypesModels
        L11_2 = L20_1
        L10_2 = L10_2[L11_2]
        L9_2 = L9_2(L10_2)
        L10_2 = A0_2.x
        L11_2 = A0_2.y
        L12_2 = A0_2.z
        L13_2 = 0.0
        L14_2 = false
        L15_2 = true
        L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
        L7_2.vehicle = L8_2
        L8_2 = L21_1
        L9_2 = L8_2 - 1
        L8_2 = L22_1
        L8_2 = L8_2[L9_2]
        L8_2 = L8_2.heading
        L7_2.heading = L8_2
        L5_2[L6_2] = L7_2
        L5_2 = SetEntityInvincible
        L7_2 = L21_1
        L6_2 = L22_1
        L6_2 = L6_2[L7_2]
        L6_2 = L6_2.vehicle
        L7_2 = true
        L5_2(L6_2, L7_2)
      else
        L1_2 = L4_1
        if L1_2 then
          L1_2 = isPointInPolygon
          L2_2 = vector3
          L3_2 = A0_2.x
          L4_2 = A0_2.y
          L5_2 = A0_2.z
          L2_2 = L2_2(L3_2, L4_2, L5_2)
          L3_2 = L19_1.points
          L1_2 = L1_2(L2_2, L3_2)
          if not L1_2 then
            L1_2 = CL
            L1_2 = L1_2.Notification
            L2_2 = TRANSLATE
            L3_2 = "notify.parkingcreator:out_of_polyzone"
            L2_2 = L2_2(L3_2)
            L3_2 = 5000
            L4_2 = "error"
            return L1_2(L2_2, L3_2, L4_2)
          end
          L1_2 = table
          L1_2 = L1_2.insert
          L2_2 = L24_1
          L3_2 = vec
          L4_2 = A0_2.x
          L5_2 = A0_2.y
          L6_2 = A0_2.z
          L6_2 = L6_2 + 1.0
          L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2 = L3_2(L4_2, L5_2, L6_2)
          L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
        else
          L1_2 = L5_1
          if L1_2 then
            L1_2 = isPointInPolygon
            L2_2 = GetEntityCoords
            L3_2 = L25_1.ped
            L2_2 = L2_2(L3_2)
            L3_2 = L19_1.points
            L1_2 = L1_2(L2_2, L3_2)
            if not L1_2 then
              L1_2 = CL
              L1_2 = L1_2.Notification
              L2_2 = TRANSLATE
              L3_2 = "notify.parkingcreator:out_of_polyzone"
              L2_2 = L2_2(L3_2)
              L3_2 = 5000
              L4_2 = "error"
              return L1_2(L2_2, L3_2, L4_2)
            end
            L1_2 = GetEntityCoords
            L2_2 = L25_1.ped
            L1_2 = L1_2(L2_2)
            L25_1.coords = L1_2
            L1_2 = SetNuiFocus
            L2_2 = true
            L3_2 = true
            L1_2(L2_2, L3_2)
            L1_2 = SendNUIMessage
            L2_2 = {}
            L2_2.action = "openParkingCreator"
            L2_2.menu = "parking-menu"
            L1_2(L2_2)
            L1_2 = false
            L5_1 = L1_2
          else
            L1_2 = L6_1
            if L1_2 then
              L1_2 = SetNuiFocus
              L2_2 = true
              L3_2 = true
              L1_2(L2_2, L3_2)
              L1_2 = SendNUIMessage
              L2_2 = {}
              L2_2.action = "openParkingCreator"
              L2_2.menu = "house-garage-menu"
              L1_2(L2_2)
              L1_2 = false
              L6_1 = L1_2
            else
              L1_2 = L7_1
              if L1_2 then
                L1_2 = vec
                L2_2 = A0_2.x
                L3_2 = A0_2.y
                L4_2 = A0_2.z
                L4_2 = L4_2 + 1.0
                L1_2 = L1_2(L2_2, L3_2, L4_2)
                L26_1.enterCoords = L1_2
                L1_2 = GetEntityHeading
                L2_2 = L26_1.vehicle
                L1_2 = L1_2(L2_2)
                L26_1.heading = L1_2
                L1_2 = false
                L7_1 = L1_2
              else
                L1_2 = L8_1
                if L1_2 then
                  L1_2 = isPointInPolygon
                  L2_2 = vector3
                  L3_2 = A0_2.x
                  L4_2 = A0_2.y
                  L5_2 = A0_2.z
                  L5_2 = L5_2 + 1.0
                  L2_2 = L2_2(L3_2, L4_2, L5_2)
                  L3_2 = L19_1.points
                  L1_2 = L1_2(L2_2, L3_2)
                  if not L1_2 then
                    L1_2 = CL
                    L1_2 = L1_2.Notification
                    L2_2 = TRANSLATE
                    L3_2 = "notify.parkingcreator:out_of_polyzone"
                    L2_2 = L2_2(L3_2)
                    L3_2 = 5000
                    L4_2 = "error"
                    return L1_2(L2_2, L3_2, L4_2)
                  end
                  L1_2 = vec
                  L2_2 = A0_2.x
                  L3_2 = A0_2.y
                  L4_2 = A0_2.z
                  L4_2 = L4_2 + 1.0
                  L1_2 = L1_2(L2_2, L3_2, L4_2)
                  L27_1.enterVehCoords = L1_2
                  L1_2 = GetEntityHeading
                  L2_2 = L27_1.vehicle
                  L1_2 = L1_2(L2_2)
                  L27_1.enterVehHeading = L1_2
                  L1_2 = false
                  L8_1 = L1_2
                else
                  L1_2 = L9_1
                  if L1_2 then
                    L1_2 = isPointInPolygon
                    L2_2 = GetEntityCoords
                    L3_2 = L27_1.ped
                    L2_2 = L2_2(L3_2)
                    L3_2 = L19_1.points
                    L1_2 = L1_2(L2_2, L3_2)
                    if not L1_2 then
                      L1_2 = CL
                      L1_2 = L1_2.Notification
                      L2_2 = TRANSLATE
                      L3_2 = "notify.parkingcreator:out_of_polyzone"
                      L2_2 = L2_2(L3_2)
                      L3_2 = 5000
                      L4_2 = "error"
                      return L1_2(L2_2, L3_2, L4_2)
                    end
                    L1_2 = GetEntityCoords
                    L2_2 = L27_1.ped
                    L1_2 = L1_2(L2_2)
                    L27_1.enterPedCoords = L1_2
                    L1_2 = GetEntityHeading
                    L2_2 = L27_1.ped
                    L1_2 = L1_2(L2_2)
                    L27_1.enterPedHeading = L1_2
                    L1_2 = false
                    L9_1 = L1_2
                  else
                    L1_2 = L10_1
                    if L1_2 then
                      L1_2 = SetNuiFocus
                      L2_2 = true
                      L3_2 = true
                      L1_2(L2_2, L3_2)
                      L1_2 = SendNUIMessage
                      L2_2 = {}
                      L2_2.action = "openParkingCreator"
                      L2_2.menu = "garage-interior-menu"
                      L1_2(L2_2)
                      L1_2 = false
                      L10_1 = L1_2
                      L1_2 = false
                      L6_1 = L1_2
                    else
                      L1_2 = L13_1
                      if L1_2 then
                        L1_2 = isPointInPolygon
                        L2_2 = vector3
                        L3_2 = A0_2.x
                        L4_2 = A0_2.y
                        L5_2 = A0_2.z
                        L5_2 = L5_2 + 1.0
                        L2_2 = L2_2(L3_2, L4_2, L5_2)
                        L3_2 = L19_1.points
                        L1_2 = L1_2(L2_2, L3_2)
                        if not L1_2 then
                          L1_2 = CL
                          L1_2 = L1_2.Notification
                          L2_2 = TRANSLATE
                          L3_2 = "notify.parkingcreator:out_of_polyzone"
                          L2_2 = L2_2(L3_2)
                          L3_2 = 5000
                          L4_2 = "error"
                          return L1_2(L2_2, L3_2, L4_2)
                        end
                        L1_2 = vec
                        L2_2 = A0_2.x
                        L3_2 = A0_2.y
                        L4_2 = A0_2.z
                        L4_2 = L4_2 + 1.0
                        L1_2 = L1_2(L2_2, L3_2, L4_2)
                        L28_1.menuPoint = L1_2
                        L1_2 = SetNuiFocus
                        L2_2 = true
                        L3_2 = true
                        L1_2(L2_2, L3_2)
                        L1_2 = SendNUIMessage
                        L2_2 = {}
                        L2_2.action = "openParkingCreator"
                        L2_2.menu = "garage-menu"
                        L1_2(L2_2)
                        L1_2 = false
                        L13_1 = L1_2
                      else
                        L1_2 = L14_1
                        if L1_2 then
                          L1_2 = GetEntityCoords
                          L2_2 = L11_1
                          if L2_2 then
                            L2_2 = L29_1.ped
                            if L2_2 then
                              goto lbl_524
                            end
                          end
                          L2_2 = L28_1.ped
                          ::lbl_524::
                          L1_2 = L1_2(L2_2)
                          L2_2 = isPointInPolygon
                          L3_2 = vector3
                          L4_2 = L1_2.x
                          L5_2 = L1_2.y
                          L6_2 = L1_2.z
                          L6_2 = L6_2 - 1.0
                          L3_2 = L3_2(L4_2, L5_2, L6_2)
                          L4_2 = L19_1.points
                          L2_2 = L2_2(L3_2, L4_2)
                          if not L2_2 then
                            L2_2 = CL
                            L2_2 = L2_2.Notification
                            L3_2 = TRANSLATE
                            L4_2 = "notify.parkingcreator:out_of_polyzone"
                            L3_2 = L3_2(L4_2)
                            L4_2 = 5000
                            L5_2 = "error"
                            return L2_2(L3_2, L4_2, L5_2)
                          end
                          L2_2 = L11_1
                          if L2_2 then
                            L2_2 = vector3
                            L3_2 = L1_2.x
                            L4_2 = L1_2.y
                            L5_2 = L1_2.z
                            L5_2 = L5_2 - 1.0
                            L2_2 = L2_2(L3_2, L4_2, L5_2)
                            L29_1.pedCoords = L2_2
                            L2_2 = SendNUIMessage
                            L3_2 = {}
                            L3_2.action = "openParkingCreator"
                            L3_2.menu = "house-garage-menu-menu"
                            L2_2(L3_2)
                          else
                            L2_2 = vector3
                            L3_2 = L1_2.x
                            L4_2 = L1_2.y
                            L5_2 = L1_2.z
                            L5_2 = L5_2 - 1.0
                            L2_2 = L2_2(L3_2, L4_2, L5_2)
                            L28_1.pedCoords = L2_2
                            L2_2 = SendNUIMessage
                            L3_2 = {}
                            L3_2.action = "openParkingCreator"
                            L3_2.menu = "garage-menu"
                            L2_2(L3_2)
                          end
                          L2_2 = SetNuiFocus
                          L3_2 = true
                          L4_2 = true
                          L2_2(L3_2, L4_2)
                          L2_2 = false
                          L14_1 = L2_2
                        else
                          L1_2 = L15_1
                          if L1_2 then
                            L1_2 = isPointInPolygon
                            L2_2 = GetEntityCoords
                            L3_2 = L11_1
                            if L3_2 then
                              L3_2 = L29_1.vehicle
                              if L3_2 then
                                goto lbl_597
                              end
                            end
                            L3_2 = L28_1.vehicle
                            ::lbl_597::
                            L2_2 = L2_2(L3_2)
                            L3_2 = L19_1.points
                            L1_2 = L1_2(L2_2, L3_2)
                            if not L1_2 then
                              L1_2 = CL
                              L1_2 = L1_2.Notification
                              L2_2 = TRANSLATE
                              L3_2 = "notify.parkingcreator:out_of_polyzone"
                              L2_2 = L2_2(L3_2)
                              L3_2 = 5000
                              L4_2 = "error"
                              return L1_2(L2_2, L3_2, L4_2)
                            end
                            L1_2 = L11_1
                            if L1_2 then
                              L1_2 = GetEntityCoords
                              L2_2 = L29_1.vehicle
                              L1_2 = L1_2(L2_2)
                              L29_1.vehicleCoords = L1_2
                              L1_2 = GetEntityHeading
                              L2_2 = L29_1.vehicle
                              L1_2 = L1_2(L2_2)
                              L29_1.vehicleHeading = L1_2
                              L1_2 = SendNUIMessage
                              L2_2 = {}
                              L2_2.action = "openParkingCreator"
                              L2_2.menu = "house-garage-menu-menu"
                              L1_2(L2_2)
                            else
                              L1_2 = GetEntityCoords
                              L2_2 = L28_1.vehicle
                              L1_2 = L1_2(L2_2)
                              L28_1.vehicleCoords = L1_2
                              L1_2 = GetEntityHeading
                              L2_2 = L28_1.vehicle
                              L1_2 = L1_2(L2_2)
                              L28_1.vehicleHeading = L1_2
                              L1_2 = SendNUIMessage
                              L2_2 = {}
                              L2_2.action = "openParkingCreator"
                              L2_2.menu = "garage-menu"
                              L1_2(L2_2)
                            end
                            L1_2 = SetNuiFocus
                            L2_2 = true
                            L3_2 = true
                            L1_2(L2_2, L3_2)
                            L1_2 = false
                            L15_1 = L1_2
                          else
                            L1_2 = L16_1
                            if L1_2 then
                              L1_2 = L11_1
                              if L1_2 then
                                L1_2 = GetCamCoord
                                L2_2 = Creator
                                L2_2 = L2_2.camera
                                L1_2 = L1_2(L2_2)
                                L29_1.cameraCoords = L1_2
                                L1_2 = GetCamFov
                                L2_2 = Creator
                                L2_2 = L2_2.camera
                                L1_2 = L1_2(L2_2)
                                L29_1.cameraFov = L1_2
                                L1_2 = SendNUIMessage
                                L2_2 = {}
                                L2_2.action = "openParkingCreator"
                                L2_2.menu = "house-garage-menu-menu"
                                L1_2(L2_2)
                              else
                                L1_2 = GetCamCoord
                                L2_2 = Creator
                                L2_2 = L2_2.camera
                                L1_2 = L1_2(L2_2)
                                L28_1.cameraCoords = L1_2
                                L1_2 = GetCamFov
                                L2_2 = Creator
                                L2_2 = L2_2.camera
                                L1_2 = L1_2(L2_2)
                                L28_1.cameraFov = L1_2
                                L1_2 = SendNUIMessage
                                L2_2 = {}
                                L2_2.action = "openParkingCreator"
                                L2_2.menu = "garage-menu"
                                L1_2(L2_2)
                              end
                              L1_2 = SetNuiFocus
                              L2_2 = true
                              L3_2 = true
                              L1_2(L2_2, L3_2)
                              L1_2 = false
                              L16_1 = L1_2
                            else
                              L1_2 = L17_1
                              if L1_2 then
                                L1_2 = GetEntityCoords
                                L2_2 = L28_1.spawnpointVehicle
                                L1_2 = L1_2(L2_2)
                                L28_1.spawnpointCoords = L1_2
                                L1_2 = GetEntityHeading
                                L2_2 = L28_1.spawnpointVehicle
                                L1_2 = L1_2(L2_2)
                                L28_1.spawnpointHeading = L1_2
                                L1_2 = SetNuiFocus
                                L2_2 = true
                                L3_2 = true
                                L1_2(L2_2, L3_2)
                                L1_2 = SendNUIMessage
                                L2_2 = {}
                                L2_2.action = "openParkingCreator"
                                L2_2.menu = "garage-menu"
                                L1_2(L2_2)
                                L1_2 = false
                                L17_1 = L1_2
                              else
                                L1_2 = L18_1
                                if L1_2 then
                                  L1_2 = isPointInPolygon
                                  L2_2 = vector3
                                  L3_2 = A0_2.x
                                  L4_2 = A0_2.y
                                  L5_2 = A0_2.z
                                  L5_2 = L5_2 + 1.0
                                  L2_2 = L2_2(L3_2, L4_2, L5_2)
                                  L3_2 = L19_1.points
                                  L1_2 = L1_2(L2_2, L3_2)
                                  if not L1_2 then
                                    L1_2 = CL
                                    L1_2 = L1_2.Notification
                                    L2_2 = TRANSLATE
                                    L3_2 = "notify.parkingcreator:out_of_polyzone"
                                    L2_2 = L2_2(L3_2)
                                    L3_2 = 5000
                                    L4_2 = "error"
                                    return L1_2(L2_2, L3_2, L4_2)
                                  end
                                  L1_2 = vec
                                  L2_2 = A0_2.x
                                  L3_2 = A0_2.y
                                  L4_2 = A0_2.z
                                  L4_2 = L4_2 + 1.0
                                  L1_2 = L1_2(L2_2, L3_2, L4_2)
                                  L28_1.returnCoords = L1_2
                                  L1_2 = SetNuiFocus
                                  L2_2 = true
                                  L3_2 = true
                                  L1_2(L2_2, L3_2)
                                  L1_2 = SendNUIMessage
                                  L2_2 = {}
                                  L2_2.action = "openParkingCreator"
                                  L2_2.menu = "garage-menu"
                                  L1_2(L2_2)
                                  L1_2 = false
                                  L18_1 = L1_2
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
            end
          end
        end
      end
    end
  else
    L1_2 = IsControlJustPressed
    L2_2 = 0
    L3_2 = Config
    L3_2 = L3_2.ParkingCreator
    L3_2 = L3_2.Controls
    L3_2 = L3_2.BACK
    L3_2 = L3_2.controlIndex
    L1_2 = L1_2(L2_2, L3_2)
    if L1_2 then
      L1_2 = L2_1
      if L1_2 then
        L1_2 = L19_1.points
        L1_2 = #L1_2
        if L1_2 > 0 then
          L1_2 = table
          L1_2 = L1_2.remove
          L2_2 = L19_1.points
          L3_2 = L19_1.points
          L3_2 = #L3_2
          L1_2(L2_2, L3_2)
        end
      else
        L1_2 = L3_1
        if L1_2 then
          if A0_2 then
            L1_2 = A0_2.xyz
            if L1_2 then
              L1_2 = L30_1
              L2_2 = A0_2
              L3_2 = L22_1
              L1_2, L2_2, L3_2 = L1_2(L2_2, L3_2)
              if L1_2 and L2_2 then
                L4_2 = L2_2.vehicle
                if L4_2 and L3_2 < 5.0 then
                  L4_2 = L22_1
                  L4_2 = #L4_2
                  L4_2 = L4_2 - 1
                  L21_1 = L4_2
                  L4_2 = DeleteVehicle
                  L5_2 = L2_2.vehicle
                  L4_2(L5_2)
                  L4_2 = DeleteEntity
                  L5_2 = L2_2.vehicle
                  L4_2(L5_2)
                  L2_2.vehicle = nil
                  L4_2 = table
                  L4_2 = L4_2.remove
                  L5_2 = L22_1
                  L6_2 = L1_2
                  L4_2(L5_2, L6_2)
                end
              end
            end
          end
        else
          L1_2 = L4_1
          if L1_2 and A0_2 then
            L1_2 = A0_2.xyz
            if L1_2 then
              L1_2 = L30_1
              L2_2 = A0_2
              L3_2 = L24_1
              L1_2, L2_2, L3_2 = L1_2(L2_2, L3_2)
              if L1_2 and L2_2 and L3_2 < 5.0 then
                L4_2 = L24_1
                L4_2 = #L4_2
                L4_2 = L4_2 - 1
                L23_1 = L4_2
                L4_2 = table
                L4_2 = L4_2.remove
                L5_2 = L24_1
                L6_2 = L1_2
                L4_2(L5_2, L6_2)
              end
            end
          end
        end
      end
    else
      L1_2 = IsControlPressed
      L2_2 = 0
      L3_2 = Config
      L3_2 = L3_2.ParkingCreator
      L3_2 = L3_2.Controls
      L3_2 = L3_2.SCROLL_DOWN
      L3_2 = L3_2.controlIndex
      L1_2 = L1_2(L2_2, L3_2)
      if L1_2 then
        L1_2 = L2_1
        if L1_2 then
          L1_2 = L19_1.maxZ
          L1_2 = L1_2 + -1.0
          L19_1.maxZ = L1_2
          L1_2 = L19_1.maxZ
          L2_2 = L19_1.minZ
          L2_2 = L2_2 + 5.0
          if L1_2 < L2_2 then
            L1_2 = L19_1.minZ
            L1_2 = L1_2 + 5.0
            L19_1.maxZ = L1_2
          end
        else
          L1_2 = L3_1
          if L1_2 then
            L1_2 = IsControlReleased
            L2_2 = 0
            L3_2 = Config
            L3_2 = L3_2.ParkingCreator
            L3_2 = L3_2.Controls
            L3_2 = L3_2.LEFT_CTRL
            L3_2 = L3_2.controlIndex
            L1_2 = L1_2(L2_2, L3_2)
            if L1_2 then
              L2_2 = L21_1
              L1_2 = L22_1
              L1_2 = L1_2[L2_2]
              L3_2 = L21_1
              L2_2 = L22_1
              L2_2 = L2_2[L3_2]
              L2_2 = L2_2.heading
              L2_2 = L2_2 + 5.0
              L2_2 = L2_2 % 360
              L1_2.heading = L2_2
            else
              L2_2 = L21_1
              L1_2 = L22_1
              L1_2 = L1_2[L2_2]
              L3_2 = L21_1
              L2_2 = L22_1
              L2_2 = L2_2[L3_2]
              L2_2 = L2_2.heading
              L2_2 = L2_2 + 1.0
              L2_2 = L2_2 % 360
              L1_2.heading = L2_2
            end
          else
            L1_2 = L5_1
            if L1_2 then
              L1_2 = IsControlReleased
              L2_2 = 0
              L3_2 = Config
              L3_2 = L3_2.ParkingCreator
              L3_2 = L3_2.Controls
              L3_2 = L3_2.LEFT_CTRL
              L3_2 = L3_2.controlIndex
              L1_2 = L1_2(L2_2, L3_2)
              if L1_2 then
                L1_2 = L25_1.heading
                L1_2 = L1_2 + 5.0
                L1_2 = L1_2 % 360
                L25_1.heading = L1_2
              else
                L1_2 = L25_1.heading
                L1_2 = L1_2 + 1.0
                L1_2 = L1_2 % 360
                L25_1.heading = L1_2
              end
            else
              L1_2 = L6_1
              if L1_2 then
                L1_2 = L26_1.interiorId
                L1_2 = L1_2 - 1
                L2_2 = Config
                L2_2 = L2_2.ParkingCreator
                L2_2 = L2_2.HouseGarageInteriors
                L2_2 = L2_2[L1_2]
                if not L2_2 then
                  L2_2 = Config
                  L2_2 = L2_2.ParkingCreator
                  L2_2 = L2_2.HouseGarageInteriors
                  L1_2 = #L2_2
                end
                L26_1.interiorId = L1_2
                L2_2 = SetEntityCoords
                L3_2 = PlayerPedId
                L3_2 = L3_2()
                L4_2 = Config
                L4_2 = L4_2.ParkingCreator
                L4_2 = L4_2.HouseGarageInteriors
                L5_2 = L26_1.interiorId
                L4_2 = L4_2[L5_2]
                L4_2 = L4_2.camCoords
                L4_2 = L4_2.xyz
                L2_2(L3_2, L4_2)
                L2_2 = SetCamCoord
                L3_2 = Creator
                L3_2 = L3_2.camera
                L4_2 = Config
                L4_2 = L4_2.ParkingCreator
                L4_2 = L4_2.HouseGarageInteriors
                L5_2 = L26_1.interiorId
                L4_2 = L4_2[L5_2]
                L4_2 = L4_2.camCoords
                L4_2 = L4_2.xyz
                L2_2(L3_2, L4_2)
              else
                L1_2 = L7_1
                if L1_2 then
                  L1_2 = L26_1.radius
                  if L1_2 > 1.0 then
                    L1_2 = L26_1.radius
                    L1_2 = L1_2 - 0.25
                    L26_1.radius = L1_2
                  end
                else
                  L1_2 = L8_1
                  if L1_2 then
                    L1_2 = IsControlReleased
                    L2_2 = 0
                    L3_2 = Config
                    L3_2 = L3_2.ParkingCreator
                    L3_2 = L3_2.Controls
                    L3_2 = L3_2.LEFT_CTRL
                    L3_2 = L3_2.controlIndex
                    L1_2 = L1_2(L2_2, L3_2)
                    if L1_2 then
                      L1_2 = L27_1.enterVehHeading
                      L1_2 = L1_2 + 5.0
                      L1_2 = L1_2 % 360
                      L27_1.enterVehHeading = L1_2
                    else
                      L1_2 = L27_1.enterVehHeading
                      L1_2 = L1_2 + 1.0
                      L1_2 = L1_2 % 360
                      L27_1.enterVehHeading = L1_2
                    end
                  else
                    L1_2 = L9_1
                    if L1_2 then
                      L1_2 = IsControlReleased
                      L2_2 = 0
                      L3_2 = Config
                      L3_2 = L3_2.ParkingCreator
                      L3_2 = L3_2.Controls
                      L3_2 = L3_2.LEFT_CTRL
                      L3_2 = L3_2.controlIndex
                      L1_2 = L1_2(L2_2, L3_2)
                      if L1_2 then
                        L1_2 = L27_1.enterPedHeading
                        L1_2 = L1_2 + 5.0
                        L1_2 = L1_2 % 360
                        L27_1.enterPedHeading = L1_2
                      else
                        L1_2 = L27_1.enterPedHeading
                        L1_2 = L1_2 + 1.0
                        L1_2 = L1_2 % 360
                        L27_1.enterPedHeading = L1_2
                      end
                    else
                      L1_2 = L10_1
                      if L1_2 then
                        L1_2 = L27_1.interiorId
                        L1_2 = L1_2 - 1
                        L2_2 = Config
                        L2_2 = L2_2.ParkingCreator
                        L2_2 = L2_2.GarageInteriors
                        L2_2 = L2_2[L1_2]
                        if not L2_2 then
                          L2_2 = Config
                          L2_2 = L2_2.ParkingCreator
                          L2_2 = L2_2.GarageInteriors
                          L1_2 = #L2_2
                        end
                        L27_1.interiorId = L1_2
                        L2_2 = SetEntityCoords
                        L3_2 = PlayerPedId
                        L3_2 = L3_2()
                        L4_2 = Config
                        L4_2 = L4_2.ParkingCreator
                        L4_2 = L4_2.GarageInteriors
                        L5_2 = L27_1.interiorId
                        L4_2 = L4_2[L5_2]
                        L4_2 = L4_2.camCoords
                        L4_2 = L4_2.xyz
                        L2_2(L3_2, L4_2)
                        L2_2 = SetCamCoord
                        L3_2 = Creator
                        L3_2 = L3_2.camera
                        L4_2 = Config
                        L4_2 = L4_2.ParkingCreator
                        L4_2 = L4_2.GarageInteriors
                        L5_2 = L27_1.interiorId
                        L4_2 = L4_2[L5_2]
                        L4_2 = L4_2.camCoords
                        L4_2 = L4_2.xyz
                        L2_2(L3_2, L4_2)
                      else
                        L1_2 = L14_1
                        if L1_2 then
                          L1_2 = IsControlReleased
                          L2_2 = 0
                          L3_2 = Config
                          L3_2 = L3_2.ParkingCreator
                          L3_2 = L3_2.Controls
                          L3_2 = L3_2.LEFT_CTRL
                          L3_2 = L3_2.controlIndex
                          L1_2 = L1_2(L2_2, L3_2)
                          if L1_2 then
                            L1_2 = L11_1
                            if L1_2 then
                              L1_2 = L29_1.pedHeading
                              L1_2 = L1_2 + 5.0
                              L1_2 = L1_2 % 360
                              L29_1.pedHeading = L1_2
                            else
                              L1_2 = L28_1.pedHeading
                              L1_2 = L1_2 + 5.0
                              L1_2 = L1_2 % 360
                              L28_1.pedHeading = L1_2
                            end
                          else
                            L1_2 = L11_1
                            if L1_2 then
                              L1_2 = L29_1.pedHeading
                              L1_2 = L1_2 + 1.0
                              L1_2 = L1_2 % 360
                              L29_1.pedHeading = L1_2
                            else
                              L1_2 = L28_1.pedHeading
                              L1_2 = L1_2 + 1.0
                              L1_2 = L1_2 % 360
                              L28_1.pedHeading = L1_2
                            end
                          end
                        else
                          L1_2 = L15_1
                          if L1_2 then
                            L1_2 = IsControlReleased
                            L2_2 = 0
                            L3_2 = Config
                            L3_2 = L3_2.ParkingCreator
                            L3_2 = L3_2.Controls
                            L3_2 = L3_2.LEFT_CTRL
                            L3_2 = L3_2.controlIndex
                            L1_2 = L1_2(L2_2, L3_2)
                            if L1_2 then
                              L1_2 = L11_1
                              if L1_2 then
                                L1_2 = L29_1.vehicleHeading
                                L1_2 = L1_2 + 5.0
                                L1_2 = L1_2 % 360
                                L29_1.vehicleHeading = L1_2
                              else
                                L1_2 = L28_1.vehicleHeading
                                L1_2 = L1_2 + 5.0
                                L1_2 = L1_2 % 360
                                L28_1.vehicleHeading = L1_2
                              end
                            else
                              L1_2 = L11_1
                              if L1_2 then
                                L1_2 = L29_1.vehicleHeading
                                L1_2 = L1_2 + 1.0
                                L1_2 = L1_2 % 360
                                L29_1.vehicleHeading = L1_2
                              else
                                L1_2 = L28_1.vehicleHeading
                                L1_2 = L1_2 + 1.0
                                L1_2 = L1_2 % 360
                                L28_1.vehicleHeading = L1_2
                              end
                            end
                          else
                            L1_2 = L16_1
                            if L1_2 then
                              L1_2 = GetCamFov
                              L2_2 = Creator
                              L2_2 = L2_2.camera
                              L1_2 = L1_2(L2_2)
                              if L1_2 > 2.0 then
                                L1_2 = SetCamFov
                                L2_2 = Creator
                                L2_2 = L2_2.camera
                                L3_2 = GetCamFov
                                L4_2 = Creator
                                L4_2 = L4_2.camera
                                L3_2 = L3_2(L4_2)
                                L3_2 = L3_2 - 1.0
                                L1_2(L2_2, L3_2)
                              end
                            else
                              L1_2 = L17_1
                              if L1_2 then
                                L1_2 = IsControlReleased
                                L2_2 = 0
                                L3_2 = Config
                                L3_2 = L3_2.ParkingCreator
                                L3_2 = L3_2.Controls
                                L3_2 = L3_2.LEFT_CTRL
                                L3_2 = L3_2.controlIndex
                                L1_2 = L1_2(L2_2, L3_2)
                                if L1_2 then
                                  L1_2 = L28_1.spawnpointHeading
                                  L1_2 = L1_2 + 5.0
                                  L1_2 = L1_2 % 360
                                  L28_1.spawnpointHeading = L1_2
                                else
                                  L1_2 = L28_1.spawnpointHeading
                                  L1_2 = L1_2 + 1.0
                                  L1_2 = L1_2 % 360
                                  L28_1.spawnpointHeading = L1_2
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
            end
          end
        end
      else
        L1_2 = IsControlPressed
        L2_2 = 0
        L3_2 = Config
        L3_2 = L3_2.ParkingCreator
        L3_2 = L3_2.Controls
        L3_2 = L3_2.SCROLL_UP
        L3_2 = L3_2.controlIndex
        L1_2 = L1_2(L2_2, L3_2)
        if L1_2 then
          L1_2 = L2_1
          if L1_2 then
            L1_2 = L19_1.maxZ
            L1_2 = L1_2 + 1.0
            L19_1.maxZ = L1_2
            L1_2 = L19_1.maxZ
            L2_2 = L19_1.minZ
            L2_2 = L2_2 + 5.0
            if L1_2 < L2_2 then
              L1_2 = L19_1.minZ
              L1_2 = L1_2 + 5.0
              L19_1.maxZ = L1_2
            end
          else
            L1_2 = L3_1
            if L1_2 then
              L1_2 = IsControlReleased
              L2_2 = 0
              L3_2 = Config
              L3_2 = L3_2.ParkingCreator
              L3_2 = L3_2.Controls
              L3_2 = L3_2.LEFT_CTRL
              L3_2 = L3_2.controlIndex
              L1_2 = L1_2(L2_2, L3_2)
              if L1_2 then
                L2_2 = L21_1
                L1_2 = L22_1
                L1_2 = L1_2[L2_2]
                L3_2 = L21_1
                L2_2 = L22_1
                L2_2 = L2_2[L3_2]
                L2_2 = L2_2.heading
                L2_2 = L2_2 - 5.0
                L2_2 = L2_2 % 360
                L1_2.heading = L2_2
                L2_2 = L21_1
                L1_2 = L22_1
                L1_2 = L1_2[L2_2]
                L1_2 = L1_2.heading
                if L1_2 < 0 then
                  L2_2 = L21_1
                  L1_2 = L22_1
                  L1_2 = L1_2[L2_2]
                  L3_2 = L21_1
                  L2_2 = L22_1
                  L2_2 = L2_2[L3_2]
                  L2_2 = L2_2.heading
                  L2_2 = L2_2 + 360
                  L1_2.heading = L2_2
                end
              else
                L2_2 = L21_1
                L1_2 = L22_1
                L1_2 = L1_2[L2_2]
                L3_2 = L21_1
                L2_2 = L22_1
                L2_2 = L2_2[L3_2]
                L2_2 = L2_2.heading
                L2_2 = L2_2 - 1.0
                L2_2 = L2_2 % 360
                L1_2.heading = L2_2
                L2_2 = L21_1
                L1_2 = L22_1
                L1_2 = L1_2[L2_2]
                L1_2 = L1_2.heading
                if L1_2 < 0 then
                  L2_2 = L21_1
                  L1_2 = L22_1
                  L1_2 = L1_2[L2_2]
                  L3_2 = L21_1
                  L2_2 = L22_1
                  L2_2 = L2_2[L3_2]
                  L2_2 = L2_2.heading
                  L2_2 = L2_2 + 360
                  L1_2.heading = L2_2
                end
              end
            else
              L1_2 = L5_1
              if L1_2 then
                L1_2 = IsControlReleased
                L2_2 = 0
                L3_2 = Config
                L3_2 = L3_2.ParkingCreator
                L3_2 = L3_2.Controls
                L3_2 = L3_2.LEFT_CTRL
                L3_2 = L3_2.controlIndex
                L1_2 = L1_2(L2_2, L3_2)
                if L1_2 then
                  L1_2 = L25_1.heading
                  L1_2 = L1_2 - 5.0
                  L1_2 = L1_2 % 360
                  L25_1.heading = L1_2
                  L1_2 = L25_1.heading
                  if L1_2 < 0 then
                    L1_2 = L25_1.heading
                    L1_2 = L1_2 + 360
                    L25_1.heading = L1_2
                  end
                else
                  L1_2 = L25_1.heading
                  L1_2 = L1_2 - 1.0
                  L1_2 = L1_2 % 360
                  L25_1.heading = L1_2
                  L1_2 = L25_1.heading
                  if L1_2 < 0 then
                    L1_2 = L25_1.heading
                    L1_2 = L1_2 + 360
                    L25_1.heading = L1_2
                  end
                end
              else
                L1_2 = L6_1
                if L1_2 then
                  L1_2 = L26_1.interiorId
                  L1_2 = L1_2 + 1
                  L2_2 = Config
                  L2_2 = L2_2.ParkingCreator
                  L2_2 = L2_2.HouseGarageInteriors
                  L2_2 = L2_2[L1_2]
                  if not L2_2 then
                    L1_2 = 1
                  end
                  L26_1.interiorId = L1_2
                  L2_2 = SetEntityCoords
                  L3_2 = PlayerPedId
                  L3_2 = L3_2()
                  L4_2 = Config
                  L4_2 = L4_2.ParkingCreator
                  L4_2 = L4_2.HouseGarageInteriors
                  L5_2 = L26_1.interiorId
                  L4_2 = L4_2[L5_2]
                  L4_2 = L4_2.camCoords
                  L4_2 = L4_2.xyz
                  L2_2(L3_2, L4_2)
                  L2_2 = SetCamCoord
                  L3_2 = Creator
                  L3_2 = L3_2.camera
                  L4_2 = Config
                  L4_2 = L4_2.ParkingCreator
                  L4_2 = L4_2.HouseGarageInteriors
                  L5_2 = L26_1.interiorId
                  L4_2 = L4_2[L5_2]
                  L4_2 = L4_2.camCoords
                  L4_2 = L4_2.xyz
                  L2_2(L3_2, L4_2)
                else
                  L1_2 = L7_1
                  if L1_2 then
                    L1_2 = L26_1.radius
                    if L1_2 < 30.0 then
                      L1_2 = L26_1.radius
                      L1_2 = L1_2 + 0.25
                      L26_1.radius = L1_2
                    end
                  else
                    L1_2 = L8_1
                    if L1_2 then
                      L1_2 = IsControlReleased
                      L2_2 = 0
                      L3_2 = Config
                      L3_2 = L3_2.ParkingCreator
                      L3_2 = L3_2.Controls
                      L3_2 = L3_2.LEFT_CTRL
                      L3_2 = L3_2.controlIndex
                      L1_2 = L1_2(L2_2, L3_2)
                      if L1_2 then
                        L1_2 = L27_1.enterVehHeading
                        L1_2 = L1_2 - 5.0
                        L1_2 = L1_2 % 360
                        L27_1.enterVehHeading = L1_2
                        L1_2 = L27_1.enterVehHeading
                        if L1_2 < 0 then
                          L1_2 = L27_1.enterVehHeading
                          L1_2 = L1_2 + 360
                          L27_1.enterVehHeading = L1_2
                        end
                      else
                        L1_2 = L27_1.enterVehHeading
                        L1_2 = L1_2 - 1.0
                        L1_2 = L1_2 % 360
                        L27_1.enterVehHeading = L1_2
                        L1_2 = L27_1.enterVehHeading
                        if L1_2 < 0 then
                          L1_2 = L27_1.enterVehHeading
                          L1_2 = L1_2 + 360
                          L27_1.enterVehHeading = L1_2
                        end
                      end
                    else
                      L1_2 = L9_1
                      if L1_2 then
                        L1_2 = IsControlReleased
                        L2_2 = 0
                        L3_2 = Config
                        L3_2 = L3_2.ParkingCreator
                        L3_2 = L3_2.Controls
                        L3_2 = L3_2.LEFT_CTRL
                        L3_2 = L3_2.controlIndex
                        L1_2 = L1_2(L2_2, L3_2)
                        if L1_2 then
                          L1_2 = L27_1.enterPedHeading
                          L1_2 = L1_2 - 5.0
                          L1_2 = L1_2 % 360
                          L27_1.enterPedHeading = L1_2
                          L1_2 = L27_1.enterPedHeading
                          if L1_2 < 0 then
                            L1_2 = L27_1.enterPedHeading
                            L1_2 = L1_2 + 360
                            L27_1.enterPedHeading = L1_2
                          end
                        else
                          L1_2 = L27_1.enterPedHeading
                          L1_2 = L1_2 - 1.0
                          L1_2 = L1_2 % 360
                          L27_1.enterPedHeading = L1_2
                          L1_2 = L27_1.enterPedHeading
                          if L1_2 < 0 then
                            L1_2 = L27_1.enterPedHeading
                            L1_2 = L1_2 + 360
                            L27_1.enterPedHeading = L1_2
                          end
                        end
                      else
                        L1_2 = L10_1
                        if L1_2 then
                          L1_2 = L27_1.interiorId
                          L1_2 = L1_2 + 1
                          L2_2 = Config
                          L2_2 = L2_2.ParkingCreator
                          L2_2 = L2_2.GarageInteriors
                          L2_2 = L2_2[L1_2]
                          if not L2_2 then
                            L1_2 = 1
                          end
                          L27_1.interiorId = L1_2
                          L2_2 = SetEntityCoords
                          L3_2 = PlayerPedId
                          L3_2 = L3_2()
                          L4_2 = Config
                          L4_2 = L4_2.ParkingCreator
                          L4_2 = L4_2.GarageInteriors
                          L5_2 = L27_1.interiorId
                          L4_2 = L4_2[L5_2]
                          L4_2 = L4_2.camCoords
                          L4_2 = L4_2.xyz
                          L2_2(L3_2, L4_2)
                          L2_2 = SetCamCoord
                          L3_2 = Creator
                          L3_2 = L3_2.camera
                          L4_2 = Config
                          L4_2 = L4_2.ParkingCreator
                          L4_2 = L4_2.GarageInteriors
                          L5_2 = L27_1.interiorId
                          L4_2 = L4_2[L5_2]
                          L4_2 = L4_2.camCoords
                          L4_2 = L4_2.xyz
                          L2_2(L3_2, L4_2)
                        else
                          L1_2 = L14_1
                          if L1_2 then
                            L1_2 = IsControlReleased
                            L2_2 = 0
                            L3_2 = Config
                            L3_2 = L3_2.ParkingCreator
                            L3_2 = L3_2.Controls
                            L3_2 = L3_2.LEFT_CTRL
                            L3_2 = L3_2.controlIndex
                            L1_2 = L1_2(L2_2, L3_2)
                            if L1_2 then
                              L1_2 = L11_1
                              if L1_2 then
                                L1_2 = L29_1.pedHeading
                                L1_2 = L1_2 - 5.0
                                L1_2 = L1_2 % 360
                                L29_1.pedHeading = L1_2
                                L1_2 = L29_1.pedHeading
                                if L1_2 < 0 then
                                  L1_2 = L29_1.pedHeading
                                  L1_2 = L1_2 + 360
                                  L29_1.pedHeading = L1_2
                                end
                              else
                                L1_2 = L28_1.pedHeading
                                L1_2 = L1_2 - 5.0
                                L1_2 = L1_2 % 360
                                L28_1.pedHeading = L1_2
                                L1_2 = L28_1.pedHeading
                                if L1_2 < 0 then
                                  L1_2 = L28_1.pedHeading
                                  L1_2 = L1_2 + 360
                                  L28_1.pedHeading = L1_2
                                end
                              end
                            else
                              L1_2 = L11_1
                              if L1_2 then
                                L1_2 = L29_1.pedHeading
                                L1_2 = L1_2 - 1.0
                                L1_2 = L1_2 % 360
                                L29_1.pedHeading = L1_2
                                L1_2 = L29_1.pedHeading
                                if L1_2 < 0 then
                                  L1_2 = L29_1.pedHeading
                                  L1_2 = L1_2 + 360
                                  L29_1.pedHeading = L1_2
                                end
                              else
                                L1_2 = L28_1.pedHeading
                                L1_2 = L1_2 - 1.0
                                L1_2 = L1_2 % 360
                                L28_1.pedHeading = L1_2
                                L1_2 = L28_1.pedHeading
                                if L1_2 < 0 then
                                  L1_2 = L28_1.pedHeading
                                  L1_2 = L1_2 + 360
                                  L28_1.pedHeading = L1_2
                                end
                              end
                            end
                          else
                            L1_2 = L15_1
                            if L1_2 then
                              L1_2 = IsControlReleased
                              L2_2 = 0
                              L3_2 = Config
                              L3_2 = L3_2.ParkingCreator
                              L3_2 = L3_2.Controls
                              L3_2 = L3_2.LEFT_CTRL
                              L3_2 = L3_2.controlIndex
                              L1_2 = L1_2(L2_2, L3_2)
                              if L1_2 then
                                L1_2 = L11_1
                                if L1_2 then
                                  L1_2 = L29_1.vehicleHeading
                                  L1_2 = L1_2 - 5.0
                                  L1_2 = L1_2 % 360
                                  L29_1.vehicleHeading = L1_2
                                  L1_2 = L29_1.vehicleHeading
                                  if L1_2 < 0 then
                                    L1_2 = L29_1.vehicleHeading
                                    L1_2 = L1_2 + 360
                                    L29_1.vehicleHeading = L1_2
                                  end
                                else
                                  L1_2 = L28_1.vehicleHeading
                                  L1_2 = L1_2 - 5.0
                                  L1_2 = L1_2 % 360
                                  L28_1.vehicleHeading = L1_2
                                  L1_2 = L28_1.vehicleHeading
                                  if L1_2 < 0 then
                                    L1_2 = L28_1.vehicleHeading
                                    L1_2 = L1_2 + 360
                                    L28_1.vehicleHeading = L1_2
                                  end
                                end
                              else
                                L1_2 = L11_1
                                if L1_2 then
                                  L1_2 = L29_1.vehicleHeading
                                  L1_2 = L1_2 - 1.0
                                  L1_2 = L1_2 % 360
                                  L29_1.vehicleHeading = L1_2
                                  L1_2 = L29_1.vehicleHeading
                                  if L1_2 < 0 then
                                    L1_2 = L29_1.vehicleHeading
                                    L1_2 = L1_2 + 360
                                    L29_1.vehicleHeading = L1_2
                                  end
                                else
                                  L1_2 = L28_1.vehicleHeading
                                  L1_2 = L1_2 - 1.0
                                  L1_2 = L1_2 % 360
                                  L28_1.vehicleHeading = L1_2
                                  L1_2 = L28_1.vehicleHeading
                                  if L1_2 < 0 then
                                    L1_2 = L28_1.vehicleHeading
                                    L1_2 = L1_2 + 360
                                    L28_1.vehicleHeading = L1_2
                                  end
                                end
                              end
                            else
                              L1_2 = L16_1
                              if L1_2 then
                                L1_2 = GetCamFov
                                L2_2 = Creator
                                L2_2 = L2_2.camera
                                L1_2 = L1_2(L2_2)
                                if L1_2 < 120.0 then
                                  L1_2 = SetCamFov
                                  L2_2 = Creator
                                  L2_2 = L2_2.camera
                                  L3_2 = GetCamFov
                                  L4_2 = Creator
                                  L4_2 = L4_2.camera
                                  L3_2 = L3_2(L4_2)
                                  L3_2 = L3_2 + 1.0
                                  L1_2(L2_2, L3_2)
                                end
                              else
                                L1_2 = L17_1
                                if L1_2 then
                                  L1_2 = IsControlReleased
                                  L2_2 = 0
                                  L3_2 = Config
                                  L3_2 = L3_2.ParkingCreator
                                  L3_2 = L3_2.Controls
                                  L3_2 = L3_2.LEFT_CTRL
                                  L3_2 = L3_2.controlIndex
                                  L1_2 = L1_2(L2_2, L3_2)
                                  if L1_2 then
                                    L1_2 = L28_1.spawnpointHeading
                                    L1_2 = L1_2 - 5.0
                                    L1_2 = L1_2 % 360
                                    L28_1.spawnpointHeading = L1_2
                                    L1_2 = L28_1.spawnpointHeading
                                    if L1_2 < 0 then
                                      L1_2 = L28_1.spawnpointHeading
                                      L1_2 = L1_2 + 360
                                      L28_1.spawnpointHeading = L1_2
                                    end
                                  else
                                    L1_2 = L28_1.spawnpointHeading
                                    L1_2 = L1_2 - 1.0
                                    L1_2 = L1_2 % 360
                                    L28_1.spawnpointHeading = L1_2
                                    L1_2 = L28_1.spawnpointHeading
                                    if L1_2 < 0 then
                                      L1_2 = L28_1.spawnpointHeading
                                      L1_2 = L1_2 + 360
                                      L28_1.spawnpointHeading = L1_2
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
                end
              end
            end
          end
        else
          L1_2 = IsControlPressed
          L2_2 = 0
          L3_2 = Config
          L3_2 = L3_2.ParkingCreator
          L3_2 = L3_2.Controls
          L3_2 = L3_2.ARROW_LEFT
          L3_2 = L3_2.controlIndex
          L1_2 = L1_2(L2_2, L3_2)
          if L1_2 then
            L1_2 = L7_1
            if L1_2 then
              L1_2 = IsControlReleased
              L2_2 = 0
              L3_2 = Config
              L3_2 = L3_2.ParkingCreator
              L3_2 = L3_2.Controls
              L3_2 = L3_2.LEFT_CTRL
              L3_2 = L3_2.controlIndex
              L1_2 = L1_2(L2_2, L3_2)
              if L1_2 then
                L1_2 = L26_1.heading
                L1_2 = L1_2 + 2.0
                L1_2 = L1_2 % 360
                L26_1.heading = L1_2
              else
                L1_2 = L26_1.heading
                L1_2 = L1_2 + 1.0
                L1_2 = L1_2 % 360
                L26_1.heading = L1_2
              end
            end
          else
            L1_2 = IsControlPressed
            L2_2 = 0
            L3_2 = Config
            L3_2 = L3_2.ParkingCreator
            L3_2 = L3_2.Controls
            L3_2 = L3_2.ARROW_RIGHT
            L3_2 = L3_2.controlIndex
            L1_2 = L1_2(L2_2, L3_2)
            if L1_2 then
              L1_2 = L7_1
              if L1_2 then
                L1_2 = IsControlReleased
                L2_2 = 0
                L3_2 = Config
                L3_2 = L3_2.ParkingCreator
                L3_2 = L3_2.Controls
                L3_2 = L3_2.LEFT_CTRL
                L3_2 = L3_2.controlIndex
                L1_2 = L1_2(L2_2, L3_2)
                if L1_2 then
                  L1_2 = L26_1.heading
                  L1_2 = L1_2 - 2.0
                  L1_2 = L1_2 % 360
                  L26_1.heading = L1_2
                  L1_2 = L26_1.heading
                  if L1_2 < 0 then
                    L1_2 = L26_1.heading
                    L1_2 = L1_2 + 360
                    L26_1.heading = L1_2
                  end
                else
                  L1_2 = L26_1.heading
                  L1_2 = L1_2 - 1.0
                  L1_2 = L1_2 % 360
                  L26_1.heading = L1_2
                  L1_2 = L26_1.heading
                  if L1_2 < 0 then
                    L1_2 = L26_1.heading
                    L1_2 = L1_2 + 360
                    L26_1.heading = L1_2
                  end
                end
              end
            else
              L1_2 = IsControlJustReleased
              L2_2 = 0
              L3_2 = Config
              L3_2 = L3_2.ParkingCreator
              L3_2 = L3_2.Controls
              L3_2 = L3_2.ENTER
              L3_2 = L3_2.controlIndex
              L1_2 = L1_2(L2_2, L3_2)
              if L1_2 then
                L1_2 = L19_1.points
                L1_2 = #L1_2
                if L1_2 > 0 then
                  L1_2 = L2_1
                  if L1_2 then
                    L1_2 = L8_1
                    if not L1_2 then
                      L1_2 = L12_1
                      if not L1_2 then
                        L1_2 = L11_1
                        if not L1_2 then
                          L1_2 = SetNuiFocus
                          L2_2 = true
                          L3_2 = true
                          L1_2(L2_2, L3_2)
                          L1_2 = SendNUIMessage
                          L2_2 = {}
                          L2_2.action = "openParkingCreator"
                          L1_2(L2_2)
                        end
                      end
                    end
                    L1_2 = L11_1
                    if L1_2 then
                      L1_2 = SetNuiFocus
                      L2_2 = true
                      L3_2 = true
                      L1_2(L2_2, L3_2)
                      L1_2 = SendNUIMessage
                      L2_2 = {}
                      L2_2.action = "openParkingCreator"
                      L2_2.menu = "house-garage-menu-menu"
                      L1_2(L2_2)
                    else
                      L1_2 = L12_1
                      if L1_2 then
                        L1_2 = SetNuiFocus
                        L2_2 = true
                        L3_2 = true
                        L1_2(L2_2, L3_2)
                        L1_2 = SendNUIMessage
                        L2_2 = {}
                        L2_2.action = "openParkingCreator"
                        L2_2.menu = "garage-menu"
                        L1_2(L2_2)
                      end
                    end
                  else
                    L1_2 = L3_1
                    if L1_2 then
                      L1_2 = SetNuiFocus
                      L2_2 = true
                      L3_2 = true
                      L1_2(L2_2, L3_2)
                      L1_2 = SendNUIMessage
                      L2_2 = {}
                      L2_2.action = "openParkingCreator"
                      L2_2.menu = "parking-menu"
                      L1_2(L2_2)
                    else
                      L1_2 = L4_1
                      if L1_2 then
                        L1_2 = SetNuiFocus
                        L2_2 = true
                        L3_2 = true
                        L1_2(L2_2, L3_2)
                        L1_2 = SendNUIMessage
                        L2_2 = {}
                        L2_2.action = "openParkingCreator"
                        L2_2.menu = "parking-menu"
                        L1_2(L2_2)
                      else
                        L1_2 = L5_1
                        if L1_2 then
                          L1_2 = GetEntityCoords
                          L2_2 = L25_1.ped
                          L1_2 = L1_2(L2_2)
                          L25_1.coords = L1_2
                          L1_2 = SetNuiFocus
                          L2_2 = true
                          L3_2 = true
                          L1_2(L2_2, L3_2)
                          L1_2 = SendNUIMessage
                          L2_2 = {}
                          L2_2.action = "openParkingCreator"
                          L2_2.menu = "parking-menu"
                          L1_2(L2_2)
                        else
                          L1_2 = L6_1
                          if L1_2 then
                            L1_2 = SetNuiFocus
                            L2_2 = true
                            L3_2 = true
                            L1_2(L2_2, L3_2)
                            L1_2 = SendNUIMessage
                            L2_2 = {}
                            L2_2.action = "openParkingCreator"
                            L2_2.menu = "house-garage-menu"
                            L1_2(L2_2)
                          else
                            L1_2 = L7_1
                            if L1_2 then
                              L1_2 = vec
                              L2_2 = A0_2.x
                              L3_2 = A0_2.y
                              L4_2 = A0_2.z
                              L4_2 = L4_2 + 1.0
                              L1_2 = L1_2(L2_2, L3_2, L4_2)
                              L26_1.enterCoords = L1_2
                              L1_2 = GetEntityHeading
                              L2_2 = L26_1.vehicle
                              L1_2 = L1_2(L2_2)
                              L26_1.heading = L1_2
                            else
                              L1_2 = L8_1
                              if L1_2 then
                                L1_2 = vec
                                L2_2 = A0_2.x
                                L3_2 = A0_2.y
                                L4_2 = A0_2.z
                                L4_2 = L4_2 + 1.0
                                L1_2 = L1_2(L2_2, L3_2, L4_2)
                                L27_1.enterVehCoords = L1_2
                                L1_2 = GetEntityHeading
                                L2_2 = L27_1.vehicle
                                L1_2 = L1_2(L2_2)
                                L27_1.enterVehHeading = L1_2
                              else
                                L1_2 = L9_1
                                if L1_2 then
                                  L1_2 = GetEntityCoords
                                  L2_2 = L27_1.ped
                                  L1_2 = L1_2(L2_2)
                                  L27_1.enterPedCoords = L1_2
                                  L1_2 = GetEntityHeading
                                  L2_2 = L27_1.ped
                                  L1_2 = L1_2(L2_2)
                                  L27_1.enterPedHeading = L1_2
                                else
                                  L1_2 = L10_1
                                  if L1_2 then
                                    L1_2 = SetNuiFocus
                                    L2_2 = true
                                    L3_2 = true
                                    L1_2(L2_2, L3_2)
                                    L1_2 = SendNUIMessage
                                    L2_2 = {}
                                    L2_2.action = "openParkingCreator"
                                    L2_2.menu = "garage-interior-menu"
                                    L1_2(L2_2)
                                  else
                                    L1_2 = L13_1
                                    if L1_2 then
                                      L1_2 = vec
                                      L2_2 = A0_2.x
                                      L3_2 = A0_2.y
                                      L4_2 = A0_2.z
                                      L4_2 = L4_2 + 1.0
                                      L1_2 = L1_2(L2_2, L3_2, L4_2)
                                      L28_1.menuPoint = L1_2
                                      L1_2 = SetNuiFocus
                                      L2_2 = true
                                      L3_2 = true
                                      L1_2(L2_2, L3_2)
                                      L1_2 = SendNUIMessage
                                      L2_2 = {}
                                      L2_2.action = "openParkingCreator"
                                      L2_2.menu = "garage-menu"
                                      L1_2(L2_2)
                                    else
                                      L1_2 = L17_1
                                      if L1_2 then
                                        L1_2 = GetEntityCoords
                                        L2_2 = L28_1.spawnpointVehicle
                                        L1_2 = L1_2(L2_2)
                                        L28_1.spawnpointCoords = L1_2
                                        L1_2 = GetEntityHeading
                                        L2_2 = L28_1.spawnpointVehicle
                                        L1_2 = L1_2(L2_2)
                                        L28_1.spawnpointHeading = L1_2
                                        L1_2 = SetNuiFocus
                                        L2_2 = true
                                        L3_2 = true
                                        L1_2(L2_2, L3_2)
                                        L1_2 = SendNUIMessage
                                        L2_2 = {}
                                        L2_2.action = "openParkingCreator"
                                        L2_2.menu = "garage-menu"
                                        L1_2(L2_2)
                                      else
                                        L1_2 = L18_1
                                        if L1_2 then
                                          L1_2 = vec
                                          L2_2 = A0_2.x
                                          L3_2 = A0_2.y
                                          L4_2 = A0_2.z
                                          L4_2 = L4_2 + 1.0
                                          L1_2 = L1_2(L2_2, L3_2, L4_2)
                                          L28_1.returnCoords = L1_2
                                          L1_2 = SetNuiFocus
                                          L2_2 = true
                                          L3_2 = true
                                          L1_2(L2_2, L3_2)
                                          L1_2 = SendNUIMessage
                                          L2_2 = {}
                                          L2_2.action = "openParkingCreator"
                                          L2_2.menu = "garage-menu"
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
                    end
                  end
                  L1_2 = L2_1
                  if L1_2 then
                    L1_2 = L8_1
                    if L1_2 then
                      L1_2 = false
                      L2_1 = L1_2
                      return
                    end
                  end
                  L1_2 = false
                  L2_1 = L1_2
                  L1_2 = false
                  L3_1 = L1_2
                  L1_2 = false
                  L4_1 = L1_2
                  L1_2 = false
                  L5_1 = L1_2
                  L1_2 = false
                  L6_1 = L1_2
                  L1_2 = false
                  L7_1 = L1_2
                  L1_2 = false
                  L8_1 = L1_2
                  L1_2 = false
                  L9_1 = L1_2
                  L1_2 = false
                  L10_1 = L1_2
                  L1_2 = false
                  L12_1 = L1_2
                  L1_2 = false
                  L13_1 = L1_2
                  L1_2 = false
                  L14_1 = L1_2
                  L1_2 = false
                  L15_1 = L1_2
                  L1_2 = false
                  L16_1 = L1_2
                  L1_2 = false
                  L17_1 = L1_2
                  L1_2 = false
                  L18_1 = L1_2
                end
              else
                L1_2 = IsControlJustPressed
                L2_2 = 0
                L3_2 = Config
                L3_2 = L3_2.ParkingCreator
                L3_2 = L3_2.Controls
                L3_2 = L3_2.CANCEL
                L3_2 = L3_2.controlIndex
                L1_2 = L1_2(L2_2, L3_2)
                if L1_2 then
                  L1_2 = TriggerEvent
                  L2_2 = "vms_garagesv2:closeParkingCreator"
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
keyControls = L31_1
L31_1 = 180
L32_1 = 0.15
function L33_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L0_2 = table
  L0_2 = L0_2.unpack
  L1_2 = GetCamCoord
  L2_2 = Creator
  L2_2 = L2_2.camera
  L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L1_2(L2_2)
  L0_2, L1_2, L2_2 = L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
  L3_2 = table
  L3_2 = L3_2.unpack
  L4_2 = GetCamRot
  L5_2 = Creator
  L5_2 = L5_2.camera
  L6_2 = 2
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L4_2(L5_2, L6_2)
  L3_2, L4_2, L5_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
  L6_2 = math
  L6_2 = L6_2.sin
  L7_2 = -L5_2
  L8_2 = math
  L8_2 = L8_2.pi
  L7_2 = L7_2 * L8_2
  L7_2 = L7_2 / 180
  L6_2 = L6_2(L7_2)
  L7_2 = L32_1
  L6_2 = L6_2 * L7_2
  L7_2 = math
  L7_2 = L7_2.cos
  L8_2 = -L5_2
  L9_2 = math
  L9_2 = L9_2.pi
  L8_2 = L8_2 * L9_2
  L8_2 = L8_2 / 180
  L7_2 = L7_2(L8_2)
  L8_2 = L32_1
  L7_2 = L7_2 * L8_2
  L8_2 = math
  L8_2 = L8_2.tan
  L9_2 = math
  L9_2 = L9_2.pi
  L9_2 = L3_2 * L9_2
  L9_2 = L9_2 / 180
  L8_2 = L8_2(L9_2)
  L9_2 = L32_1
  L8_2 = L8_2 * L9_2
  L9_2 = math
  L9_2 = L9_2.sin
  L10_2 = math
  L10_2 = L10_2.floor
  L11_2 = L5_2 + 90.0
  L10_2 = L10_2(L11_2)
  L10_2 = L10_2 % 360
  L10_2 = L10_2 * -1.0
  L11_2 = math
  L11_2 = L11_2.pi
  L10_2 = L10_2 * L11_2
  L10_2 = L10_2 / 180
  L9_2 = L9_2(L10_2)
  L10_2 = L32_1
  L9_2 = L9_2 * L10_2
  L10_2 = math
  L10_2 = L10_2.cos
  L11_2 = math
  L11_2 = L11_2.floor
  L12_2 = L5_2 + 90.0
  L11_2 = L11_2(L12_2)
  L11_2 = L11_2 % 360
  L11_2 = L11_2 * -1.0
  L12_2 = math
  L12_2 = L12_2.pi
  L11_2 = L11_2 * L12_2
  L11_2 = L11_2 / 180
  L10_2 = L10_2(L11_2)
  L11_2 = L32_1
  L10_2 = L10_2 * L11_2
  L11_2 = IsControlPressed
  L12_2 = 0
  L13_2 = 32
  L11_2 = L11_2(L12_2, L13_2)
  if L11_2 then
    L0_2 = L0_2 + L6_2
    L1_2 = L1_2 + L7_2
  end
  L11_2 = IsControlPressed
  L12_2 = 0
  L13_2 = 33
  L11_2 = L11_2(L12_2, L13_2)
  if L11_2 then
    L0_2 = L0_2 - L6_2
    L1_2 = L1_2 - L7_2
  end
  L11_2 = IsControlPressed
  L12_2 = 0
  L13_2 = 35
  L11_2 = L11_2(L12_2, L13_2)
  if L11_2 then
    L0_2 = L0_2 - L9_2
    L1_2 = L1_2 - L10_2
  end
  L11_2 = IsControlPressed
  L12_2 = 0
  L13_2 = 34
  L11_2 = L11_2(L12_2, L13_2)
  if L11_2 then
    L0_2 = L0_2 + L9_2
    L1_2 = L1_2 + L10_2
  end
  L11_2 = IsControlPressed
  L12_2 = 0
  L13_2 = 46
  L11_2 = L11_2(L12_2, L13_2)
  if L11_2 then
    L11_2 = L32_1
    L2_2 = L2_2 + L11_2
  end
  L11_2 = IsControlPressed
  L12_2 = 0
  L13_2 = 52
  L11_2 = L11_2(L12_2, L13_2)
  if L11_2 then
    L11_2 = L32_1
    L2_2 = L2_2 - L11_2
  end
  L11_2 = PlayerPedId
  L11_2 = L11_2()
  L12_2 = GetEntityCoords
  L13_2 = L11_2
  L12_2 = L12_2(L13_2)
  L13_2 = GetDistanceBetweenCoords
  L14_2 = vector3
  L15_2 = L0_2
  L16_2 = L1_2
  L17_2 = L2_2
  L14_2 = L14_2(L15_2, L16_2, L17_2)
  L14_2 = L12_2 - L14_2
  L15_2 = true
  L13_2 = L13_2(L14_2, L15_2)
  L14_2 = L31_1
  if L13_2 <= L14_2 then
    L13_2 = SetCamCoord
    L14_2 = Creator
    L14_2 = L14_2.camera
    L15_2 = L0_2
    L16_2 = L1_2
    L17_2 = L2_2
    L13_2(L14_2, L15_2, L16_2, L17_2)
  end
end
moveCamInputs = L33_1
function L33_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = GetCamRot
  L3_2 = Creator
  L3_2 = L3_2.camera
  L4_2 = 2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = GetCamCoord
  L4_2 = Creator
  L4_2 = L4_2.camera
  L3_2 = L3_2(L4_2)
  L4_2 = RotationToDirection
  L5_2 = L2_2
  L4_2 = L4_2(L5_2)
  L5_2 = {}
  L6_2 = L3_2.x
  L7_2 = L4_2.x
  L7_2 = L7_2 * A0_2
  L6_2 = L6_2 + L7_2
  L5_2.x = L6_2
  L6_2 = L3_2.y
  L7_2 = L4_2.y
  L7_2 = L7_2 * A0_2
  L6_2 = L6_2 + L7_2
  L5_2.y = L6_2
  L6_2 = L3_2.z
  L7_2 = L4_2.z
  L7_2 = L7_2 * A0_2
  L6_2 = L6_2 + L7_2
  L5_2.z = L6_2
  L6_2 = GetShapeTestResult
  L7_2 = StartShapeTestRay
  L8_2 = L3_2.x
  L9_2 = L3_2.y
  L10_2 = L3_2.z
  L11_2 = L5_2.x
  L12_2 = L5_2.y
  L13_2 = L5_2.z
  L14_2 = -1
  L15_2 = L1_2
  L16_2 = 0
  L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  L6_2, L7_2, L8_2, L9_2, L10_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  L11_2 = L7_2
  L12_2 = L8_2
  L13_2 = L10_2
  return L11_2, L12_2, L13_2
end
RayCastGamePlayCamera = L33_1
function L33_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = {}
  L2_2 = math
  L2_2 = L2_2.pi
  L2_2 = L2_2 / 180
  L3_2 = A0_2.x
  L2_2 = L2_2 * L3_2
  L1_2.x = L2_2
  L2_2 = math
  L2_2 = L2_2.pi
  L2_2 = L2_2 / 180
  L3_2 = A0_2.y
  L2_2 = L2_2 * L3_2
  L1_2.y = L2_2
  L2_2 = math
  L2_2 = L2_2.pi
  L2_2 = L2_2 / 180
  L3_2 = A0_2.z
  L2_2 = L2_2 * L3_2
  L1_2.z = L2_2
  L2_2 = {}
  L3_2 = math
  L3_2 = L3_2.sin
  L4_2 = L1_2.z
  L3_2 = L3_2(L4_2)
  L3_2 = -L3_2
  L4_2 = math
  L4_2 = L4_2.abs
  L5_2 = math
  L5_2 = L5_2.cos
  L6_2 = L1_2.x
  L5_2, L6_2 = L5_2(L6_2)
  L4_2 = L4_2(L5_2, L6_2)
  L3_2 = L3_2 * L4_2
  L2_2.x = L3_2
  L3_2 = math
  L3_2 = L3_2.cos
  L4_2 = L1_2.z
  L3_2 = L3_2(L4_2)
  L4_2 = math
  L4_2 = L4_2.abs
  L5_2 = math
  L5_2 = L5_2.cos
  L6_2 = L1_2.x
  L5_2, L6_2 = L5_2(L6_2)
  L4_2 = L4_2(L5_2, L6_2)
  L3_2 = L3_2 * L4_2
  L2_2.y = L3_2
  L3_2 = math
  L3_2 = L3_2.sin
  L4_2 = L1_2.x
  L3_2 = L3_2(L4_2)
  L2_2.z = L3_2
  return L2_2
end
RotationToDirection = L33_1
function L33_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2
  L0_2 = GetCamCoord
  L1_2 = Creator
  L1_2 = L1_2.camera
  L0_2 = L0_2(L1_2)
  L1_2 = RayCastGamePlayCamera
  L2_2 = 80.0
  L1_2, L2_2 = L1_2(L2_2)
  if L1_2 then
    L3_2 = L3_1
    if L3_2 then
      L3_2 = Config
      L3_2 = L3_2.ParkingCreator
      L3_2 = L3_2.WaterVehicleTypes
      L4_2 = L20_1
      L3_2 = L3_2[L4_2]
      if L3_2 then
        L3_2 = GetGroundZFor_3dCoord
        L4_2 = L2_2.x
        L5_2 = L2_2.y
        L6_2 = L2_2.z
        L7_2 = true
        L3_2, L4_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
        L5_2 = vector3
        L6_2 = L2_2.x
        L7_2 = L2_2.y
        L8_2 = L4_2
        L5_2 = L5_2(L6_2, L7_2, L8_2)
        L2_2 = L5_2
        L6_2 = L21_1
        L5_2 = L22_1
        L5_2 = L5_2[L6_2]
        L5_2 = L5_2.vehicle
        if L5_2 then
          L5_2 = DoesEntityExist
          L7_2 = L21_1
          L6_2 = L22_1
          L6_2 = L6_2[L7_2]
          L6_2 = L6_2.vehicle
          L5_2 = L5_2(L6_2)
          if L5_2 then
            L5_2 = SetEntityCoords
            L7_2 = L21_1
            L6_2 = L22_1
            L6_2 = L6_2[L7_2]
            L6_2 = L6_2.vehicle
            L7_2 = L2_2.x
            L8_2 = L2_2.y
            L9_2 = L4_2
            L5_2(L6_2, L7_2, L8_2, L9_2)
            L5_2 = SetEntityHeading
            L7_2 = L21_1
            L6_2 = L22_1
            L6_2 = L6_2[L7_2]
            L6_2 = L6_2.vehicle
            L8_2 = L21_1
            L7_2 = L22_1
            L7_2 = L7_2[L8_2]
            L7_2 = L7_2.heading
            L5_2(L6_2, L7_2)
          end
        end
      else
        L4_2 = L21_1
        L3_2 = L22_1
        L3_2 = L3_2[L4_2]
        L3_2 = L3_2.vehicle
        if L3_2 then
          L3_2 = DoesEntityExist
          L5_2 = L21_1
          L4_2 = L22_1
          L4_2 = L4_2[L5_2]
          L4_2 = L4_2.vehicle
          L3_2 = L3_2(L4_2)
          if L3_2 then
            L3_2 = SetEntityCoords
            L5_2 = L21_1
            L4_2 = L22_1
            L4_2 = L4_2[L5_2]
            L4_2 = L4_2.vehicle
            L5_2 = L2_2.x
            L6_2 = L2_2.y
            L7_2 = L2_2.z
            L3_2(L4_2, L5_2, L6_2, L7_2)
            L3_2 = SetEntityHeading
            L5_2 = L21_1
            L4_2 = L22_1
            L4_2 = L4_2[L5_2]
            L4_2 = L4_2.vehicle
            L6_2 = L21_1
            L5_2 = L22_1
            L5_2 = L5_2[L6_2]
            L5_2 = L5_2.heading
            L3_2(L4_2, L5_2)
          end
        end
      end
    else
      L3_2 = L5_1
      if L3_2 then
        L3_2 = L25_1.ped
        if L3_2 then
          L3_2 = DoesEntityExist
          L4_2 = L25_1.ped
          L3_2 = L3_2(L4_2)
          if L3_2 then
            L3_2 = SetEntityCoords
            L4_2 = L25_1.ped
            L5_2 = L2_2.xyz
            L3_2(L4_2, L5_2)
            L3_2 = SetEntityHeading
            L4_2 = L25_1.ped
            L5_2 = L25_1.heading
            L3_2(L4_2, L5_2)
          end
        end
      else
        L3_2 = L4_1
        if L3_2 then
          L3_2 = Config
          L3_2 = L3_2.Marker
          L3_2 = L3_2.pay_station
          L4_2 = L24_1
          L4_2 = #L4_2
          if L4_2 >= 1 then
            L4_2 = pairs
            L5_2 = L24_1
            L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
            for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
              L10_2 = DrawMarker
              L11_2 = L3_2.type
              L12_2 = L9_2.xyz
              L13_2 = 0.0
              L14_2 = 0.0
              L15_2 = 0.0
              L16_2 = L3_2.rotation
              L16_2 = L16_2.xyz
              L17_2 = L3_2.scale
              L17_2 = L17_2.xyz
              L18_2 = L3_2.color
              L18_2 = L18_2[1]
              L19_2 = L3_2.color
              L19_2 = L19_2[2]
              L20_2 = L3_2.color
              L20_2 = L20_2[3]
              L21_2 = L3_2.color
              L21_2 = L21_2[4]
              L22_2 = L3_2.bobUpAndDown
              L23_2 = nil
              L24_2 = nil
              L25_2 = L3_2.rotate
              L26_2 = L3_2.textureDict
              L27_2 = L3_2.textureName
              L28_2 = L3_2.drawOnEnts
              L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2)
              L10_2 = DrawMarker
              L11_2 = 1
              L12_2 = L9_2.x
              L13_2 = L9_2.y
              L14_2 = L9_2.z
              L14_2 = L14_2 - 1.0
              L15_2 = 0.0
              L16_2 = 0.0
              L17_2 = 0.0
              L18_2 = 0.0
              L19_2 = 0.0
              L20_2 = 0.0
              L21_2 = 1.2
              L22_2 = 1.2
              L23_2 = 1.0
              L24_2 = L3_2.color
              L24_2 = L24_2[1]
              L25_2 = L3_2.color
              L25_2 = L25_2[2]
              L26_2 = L3_2.color
              L26_2 = L26_2[3]
              L27_2 = L3_2.color
              L27_2 = L27_2[4]
              L28_2 = false
              L29_2 = nil
              L30_2 = nil
              L31_2 = 0.0
              L32_2 = 0.0
              L33_2 = 0.0
              L34_2 = L3_2.textureDict
              L35_2 = L3_2.textureName
              L36_2 = L3_2.drawOnEnts
              L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2)
            end
          end
          L4_2 = DrawMarker
          L5_2 = L3_2.type
          L6_2 = L2_2.x
          L7_2 = L2_2.y
          L8_2 = L2_2.z
          L8_2 = L8_2 + 1.0
          L9_2 = 0.0
          L10_2 = 0.0
          L11_2 = 0.0
          L12_2 = L3_2.rotation
          L12_2 = L12_2.xyz
          L13_2 = L3_2.scale
          L13_2 = L13_2.xyz
          L14_2 = L3_2.color
          L14_2 = L14_2[1]
          L15_2 = L3_2.color
          L15_2 = L15_2[2]
          L16_2 = L3_2.color
          L16_2 = L16_2[3]
          L17_2 = L3_2.color
          L17_2 = L17_2[4]
          L18_2 = L3_2.bobUpAndDown
          L19_2 = nil
          L20_2 = nil
          L21_2 = L3_2.rotate
          L22_2 = L3_2.textureDict
          L23_2 = L3_2.textureName
          L24_2 = L3_2.drawOnEnts
          L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
          L4_2 = DrawMarker
          L5_2 = 1
          L6_2 = L2_2.x
          L7_2 = L2_2.y
          L8_2 = L2_2.z
          L9_2 = 0.0
          L10_2 = 0.0
          L11_2 = 0.0
          L12_2 = 0.0
          L13_2 = 0.0
          L14_2 = 0.0
          L15_2 = 1.2
          L16_2 = 1.2
          L17_2 = 1.0
          L18_2 = L3_2.color
          L18_2 = L18_2[1]
          L19_2 = L3_2.color
          L19_2 = L19_2[2]
          L20_2 = L3_2.color
          L20_2 = L20_2[3]
          L21_2 = L3_2.color
          L21_2 = L21_2[4]
          L22_2 = false
          L23_2 = nil
          L24_2 = nil
          L25_2 = 0.0
          L26_2 = 0.0
          L27_2 = 0.0
          L28_2 = L3_2.textureDict
          L29_2 = L3_2.textureName
          L30_2 = L3_2.drawOnEnts
          L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2)
        else
          L3_2 = L7_1
          if L3_2 then
            L3_2 = DrawMarker
            L4_2 = 28
            L5_2 = L2_2.x
            L6_2 = L2_2.y
            L7_2 = L2_2.z
            L7_2 = L7_2 + 1.0
            L8_2 = 0.0
            L9_2 = 0.0
            L10_2 = 0.0
            L11_2 = 0.0
            L12_2 = 0.0
            L13_2 = 0.0
            L14_2 = vec
            L15_2 = L26_1.radius
            L16_2 = L26_1.radius
            L17_2 = L26_1.radius
            L14_2 = L14_2(L15_2, L16_2, L17_2)
            L15_2 = 114
            L16_2 = 49
            L17_2 = 212
            L18_2 = 120
            L19_2 = false
            L20_2 = nil
            L21_2 = nil
            L22_2 = false
            L23_2 = nil
            L24_2 = nil
            L25_2 = nil
            L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
            L3_2 = L26_1.vehicle
            if L3_2 then
              L3_2 = DoesEntityExist
              L4_2 = L26_1.vehicle
              L3_2 = L3_2(L4_2)
              if L3_2 then
                L3_2 = SetEntityCoords
                L4_2 = L26_1.vehicle
                L5_2 = L2_2.x
                L6_2 = L2_2.y
                L7_2 = L2_2.z
                L3_2(L4_2, L5_2, L6_2, L7_2)
                L3_2 = SetEntityHeading
                L4_2 = L26_1.vehicle
                L5_2 = L26_1.heading
                L3_2(L4_2, L5_2)
              end
            end
          else
            L3_2 = L8_1
            if L3_2 then
              L3_2 = L27_1.vehicle
              if L3_2 then
                L3_2 = DoesEntityExist
                L4_2 = L27_1.vehicle
                L3_2 = L3_2(L4_2)
                if L3_2 then
                  L3_2 = SetEntityCoords
                  L4_2 = L27_1.vehicle
                  L5_2 = L2_2.x
                  L6_2 = L2_2.y
                  L7_2 = L2_2.z
                  L3_2(L4_2, L5_2, L6_2, L7_2)
                  L3_2 = SetEntityHeading
                  L4_2 = L27_1.vehicle
                  L5_2 = L27_1.enterVehHeading
                  L3_2(L4_2, L5_2)
                end
              end
            else
              L3_2 = L9_1
              if L3_2 then
                L3_2 = L27_1.ped
                if L3_2 then
                  L3_2 = DoesEntityExist
                  L4_2 = L27_1.ped
                  L3_2 = L3_2(L4_2)
                  if L3_2 then
                    L3_2 = SetEntityCoords
                    L4_2 = L27_1.ped
                    L5_2 = L2_2.xyz
                    L3_2(L4_2, L5_2)
                    L3_2 = SetEntityHeading
                    L4_2 = L27_1.ped
                    L5_2 = L27_1.enterPedHeading
                    L3_2(L4_2, L5_2)
                  end
                end
              else
                L3_2 = L13_1
                if L3_2 then
                  L3_2 = Config
                  L3_2 = L3_2.Marker
                  L3_2 = L3_2.garage_menu
                  L4_2 = DrawMarker
                  L5_2 = L3_2.type
                  L6_2 = L2_2.x
                  L7_2 = L2_2.y
                  L8_2 = L2_2.z
                  L8_2 = L8_2 + 1.0
                  L9_2 = 0.0
                  L10_2 = 0.0
                  L11_2 = 0.0
                  L12_2 = L3_2.rotation
                  L12_2 = L12_2.xyz
                  L13_2 = L3_2.scale
                  L13_2 = L13_2.xyz
                  L14_2 = L3_2.color
                  L14_2 = L14_2[1]
                  L15_2 = L3_2.color
                  L15_2 = L15_2[2]
                  L16_2 = L3_2.color
                  L16_2 = L16_2[3]
                  L17_2 = L3_2.color
                  L17_2 = L17_2[4]
                  L18_2 = L3_2.bobUpAndDown
                  L19_2 = nil
                  L20_2 = nil
                  L21_2 = L3_2.rotate
                  L22_2 = L3_2.textureDict
                  L23_2 = L3_2.textureName
                  L24_2 = L3_2.drawOnEnts
                  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
                  L4_2 = L28_1.returnCoords
                  if L4_2 then
                    L4_2 = Config
                    L4_2 = L4_2.Marker
                    L4_2 = L4_2.return_vehicle
                    L5_2 = DrawMarker
                    L6_2 = L4_2.type
                    L7_2 = L28_1.returnCoords
                    L7_2 = L7_2.x
                    L8_2 = L28_1.returnCoords
                    L8_2 = L8_2.y
                    L9_2 = L28_1.returnCoords
                    L9_2 = L9_2.z
                    L10_2 = 0.0
                    L11_2 = 0.0
                    L12_2 = 0.0
                    L13_2 = L4_2.rotation
                    L13_2 = L13_2.xyz
                    L14_2 = L4_2.scale
                    L14_2 = L14_2.xyz
                    L15_2 = L4_2.color
                    L15_2 = L15_2[1]
                    L16_2 = L4_2.color
                    L16_2 = L16_2[2]
                    L17_2 = L4_2.color
                    L17_2 = L17_2[3]
                    L18_2 = L4_2.color
                    L18_2 = L18_2[4]
                    L19_2 = L4_2.bobUpAndDown
                    L20_2 = nil
                    L21_2 = nil
                    L22_2 = L4_2.rotate
                    L23_2 = L4_2.textureDict
                    L24_2 = L4_2.textureName
                    L25_2 = L4_2.drawOnEnts
                    L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
                  end
                else
                  L3_2 = L14_1
                  if L3_2 then
                    L3_2 = L11_1
                    if L3_2 then
                      L3_2 = L29_1.ped
                      if L3_2 then
                        L3_2 = DoesEntityExist
                        L4_2 = L29_1.ped
                        L3_2 = L3_2(L4_2)
                        if L3_2 then
                          L3_2 = SetEntityCoords
                          L4_2 = L29_1.ped
                          L5_2 = L2_2.xyz
                          L3_2(L4_2, L5_2)
                          L3_2 = SetEntityHeading
                          L4_2 = L29_1.ped
                          L5_2 = L29_1.pedHeading
                          L3_2(L4_2, L5_2)
                        end
                      end
                    else
                      L3_2 = L28_1.ped
                      if L3_2 then
                        L3_2 = DoesEntityExist
                        L4_2 = L28_1.ped
                        L3_2 = L3_2(L4_2)
                        if L3_2 then
                          L3_2 = SetEntityCoords
                          L4_2 = L28_1.ped
                          L5_2 = L2_2.xyz
                          L3_2(L4_2, L5_2)
                          L3_2 = SetEntityHeading
                          L4_2 = L28_1.ped
                          L5_2 = L28_1.pedHeading
                          L3_2(L4_2, L5_2)
                        end
                      end
                      L3_2 = L28_1.menuPoint
                      if L3_2 then
                        L3_2 = Config
                        L3_2 = L3_2.Marker
                        L3_2 = L3_2.garage_menu
                        L4_2 = DrawMarker
                        L5_2 = L3_2.type
                        L6_2 = L28_1.menuPoint
                        L6_2 = L6_2.x
                        L7_2 = L28_1.menuPoint
                        L7_2 = L7_2.y
                        L8_2 = L28_1.menuPoint
                        L8_2 = L8_2.z
                        L9_2 = 0.0
                        L10_2 = 0.0
                        L11_2 = 0.0
                        L12_2 = L3_2.rotation
                        L12_2 = L12_2.xyz
                        L13_2 = L3_2.scale
                        L13_2 = L13_2.xyz
                        L14_2 = L3_2.color
                        L14_2 = L14_2[1]
                        L15_2 = L3_2.color
                        L15_2 = L15_2[2]
                        L16_2 = L3_2.color
                        L16_2 = L16_2[3]
                        L17_2 = L3_2.color
                        L17_2 = L17_2[4]
                        L18_2 = L3_2.bobUpAndDown
                        L19_2 = nil
                        L20_2 = nil
                        L21_2 = L3_2.rotate
                        L22_2 = L3_2.textureDict
                        L23_2 = L3_2.textureName
                        L24_2 = L3_2.drawOnEnts
                        L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
                      end
                      L3_2 = L28_1.returnCoords
                      if L3_2 then
                        L3_2 = Config
                        L3_2 = L3_2.Marker
                        L3_2 = L3_2.return_vehicle
                        L4_2 = DrawMarker
                        L5_2 = L3_2.type
                        L6_2 = L28_1.returnCoords
                        L6_2 = L6_2.x
                        L7_2 = L28_1.returnCoords
                        L7_2 = L7_2.y
                        L8_2 = L28_1.returnCoords
                        L8_2 = L8_2.z
                        L9_2 = 0.0
                        L10_2 = 0.0
                        L11_2 = 0.0
                        L12_2 = L3_2.rotation
                        L12_2 = L12_2.xyz
                        L13_2 = L3_2.scale
                        L13_2 = L13_2.xyz
                        L14_2 = L3_2.color
                        L14_2 = L14_2[1]
                        L15_2 = L3_2.color
                        L15_2 = L15_2[2]
                        L16_2 = L3_2.color
                        L16_2 = L16_2[3]
                        L17_2 = L3_2.color
                        L17_2 = L17_2[4]
                        L18_2 = L3_2.bobUpAndDown
                        L19_2 = nil
                        L20_2 = nil
                        L21_2 = L3_2.rotate
                        L22_2 = L3_2.textureDict
                        L23_2 = L3_2.textureName
                        L24_2 = L3_2.drawOnEnts
                        L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
                      end
                    end
                  else
                    L3_2 = L15_1
                    if L3_2 then
                      L3_2 = L11_1
                      if L3_2 then
                        L3_2 = L29_1.vehicle
                        if L3_2 then
                          L3_2 = DoesEntityExist
                          L4_2 = L29_1.vehicle
                          L3_2 = L3_2(L4_2)
                          if L3_2 then
                            L3_2 = SetEntityCoords
                            L4_2 = L29_1.vehicle
                            L5_2 = L2_2.x
                            L6_2 = L2_2.y
                            L7_2 = L2_2.z
                            L3_2(L4_2, L5_2, L6_2, L7_2)
                            L3_2 = SetEntityHeading
                            L4_2 = L29_1.vehicle
                            L5_2 = L29_1.vehicleHeading
                            L3_2(L4_2, L5_2)
                          end
                        end
                      else
                        L3_2 = L28_1.vehicle
                        if L3_2 then
                          L3_2 = DoesEntityExist
                          L4_2 = L28_1.vehicle
                          L3_2 = L3_2(L4_2)
                          if L3_2 then
                            L3_2 = SetEntityCoords
                            L4_2 = L28_1.vehicle
                            L5_2 = L2_2.x
                            L6_2 = L2_2.y
                            L7_2 = L2_2.z
                            L3_2(L4_2, L5_2, L6_2, L7_2)
                            L3_2 = SetEntityHeading
                            L4_2 = L28_1.vehicle
                            L5_2 = L28_1.vehicleHeading
                            L3_2(L4_2, L5_2)
                          end
                        end
                        L3_2 = L28_1.menuPoint
                        if L3_2 then
                          L3_2 = Config
                          L3_2 = L3_2.Marker
                          L3_2 = L3_2.garage_menu
                          L4_2 = DrawMarker
                          L5_2 = L3_2.type
                          L6_2 = L28_1.menuPoint
                          L6_2 = L6_2.x
                          L7_2 = L28_1.menuPoint
                          L7_2 = L7_2.y
                          L8_2 = L28_1.menuPoint
                          L8_2 = L8_2.z
                          L9_2 = 0.0
                          L10_2 = 0.0
                          L11_2 = 0.0
                          L12_2 = L3_2.rotation
                          L12_2 = L12_2.xyz
                          L13_2 = L3_2.scale
                          L13_2 = L13_2.xyz
                          L14_2 = L3_2.color
                          L14_2 = L14_2[1]
                          L15_2 = L3_2.color
                          L15_2 = L15_2[2]
                          L16_2 = L3_2.color
                          L16_2 = L16_2[3]
                          L17_2 = L3_2.color
                          L17_2 = L17_2[4]
                          L18_2 = L3_2.bobUpAndDown
                          L19_2 = nil
                          L20_2 = nil
                          L21_2 = L3_2.rotate
                          L22_2 = L3_2.textureDict
                          L23_2 = L3_2.textureName
                          L24_2 = L3_2.drawOnEnts
                          L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
                        end
                        L3_2 = L28_1.returnCoords
                        if L3_2 then
                          L3_2 = Config
                          L3_2 = L3_2.Marker
                          L3_2 = L3_2.return_vehicle
                          L4_2 = DrawMarker
                          L5_2 = L3_2.type
                          L6_2 = L28_1.returnCoords
                          L6_2 = L6_2.x
                          L7_2 = L28_1.returnCoords
                          L7_2 = L7_2.y
                          L8_2 = L28_1.returnCoords
                          L8_2 = L8_2.z
                          L9_2 = 0.0
                          L10_2 = 0.0
                          L11_2 = 0.0
                          L12_2 = L3_2.rotation
                          L12_2 = L12_2.xyz
                          L13_2 = L3_2.scale
                          L13_2 = L13_2.xyz
                          L14_2 = L3_2.color
                          L14_2 = L14_2[1]
                          L15_2 = L3_2.color
                          L15_2 = L15_2[2]
                          L16_2 = L3_2.color
                          L16_2 = L16_2[3]
                          L17_2 = L3_2.color
                          L17_2 = L17_2[4]
                          L18_2 = L3_2.bobUpAndDown
                          L19_2 = nil
                          L20_2 = nil
                          L21_2 = L3_2.rotate
                          L22_2 = L3_2.textureDict
                          L23_2 = L3_2.textureName
                          L24_2 = L3_2.drawOnEnts
                          L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
                        end
                      end
                    else
                      L3_2 = L17_1
                      if L3_2 then
                        L3_2 = L28_1.spawnpointVehicle
                        if L3_2 then
                          L3_2 = DoesEntityExist
                          L4_2 = L28_1.spawnpointVehicle
                          L3_2 = L3_2(L4_2)
                          if L3_2 then
                            L3_2 = SetEntityCoords
                            L4_2 = L28_1.spawnpointVehicle
                            L5_2 = L2_2.x
                            L6_2 = L2_2.y
                            L7_2 = L2_2.z
                            L3_2(L4_2, L5_2, L6_2, L7_2)
                            L3_2 = SetEntityHeading
                            L4_2 = L28_1.spawnpointVehicle
                            L5_2 = L28_1.spawnpointHeading
                            L3_2(L4_2, L5_2)
                          end
                        end
                        L3_2 = L28_1.menuPoint
                        if L3_2 then
                          L3_2 = Config
                          L3_2 = L3_2.Marker
                          L3_2 = L3_2.garage_menu
                          L4_2 = DrawMarker
                          L5_2 = L3_2.type
                          L6_2 = L28_1.menuPoint
                          L6_2 = L6_2.x
                          L7_2 = L28_1.menuPoint
                          L7_2 = L7_2.y
                          L8_2 = L28_1.menuPoint
                          L8_2 = L8_2.z
                          L9_2 = 0.0
                          L10_2 = 0.0
                          L11_2 = 0.0
                          L12_2 = L3_2.rotation
                          L12_2 = L12_2.xyz
                          L13_2 = L3_2.scale
                          L13_2 = L13_2.xyz
                          L14_2 = L3_2.color
                          L14_2 = L14_2[1]
                          L15_2 = L3_2.color
                          L15_2 = L15_2[2]
                          L16_2 = L3_2.color
                          L16_2 = L16_2[3]
                          L17_2 = L3_2.color
                          L17_2 = L17_2[4]
                          L18_2 = L3_2.bobUpAndDown
                          L19_2 = nil
                          L20_2 = nil
                          L21_2 = L3_2.rotate
                          L22_2 = L3_2.textureDict
                          L23_2 = L3_2.textureName
                          L24_2 = L3_2.drawOnEnts
                          L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
                        end
                        L3_2 = L28_1.returnCoords
                        if L3_2 then
                          L3_2 = Config
                          L3_2 = L3_2.Marker
                          L3_2 = L3_2.return_vehicle
                          L4_2 = DrawMarker
                          L5_2 = L3_2.type
                          L6_2 = L28_1.returnCoords
                          L6_2 = L6_2.x
                          L7_2 = L28_1.returnCoords
                          L7_2 = L7_2.y
                          L8_2 = L28_1.returnCoords
                          L8_2 = L8_2.z
                          L9_2 = 0.0
                          L10_2 = 0.0
                          L11_2 = 0.0
                          L12_2 = L3_2.rotation
                          L12_2 = L12_2.xyz
                          L13_2 = L3_2.scale
                          L13_2 = L13_2.xyz
                          L14_2 = L3_2.color
                          L14_2 = L14_2[1]
                          L15_2 = L3_2.color
                          L15_2 = L15_2[2]
                          L16_2 = L3_2.color
                          L16_2 = L16_2[3]
                          L17_2 = L3_2.color
                          L17_2 = L17_2[4]
                          L18_2 = L3_2.bobUpAndDown
                          L19_2 = nil
                          L20_2 = nil
                          L21_2 = L3_2.rotate
                          L22_2 = L3_2.textureDict
                          L23_2 = L3_2.textureName
                          L24_2 = L3_2.drawOnEnts
                          L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
                        end
                      else
                        L3_2 = L18_1
                        if L3_2 then
                          L3_2 = Config
                          L3_2 = L3_2.Marker
                          L3_2 = L3_2.return_vehicle
                          L4_2 = DrawMarker
                          L5_2 = L3_2.type
                          L6_2 = L2_2.x
                          L7_2 = L2_2.y
                          L8_2 = L2_2.z
                          L8_2 = L8_2 + 1.0
                          L9_2 = 0.0
                          L10_2 = 0.0
                          L11_2 = 0.0
                          L12_2 = L3_2.rotation
                          L12_2 = L12_2.xyz
                          L13_2 = L3_2.scale
                          L13_2 = L13_2.xyz
                          L14_2 = L3_2.color
                          L14_2 = L14_2[1]
                          L15_2 = L3_2.color
                          L15_2 = L15_2[2]
                          L16_2 = L3_2.color
                          L16_2 = L16_2[3]
                          L17_2 = L3_2.color
                          L17_2 = L17_2[4]
                          L18_2 = L3_2.bobUpAndDown
                          L19_2 = nil
                          L20_2 = nil
                          L21_2 = L3_2.rotate
                          L22_2 = L3_2.textureDict
                          L23_2 = L3_2.textureName
                          L24_2 = L3_2.drawOnEnts
                          L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
                          L4_2 = L28_1.menuPoint
                          if L4_2 then
                            L4_2 = Config
                            L4_2 = L4_2.Marker
                            L4_2 = L4_2.garage_menu
                            L5_2 = DrawMarker
                            L6_2 = L4_2.type
                            L7_2 = L28_1.menuPoint
                            L7_2 = L7_2.x
                            L8_2 = L28_1.menuPoint
                            L8_2 = L8_2.y
                            L9_2 = L28_1.menuPoint
                            L9_2 = L9_2.z
                            L10_2 = 0.0
                            L11_2 = 0.0
                            L12_2 = 0.0
                            L13_2 = L4_2.rotation
                            L13_2 = L13_2.xyz
                            L14_2 = L4_2.scale
                            L14_2 = L14_2.xyz
                            L15_2 = L4_2.color
                            L15_2 = L15_2[1]
                            L16_2 = L4_2.color
                            L16_2 = L16_2[2]
                            L17_2 = L4_2.color
                            L17_2 = L17_2[3]
                            L18_2 = L4_2.color
                            L18_2 = L18_2[4]
                            L19_2 = L4_2.bobUpAndDown
                            L20_2 = nil
                            L21_2 = nil
                            L22_2 = L4_2.rotate
                            L23_2 = L4_2.textureDict
                            L24_2 = L4_2.textureName
                            L25_2 = L4_2.drawOnEnts
                            L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
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
      end
    end
    L3_2 = DrawLine
    L4_2 = L2_2.x
    L5_2 = L2_2.y
    L6_2 = L2_2.z
    L7_2 = L2_2.x
    L8_2 = L2_2.y
    L9_2 = L2_2.z
    L9_2 = L9_2 + 20.0
    L10_2 = 250.0
    L11_2 = 80.0
    L12_2 = 0.0
    L13_2 = 250.0
    L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
    L3_2 = keyControls
    L4_2 = L2_2
    L3_2(L4_2)
  end
end
startRaycast = L33_1
function L33_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L0_2 = nil
  L1_2 = GetControlNormal
  L2_2 = 0
  L3_2 = 220
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = GetControlNormal
  L3_2 = 0
  L4_2 = 221
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = GetCamRot
  L4_2 = Creator
  L4_2 = L4_2.camera
  L5_2 = 2
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L2_2 * 5
  L5_2 = L3_2.z
  L6_2 = L1_2 * -10
  L5_2 = L5_2 + L6_2
  L6_2 = L3_2.x
  L6_2 = L6_2 - L4_2
  if L6_2 > -85.0 and L6_2 < 45.0 then
    L0_2 = L6_2
  end
  if L0_2 and L5_2 then
    L7_2 = SetCamRot
    L8_2 = Creator
    L8_2 = L8_2.camera
    L9_2 = vector3
    L10_2 = L0_2
    L11_2 = L3_2.y
    L12_2 = L5_2
    L9_2 = L9_2(L10_2, L11_2, L12_2)
    L10_2 = 2
    L7_2(L8_2, L9_2, L10_2)
  end
end
rotateCamInputs = L33_1
L33_1 = RegisterNetEvent
L34_1 = "vms_garagesv2:cl:openParkingCreator"
L33_1(L34_1)
L33_1 = AddEventHandler
L34_1 = "vms_garagesv2:cl:openParkingCreator"
function L35_1()
  local L0_2, L1_2, L2_2
  L0_2 = L0_1
  if L0_2 then
    return
  end
  currentMenu = "parking_creator"
  L0_2 = true
  L0_1 = L0_2
  L0_2 = GetEntityCoords
  L1_2 = PlayerPedId
  L1_2, L2_2 = L1_2()
  L0_2 = L0_2(L1_2, L2_2)
  L1_1 = L0_2
  L0_2 = SetNuiFocus
  L1_2 = true
  L2_2 = true
  L0_2(L1_2, L2_2)
  L0_2 = SendNUIMessage
  L1_2 = {}
  L1_2.action = "openParkingCreator"
  L1_2.menu = "main"
  L2_2 = Config
  L2_2 = L2_2.ParkingCreator
  L2_2 = L2_2.VehicleTypes
  L1_2.vehicleTypes = L2_2
  L0_2(L1_2)
end
L33_1(L34_1, L35_1)
L33_1 = RegisterNetEvent
L34_1 = "vms_garagesv2:closeParkingCreator"
function L35_1(A0_2)
  local L1_2, L2_2, L3_2
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
  L1_2 = SetNuiFocus
  L2_2 = false
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L33_1(L34_1, L35_1)
L33_1 = Config
L33_1 = L33_1.ParkingCreator
L33_1 = L33_1.AutomaticLoad
if L33_1 then
  L33_1 = RegisterNetEvent
  L34_1 = "vms_garagesv2:createdNewGarage"
  L33_1(L34_1)
  L33_1 = AddEventHandler
  L34_1 = "vms_garagesv2:createdNewGarage"
  function L35_1(A0_2)
    local L1_2, L2_2, L3_2, L4_2
    L1_2 = json
    L1_2 = L1_2.decode
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L2_2 = string
      L2_2 = L2_2.find
      L3_2 = L1_2
      L4_2 = "Config.Garages"
      L2_2 = L2_2(L3_2, L4_2)
      if not L2_2 then
        L2_2 = string
        L2_2 = L2_2.find
        L3_2 = L1_2
        L4_2 = "Config.HousingGarages"
        L2_2 = L2_2(L3_2, L4_2)
        if not L2_2 then
          goto lbl_25
        end
      end
      L2_2 = load
      L3_2 = L1_2
      L2_2 = L2_2(L3_2)
      L2_2()
    end
    ::lbl_25::
  end
  L33_1(L34_1, L35_1)
end
L33_1 = RegisterNuiCallback
L34_1 = "creatorAction"
function L35_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = L0_1
  if not L1_2 then
    return
  end
  L1_2 = A0_2.action
  if not L1_2 then
    return
  end
  if "start" == L1_2 then
    L2_2 = A0_2.type
    if "house_garage" == L2_2 then
      L2_2 = Creator
      L3_2 = L2_2
      L2_2 = L2_2.HouseGarageEnter
      L4_2 = self
      L2_2(L3_2, L4_2)
    else
      L2_2 = A0_2.type
      if "garage_interior" == L2_2 then
        L2_2 = true
        L8_1 = L2_2
      else
        L2_2 = A0_2.type
        if "garage" == L2_2 then
          L2_2 = true
          L12_1 = L2_2
        else
          L2_2 = A0_2.type
          if "house_garage_menu" == L2_2 then
            L2_2 = true
            L12_1 = L2_2
            L2_2 = true
            L11_1 = L2_2
          end
        end
      end
      L2_2 = Creator
      L3_2 = L2_2
      L2_2 = L2_2.Polyzone
      L4_2 = self
      L2_2(L3_2, L4_2)
    end
    L2_2 = SetNuiFocus
    L3_2 = false
    L4_2 = false
    L2_2(L3_2, L4_2)
    L2_2 = SendNUIMessage
    L3_2 = {}
    L3_2.action = "hideParkingCreator"
    L2_2(L3_2)
  elseif "parking_spaces" == L1_2 then
    L2_2 = A0_2.type
    if not L2_2 then
      return
    end
    L2_2 = Config
    L2_2 = L2_2.ParkingCreator
    L2_2 = L2_2.VehicleTypesModels
    L3_2 = A0_2.type
    L2_2 = L2_2[L3_2]
    if not L2_2 then
      L2_2 = CL
      L2_2 = L2_2.Notification
      L3_2 = TRANSLATE
      L4_2 = "notify.parkingcreator:no_configured_vehicle_type"
      L5_2 = A0_2.type
      L3_2 = L3_2(L4_2, L5_2)
      L4_2 = 4500
      L5_2 = "error"
      return L2_2(L3_2, L4_2, L5_2)
    end
    L2_2 = A0_2.type
    L20_1 = L2_2
    L2_2 = Creator
    L3_2 = L2_2
    L2_2 = L2_2.ParkingSpaces
    L4_2 = self
    L2_2(L3_2, L4_2)
    L2_2 = SetNuiFocus
    L3_2 = false
    L4_2 = false
    L2_2(L3_2, L4_2)
    L2_2 = SendNUIMessage
    L3_2 = {}
    L3_2.action = "hideParkingCreator"
    L2_2(L3_2)
  elseif "paystations" == L1_2 then
    L2_2 = Creator
    L3_2 = L2_2
    L2_2 = L2_2.Paystations
    L4_2 = self
    L2_2(L3_2, L4_2)
    L2_2 = SetNuiFocus
    L3_2 = false
    L4_2 = false
    L2_2(L3_2, L4_2)
    L2_2 = SendNUIMessage
    L3_2 = {}
    L3_2.action = "hideParkingCreator"
    L2_2(L3_2)
  elseif "npc" == L1_2 then
    L2_2 = A0_2.model
    if not L2_2 then
      L2_2 = CL
      L2_2 = L2_2.Notification
      L3_2 = TRANSLATE
      L4_2 = "notify.parkingcreator:no_defined_npc_model"
      L3_2 = L3_2(L4_2)
      L4_2 = 4500
      L5_2 = "error"
      return L2_2(L3_2, L4_2, L5_2)
    end
    L2_2 = Creator
    L3_2 = L2_2
    L2_2 = L2_2.NPC
    L4_2 = self
    L5_2 = A0_2.model
    L6_2 = A0_2.animName
    L7_2 = A0_2.animDict
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  elseif "menu-point" == L1_2 then
    L2_2 = Creator
    L3_2 = L2_2
    L2_2 = L2_2.GarageMenuPoint
    L4_2 = self
    L2_2(L3_2, L4_2)
  elseif "ped-coords" == L1_2 then
    L2_2 = Creator
    L3_2 = L2_2
    L2_2 = L2_2.GaragePedPoint
    L4_2 = self
    L2_2(L3_2, L4_2)
  elseif "vehicle-coords" == L1_2 then
    L2_2 = A0_2.type
    if not L2_2 then
      return
    end
    L2_2 = Config
    L2_2 = L2_2.ParkingCreator
    L2_2 = L2_2.VehicleTypesModels
    L3_2 = A0_2.type
    L2_2 = L2_2[L3_2]
    if not L2_2 then
      L2_2 = CL
      L2_2 = L2_2.Notification
      L3_2 = TRANSLATE
      L4_2 = "notify.parkingcreator:no_configured_vehicle_type"
      L5_2 = A0_2.type
      L3_2 = L3_2(L4_2, L5_2)
      L4_2 = 4500
      L5_2 = "error"
      return L2_2(L3_2, L4_2, L5_2)
    end
    L2_2 = L11_1
    if L2_2 then
      L2_2 = Config
      L2_2 = L2_2.ParkingCreator
      L2_2 = L2_2.VehicleTypesModels
      L3_2 = A0_2.type
      L2_2 = L2_2[L3_2]
      L29_1.vehModel = L2_2
    else
      L2_2 = Config
      L2_2 = L2_2.ParkingCreator
      L2_2 = L2_2.VehicleTypesModels
      L3_2 = A0_2.type
      L2_2 = L2_2[L3_2]
      L28_1.vehModel = L2_2
    end
    L2_2 = Creator
    L3_2 = L2_2
    L2_2 = L2_2.GarageVehiclePoint
    L4_2 = self
    L2_2(L3_2, L4_2)
  elseif "camera-coords" == L1_2 then
    L2_2 = L11_1
    if L2_2 then
      L2_2 = L29_1.vehModel
      if L2_2 then
        L2_2 = L29_1.vehicleCoords
      end
      if not L2_2 then
        L2_2 = CL
        L2_2 = L2_2.Notification
        L3_2 = TRANSLATE
        L4_2 = "notify.parkingcreator:garage_first_defined_vehicle_coords"
        L3_2 = L3_2(L4_2)
        L4_2 = 4500
        L5_2 = "error"
        return L2_2(L3_2, L4_2, L5_2)
      end
    else
      L2_2 = L28_1.vehModel
      if L2_2 then
        L2_2 = L28_1.vehicleCoords
        if L2_2 then
          goto lbl_223
        end
      end
      L2_2 = CL
      L2_2 = L2_2.Notification
      L3_2 = TRANSLATE
      L4_2 = "notify.parkingcreator:garage_first_defined_vehicle_coords"
      L3_2 = L3_2(L4_2)
      L4_2 = 4500
      L5_2 = "error"
      return L2_2(L3_2, L4_2, L5_2)
    end
    ::lbl_223::
    L2_2 = Creator
    L3_2 = L2_2
    L2_2 = L2_2.GarageCameraPoint
    L4_2 = self
    L2_2(L3_2, L4_2)
  elseif "spawnpoint" == L1_2 then
    L2_2 = A0_2.type
    if not L2_2 then
      return
    end
    L2_2 = Config
    L2_2 = L2_2.ParkingCreator
    L2_2 = L2_2.VehicleTypesModels
    L3_2 = A0_2.type
    L2_2 = L2_2[L3_2]
    if not L2_2 then
      L2_2 = CL
      L2_2 = L2_2.Notification
      L3_2 = TRANSLATE
      L4_2 = "notify.parkingcreator:no_configured_vehicle_type"
      L5_2 = A0_2.type
      L3_2 = L3_2(L4_2, L5_2)
      L4_2 = 4500
      L5_2 = "error"
      return L2_2(L3_2, L4_2, L5_2)
    end
    L2_2 = Config
    L2_2 = L2_2.ParkingCreator
    L2_2 = L2_2.VehicleTypesModels
    L3_2 = A0_2.type
    L2_2 = L2_2[L3_2]
    L28_1.vehModel = L2_2
    L2_2 = Creator
    L3_2 = L2_2
    L2_2 = L2_2.GarageSpawnPoint
    L4_2 = self
    L2_2(L3_2, L4_2)
  elseif "returnpoint" == L1_2 then
    L2_2 = Creator
    L3_2 = L2_2
    L2_2 = L2_2.GarageReturnPoint
    L4_2 = self
    L2_2(L3_2, L4_2)
  elseif "save" == L1_2 then
    L2_2 = {}
    L3_2 = A0_2.type
    if "house_garage" == L3_2 then
      L3_2 = L19_1
      L2_2.polyzone = L3_2
      L3_2 = A0_2.routingBucket
      L2_2.routingBucket = L3_2
      L3_2 = L26_1.interiorId
      L2_2.interiorId = L3_2
      L3_2 = L26_1.enterCoords
      L2_2.enterCoords = L3_2
      L3_2 = L26_1.heading
      L2_2.heading = L3_2
      L3_2 = L26_1.radius
      L2_2.radius = L3_2
    else
      L3_2 = A0_2.type
      if "house_garage_menu" == L3_2 then
        L3_2 = L19_1
        L2_2.polyzone = L3_2
        L3_2 = A0_2.label
        L2_2.label = L3_2
        L3_2 = A0_2.vehType
        L2_2.type = L3_2
        L3_2 = A0_2.vehiclesLimit
        L2_2.vehiclesLimit = L3_2
        L3_2 = L29_1.pedCoords
        L2_2.pedCoords = L3_2
        L3_2 = L29_1.pedHeading
        L2_2.pedHeading = L3_2
        L3_2 = L2_2.pedCoords
        if not L3_2 then
          L3_2 = CL
          L3_2 = L3_2.Notification
          L4_2 = TRANSLATE
          L5_2 = "notify.parkingcreator:garage_no_defined_ped_coords"
          L4_2 = L4_2(L5_2)
          L5_2 = 4500
          L6_2 = "error"
          return L3_2(L4_2, L5_2, L6_2)
        end
        L3_2 = L29_1.vehicleCoords
        L2_2.vehicleCoords = L3_2
        L3_2 = L29_1.vehicleHeading
        L2_2.vehicleHeading = L3_2
        L3_2 = L2_2.vehicleCoords
        if not L3_2 then
          L3_2 = CL
          L3_2 = L3_2.Notification
          L4_2 = TRANSLATE
          L5_2 = "notify.parkingcreator:garage_no_defined_vehicle_coords"
          L4_2 = L4_2(L5_2)
          L5_2 = 4500
          L6_2 = "error"
          return L3_2(L4_2, L5_2, L6_2)
        end
        L3_2 = L29_1.cameraCoords
        L2_2.cameraCoords = L3_2
        L3_2 = L29_1.cameraFov
        L2_2.cameraFov = L3_2
        L3_2 = L2_2.cameraCoords
        if not L3_2 then
          L3_2 = CL
          L3_2 = L3_2.Notification
          L4_2 = TRANSLATE
          L5_2 = "notify.parkingcreator:garage_no_defined_camera_coords"
          L4_2 = L4_2(L5_2)
          L5_2 = 4500
          L6_2 = "error"
          return L3_2(L4_2, L5_2, L6_2)
        end
        L3_2 = A0_2.useCheckAreaOccupied
        L2_2.checkAreaOccupied = L3_2
      else
        L3_2 = A0_2.type
        if "garage" == L3_2 then
          L3_2 = L19_1
          L2_2.polyzone = L3_2
          L3_2 = A0_2.label
          L2_2.label = L3_2
          L3_2 = A0_2.vehType
          L2_2.type = L3_2
          L3_2 = L28_1.menuPoint
          L2_2.menuPoint = L3_2
          L3_2 = L2_2.menuPoint
          if not L3_2 then
            L3_2 = CL
            L3_2 = L3_2.Notification
            L4_2 = TRANSLATE
            L5_2 = "notify.parkingcreator:garage_no_defined_menu_point"
            L4_2 = L4_2(L5_2)
            L5_2 = 4500
            L6_2 = "error"
            return L3_2(L4_2, L5_2, L6_2)
          end
          L3_2 = L28_1.pedCoords
          L2_2.pedCoords = L3_2
          L3_2 = L28_1.pedHeading
          L2_2.pedHeading = L3_2
          L3_2 = L2_2.pedCoords
          if not L3_2 then
            L3_2 = CL
            L3_2 = L3_2.Notification
            L4_2 = TRANSLATE
            L5_2 = "notify.parkingcreator:garage_no_defined_ped_coords"
            L4_2 = L4_2(L5_2)
            L5_2 = 4500
            L6_2 = "error"
            return L3_2(L4_2, L5_2, L6_2)
          end
          L3_2 = L28_1.vehicleCoords
          L2_2.vehicleCoords = L3_2
          L3_2 = L28_1.vehicleHeading
          L2_2.vehicleHeading = L3_2
          L3_2 = L2_2.vehicleCoords
          if not L3_2 then
            L3_2 = CL
            L3_2 = L3_2.Notification
            L4_2 = TRANSLATE
            L5_2 = "notify.parkingcreator:garage_no_defined_vehicle_coords"
            L4_2 = L4_2(L5_2)
            L5_2 = 4500
            L6_2 = "error"
            return L3_2(L4_2, L5_2, L6_2)
          end
          L3_2 = L28_1.cameraCoords
          L2_2.cameraCoords = L3_2
          L3_2 = L28_1.cameraFov
          L2_2.cameraFov = L3_2
          L3_2 = L2_2.cameraCoords
          if not L3_2 then
            L3_2 = CL
            L3_2 = L3_2.Notification
            L4_2 = TRANSLATE
            L5_2 = "notify.parkingcreator:garage_no_defined_camera_coords"
            L4_2 = L4_2(L5_2)
            L5_2 = 4500
            L6_2 = "error"
            return L3_2(L4_2, L5_2, L6_2)
          end
          L3_2 = L28_1.spawnpointCoords
          L2_2.spawnPoint = L3_2
          L3_2 = L28_1.spawnpointHeading
          L2_2.spawnPointHeading = L3_2
          L3_2 = L2_2.spawnPoint
          if not L3_2 then
            L3_2 = CL
            L3_2 = L3_2.Notification
            L4_2 = TRANSLATE
            L5_2 = "notify.parkingcreator:garage_no_defined_spawnpoint_coords"
            L4_2 = L4_2(L5_2)
            L5_2 = 4500
            L6_2 = "error"
            return L3_2(L4_2, L5_2, L6_2)
          end
          L3_2 = A0_2.useCheckAreaOccupied
          L2_2.checkAreaOccupied = L3_2
          L3_2 = L28_1.returnCoords
          L2_2.returnVehiclePoint = L3_2
          L3_2 = L2_2.returnVehiclePoint
          if not L3_2 then
            L3_2 = CL
            L3_2 = L3_2.Notification
            L4_2 = TRANSLATE
            L5_2 = "notify.parkingcreator:garage_no_defined_return_coords"
            L4_2 = L4_2(L5_2)
            L5_2 = 4500
            L6_2 = "error"
            return L3_2(L4_2, L5_2, L6_2)
          end
          L3_2 = A0_2.useCompany
          L2_2.useCompany = L3_2
          L3_2 = A0_2.companies
          L2_2.companies = L3_2
          L3_2 = A0_2.useGang
          L2_2.useGang = L3_2
          L3_2 = A0_2.gangs
          L2_2.gangs = L3_2
          L3_2 = A0_2.predefinedModels
          L2_2.predefinedModels = L3_2
          L3_2 = A0_2.allowedModels
          L2_2.allowedModels = L3_2
        else
          L3_2 = A0_2.type
          if "garage_interior" == L3_2 then
            L3_2 = L19_1
            L2_2.polyzone = L3_2
            L3_2 = A0_2.label
            L2_2.label = L3_2
            L3_2 = A0_2.vehType
            L2_2.type = L3_2
            L3_2 = A0_2.routingBucket
            L2_2.routingBucket = L3_2
            L3_2 = L27_1.interiorId
            L2_2.interiorId = L3_2
            L3_2 = L27_1.enterVehCoords
            L2_2.enterWithVehicleCoords = L3_2
            L3_2 = L27_1.enterVehHeading
            L2_2.enterWithVehicleHeading = L3_2
            L3_2 = L27_1.enterPedCoords
            L2_2.enterOnFootCoords = L3_2
            L3_2 = L27_1.enterPedHeading
            L2_2.enterOnFootHeading = L3_2
          else
            L3_2 = A0_2.type
            if "parking" == L3_2 then
              L3_2 = A0_2.npcModel
              L25_1.model = L3_2
              L3_2 = A0_2.npcAnimName
              L25_1.animName = L3_2
              L3_2 = A0_2.npcAnimDict
              L25_1.animDict = L3_2
              L3_2 = A0_2.label
              L2_2.label = L3_2
              L3_2 = A0_2.vehType
              L2_2.type = L3_2
              L3_2 = L24_1
              L2_2.paystations = L3_2
              L3_2 = A0_2.useParkingmeter
              L2_2.useParkingmeter = L3_2
              L3_2 = A0_2.parkingmeterPrice
              L2_2.parkingmeterPrice = L3_2
              L3_2 = L2_2.useParkingmeter
              if L3_2 then
                L3_2 = L2_2.parkingmeterPrice
                if L3_2 then
                  L3_2 = tonumber
                  L4_2 = L2_2.parkingmeterPrice
                  L3_2 = L3_2(L4_2)
                  if L3_2 then
                    goto lbl_528
                  end
                end
                L3_2 = CL
                L3_2 = L3_2.Notification
                L4_2 = TRANSLATE
                L5_2 = "notify.parkingcreator:no_defined_parking_meter_price"
                L4_2 = L4_2(L5_2)
                L5_2 = 4500
                L6_2 = "error"
                do return L3_2(L4_2, L5_2, L6_2) end
                ::lbl_528::
                L3_2 = L2_2.paystations
                if L3_2 then
                  L3_2 = next
                  L4_2 = L2_2.paystations
                  L3_2 = L3_2(L4_2)
                  if L3_2 then
                    goto lbl_545
                  end
                end
                L3_2 = CL
                L3_2 = L3_2.Notification
                L4_2 = TRANSLATE
                L5_2 = "notify.parkingcreator:no_defined_pay_stations"
                L4_2 = L4_2(L5_2)
                L5_2 = 4500
                L6_2 = "error"
                return L3_2(L4_2, L5_2, L6_2)
              end
              ::lbl_545::
              L3_2 = A0_2.useRent
              L2_2.useRent = L3_2
              L3_2 = A0_2.rentPrice
              L2_2.rentPrice = L3_2
              L3_2 = A0_2.rentDays
              L2_2.rentDays = L3_2
              L3_2 = L2_2.useRent
              if L3_2 then
                L3_2 = L2_2.rentPrice
                if L3_2 then
                  L3_2 = tonumber
                  L4_2 = L2_2.rentPrice
                  L3_2 = L3_2(L4_2)
                  if L3_2 then
                    goto lbl_571
                  end
                end
                L3_2 = CL
                L3_2 = L3_2.Notification
                L4_2 = TRANSLATE
                L5_2 = "notify.parkingcreator:no_defined_rent_price"
                L4_2 = L4_2(L5_2)
                L5_2 = 4500
                L6_2 = "error"
                do return L3_2(L4_2, L5_2, L6_2) end
                ::lbl_571::
                L3_2 = L2_2.rentDays
                if L3_2 then
                  L3_2 = next
                  L4_2 = L2_2.rentDays
                  L3_2 = L3_2(L4_2)
                  if L3_2 then
                    goto lbl_588
                  end
                end
                L3_2 = CL
                L3_2 = L3_2.Notification
                L4_2 = TRANSLATE
                L5_2 = "notify.parkingcreator:no_defined_rent_days"
                L4_2 = L4_2(L5_2)
                L5_2 = 4500
                L6_2 = "error"
                do return L3_2(L4_2, L5_2, L6_2) end
                ::lbl_588::
                L3_2 = L2_2.paystations
                if L3_2 then
                  L3_2 = next
                  L4_2 = L2_2.paystations
                  L3_2 = L3_2(L4_2)
                  if L3_2 then
                    goto lbl_605
                  end
                end
                L3_2 = CL
                L3_2 = L3_2.Notification
                L4_2 = TRANSLATE
                L5_2 = "notify.parkingcreator:no_defined_rent_menu_point"
                L4_2 = L4_2(L5_2)
                L5_2 = 4500
                L6_2 = "error"
                return L3_2(L4_2, L5_2, L6_2)
              end
              ::lbl_605::
              L3_2 = A0_2.useCompany
              L2_2.useCompany = L3_2
              L3_2 = A0_2.company
              L2_2.company = L3_2
              L3_2 = A0_2.useGang
              L2_2.useGang = L3_2
              L3_2 = A0_2.gangs
              L2_2.gangs = L3_2
              L3_2 = A0_2.useAllowedModels
              L2_2.useAllowedModels = L3_2
              L3_2 = A0_2.allowedModels
              L2_2.allowedModels = L3_2
              function L3_2(A0_3)
                local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
                L1_3 = 0.0
                L2_3 = 0.0
                L3_3 = #A0_3
                L4_3 = 1
                L5_3 = L3_3
                L6_3 = 1
                for L7_3 = L4_3, L5_3, L6_3 do
                  L8_3 = A0_3[L7_3]
                  L8_3 = L8_3.x
                  L1_3 = L1_3 + L8_3
                  L8_3 = A0_3[L7_3]
                  L8_3 = L8_3.y
                  L2_3 = L2_3 + L8_3
                end
                L4_3 = L1_3 / L3_3
                L5_3 = L2_3 / L3_3
                L6_3 = vec2
                L7_3 = L4_3
                L8_3 = L5_3
                return L6_3(L7_3, L8_3)
              end
              L4_2 = L3_2
              L5_2 = L19_1.points
              L4_2 = L4_2(L5_2)
              L2_2.blipCoords = L4_2
              L4_2 = L19_1
              L2_2.polyzone = L4_2
              L4_2 = L22_1
              L2_2.parkingSpaces = L4_2
              L4_2 = L2_2.parkingSpaces
              if L4_2 then
                L4_2 = next
                L5_2 = L2_2.parkingSpaces
                L4_2 = L4_2(L5_2)
                if L4_2 then
                  goto lbl_643
                end
              end
              L4_2 = CL
              L4_2 = L4_2.Notification
              L5_2 = TRANSLATE
              L6_2 = "notify.parkingcreator:no_defined_parking_spaces"
              L5_2 = L5_2(L6_2)
              L6_2 = 4500
              L7_2 = "error"
              do return L4_2(L5_2, L6_2, L7_2) end
              ::lbl_643::
              L4_2 = A0_2.useNPC
              L2_2.useNPC = L4_2
              L4_2 = L25_1
              L2_2.npc = L4_2
              L4_2 = L2_2.useNPC
              if L4_2 then
                L4_2 = L2_2.npc
                if L4_2 then
                  L4_2 = L2_2.npc
                  L4_2 = L4_2.model
                  if L4_2 then
                    L4_2 = L2_2.npc
                    L4_2 = L4_2.model
                    if "" ~= L4_2 then
                      goto lbl_670
                    end
                  end
                end
                L4_2 = CL
                L4_2 = L4_2.Notification
                L5_2 = TRANSLATE
                L6_2 = "notify.parkingcreator:no_defined_npc_model"
                L5_2 = L5_2(L6_2)
                L6_2 = 4500
                L7_2 = "error"
                return L4_2(L5_2, L6_2, L7_2)
              end
            end
          end
        end
      end
    end
    ::lbl_670::
    L3_2 = TriggerServerEvent
    L4_2 = "vms_garagesv2:sv:saveParkingByCreator"
    L5_2 = A0_2.type
    L6_2 = L2_2
    L3_2(L4_2, L5_2, L6_2)
  elseif "closed" == L1_2 then
    L2_2 = Creator
    L2_2 = L2_2.CloseCompletly
    L2_2()
  end
end
L33_1(L34_1, L35_1)
--   ____  _____ ____ ______   ______ _____ _____ ____     ___     _____ _____  _______ ____    ______   __  _______  __    _    ____    _____ ____  ___ _  _____ _____ ___  _   _    _        _     _   _                  ____  _ _                       _                 _______ _____ _  __     _   _ ____      _ ____ _____ _____
--  |  _ \| ____/ ___|  _ \ \ / /  _ \_   _| ____|  _ \   ( _ )   |  ___|_ _\ \/ / ____|  _ \  | __ ) \ / / |  ___\ \/ /   / \  |  _ \  |  ___|  _ \|_ _| |/ /_ _|_   _/ _ \| \ | |  / \      | |__ | |_| |_ _ __  ___ _   / / /_| (_)___  ___ ___  _ __ __| |  __ _  __ _   / / ____|_   _| |/ /__ _| | | | ___|  __| | ___|___  |___  |
--  | | | |  _|| |   | |_) \ V /| |_) || | |  _| | | | |  / _ \/\ | |_   | | \  /|  _| | | | | |  _ \\ V /  | |_   \  /   / _ \ | |_) | | |_  | |_) || || ' / | |  | || | | |  \| | / _ \     | '_ \| __| __| '_ \/ __(_) / / / _` | / __|/ __/ _ \| '__/ _` | / _` |/ _` | / /|  _|   | | | ' // _` | |_| |___ \ / _` |___ \  / /   / /
--  | |_| | |__| |___|  _ < | | |  __/ | | | |___| |_| | | (_>  < |  _|  | | /  \| |___| |_| | | |_) || |   |  _|  /  \  / ___ \|  __/  |  _| |  _ < | || . \ | |  | || |_| | |\  |/ ___ \ _  | | | | |_| |_| |_) \__ \_ / / / (_| | \__ \ (_| (_) | | | (_| || (_| | (_| |/ / | |___  | | | . \ (_| |  _  |___) | (_| |___) |/ /   / /
--  |____/|_____\____|_| \_\|_| |_|    |_| |_____|____/   \___/\/ |_|   |___/_/\_\_____|____/  |____/ |_|   |_|   /_/\_\/_/   \_\_|     |_|   |_| \_\___|_|\_\___| |_| \___/|_| \_/_/   \_(_) |_| |_|\__|\__| .__/|___(_)_/_/ \__,_|_|___/\___\___/|_|  \__,_(_)__, |\__, /_/  |_____| |_| |_|\_\__, |_| |_|____/ \__,_|____//_/   /_/
--                                                                                                                                                                                                          |_|                                                |___/ |___/                         |_|
-- https://discord.gg/ETKqH5d577
