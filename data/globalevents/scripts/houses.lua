function onStartup()

    --Update house website rent info
    local houseList = Game.getHouses()
    for _, house in ipairs(houseList) do
        local housePrice = configManager.getNumber(configKeys.HOUSE_PRICE)
        local rent = house:getRent()
        if housePrice > -1 then
            local price = house:getTileCount() * housePrice
            if price ~= rent then
                house:setRent(price)
                db.asyncQuery("UPDATE `houses` SET `rent` = " .. price .. " WHERE `id` = " .. house:getId())
            end
        end
    end

    -- -- Check house move outs and transfers
    -- local resultId = db.storeQuery("SELECT `id`, `house_id`, `date`, `time` FROM `web_house_move_outs` WHERE `time` <= " ..
    -- os.time())
    -- if resultId ~= false then
    --     repeat
    --         local moveOutId = result.getNumber(resultId, "id")
    --         local house = House(result.getNumber(resultId, "house_id"))
    --         if house then
    --             local transfer = db.storeQuery("SELECT `id`, `move_out_id`, `new_owner`, `price`, `accepted` FROM `web_house_transfers` WHERE `move_out_id` = " .. moveOutId)
    --             local transfered = {}
    --             if transfer ~= false then
    --                 local transferAccepted = result.getNumber(transfer, "accepted")
    --                 local newOwner = result.getNumber(transfer, "new_owner")
    --                 local price = result.getNumber(transfer, "price")

    --                 if transferAccepted == 0 then
    --                     db.asyncQuery("DELETE FROM `web_house_move_outs` WHERE `id` = " .. moveOutId)
    --                     return false
    --                 end

    --                 if doRemoveOfflinePlayerMoney(newOwner, house:getTown():getId(), price) or price == 0 then
    --                     house:setOwnerGuid(newOwner, true, false)
    --                 else
    --                     house:setOwnerGuid(0)
    --                 end
    --                 db.asyncQuery("DELETE FROM `web_house_move_outs` WHERE `id` = " .. moveOutId)
    --                 db.asyncQuery("DELETE FROM `web_house_transfers` WHERE `move_out_id` = " .. moveOutId)
    --                 result.free(transfer)
    --             else
    --                 house:setOwnerGuid(0)
    --                 db.asyncQuery("DELETE FROM `web_house_move_outs` WHERE `id` = " .. moveOutId)
    --             end
    --         end
    --     until not result.next(resultId)
    --     result.free(resultId)
    -- end

    -- -- Check house auctions
    -- local resultId = db.storeQuery("SELECT `id`, `bid`, `highest_bidder`, `last_bid`, (SELECT `balance` FROM `players` WHERE `players`.`id` = `highest_bidder`) AS `balance`, (SELECT `account_id` FROM `players` WHERE `players`.`id` = `highest_bidder`) AS `account_id`, (SELECT `name` FROM `players` WHERE `players`.`id` = `highest_bidder`) AS `name` FROM `houses` WHERE `owner` = 0 AND `bid_end` != 0 AND `bid_end` < " .. os.time())
    -- if resultId ~= false then
    --     repeat
    --         local house = House(result.getNumber(resultId, "id"))
    --         if house then
                
    --             local highestBidder = result.getNumber(resultId, "highest_bidder")
    --             local lastBid = result.getNumber(resultId, "last_bid")
    --             -- local bid = result.getNumber(resultId, "bid")
    --             local balance = result.getNumber(resultId, "balance")
    --             local name = result.getString(resultId, "name")

    --             if configManager.getBoolean(configKeys.HOUSES_BANKSYSTEM) then
    --                 if balance >= lastBid + house:getRent() then
    --                     db.query("UPDATE `players` SET `balance` = " .. (balance - lastBid - house:getRent()) .. " WHERE `id` = " .. highestBidder)
    --                     house:setOwnerGuid(highestBidder)
    --                     house:setPaidUntil(os.time() + 24 * 60 * 60 * 30)
    --                 end
    --             else
    --                 if doRemoveOfflinePlayerMoney(highestBidder, house:getTown():getId(), lastBid + house:getRent()) then
    --                     house:setOwnerGuid(highestBidder)
    --                     house:setPaidUntil(os.time() + 24 * 60 * 60 * 30)
    --                 end
    --             end

    --             db.asyncQuery("UPDATE `houses` SET `last_bid` = 0, `bid_end` = 0, `highest_bidder` = 0, `bid` = 0 WHERE `id` = " .. house:getId())

    --             -- did not have enough money to pay bid and rent, add a warning to the account
    --             if (house:getOwnerGuid() == highestBidder) then
    --                 logger.gameLog(string.format("[House auction] success house (ID: %d) auction to player (%s).", house:getId(), name))
    --             else
    --                 logger.gameLog(string.format("[House auction] failed house (ID: %d) auction to player (%s).", house:getId(), name))
    --                 db.query("UPDATE `accounts` SET `failed_bid_count` = `failed_bid_count` + 1 WHERE `id` = " .. result.getNumber(resultId, "account_id"))
    --             end
    --         end
    --     until not result.next(resultId)
    --     result.free(resultId)
    -- end

    local resultId = db.storeQuery("SELECT h.id FROM houses h JOIN players p ON h.owner = p.id JOIN accounts a ON p.account_id = a.id WHERE h.owner <> 0 AND UNIX_TIMESTAMP(NOW()) > a.premium_ends_at")
    if resultId ~= false then
        repeat
            local houseId = result.getDataInt(resultId, "id")
            local house = House(houseId)
            if house then
                house:setOwnerGuid(0)
            end
        until not result.next(resultId)
        result.free(resultId)
    end

    Game.payHouses()
end
