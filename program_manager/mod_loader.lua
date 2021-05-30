local function init()
	init_mod_names()

	for _, mod in ipairs(g.mod_names) do
		init_mod_data(mod)
	end
end


local function init_mod_names()
	g.mod_names = utils.map(string.sub, epic_list(g.mods_path), 1, -5) -- subtracts .lua from mod names
end


local function init_mod_data(mod)
	g.mods_data = {}
	local p = path.join(g.mods_path, mod + ".lua", g.items_path)
	g.mods_data[mod] = epic_load(p)
end