RegisterNetEvent("monster_inventoryhud:openGroveInventory")
AddEventHandler(
    "monster_inventoryhud:openGroveInventory",
    function(data)
        setGroveInventoryData(data)
        openGroveInventory()
    end
)

function refreshGroveInventory()
    ESX.TriggerServerCallback(
        "monster_grove:getGroveInventory",
        function(inventory)
            setGroveInventoryData(inventory)
        end,
        exports['monster_grove']:getMonsterGroveLicense(), true
    )
end

function setGroveInventoryData(data)
    items = {}

    local blackMoney = data.blackMoney
    local groveItems = data.items
    local groveWeapons = data.weapons

    if blackMoney > 0 then
        accountData = {
            label = _U("black_money"),
            count = blackMoney,
            type = "item_account",
            name = "black_money",
            usable = false,
            rare = false,
            limit = -1,
            canRemove = false
        }
        table.insert(items, accountData)
    end

    for i = 1, #groveItems, 1 do
        local item = groveItems[i]

        if item.count > 0 then
            item.type = "item_standard"
            item.usable = false
            item.rare = false
            item.limit = -1
            item.canRemove = false

            table.insert(items, item)
        end
    end

    for i = 1, #groveWeapons, 1 do
        local weapon = groveWeapons[i]

        if groveWeapons[i].name ~= "WEAPON_UNARMED" then
            table.insert(
                items,
                {
                    label = ESX.GetWeaponLabel(weapon.name),
                    count = weapon.ammo,
                    limit = -1,
                    type = "item_weapon",
                    name = weapon.name,
                    usable = false,
                    rare = false,
                    canRemove = false
                }
            )
        end
    end

    SendNUIMessage(
        {
            action = "setSecondInventoryItems",
            itemList = items
        }
    )
end

function openGroveInventory()
    loadPlayerInventory()
    isInInventory = true

    SendNUIMessage(
        {
            action = "display",
            type = "grove"
        }
    )

    SetNuiFocus(true, true)
end

RegisterNUICallback(
    "PutIntoGrove",
    function(data, cb)
        if IsPedSittingInAnyVehicle(playerPed) then
            return
        end

        if type(data.number) == "number" and math.floor(data.number) == data.number then
            local count = tonumber(data.number)

            if data.item.type == "item_weapon" then
                count = GetAmmoInPedWeapon(PlayerPedId(), GetHashKey(data.item.name))
				TriggerServerEvent("monster_grove:putItem", --[[ESX.GetPlayerData().identifier,--]] data.item.type, data.item.name, count)
			elseif data.item.name == "phone" then
				exports.pNotify:SendNotification(
                {
                    text = "Telefon Koyamazsın",
                    type = "error",
                    timeout = 3000,
                    layout = "bottomCenter",
                    queue = "inventoryhud"
                }
            )
			else
				TriggerServerEvent("monster_grove:putItem", --[[ESX.GetPlayerData().identifier,--]] data.item.type, data.item.name, count)
            end

            
        end

        Wait(150)
        refreshGroveInventory()
        Wait(150)
        loadPlayerInventory()

        cb("ok")
    end
)

RegisterNUICallback(
    "TakeFromGrove",
    function(data, cb)
        if IsPedSittingInAnyVehicle(playerPed) then
            return
        end

        if type(data.number) == "number" and math.floor(data.number) == data.number then
            TriggerServerEvent("monster_grove:getItem", --[[ESX.GetPlayerData().identifier,--]] data.item.type, data.item.name, tonumber(data.number))
        end

        Wait(150)
        refreshGroveInventory()
        Wait(150)
        loadPlayerInventory()

        cb("ok")
    end
)
