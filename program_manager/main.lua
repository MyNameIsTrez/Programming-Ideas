local function main()
	init_globals()
	modloader.init()
	run_game("asciio")
	_G.g = nil -- So other programs can reuse .g
end


local function init_globals()
	-- The only hardcoded Lua value which can't be moved to globals.lua
	local p = utils.epic_path("lua/extra/globals.lua")
	_G.g = epic_load(p)
end