local function main()
	init()
end


local function init()
	init_constants()

	local entity_names
	modloader.load(entity_names, g.mods_path)

	--[[
	-- State structure:
	-- {
	--   <type_name> = {
	--   	{ x = <x>, y = <y> },
	--   	{ x = <x>, y = <y> },
	--   }
	--   <type_name> = {
	--   	{ state = <state>, color = <{color}> },
	--   }
	-- }
	]]--
	local states
	init_states(states, entity_names)
end


local function init_constants()
	-- The only hardcoded Lua value which can't be moved into constants.json
	local constants_path = utils.epic_path("lua/extra/constants.json")

	_G.g.c = json.load(constants_path)
end


local function init_states(states, entity_names)
	for _, type_name in ipairs(entity_names) do
		states[type_name] = {}
	end
end