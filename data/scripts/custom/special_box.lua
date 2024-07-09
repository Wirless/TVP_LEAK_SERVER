SPECIAL_BOX = {
    STORAGE_DUMMY_SKIN = 23999
}

local EARN_TYPE = {
    ITEM = 1,
    OUTFIT = 2
}

local CONFIG = {
    ATTRIBUTE = "ATTRIBUTE_SPECIAL_BOX_OWNER",
    ITEMS = {
        [5115] = {
            STORAGE = 24000,
            EARNS = {
                [1] = {
                    TYPE = EARN_TYPE.ITEM,
                    ITEMS = {
                        [5092] = 100,
                        [5093] = 1,
                        [5108] = 3
                    }
                },
                [2] = {
                    TYPE = EARN_TYPE.OUTFIT,
                    OUTFIT = {
                        [0] = 283,
                        [1] = 268,
                    },
                    ADDONS = 3
                }
            },
            EFFECT_ON_EARN = CONST_ME_MAGIC_GREEN,
            MESSAGE_ON_EARN = {
                [1] = "You received 100 Retronia Coins",
                [2] = "You received 1 Retronia Backpack",
                [3] = "You received 3 Ticket Dummy",
                [4] = "You received Beegar Outfit Full",
                [5] = "Check it in your storeinbox."
            }
        },
        [5114] = {
            STORAGE = 24001,
            EARNS = {
                [1] = {
                    TYPE = EARN_TYPE.ITEM,
                    ITEMS = {
                        [5093] = 1,
                        [5106] = 1,
                        [5092] = 150,
                        [5108] = 7
                    }
                },
                [2] = {
                    TYPE = EARN_TYPE.OUTFIT,
                    OUTFIT = {
                        [0] = 279,
                        [1] = 264,
                    },
                    ADDONS = 3
                }
            },
            EFFECT_ON_EARN = CONST_ME_MAGIC_GREEN,
            MESSAGE_ON_EARN = {
                [1] = "You received 150 Retronia Coins",
                [2] = "You received 1 Retronia Backpack",
                [3] = "You received 1 Dummy Skin",
                [4] = "You received 7 Ticket Dummy",
                [5] = "You received 1 Retronia Arrow Quiver",
                [6] = "You received Wizard Outfit Full",
                [7] = "Check it in your storeinbox."
            }
        },
        [5113] = {
            STORAGE = 24002,
            EARNS = {
                [1] = {
                    TYPE = EARN_TYPE.ITEM,
                    ITEMS = {
                        [5093] = 1,
                        [5107] = 1,
                        [5092] = 300,
                        [5108] = 10
                    }
                },
                [2] = {
                    TYPE = EARN_TYPE.OUTFIT,
                    OUTFIT = {
                        [0] = 153,
                        [1] = 152,
                    },
                    ADDONS = 3
                }
            },
            EFFECT_ON_EARN = CONST_ME_MAGIC_GREEN,
            MESSAGE_ON_EARN = {
                [1] = "You received 300 Retronia Coins",
                [2] = "You received 1 Retronia Backpack",
                [3] = "You received 1 Dummy Skin",
                [4] = "You received 10 Ticket Dummy",
                [5] = "You received 1 Retronia Bolt Quiver",
                [6] = "You received Royal Retronia Outfit Full",
                [7] = "Check it in your storeinbox."
            }
        }
    }
}

SPECIAL_BOX.process = function(player, item)
    player:say(item)
    for id, earn in pairs(CONFIG.ITEMS[item:getId()].EARNS) do
        if earn.TYPE == EARN_TYPE.ITEM then
            local storeInbox = player:getStoreInbox()
            if storeInbox then
                for itemId, itemCount in pairs(earn.ITEMS) do
                    local createdItem = Game.createItem(itemId, itemCount)

                    if createdItem then
                        local type = ItemType(createdItem:getId())

                        createdItem:setStoreItem(true)
                        storeInbox:addItemEx(createdItem)
                        createdItem:setStoreItem(false)

                        if type:isStackable() and itemCount > 100 then
                            local newCount = itemCount - 100
                            while(newCount > 0) do
                                local subItem = Game.createItem(itemId, newCount)
                                subItem:setStoreItem(true)
                                storeInbox:addItemEx(subItem)
                                subItem:setStoreItem(false)
                                newCount = newCount - 100
                            end
                        end

                        if not type:isStackable() and itemCount > 1 then
                            for i=1, (itemCount - 1) do
                                local subItem = Game.createItem(itemId, 1)
                                subItem:setStoreItem(true)
                                storeInbox:addItemEx(subItem)
                                subItem:setStoreItem(false)
                            end
                        end
                    end
                end
            end
        end

        if earn.TYPE == EARN_TYPE.OUTFIT then
            local looktype = earn.OUTFIT[player:getSex()]
            player:addOutfit(looktype)
            if earn.ADDONS > 0 then
                player:addOutfitAddon(looktype, earn.ADDONS)
            end
        end

        --Dummy Skin:
        if id == 5114 or 5113 then
            player:setStorageValue(SPECIAL_BOX.STORAGE_DUMMY_SKIN, 1)
        end
    end

    player:getPosition():sendMagicEffect(CONFIG.ITEMS[item:getId()].EFFECT_ON_EARN)
    local messages = CONFIG.ITEMS[item:getId()].MESSAGE_ON_EARN
    player:sendTextMessage(MESSAGE_EVENT_ADVANCE, messages[1])
    for i = 2, #messages do
        addEvent(function(playerId)
            local player = Player(playerId)
            if player then
                player:sendTextMessage(MESSAGE_EVENT_ADVANCE, messages[i])
            end
        end, (i - 1) * 2000, player:getId())  -- Aguardar 2 segundos antes de exibir a próxima mensagem
    end

    item:setCustomAttribute(CONFIG.ATTRIBUTE, player:getName())
    item:setCustomAttribute("ITEM_CUSTOM_ATTRIBUTE_DESCRIPTION", "This item belongs to "..player:getName()) 
    player:setStorageValue(CONFIG.ITEMS[item:getId()].STORAGE, 1)
end

local action = Action()

function action.onUse(player, item, fromPosition, target, toPosition, isHotkey)
    if item:getCustomAttribute(CONFIG.ATTRIBUTE) then
        return false
    end

    local hasUsedItem = player:getStorageValue(CONFIG.ITEMS[item:getId()].STORAGE)
    if hasUsedItem ~= -1 then
        player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You can only use this item once.")
        return false
    end

	Modal.Send(player, json.encode({action = "Confirm", data = {
		title = "Confirm",
		type = 1,
        value = item:getRealUID()
	}}))
end

for id,_ in pairs(CONFIG.ITEMS) do
    action:id(id)
end
action:register()

SPECIAL_BOX.reciver = function(player, message)
    if message.accept then
        local item = Item(message.value)
        if not item then
            return false
        end
        
        SPECIAL_BOX.process(player, item)
    end
end

Modal.NewModal("Confirm_Special_Box", SPECIAL_BOX.reciver)
