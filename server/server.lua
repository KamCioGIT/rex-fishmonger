local RSGCore = exports['rsg-core']:GetCoreObject()

----------------------------------------------
-- sell fish
----------------------------------------------
RegisterServerEvent('rex-fishmonger:server:sellfish')
AddEventHandler('rex-fishmonger:server:sellfish', function()
    local src = source
    local Player = RSGCore.Functions.GetPlayer(src)
    local price = 0
    local hasfish  = false

    if Player.PlayerData.items ~= nil and next(Player.PlayerData.items) ~= nil then
        for k, v in pairs(Player.PlayerData.items) do 
            if Player.PlayerData.items[k] ~= nil then 
                if Player.PlayerData.items[k].name == "a_c_fishbluegil_01_sm" then 
                    price = price + (Config.FishPrice.Small * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("a_c_fishbluegil_01_sm", Player.PlayerData.items[k].amount, k)
                    hasfish = true
                elseif Player.PlayerData.items[k].name == "a_c_fishbullheadcat_01_sm" then 
                    price = price + (Config.FishPrice.Small * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("a_c_fishbullheadcat_01_sm", Player.PlayerData.items[k].amount, k)
                    hasfish = true
                elseif Player.PlayerData.items[k].name == "a_c_fishchainpickerel_01_sm" then 
                    price = price + (Config.FishPrice.Small * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("a_c_fishchainpickerel_01_sm", Player.PlayerData.items[k].amount, k)
                    hasfish = true
                elseif Player.PlayerData.items[k].name == "a_c_fishperch_01_sm" then 
                    price = price + (Config.FishPrice.Small * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("a_c_fishperch_01_sm", Player.PlayerData.items[k].amount, k)
                    hasfish = true
                elseif Player.PlayerData.items[k].name == "a_c_fishredfinpickerel_01_sm" then 
                    price = price + (Config.FishPrice.Small * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("a_c_fishredfinpickerel_01_sm", Player.PlayerData.items[k].amount, k)
                    hasfish = true
                elseif Player.PlayerData.items[k].name == "a_c_fishrockbass_01_sm" then 
                    price = price + (Config.FishPrice.Small * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("a_c_fishrockbass_01_sm", Player.PlayerData.items[k].amount, k)
                    hasfish = true
                elseif Player.PlayerData.items[k].name == "a_c_fishbluegil_01_ms" then 
                    price = price + (Config.FishPrice.Medium * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("a_c_fishbluegil_01_ms", Player.PlayerData.items[k].amount, k)
                    hasfish = true
                elseif Player.PlayerData.items[k].name == "a_c_fishbullheadcat_01_ms" then 
                    price = price + (Config.FishPrice.Medium * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("a_c_fishbullheadcat_01_ms", Player.PlayerData.items[k].amount, k)
                    hasfish = true
                elseif Player.PlayerData.items[k].name == "a_c_fishchainpickerel_01_ms" then 
                    price = price + (Config.FishPrice.Medium * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("a_c_fishchainpickerel_01_ms", Player.PlayerData.items[k].amount, k)
                    hasfish = true
                elseif Player.PlayerData.items[k].name == "a_c_fishlargemouthbass_01_ms" then 
                    price = price + (Config.FishPrice.Medium * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("a_c_fishlargemouthbass_01_ms", Player.PlayerData.items[k].amount, k)
                    hasfish = true
                elseif Player.PlayerData.items[k].name == "a_c_fishperch_01_ms" then 
                    price = price + (Config.FishPrice.Medium * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("a_c_fishperch_01_ms", Player.PlayerData.items[k].amount, k)
                    hasfish = true
                elseif Player.PlayerData.items[k].name == "a_c_fishrainbowtrout_01_ms" then 
                    price = price + (Config.FishPrice.Medium * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("a_c_fishrainbowtrout_01_ms", Player.PlayerData.items[k].amount, k)
                    hasfish = true
                elseif Player.PlayerData.items[k].name == "a_c_fishredfinpickerel_01_ms" then 
                    price = price + (Config.FishPrice.Medium * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("a_c_fishredfinpickerel_01_ms", Player.PlayerData.items[k].amount, k)
                    hasfish = true
                elseif Player.PlayerData.items[k].name == "a_c_fishrockbass_01_ms" then 
                    price = price + (Config.FishPrice.Medium * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("a_c_fishrockbass_01_ms", Player.PlayerData.items[k].amount, k)
                    hasfish = true
                elseif Player.PlayerData.items[k].name == "a_c_fishsalmonsockeye_01_ml" then 
                    price = price + (Config.FishPrice.Medium * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("a_c_fishsalmonsockeye_01_ml", Player.PlayerData.items[k].amount, k)
                    hasfish = true
                elseif Player.PlayerData.items[k].name == "a_c_fishsalmonsockeye_01_ms" then 
                    price = price + (Config.FishPrice.Medium * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("a_c_fishsalmonsockeye_01_ms", Player.PlayerData.items[k].amount, k)
                    hasfish = true
                elseif Player.PlayerData.items[k].name == "a_c_fishsmallmouthbass_01_ms" then 
                    price = price + (Config.FishPrice.Medium * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("a_c_fishsmallmouthbass_01_ms", Player.PlayerData.items[k].amount, k)
                    hasfish = true
                elseif Player.PlayerData.items[k].name == "a_c_fishchannelcatfish_01_lg" then 
                    price = price + (Config.FishPrice.Large * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("a_c_fishchannelcatfish_01_lg", Player.PlayerData.items[k].amount, k)
                    hasfish = true
                elseif Player.PlayerData.items[k].name == "a_c_fishchannelcatfish_01_xl" then 
                    price = price + (Config.FishPrice.Large * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("a_c_fishchannelcatfish_01_xl", Player.PlayerData.items[k].amount, k)
                    hasfish = true
                elseif Player.PlayerData.items[k].name == "a_c_fishlakesturgeon_01_lg" then 
                    price = price + (Config.FishPrice.Large * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("a_c_fishlakesturgeon_01_lg", Player.PlayerData.items[k].amount, k)
                    hasfish = true
                elseif Player.PlayerData.items[k].name == "a_c_fishlargemouthbass_01_lg" then 
                    price = price + (Config.FishPrice.Large * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("a_c_fishlargemouthbass_01_lg", Player.PlayerData.items[k].amount, k)
                    hasfish = true
                elseif Player.PlayerData.items[k].name == "a_c_fishlongnosegar_01_lg" then 
                    price = price + (Config.FishPrice.Large * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("a_c_fishlongnosegar_01_lg", Player.PlayerData.items[k].amount, k)
                    hasfish = true
                elseif Player.PlayerData.items[k].name == "a_c_fishmuskie_01_lg" then 
                    price = price + (Config.FishPrice.Large * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("a_c_fishmuskie_01_lg", Player.PlayerData.items[k].amount, k)
                    hasfish = true
                elseif Player.PlayerData.items[k].name == "a_c_fishnorthernpike_01_lg" then 
                    price = price + (Config.FishPrice.Large * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("a_c_fishnorthernpike_01_lg", Player.PlayerData.items[k].amount, k)
                    hasfish = true
                elseif Player.PlayerData.items[k].name == "a_c_fishrainbowtrout_01_lg" then 
                    price = price + (Config.FishPrice.Large * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("a_c_fishrainbowtrout_01_lg", Player.PlayerData.items[k].amount, k)
                    hasfish = true
                elseif Player.PlayerData.items[k].name == "a_c_fishsalmonsockeye_01_lg" then 
                    price = price + (Config.FishPrice.Large * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("a_c_fishsalmonsockeye_01_lg", Player.PlayerData.items[k].amount, k)
                    hasfish = true
                elseif Player.PlayerData.items[k].name == "a_c_fishsmallmouthbass_01_lg" then 
                    price = price + (Config.FishPrice.Large * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("a_c_fishsmallmouthbass_01_lg", Player.PlayerData.items[k].amount, k)
                    hasfish = true
                end
            end
        end
        if hasfish then
            Player.Functions.AddMoney("cash", price, "fish-sold")
            TriggerEvent('rsg-log:server:CreateLog', Config.WebhookName, Config.WebhookTitle, Config.WebhookColour, GetPlayerName(src) .. Config.Lang1 .. price, false)
            hasfish = false
        else
            TriggerClientEvent('ox_lib:notify', source, {title = Lang:t('server.lang_1'), description = Lang:t('server.lang_2'), type = 'error' })
        end
    end
end)
