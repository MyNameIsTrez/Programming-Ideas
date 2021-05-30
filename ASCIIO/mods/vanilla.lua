return {
	items = {
		iron_ore = {
			icons = [
				"I",
				"O",
			],
			recipe = {
				output = 1,
				crafter = "miner",
				base_crafting_time = 20,
			},
		},
		iron_plate = {
			icons = [
				"I",
				"P",
			],
			recipe = {
				input = {
					iron_ore = 1
				},
				output = 1,
				crafter = "furnace",
				base_crafting_time = 64,
			},
		},
		iron_gear_wheel = {
			icons = [
				"I",
				"G",
				"W",
			],
			recipe = {
				input = {
					iron_plate = 2
				},
				output = 1,
				crafter = "assembling machine",
				base_crafting_time = 10,
			},
		}
	}
	entities = {
		assembling_machine_1 = {
			textures = {
				1 = "/~\\\nl |\n\\_/",
			}
		},
		burner_mining_drill = ,
		electric_mining_drill = ,
		inserter = {
			textures = {
				1 = "^",
			}
		},
		transport_belt = {
			textures = {
				north_south = "|",
				east_west = "-",
				junction = "+",
			}
		},
	}
}