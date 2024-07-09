local MonsterSkills = {
    INVISIBLE = 1,
    COPYCAT = 2,
    TELEPORT = 3,
    SUPERSPEED = 4,
    -- RUN FROM TRAP
    -- CHANGE_TARGET_DISTANCE = 2,
    -- RANDOM TELEPORT
}

local maxEliteSkills = 0
for _, _ in pairs(MonsterSkills) do
    maxEliteSkills = maxEliteSkills + 1
end

function getShuffledMonsterSkills()
    local skills = {}
    for _, skill in pairs(MonsterSkills) do
        table.insert(skills, skill)
    end

    for i = 1, #skills do
        local j = math.random(1, #skills)
        skills[i], skills[j] = skills[j], skills[i]
    end

    return skills
end

function Monster:registerSkills(skills)

    for _, skill in pairs(skills) do
        if skill == MonsterSkills.INVISIBLE then
            self:registerEvent("MonsterSkillInvisibility")
        elseif skill == MonsterSkills.COPYCAT then
            self:registerEvent("MonsterSkillCopycat")
            self:setStorageValue("COPYCAT", 25)
        elseif skill == MonsterSkills.TELEPORT then
            self:setStorageValue("EliteTeleportSkill", true)
        elseif skill == MonsterSkills.SUPERSPEED then
            self:registerEvent("MonsterSkillSuperspeed")
        end

        self:registerEvent("MonsterSkillTeleport")
    end

    self:registerEvent("MonsterSkillTeleport")
end

-- -- -- -- -- -- -- Invisibility skill -- -- -- -- -- - --- -- --

local InvisibilityCombat = Combat()
InvisibilityCombat:setParameter(COMBAT_PARAM_AGGRESSIVE, false)
InvisibilityCombat:setParameter(COMBAT_PARAM_TARGETCASTERORTOPMOST, true)

local condition = Condition(CONDITION_INVISIBLE)
condition:setParameter(CONDITION_PARAM_TICKS, 10000)
InvisibilityCombat:addCondition(condition)

local FastInvisibilityCombat = Combat()
FastInvisibilityCombat:setParameter(COMBAT_PARAM_AGGRESSIVE, false)
FastInvisibilityCombat:setParameter(COMBAT_PARAM_TARGETCASTERORTOPMOST, true)

local condition = Condition(CONDITION_INVISIBLE)
condition:setParameter(CONDITION_PARAM_TICKS, 250)
FastInvisibilityCombat:addCondition(condition)

local MonsterInvisibilityCreatureEvent = CreatureEvent("MonsterSkillInvisibility")
function MonsterInvisibilityCreatureEvent.onThink(creature, interval)
    local target = creature:getTarget()
    if not target then
        return true
    end

    if target:isPlayer() then
        if target:getVocation():getId() == 0 then -- ignore invisibility to rook players
            return true
        end
    end

    local chance = math.random(1, 100)

    if chance < 15 then --5%
        InvisibilityCombat:execute(creature, Variant(creature:getPosition()))
        creature:getPosition():sendMagicEffect(CONST_ME_MAGIC_BLUE)
    end
end

MonsterInvisibilityCreatureEvent:register()

-- -- -- -- -- -- -- Superspeed skill -- -- -- -- -- - --- -- --

local SuperspeedCondition = Condition(CONDITION_HASTE, CONDITIONID_DEFAULT)
SuperspeedCondition:setParameter(CONDITION_PARAM_SUBID, 253)
SuperspeedCondition:setParameter(CONDITION_PARAM_SPEED, 100)
SuperspeedCondition:setParameter(CONDITION_PARAM_TICKS, 5000)

local SuperspeedCombat = Combat()
SuperspeedCombat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_MAGIC_RED)
SuperspeedCombat:setParameter(COMBAT_PARAM_AGGRESSIVE, false)
SuperspeedCombat:addCondition(SuperspeedCondition)

local MonsterSuperspeedCreatureEvent = CreatureEvent("MonsterSkillSuperspeed")
function MonsterSuperspeedCreatureEvent.onThink(creature, interval)
    local target = creature:getTarget()
    if not target then
        return true
    end

    local chance = math.random(1, 100)

    if chance < 40 then --5%
        if creature:hasCondition(CONDITION_HASTE, 253) then
            return true
        end

        creature:say("I am faster!", TALKTYPE_MONSTER_SAY)
        return SuperspeedCombat:execute(creature, Variant(creature:getPosition()))
    end
