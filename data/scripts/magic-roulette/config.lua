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
				{id = 2472, count = 1, chance = 0.2, rare = true},
				{id = 2470, count = 1, chance = 0.3, rare = true},
				{id = 2514, count = 1, chance = 0.5, rare = true},
				{id = 2493, count = 1, chance = 9},
				{id = 2195, count = 1, chance = 9},
				{id = 2645, count = 1, chance = 9},
				{id = 2431, count = 1, chance = 9}
			},
		},
	}
}
