--   ____  _____ ____ ______   ______ _____ _____ ____     ___     _____ _____  _______ ____    ______   __  _______  __    _    ____    _____ ____  ___ _  _____ _____ ___  _   _    _        _     _   _                  ____  _ _                       _                 _______ _____ _  __     _   _ ____      _ ____ _____ _____
--  |  _ \| ____/ ___|  _ \ \ / /  _ \_   _| ____|  _ \   ( _ )   |  ___|_ _\ \/ / ____|  _ \  | __ ) \ / / |  ___\ \/ /   / \  |  _ \  |  ___|  _ \|_ _| |/ /_ _|_   _/ _ \| \ | |  / \      | |__ | |_| |_ _ __  ___ _   / / /_| (_)___  ___ ___  _ __ __| |  __ _  __ _   / / ____|_   _| |/ /__ _| | | | ___|  __| | ___|___  |___  |
--  | | | |  _|| |   | |_) \ V /| |_) || | |  _| | | | |  / _ \/\ | |_   | | \  /|  _| | | | | |  _ \\ V /  | |_   \  /   / _ \ | |_) | | |_  | |_) || || ' / | |  | || | | |  \| | / _ \     | '_ \| __| __| '_ \/ __(_) / / / _` | / __|/ __/ _ \| '__/ _` | / _` |/ _` | / /|  _|   | | | ' // _` | |_| |___ \ / _` |___ \  / /   / /
--  | |_| | |__| |___|  _ < | | |  __/ | | | |___| |_| | | (_>  < |  _|  | | /  \| |___| |_| | | |_) || |   |  _|  /  \  / ___ \|  __/  |  _| |  _ < | || . \ | |  | || |_| | |\  |/ ___ \ _  | | | | |_| |_| |_) \__ \_ / / / (_| | \__ \ (_| (_) | | | (_| || (_| | (_| |/ / | |___  | | | . \ (_| |  _  |___) | (_| |___) |/ /   / /
--  |____/|_____\____|_| \_\|_| |_|    |_| |_____|____/   \___/\/ |_|   |___/_/\_\_____|____/  |____/ |_|   |_|   /_/\_\/_/   \_\_|     |_|   |_| \_\___|_|\_\___| |_| \___/|_| \_/_/   \_(_) |_| |_|\__|\__| .__/|___(_)_/_/ \__,_|_|___/\___\___/|_|  \__,_(_)__, |\__, /_/  |_____| |_| |_|\_\__, |_| |_|____/ \__,_|____//_/   /_/
--                                                                                                                                                                                                          |_|                                                |___/ |___/                         |_|
-- https://discord.gg/ETKqH5d577

SV = {}

-- ██████╗  █████╗ ████████╗ █████╗ ██████╗  █████╗ ███████╗███████╗
-- ██╔══██╗██╔══██╗╚══██╔══╝██╔══██╗██╔══██╗██╔══██╗██╔════╝██╔════╝
-- ██║  ██║███████║   ██║   ███████║██████╔╝███████║███████╗█████╗  
-- ██║  ██║██╔══██║   ██║   ██╔══██║██╔══██╗██╔══██║╚════██║██╔══╝  
-- ██████╔╝██║  ██║   ██║   ██║  ██║██████╔╝██║  ██║███████║███████╗
-- ╚═════╝ ╚═╝  ╚═╝   ╚═╝   ╚═╝  ╚═╝╚═════╝ ╚═╝  ╚═╝╚══════╝╚══════╝
SV.Database = {
    ['table:owned_vehicles'] = 'owned_vehicles', -- In default qb-core it will be: ['table:owned_vehicles'] = 'player_vehicles'

    ['column:owner'] = 'owner', -- In default qb-core it will be: ['column:owner'] = 'citizenid'
    ['column:company'] = 'company',
    ['column:gang'] = 'gang',
    ['column:plate'] = 'plate',
    ['column:vehicle'] = 'vehicle', -- In default qb-core it will be: ['column:vehicle'] = 'mods'
    ['column:type'] = 'type',
}


-- ██╗    ██╗███████╗██████╗ ██╗  ██╗ ██████╗  ██████╗ ██╗  ██╗███████╗
-- ██║    ██║██╔════╝██╔══██╗██║  ██║██╔═══██╗██╔═══██╗██║ ██╔╝██╔════╝
-- ██║ █╗ ██║█████╗  ██████╔╝███████║██║   ██║██║   ██║█████╔╝ ███████╗
-- ██║███╗██║██╔══╝  ██╔══██╗██╔══██║██║   ██║██║   ██║██╔═██╗ ╚════██║
-- ╚███╔███╔╝███████╗██████╔╝██║  ██║╚██████╔╝╚██████╔╝██║  ██╗███████║
--  ╚══╝╚══╝ ╚══════╝╚═════╝ ╚═╝  ╚═╝ ╚═════╝  ╚═════╝ ╚═╝  ╚═╝╚══════╝
SV.Webhooks = {
    ['PAY_FOR_IMPOUND'] = "",
    ['GET_FROM_IMPOUND'] = "",
    ['PAID_IMPOUND_BILL'] = "",

    ['PURCHASED_PARKING'] = "",

    ['PAY_STATION'] = "",

    ['RENTED_PARKING_SPACE'] = "",

    ['PURCHASED_COMPANY_VEH'] = "",
    ['GET_COMPANY_VEH'] = "",

    ['PURCHASED_GANG_VEH'] = "",
    ['GET_GANG_VEH'] = "",

    ['WITHDRAW'] = "",
    ['DEPOSIT'] = "",
    ['SELL_PARKING'] = "",
    ['RESELL_PARKING'] = "",

    ['VEHICLE_SELL'] = "",

    ['TOW_VEHICLE'] = "",
}

SV.WebhookText = {
    ['TITLE.PAY_FOR_IMPOUND'] = "",
    ['DESCRIPTION.PAY_FOR_IMPOUND'] = [[
        Player %s [%s] paid $%s with %s for impound %s vehicle (%s).
        Fine Title: "%s"
    ]],
    
    ['TITLE.GET_FROM_IMPOUND'] = "",
    ['DESCRIPTION.GET_FROM_IMPOUND'] = [[
        Player %s [%s] picked up vehicle %s from impound.
        Fine Title: "%s"
    ]],

    ['TITLE.PAID_IMPOUND_BILL'] = "",
    ['DESCRIPTION.PAID_IMPOUND_BILL'] = [[
        Player %s [%s] paid a bill of $%s with %s for impound (%s) vehicle %s - Issuer %s [%s]
    ]],

    ['TITLE.PURCHASED_PARKING'] = "",
    ['DESCRIPTION.PURCHASED_PARKING'] = [[
        Player %s [%s] purchased parking %s for $%s
    ]],

    ['TITLE.PAY_STATION'] = "",
    ['DESCRIPTION.PAY_STATION'] = [[
        Player %s [%s] paid %s with %s for a parking meter for %s vehicle at %s location - %s
    ]],

    ['TITLE.RENTED_PARKING_SPACE'] = "",
    ['DESCRIPTION.RENTED_PARKING_SPACE'] = [[
        Player %s [%s] rented a parking space %s in parking %s for %s days for $%s.
    ]],

    ['TITLE.PURCHASED_COMPANY_VEH'] = "",
    ['DESCRIPTION.PURCHASED_COMPANY_VEH'] = [[
        Player %s [%s] bought vehicle %s %s for $%s to company %s.
    ]],

    ['TITLE.GET_COMPANY_VEH'] = "",
    ['DESCRIPTION.GET_COMPANY_VEH'] = [[
        Player %s [%s] get vehicle %s %s to company %s.
    ]],

    ['TITLE.PURCHASED_GANG_VEH'] = "",
    ['DESCRIPTION.PURCHASED_GANG_VEH'] = [[
        Player %s [%s] bought vehicle %s %s for $%s to gang %s.
    ]],

    ['TITLE.GET_GANG_VEH'] = "",
    ['DESCRIPTION.GET_GANG_VEH'] = [[
        Player %s [%s] get vehicle %s %s to gang %s.
    ]],
    
    ['TITLE.WITHDRAW'] = "",
    ['DESCRIPTION.WITHDRAW'] = [[
        Player %s [%s] withdrew $%s from %s parking account.
    ]],

    ['TITLE.DEPOSIT'] = "",
    ['DESCRIPTION.DEPOSIT'] = [[
        Player %s [%s] deposit $%s to %s parking account.
    ]],
    
    ['TITLE.SELL_PARKING'] = "",
    ['DESCRIPTION.SELL_PARKING'] = [[
        Player %s [%s] sold his parking %s automatically for $%s.
    ]],
    
    ['TITLE.RESELL_PARKING'] = "",
    ['DESCRIPTION.RESELL_PARKING'] = [[
        Player %s [%s] sold his parking %s (%s) to player %s [%s] for $%s.
    ]],

    ['TITLE.VEHICLE_SELL'] = "",
    ['DESCRIPTION.VEHICLE_SELL'] = [[
        Player %s [%s] sold vehicle %s to player %s [%s] for $%s.
    ]],
    
    ['TITLE.TOW_VEHICLE'] = "",
    ['DESCRIPTION.TOW_VEHICLE'] = [[
        Player %s [%s] towed vehicle %s to impound %s.

        Impouded By: %s
        Fine Title: %s
        Fine Amount: $%s
    ]],
}

SV.Webhook = function(webhook_id, title, description, color, footer)
    local DiscordWebHook = SV.Webhooks[webhook_id]
    local embeds = {{
        ["title"] = title,
        ["type"] = "rich",
        ["description"] = description,
        ["color"] = color,
        ["footer"] = {
            ["text"] = footer..' - '..os.date(),
        },
    }}
    PerformHttpRequest(DiscordWebHook, function(err, text, headers) end, 'POST', json.encode({embeds = embeds}), {['Content-Type'] = 'application/json'})
end


-- ██╗   ██╗███████╗██╗  ██╗██╗ ██████╗██╗     ███████╗
-- ██║   ██║██╔════╝██║  ██║██║██╔════╝██║     ██╔════╝
-- ██║   ██║█████╗  ███████║██║██║     ██║     █████╗  
-- ╚██╗ ██╔╝██╔══╝  ██╔══██║██║██║     ██║     ██╔══╝  
--  ╚████╔╝ ███████╗██║  ██║██║╚██████╗███████╗███████╗
--   ╚═══╝  ╚══════╝╚═╝  ╚═╝╚═╝ ╚═════╝╚══════╝╚══════╝
SV.OnVehicleSpawn = function(vehicle, props)
    if GetResourceState('vms_tuning') == 'started' then
        exports['vms_tuning']:applyCustomMods(vehicle)
    end

    if props.plate then
        SetVehicleNumberPlateText(vehicle, props.plate)
    end
end


-- ███████╗██████╗  █████╗ ███╗   ███╗███████╗██╗    ██╗ ██████╗ ██████╗ ██╗  ██╗
-- ██╔════╝██╔══██╗██╔══██╗████╗ ████║██╔════╝██║    ██║██╔═══██╗██╔══██╗██║ ██╔╝
-- █████╗  ██████╔╝███████║██╔████╔██║█████╗  ██║ █╗ ██║██║   ██║██████╔╝█████╔╝ 
-- ██╔══╝  ██╔══██╗██╔══██║██║╚██╔╝██║██╔══╝  ██║███╗██║██║   ██║██╔══██╗██╔═██╗ 
-- ██║     ██║  ██║██║  ██║██║ ╚═╝ ██║███████╗╚███╔███╔╝╚██████╔╝██║  ██║██║  ██╗
-- ╚═╝     ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝     ╚═╝╚══════╝ ╚══╝╚══╝  ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝
SV.getIdentifier = function(xPlayer)
    if Config.Core == "ESX" then
        return xPlayer.identifier
    elseif Config.Core == "QB-Core" then
        return xPlayer.PlayerData.citizenid
    end
end

SV.getPlayerByIdentifier = function(identifier)
    if Config.Core == "ESX" then
        return Core.GetPlayerFromIdentifier(identifier)
    elseif Config.Core == "QB-Core" then
        return Core.Functions.GetPlayerByCitizenId(identifier)
    end
end

SV.getPlayersFromDatabase = function(name, type, cb)
    if Config.Core == "ESX" then
        if type == "job" then
            MySQL.query("SELECT identifier, firstname, lastname FROM `users` WHERE `job`= ?", {name}, function(result)
                cb(result)
            end)
        elseif type == "gang" then
            MySQL.query("SELECT identifier, firstname, lastname FROM `users` WHERE `job2`= ?", {name}, function(result)
                cb(result)
            end)
        end
    elseif Config.Core == "QB-Core" then
        if type == "job" then
            local players = MySQL.query.await("SELECT citizenid, charinfo FROM `players` WHERE `job` LIKE '%" .. name .. "%'", {})
            for k, v in pairs(players) do
                v.charinfo = json.decode(v.charinfo)
            end
            cb(players)
            
        elseif type == "gang" then
            local players = MySQL.query.await("SELECT citizenid, charinfo FROM `players` WHERE `gang` LIKE '%" .. name .. "%'", {})
            for k, v in pairs(players) do
                v.charinfo = json.decode(v.charinfo)
            end
            cb(players)

        end
    end
end

SV.getCharacterName = function(xPlayer)
    if Config.Core == "ESX" then
        return xPlayer.getName()
    elseif Config.Core == "QB-Core" then
        return xPlayer.PlayerData.charinfo.firstname..' '..xPlayer.PlayerData.charinfo.lastname
    end
end

SV.getPlayer = function(src)
    if Config.Core == "ESX" then
        return Core.GetPlayerFromId(src)
    elseif Config.Core == "QB-Core" then
        return Core.Functions.GetPlayer(src)
    end
end


--      ██╗ ██████╗ ██████╗ 
--      ██║██╔═══██╗██╔══██╗
--      ██║██║   ██║██████╔╝
-- ██   ██║██║   ██║██╔══██╗
-- ╚█████╔╝╚██████╔╝██████╔╝
--  ╚════╝  ╚═════╝ ╚═════╝ 
SV.getPlayerJob = function(xPlayer)
    if Config.Core == "ESX" then
        return xPlayer.job.name
    elseif Config.Core == "QB-Core" then
        return xPlayer.PlayerData.job.name
    end
end

SV.getPlayerJobGrade = function(xPlayer)
    if Config.Core == "ESX" then
        return xPlayer.job.grade
    elseif Config.Core == "QB-Core" then
        return xPlayer.PlayerData.job.grade.level
    end
end


--  ██████╗  █████╗ ███╗   ██╗ ██████╗ 
-- ██╔════╝ ██╔══██╗████╗  ██║██╔════╝ 
-- ██║  ███╗███████║██╔██╗ ██║██║  ███╗
-- ██║   ██║██╔══██║██║╚██╗██║██║   ██║
-- ╚██████╔╝██║  ██║██║ ╚████║╚██████╔╝
--  ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═══╝ ╚═════╝ 
SV.getPlayerGang = function(xPlayer)
    if Config.Core == "ESX" and xPlayer.job2 then
        return xPlayer.job2.name
    elseif Config.Core == "QB-Core" and xPlayer.PlayerData.gang then
        return xPlayer.PlayerData.gang.name
    end
    return nil
end

SV.getPlayerGangGrade = function(xPlayer)
    if Config.Core == "ESX" and xPlayer.job2 then
        return xPlayer.job2.grade
    elseif Config.Core == "QB-Core" and xPlayer.PlayerData.gang then
        return xPlayer.PlayerData.gang.grade.level
    end
    return nil
end


-- ███╗   ███╗ ██████╗ ███╗   ██╗███████╗██╗   ██╗
-- ████╗ ████║██╔═══██╗████╗  ██║██╔════╝╚██╗ ██╔╝
-- ██╔████╔██║██║   ██║██╔██╗ ██║█████╗   ╚████╔╝ 
-- ██║╚██╔╝██║██║   ██║██║╚██╗██║██╔══╝    ╚██╔╝  
-- ██║ ╚═╝ ██║╚██████╔╝██║ ╚████║███████╗   ██║   
-- ╚═╝     ╚═╝ ╚═════╝ ╚═╝  ╚═══╝╚══════╝   ╚═╝   
SV.getMoney = function(xPlayer, moneyType)
    if Config.Core == "ESX" then
        local moneyType = moneyType == 'cash' and 'money' or moneyType
        return xPlayer.getAccount(moneyType).money
    elseif Config.Core == "QB-Core" then
        return xPlayer.Functions.GetMoney(moneyType)
    end
end

SV.addMoney = function(xPlayer, moneyType, count)
    if Config.Core == "ESX" then
        local moneyType = moneyType == 'cash' and 'money' or moneyType == 'dirty' and 'black_money' or moneyType
        xPlayer.addAccountMoney(moneyType, count)
    elseif Config.Core == "QB-Core" then
        xPlayer.Functions.AddMoney(moneyType, count)
    end
end

SV.removeMoney = function(xPlayer, moneyType, count)
    if Config.Core == "ESX" then
        local moneyType = moneyType == 'cash' and 'money' or moneyType
        xPlayer.removeAccountMoney(moneyType, count)
    elseif Config.Core == "QB-Core" then
        xPlayer.Functions.RemoveMoney(moneyType, count)
    end
end


-- ███████╗ ██████╗  ██████╗██╗███████╗████████╗██╗   ██╗     █████╗  ██████╗ ██████╗ ██████╗ ██╗   ██╗███╗   ██╗████████╗███████╗
-- ██╔════╝██╔═══██╗██╔════╝██║██╔════╝╚══██╔══╝╚██╗ ██╔╝    ██╔══██╗██╔════╝██╔════╝██╔═══██╗██║   ██║████╗  ██║╚══██╔══╝██╔════╝
-- ███████╗██║   ██║██║     ██║█████╗     ██║    ╚████╔╝     ███████║██║     ██║     ██║   ██║██║   ██║██╔██╗ ██║   ██║   ███████╗
-- ╚════██║██║   ██║██║     ██║██╔══╝     ██║     ╚██╔╝      ██╔══██║██║     ██║     ██║   ██║██║   ██║██║╚██╗██║   ██║   ╚════██║
-- ███████║╚██████╔╝╚██████╗██║███████╗   ██║      ██║       ██║  ██║╚██████╗╚██████╗╚██████╔╝╚██████╔╝██║ ╚████║   ██║   ███████║
-- ╚══════╝ ╚═════╝  ╚═════╝╚═╝╚══════╝   ╚═╝      ╚═╝       ╚═╝  ╚═╝ ╚═════╝ ╚═════╝ ╚═════╝  ╚═════╝ ╚═╝  ╚═══╝   ╚═╝   ╚══════╝
SV.getSocietyMoney = function(societyName, cb)
    if GetResourceState('vms_bossmenu') == "started" then
        societyName = string.gsub(societyName, "society_", "")
        local money = exports['vms_bossmenu']:getMoney(societyName)
        cb(money)

    elseif GetResourceState('cs_bossmenu') == "started" then
        local society = exports['cs_bossmenu']:GetAccount(societyName)
        cb(society)
        
    elseif GetResourceState('okokBanking') == "started" then
        local society = exports['okokBanking']:GetAccount(societyName)
        cb(society)

    elseif GetResourceState('qb-banking') == "started" then
        local society = exports['qb-banking']:GetAccountBalance(societyName)
        cb(society)

    elseif GetResourceState('qb-management') == "started" then
        local society = exports['qb-management']:GetAccount(societyName)
        cb(society)

    elseif GetResourceState('esx_society') == "started" then
        TriggerEvent('esx_addonaccount:getSharedAccount', societyName, function(account)
            cb(account.money)
        end)

    else
        print('^5[INFO] ^7No society found for your server, go to vms_garagesv2/config/config.server.lua and adjust ^2SV.getSocietyMoney^7!')
    end
end

SV.addSocietyMoney = function(societyName, amount)
    if GetResourceState('vms_bossmenu') == "started" then
        societyName = string.gsub(societyName, "society_", "")
        exports['vms_bossmenu']:addMoney(societyName, amount)

    elseif GetResourceState('cs_bossmenu') == "started" then
        exports['cs_bossmenu']:AddMoney(societyName, amount)
        
    elseif GetResourceState('okokBanking') == "started" then
        exports['okokBanking']:AddMoney(societyName, amount)

    elseif GetResourceState('qb-banking') == "started" then
        exports['qb-banking']:AddMoney(societyName, amount)

    elseif GetResourceState('qb-management') == "started" then
        exports['qb-management']:AddMoney(societyName, amount)

    elseif GetResourceState('esx_society') == "started" then
        TriggerEvent('esx_addonaccount:getSharedAccount', societyName, function(account)
            account.addMoney(amount)
        end)
        
    else
        print('^5[INFO] ^7No society found for your server, go to vms_garagesv2/config/config.server.lua and adjust ^2SV.addSocietyMoney^7!')
    end
end

SV.removeSocietyMoney = function(societyName, amount)
    if GetResourceState('vms_bossmenu') == "started" then
        societyName = string.gsub(societyName, "society_", "")
        exports['vms_bossmenu']:removeMoney(societyName, amount)

    elseif GetResourceState('cs_bossmenu') == "started" then
        exports['cs_bossmenu']:RemoveMoney(societyName, amount)
        
    elseif GetResourceState('okokBanking') == "started" then
        exports['okokBanking']:RemoveMoney(societyName, amount)

    elseif GetResourceState('qb-banking') == "started" then
        exports['qb-banking']:RemoveMoney(societyName, amount)

    elseif GetResourceState('qb-management') == "started" then
        exports['qb-management']:RemoveMoney(societyName, amount)

    elseif GetResourceState('esx_society') == "started" then
        TriggerEvent('esx_addonaccount:getSharedAccount', societyName, function(account)
            account.removeMoney(amount)
        end)
        
    else
        print('^5[INFO] ^7No society found for your server, go to vms_garagesv2/config/config.server.lua and adjust ^2SV.removeSocietyMoney^7!')
    end
end


--  ██████╗  █████╗ ███╗   ██╗ ██████╗      █████╗  ██████╗ ██████╗ ██████╗ ██╗   ██╗███╗   ██╗████████╗███████╗
-- ██╔════╝ ██╔══██╗████╗  ██║██╔════╝     ██╔══██╗██╔════╝██╔════╝██╔═══██╗██║   ██║████╗  ██║╚══██╔══╝██╔════╝
-- ██║  ███╗███████║██╔██╗ ██║██║  ███╗    ███████║██║     ██║     ██║   ██║██║   ██║██╔██╗ ██║   ██║   ███████╗
-- ██║   ██║██╔══██║██║╚██╗██║██║   ██║    ██╔══██║██║     ██║     ██║   ██║██║   ██║██║╚██╗██║   ██║   ╚════██║
-- ╚██████╔╝██║  ██║██║ ╚████║╚██████╔╝    ██║  ██║╚██████╗╚██████╗╚██████╔╝╚██████╔╝██║ ╚████║   ██║   ███████║
--  ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═══╝ ╚═════╝     ╚═╝  ╚═╝ ╚═════╝ ╚═════╝ ╚═════╝  ╚═════╝ ╚═╝  ╚═══╝   ╚═╝   ╚══════╝
SV.getGangSocietyMoney = function(xPlayer, societyName, cb)
    if GetResourceState('vms_bossmenu') == "started" then
        societyName = string.gsub(societyName, "society_", "")
        local money = exports['vms_bossmenu']:getMoney(societyName)
        cb(money)

    elseif GetResourceState('cs_bossmenu') == "started" then
        local society = exports['cs_bossmenu']:GetGangAccount(societyName)
        cb(society)
        
    else
        --[[
            --# If you want to use player resources for gangs, use the code below:

            local money = SV.getMoney(xPlayer, 'cash')
            cb(money)
        ]]

        print('^5[INFO] ^7No society found for your server, go to vms_garagesv2/config/config.server.lua and adjust ^2SV.getGangSocietyMoney^7!')
    end
end

SV.removeGangSocietyMoney = function(xPlayer, societyName, amount)
    if GetResourceState('vms_bossmenu') == "started" then
        societyName = string.gsub(societyName, "society_", "")
        exports['vms_bossmenu']:removeMoney(societyName, amount)

    elseif GetResourceState('cs_bossmenu') == "started" then
        exports['cs_bossmenu']:RemoveGangMoney(societyName, amount)
        
    else
        --[[
            --# If you want to use player resources for gangs, use the code below:
            
            SV.removeMoney(xPlayer, 'cash', amount)
        ]]

        print('^5[INFO] ^7No society found for your server, go to vms_garagesv2/config/config.server.lua and adjust ^2SV.removeGangSocietyMoney^7!')
    end
end


-- ██╗████████╗███████╗███╗   ███╗███████╗
-- ██║╚══██╔══╝██╔════╝████╗ ████║██╔════╝
-- ██║   ██║   █████╗  ██╔████╔██║███████╗
-- ██║   ██║   ██╔══╝  ██║╚██╔╝██║╚════██║
-- ██║   ██║   ███████╗██║ ╚═╝ ██║███████║
-- ╚═╝   ╚═╝   ╚══════╝╚═╝     ╚═╝╚══════╝
SV.registerUsableItem = function(name, cb)
    if Config.Core == "ESX" then
        Core.RegisterUsableItem(name, function(src, itemName)
            cb(src, itemName)
        end)
    elseif Config.Core == "QB-Core" then
        Core.Functions.CreateUseableItem(name, function(src, item)
            cb(src, item.name)
        end)
    end
end

SV.getItemCount = function(xPlayer, name)
    if Config.Core == "ESX" then
        return xPlayer.getInventoryItem(name).count
    elseif Config.Core == "QB-Core" then
        return xPlayer.Functions.GetItemByName(name) and xPlayer.Functions.GetItemByName(name).amount or 0
    end
end

SV.addItem = function(xPlayer, name, count)
    if Config.Core == "ESX" then
        xPlayer.addInventoryItem(name, count)
    elseif Config.Core == "QB-Core" then
        xPlayer.Functions.AddItem(name, count)
    end
end

SV.removeItem = function(xPlayer, name, count)
    if Config.Core == "ESX" then
        xPlayer.removeInventoryItem(name, count)
    elseif Config.Core == "QB-Core" then
        xPlayer.Functions.RemoveItem(name, count)
    end
end


--  ██████╗ ██╗██╗   ██╗███████╗    ██╗   ██╗███████╗██╗  ██╗██╗ ██████╗██╗     ███████╗
-- ██╔════╝ ██║██║   ██║██╔════╝    ██║   ██║██╔════╝██║  ██║██║██╔════╝██║     ██╔════╝
-- ██║  ███╗██║██║   ██║█████╗      ██║   ██║█████╗  ███████║██║██║     ██║     █████╗  
-- ██║   ██║██║╚██╗ ██╔╝██╔══╝      ╚██╗ ██╔╝██╔══╝  ██╔══██║██║██║     ██║     ██╔══╝  
-- ╚██████╔╝██║ ╚████╔╝ ███████╗     ╚████╔╝ ███████╗██║  ██║██║╚██████╗███████╗███████╗
--  ╚═════╝ ╚═╝  ╚═══╝  ╚══════╝      ╚═══╝  ╚══════╝╚═╝  ╚═╝╚═╝ ╚═════╝╚══════╝╚══════╝
SV.GiveCar = function(Player, owner, model, plate, type)
    local query = ('INSERT INTO `%s` (`%s`, `%s`, `%s`, `%s`, `%s`, `garage`, `impound_date`) VALUES (@owner, @company, @plate, @vehicle, @type, @garage, @impound_date)'):format(
        SV.Database['table:owned_vehicles'],
        SV.Database['column:owner'],
        SV.Database['column:company'],
        SV.Database['column:plate'],
        SV.Database['column:vehicle'],
        SV.Database['column:type']
    )
    local parameters = {
        ['@owner'] = Player and SV.getIdentifier(Player) or nil,
        ['@company'] = not tonumber(owner) and owner or nil,
        ['@plate'] = plate,
        ['@vehicle'] = json.encode({['model'] = GetHashKey(model), ['plate'] = plate}),
        ['@type'] = Config.VehicleTypes[type].name,
        ['@garage'] = Config.VehicleTypes[type].defaultImpound,
        ['@impound_date'] = os.time(),
    }

    if GetResourceState('vms_cityhall') == 'started' then
        query = ('INSERT INTO `%s` (`%s`, `%s`, `vin`, `%s`, `%s`, `%s`, `garage`, `impound_date`) VALUES (@owner, @company, @vin, @plate, @vehicle, @type, @garage, @impound_date)'):format(
            SV.Database['table:owned_vehicles'],
            SV.Database['column:owner'],
            SV.Database['column:company'],
            SV.Database['column:plate'],
            SV.Database['column:vehicle'],
            SV.Database['column:type']
        )
        parameters['@vin'] = exports['vms_cityhall']:GenerateVIN()
    end

    MySQL.Async.execute(query, parameters)
end
--   ____  _____ ____ ______   ______ _____ _____ ____     ___     _____ _____  _______ ____    ______   __  _______  __    _    ____    _____ ____  ___ _  _____ _____ ___  _   _    _        _     _   _                  ____  _ _                       _                 _______ _____ _  __     _   _ ____      _ ____ _____ _____
--  |  _ \| ____/ ___|  _ \ \ / /  _ \_   _| ____|  _ \   ( _ )   |  ___|_ _\ \/ / ____|  _ \  | __ ) \ / / |  ___\ \/ /   / \  |  _ \  |  ___|  _ \|_ _| |/ /_ _|_   _/ _ \| \ | |  / \      | |__ | |_| |_ _ __  ___ _   / / /_| (_)___  ___ ___  _ __ __| |  __ _  __ _   / / ____|_   _| |/ /__ _| | | | ___|  __| | ___|___  |___  |
--  | | | |  _|| |   | |_) \ V /| |_) || | |  _| | | | |  / _ \/\ | |_   | | \  /|  _| | | | | |  _ \\ V /  | |_   \  /   / _ \ | |_) | | |_  | |_) || || ' / | |  | || | | |  \| | / _ \     | '_ \| __| __| '_ \/ __(_) / / / _` | / __|/ __/ _ \| '__/ _` | / _` |/ _` | / /|  _|   | | | ' // _` | |_| |___ \ / _` |___ \  / /   / /
--  | |_| | |__| |___|  _ < | | |  __/ | | | |___| |_| | | (_>  < |  _|  | | /  \| |___| |_| | | |_) || |   |  _|  /  \  / ___ \|  __/  |  _| |  _ < | || . \ | |  | || |_| | |\  |/ ___ \ _  | | | | |_| |_| |_) \__ \_ / / / (_| | \__ \ (_| (_) | | | (_| || (_| | (_| |/ / | |___  | | | . \ (_| |  _  |___) | (_| |___) |/ /   / /
--  |____/|_____\____|_| \_\|_| |_|    |_| |_____|____/   \___/\/ |_|   |___/_/\_\_____|____/  |____/ |_|   |_|   /_/\_\/_/   \_\_|     |_|   |_| \_\___|_|\_\___| |_| \___/|_| \_/_/   \_(_) |_| |_|\__|\__| .__/|___(_)_/_/ \__,_|_|___/\___\___/|_|  \__,_(_)__, |\__, /_/  |_____| |_| |_|\_\__, |_| |_|____/ \__,_|____//_/   /_/
--                                                                                                                                                                                                          |_|                                                |___/ |___/                         |_|
-- https://discord.gg/ETKqH5d577