end

MonsterSuperspeedCreatureEvent:register()

-- -- -- -- -- -- -- Copycat skill -- -- -- -- -- - --- -- --

local MonsterCopycatCreatureEvent = CreatureEvent("MonsterSkillCopycat")
function MonsterCopycatCreatureEvent.onThink(creature, interval)
    local target = creature:getTarget()
    if not target then
        return true
    end

    local health = creature:getHealth() / creature:getMaxHealth()

    if health < 0.05 then
        return true
    end

    local monster = Monster(creature:getId())
    if not monster then return true end

    local exhaust = monster:getStorageValue("CopycatExhaust")
    if exhaust > os.time() then
        return true
    end

    monster:setStorageValue("CopycatExhaust", os.time() + 0)

    local copycatSkill = monster:getStorageValue("COPYCAT")
    if not copycatSkill then
        copycatSkill = 25
    end

    local chance = math.random(1, 100 * 1000)
    if chance < copycatSkill * 1000 then
        for _, summon in pairs(monster:getSummons()) do
            if summon:getName() == monster:getName() then
                return true
            end
        end

        creature:getPosition():sendMagicEffect(CONST_ME_POFF)

        local pos = creature:getCustomClosestFreePosition(creature:getPosition(), true)
        local star = creature:getStar()
        local speed = creature:getBaseSpeed()
        local health = creature:getHealth()
        local maxHealth = creature:getMaxHealth()
        local percent = health / maxHealth
        local name = creature:getName()

        creature:remove()

        addEvent(function()
            local monster = Game.createMonster(name, pos, true)
            if monster then
                pos = monster:getCustomClosestFreePosition(monster:getPosition(), true)
                --BUFF MONSTER HEALTH:
                monster:setMaxHealth(maxHealth)
                monster:setHealth(health)

                -- BUFF MONSTER SPEED:
                monster:setBaseSpeed(speed)

                monster:setStar(star)
                monster:registerEvent("BestiaryHealthChange")

                monster:registerEvent("MonsterSkillCopycat")
                monster:setStorageValue("COPYCAT", copycatSkill * 1 / 5)

                for i = 1, 2 do
                    pos:sendMagicEffect(CONST_ME_TELEPORT)
                    local copycat = Game.createMonster(name, pos, true)
                    if copycat then
                        monster:addSummon(copycat)
                        copycat:setBaseSpeed(speed)
                        copycat:setStar(star)

                        local maxHealth = copycat:getMaxHealth() / 3

                        copycat:setMaxHealth(maxHealth)
                        copycat:setHealth(maxHealth * percent)
                        copycat:setStorageValue("CopycatLowAttack", true)
                        copycat:registerEvent("CopycatBestiaryHealthChange")

                        pos = copycat:getCustomClosestFreePosition(copycat:getPosition(), true)
                    end
                end
            end
        end, 2000)
    end
end

MonsterCopycatCreatureEvent:register()

-- -- -- -- -- -- -- Teleport skill -- -- -- -- -- - --- -- --

local function getRandomFreePosition(creature, position)
    local checkPosition = Position(position)
    local getPos = creature:getPosition()

    local distance = math.max(math.abs(getPos.x - checkPosition.x), math.abs(getPos.y - checkPosition.y))

    radius = math.random(1, 2)

    checkPosition.x = checkPosition.x - math.min(1, radius)
    checkPosition.y = checkPosition.y + math.min(1, radius)

    local total = math.max(1, radius * 8)
    for i = 1, total do
        if radius > 0 then
            local direction = math.floor((i - 1) / (radius * 2))
            checkPosition:getNextPosition(direction)
        end

        local tile = Tile(checkPosition)
        if tile and tile:getCreatureCount() == 0 and not tile:hasProperty(CONST_PROP_IMMOVABLEBLOCKSOLID) and creature:getPathTo(checkPosition) then
            return checkPosition
        end
    end

    return false
end

