--[[
	Description: This file is part of Roulette System (refactored)
	Author: Ly�
	Discord: Ly�#8767
]]


local Slot = require('data/scripts/magic-roulette/lib/classes/slot')

return {
	slots = {
		[30020] = Slot { -- west roulette
			needItem = {id = 5550, count = 1},
			tilesPerSlot = 11,
			centerPosition = Position(32217, 32212, 5),

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
		[30021] = Slot { -- central roulette
			needItem = {id = 5550, count = 1},
			tilesPerSlot = 11,
			centerPosition = Position(32236, 32212, 5),

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
		[30022] = Slot { -- east roulette
			needItem = {id = 5550, count = 1},
			tilesPerSlot = 11,
			centerPosition = Position(32255, 32212, 5),

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
