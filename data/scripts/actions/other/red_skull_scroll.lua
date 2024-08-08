local action = Action()

function action.onUse(player, item, fromPosition, target, toPosition, isHotkey)
    
    player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "The Gods of Ravenor have forgive your sins.")
    player:getPosition():sendMagicEffect(CONST_ME_MAGIC_RED)
    player:setSkull(SKULL_NONE)
    player:removeKillerEnd()
    item:remove()
    return true
end

action:id(5498)
action:register()