local CONFIG = {
    DATA = {},
    EFFECT = CONST_ME_MAGIC_GREEN,
    MESSAGES = {
        [5113] = "You have just received your Gold Founder's package, please check your store inbox!",
        [5114] = "You have just received your Silver Founder's package, please check your store inbox!",
        [5115] = "You have just received your Bronze Founder's package, please check your store inbox!"
    }
}

local creatureevent = CreatureEvent("founderPackLogin")

function creatureevent.onLogin(player)
    local accountId = player:getAccountId()

    if not CONFIG.DATA[accountId] then
        local storeInbox = player:getStoreInbox()

        local query = db.storeQuery("SELECT `id`, `action`, `param1`, `param2` FROM `z_ots_comunication` WHERE `name` = "..tostring(accountId))
        if query then
            repeat
                local action = result.getString(query, "action")
                local itemId = tonumber(result.getString(query, "param1"))
                local itemCount = tonumber(result.getString(query, "param2"))
                local id = result.getNumber(query, "id")

                if action then
                    local quantity = itemCount

                    while quantity > 0 do
                        local item = Game.createItem(itemId, quantity)
                        if item then
                            item:setStoreItem(true)
                            storeInbox:addItemEx(item, false, FLAG_NOLIMIT)
                            item:setStoreItem(false)
                        end                
                        quantity = quantity - 1
                    end

                    db.query("DELETE FROM `z_ots_comunication` WHERE `id` = "..id)

                    if CONFIG.MESSAGES[itemId] then
                        player:sendTextMessage(MESSAGE_EVENT_ADVANCE, CONFIG.MESSAGES[itemId])
                        player:getPosition():sendMagicEffect(CONFIG.EFFECT)
                    end
                end
   
            until not result.next(query)
            result.free(query)
        end

        CONFIG.DATA[accountId] = true
    end
    return true
end

--creatureevent:register()