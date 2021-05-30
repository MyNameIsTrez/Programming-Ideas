local function main()
	_G.g.program = "asciio"
	init_globals()
	modloader.init()
	run_game()
	_G.g = nil -- So other programs can reuse .g
end


local function init_globals()
	-- The only hardcoded Lua value which can't be moved to globals.lua
	_G.g = epic_load(epic_path("globals.lua"))
end


local function run_game()

end