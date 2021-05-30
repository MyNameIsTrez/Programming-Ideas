local function init()
	init_mod_names()

	for _, mod in ipairs(g.mod_names) do
		init_mod_data(mod)
	end
end


local function init_mod_names()
	g.mod_names = epic_list(g.mods_path)
end


local function init_mod_data(mod)
	g.mods_data[mod] = {}
	local mod_data = g.mods_data[mod]

	local p = path.join(g.mods_path, mod, g.items_path)
	mod_data.items = epic_load(p)

	p = path.join(g.mods_path, mod, g.entities_path)
	mod_data.entity_names = epic_list(p)
end