local function getDirectionBetweenPosition(creaturePosition, targetPosition)
    local positionDifference = {
        x = creaturePosition.x - targetPosition.x,
        y = creaturePosition.y - targetPosition.y,
        z = creaturePosition.z - targetPosition.z
    }

    local maxPositionDifference, direction = math.max(math.abs(positionDifference.x), math.abs(positionDifference.y))
    if maxPositionDifference >= 5 then
        local positionTangent = positionDifference.x ~= 0 and positionDifference.y / positionDifference.x or 10
        if math.abs(positionTangent) < 0.4142 then
            direction = positionDifference.x > 0 and DIRECTION_WEST or DIRECTION_EAST
        elseif math.abs(positionTangent) < 2.4142 then
            direction = positionTangent > 0 and (positionDifference.y > 0 and DIRECTION_NORTHWEST or DIRECTION_SOUTHEAST) or
                positionDifference.x > 0 and DIRECTION_SOUTHWEST or DIRECTION_NORTHEAST
        else
            direction = positionDifference.y > 0 and DIRECTION_NORTH or DIRECTION_SOUTH
        end
    end

    return direction
end

function Creature.getClosestFreeCombatPosition(self, position, maxRadius, mustBeReachable)
    maxRadius = maxRadius or 1

    -- backward compatability (extended)
    if maxRadius == true then
        maxRadius = 2
    end

    local checkPosition = Position(position)
    for radius = 0, maxRadius do
        checkPosition.x = checkPosition.x - math.min(1, radius)
        checkPosition.y = checkPosition.y + math.min(1, radius)

        local total = math.max(1, radius * 8)
        for i = 1, total do
            if radius > 0 then
                local direction = math.floor((i - 1) / (radius * 2))
                checkPosition:getNextPosition(direction)
            end

            local tile = Tile(checkPosition)
            if tile and tile:getCreatureCount() == 0 and not tile:hasProperty(CONST_PROP_IMMOVABLEBLOCKSOLID) and
                (not mustBeReachable or self:getPathTo(checkPosition)) and
                (not tile:hasFlag(TILESTATE_PROTECTIONZONE))
            then
                return checkPosition
            end
        end
    end
    return Position()
end

function Creature.getCustomClosestFreePosition(self, position, maxRadius, mustBeReachable)
    maxRadius = maxRadius or 1

    -- backward compatskill (extended)
    if maxRadius == true then
        maxRadius = 2
    end

    local checkPosition = Position(position)
    for radius = 0, maxRadius do
        checkPosition.x = checkPosition.x - math.min(1, radius)
        checkPosition.y = checkPosition.y + math.min(1, radius)

        local total = math.max(1, radius * 8)
        for i = 1, total do
            if radius > 0 then
                local direction = math.floor((i - 1) / (radius * 2))
                checkPosition:getNextPosition(direction)
            end

            local tile = Tile(checkPosition)
            if tile and tile:getCreatureCount() == 0 and not tile:hasProperty(CONST_PROP_IMMOVABLEBLOCKSOLID) and
                (not mustBeReachable or self:getPathTo(checkPosition)) and
                (not tile:hasFlag(TILESTATE_PROTECTIONZONE)) and
                (not tile:hasFlag(TILESTATE_FLOORCHANGE))
            then
                return checkPosition
            end
        end
    end
    return Position()
end

