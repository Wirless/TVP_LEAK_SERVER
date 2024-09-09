--[[
	Description: This file is part of Roulette System (refactored)
	Author: Ly�
	Discord: Ly�#8767
]]


local Slot = require('data/scripts/magic-roulette/lib/classes/slot')

return {
	slots = {
		[30023] = Slot {
			needItem = {id = 2160, count = 1},
			tilesPerSlot = 7,
			centerPosition = Position(32297, 31930, 8),

			items = {
				{id = 2472, count = 1, chance = 0.5, rare = true},
				{id = 2470, count = 1, chance = 0.7, rare = true},
				{id = 2514, count = 1, chance = 0.9, rare = true},
				{id = 2493, count = 1, chance = 1, rare = true},
				{id = 2195, count = 1, chance = 5},
				{id = 2645, count = 1, chance = 10},
				{id = 2431, count = 1, chance = 10},
				{id = 2421, count = 1, chance = 10},
				{id = 2400, count = 1, chance = 15},
				{id = 2112, count = 1, chance = 15},
				{id = 2520, count = 1, chance = 15}
			},
		},
	}
}
