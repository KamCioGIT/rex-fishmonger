local RSGCore = exports['rsg-core']:GetCoreObject()
local SpawnedFishMongerBilps = {}

-----------------------------------------------------------------
-- fish monger prompts and blips
-----------------------------------------------------------------
Citizen.CreateThread(function()
    for _,v in pairs(Config.FishMongerLocations) do
        if not Config.EnableTarget then
            exports['rsg-core']:createPrompt(v.prompt, v.coords, RSGCore.Shared.Keybinds[Config.KeyBind], Lang:t('client.lang_1')..v.name, {
                type = 'client',
                event = 'rex-fishmonger:client:openfishmongers',
            })
        end
        if v.showblip == true then
            local FishMongerBlip = Citizen.InvokeNative(0x554D9D53F696D002, 1664425300, v.coords)
            SetBlipSprite(FishMongerBlip, joaat(Config.Blip.blipSprite), true)
            SetBlipScale(FishMongerBlip, Config.Blip.blipScale)
            Citizen.InvokeNative(0x9CB1A1623062F402, FishMongerBlip, v.name)
            table.insert(SpawnedFishMongerBilps, FishMongerBlip)
        end
    end
end)

-----------------------------------------------------------------
-- fish mongers hours system
-----------------------------------------------------------------
local OpenFishMongers = function()
    local hour = GetClockHours()
    if (hour < Config.OpenTime) or (hour >= Config.CloseTime) then
        lib.notify({
            title = Lang:t('client.lang_8'),
            description = Lang:t('client.lang_9')..Config.OpenTime..Lang:t('client.lang_10'),
            type = 'error',
            icon = 'fa-solid fa-shop',
            iconAnimation = 'shake',
            duration = 7000
        })
        return
    end
    TriggerEvent('rex-fishmonger:client:mainmenu')
end

-- get fish monger hours function
local GetFishMongerHours = function()
    local hour = GetClockHours()
    if (hour < Config.OpenTime) or (hour >= Config.CloseTime) then
        for k, v in pairs(SpawnedFishMongerBilps) do
            Citizen.InvokeNative(0x662D364ABF16DE2F, v, joaat('BLIP_MODIFIER_MP_COLOR_2'))
        end
    else
        for k, v in pairs(SpawnedFishMongerBilps) do
            Citizen.InvokeNative(0x662D364ABF16DE2F, v, joaat('BLIP_MODIFIER_MP_COLOR_8'))
        end
    end
end

-- get fish monger hours on player loading
RegisterNetEvent('RSGCore:Client:OnPlayerLoaded', function()
    GetFishMongerHours()
end)

-- update shop hours every min
CreateThread(function()
    while true do
        GetFishMongerHours()
        Wait(60000) -- every min
    end       
end)

AddEventHandler('rex-fishmonger:client:openfishmongers', function()
    OpenFishMongers()
end)

-----------------------------------------------------------------
-- fish monger menu
-----------------------------------------------------------------
RegisterNetEvent('rex-fishmonger:client:mainmenu', function()
    lib.registerContext(
        {
            id = 'fishmonger_menu',
            title = Lang:t('client.lang_2'),
            position = 'top-right',
            options = {
                {   title = Lang:t('client.lang_3'),
                    description = Lang:t('client.lang_4'),
                    icon = 'fas fa-fish',
                    event = 'rex-fishmonger:client:selltofishmonger',
                },
                {
                    title = Lang:t('client.lang_5'),
                    description = Lang:t('client.lang_6'),
                    icon = 'fas fa-shopping-basket',
                    event = 'rex-fishmonger:client:openfishmongershop',
                },
            }
        }
    )
    lib.showContext('fishmonger_menu')
end)

-----------------------------------------------------------------
-- process bar before selling
-----------------------------------------------------------------
RegisterNetEvent('rex-fishmonger:client:selltofishmonger', function()
    LocalPlayer.state:set("inv_busy", true, true) -- lock inventory
    if lib.progressBar({
        duration = Config.SellTime,
        position = 'bottom',
        useWhileDead = false,
        canCancel = false,
        disableControl = true,
        disable = {
            move = true,
            mouse = true,
        },
        label = Lang:t('client.lang_12'),
    }) then
        TriggerServerEvent('rex-fishmonger:server:sellfish')
    end
    LocalPlayer.state:set("inv_busy", false, true) -- unlock inventory
end)

-----------------------------------------------------------------
-- fish monger shop
-----------------------------------------------------------------
RegisterNetEvent('rex-fishmonger:client:openfishmongershop')
AddEventHandler('rex-fishmonger:client:openfishmongershop', function()
    local ShopItems = {}
    ShopItems.label = Lang:t('client.lang_7')
    ShopItems.items = Config.FishMongerShop
    ShopItems.slots = #Config.FishMongerShop
    TriggerServerEvent('inventory:server:OpenInventory', 'shop', 'FishMonger_'..math.random(1, 99), ShopItems)
end)