local MonsterTeleportCreatureEvent = CreatureEvent("MonsterSkillTeleport")
function MonsterTeleportCreatureEvent.onThink(creature, interval)
    local target = creature:getTarget()
    if not target then
        return true
    end

    local targetId = target:getId()


    local monster = Monster(creature:getId())
    if not monster then return true end
    local exhaust = monster:getStorageValue("TeleportExhaust")
    if exhaust > os.time() then
        return true
    end

    monster:setStorageValue("TeleportExhaust", os.time() + 3)

    local freePosition = creature:getClosestFreeCombatPosition(creature:getPosition(), 1, true)
    local isTrapped = freePosition.x == 0 and freePosition.y == 0 and freePosition.z == 0
    if not isTrapped and creature:getStorageValue("EliteTeleportSkill") == -1 then
        return true
    end

    
    local specs = Game.getSpectators(monster:getPosition(), false, false, 7, 7, 5, 5)
    if #specs == 0 then
        return true
    end
    
    local creatures = {}
    local chance = math.random(1, 100)

    local players = {}

    for _, spec in pairs(specs) do
        if spec:isPlayer() and spec:getId() ~= targetId then
            local paths = creature:getPathTo(spec:getPosition())
            if paths and #paths > 2 and not spec:getGroup():getAccess() then
                table.insert(players, spec)
            end
            table.insert(creatures, spec)
        end
    end

    local behavior = #players > 0 and math.random(1, 3) or 3
    local mustBeReachable = true
    local behavior_3_message = "Let's dance!"

    if isTrapped then
        -- chance = 0
        -- behavior = 3
        -- players = creatures
        -- mustBeReachable = false
        -- behavior_3_message = "Do you think I'm trapped?"
    end

    if chance < 80 then --15%
        if behavior == 1 then -- Come from A to B
            -- pick a random player
            local player = players[math.random(1, #players)]

            local targetPos = creature:getPosition()
            local newPos = player:getCustomClosestFreePosition(targetPos, true)
            if newPos then
                local dir = getDirectionBetweenPosition(newPos, targetPos)
                if dir then
                    player:setDirection(dir)
                end

                player:teleportTo(newPos)
                player:setTarget(nil)
                player:sendCancelTarget()
                newPos:sendMagicEffect(CONST_ME_TELEPORT)
                FastInvisibilityCombat:execute(creature, Variant(creature:getPosition()))
                creature:say("Don't be afraid, come here...", TALKTYPE_MONSTER_SAY)
            end
        elseif behavior == 2 then -- Bring B to A
            -- pick a random player
            local player = players[math.random(1, #players)]

            local targetPos = player:getPosition()
            local newPos = getRandomFreePosition(creature, targetPos)
            if newPos then
                creature:setTarget(player)

                local dir = getDirectionBetweenPosition(newPos, targetPos)
                if dir then
                    creature:setDirection(dir)
                end

                player:setTarget(nil)
                player:sendCancelTarget()
                creature:teleportTo(newPos)
                newPos:sendMagicEffect(CONST_ME_TELEPORT)
                creature:say("Don't worry, I will play with you!", TALKTYPE_MONSTER_SAY)
                FastInvisibilityCombat:execute(creature, Variant(creature:getPosition()))
            end
        elseif behavior == 3 then -- Randomly moves
            local radius = math.random(3, 8)
            local fromPos = creature:getPosition()
            local newPos = Position()
            creature:say(behavior_3_message, TALKTYPE_MONSTER_SAY)

            addEvent(function(creatureId)
                local creature = Creature(creatureId)
                if creature then
                    local player = creature:getTarget()
                    if not player then
                        return true
                    end

                    local tries = 0
                    while (newPos.x == 0 and newPos.y == 0 and newPos.z == 0) and tries < 10 do
                        newPos = {}
                        newPos.x = fromPos.x + math.random(-radius, radius)
                        newPos.y = fromPos.y + math.random(-radius, radius)
                        newPos.z = fromPos.z

                        local tile = Tile(newPos)

                        if tile then
                            newPos = creature:getClosestFreeCombatPosition(newPos, 1, mustBeReachable, false)
                        end

                        tries = tries + 1
                    end

                    if newPos then
                        player:setTarget(nil)
                        player:sendCancelTarget()
                        player:teleportTo(newPos)
                        
                        newPos:sendMagicEffect(CONST_ME_TELEPORT)
                        
                        local creaturePos = creature:getCustomClosestFreePosition(player:getPosition(), true, mustBeReachable)
                        if creaturePos.x ~= 0 and creaturePos.y ~= 0 and creaturePos.z ~= 0 then
                            FastInvisibilityCombat:execute(creature, Variant(creature:getPosition()))

                            local dir = getDirectionBetweenPosition(creaturePos, newPos)
                            if dir then
                                creature:setDirection(dir)
                            end

                            creature:teleportTo(creaturePos)
                        end
                    end
                end
            end
            , 2000, creature:getId())
        end

        monster:setStorageValue("TeleportExhaust", os.time() + 8)
    end
end

MonsterTeleportCreatureEvent:register()

-- -- -- -- -- -- --  -- -- -- -- -- - --- -- --