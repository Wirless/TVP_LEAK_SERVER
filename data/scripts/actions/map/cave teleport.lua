local action = Action()

function action.onUse(player, item, fromPosition, target, toPosition)
    player:teleportTo({x = 1, y = 1, z = 1}) --TODO: Update teleport position
    return true
end

action:aid(4000)
action:register()
