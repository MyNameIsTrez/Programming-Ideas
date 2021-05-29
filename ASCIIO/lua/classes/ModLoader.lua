local function load(entity_names)
	for _, mod in ipairs(get_mod_names()) do
		add_mod_entity_names(entity_names, mod)
	end
end


local function get_mod_names()
	-- g.path.mods
	local mod_names = {}

	return mod_names
end


local function add_mod_entity_names(entity_names, mod)
	for _, type_name in ipairs(get_mod_entity_names(mod)) do
		entity_names[type_name] = {}
	end
end


local function get_mod_entity_names(mod)
	local mod_entity_names = {}
	local mod_entities_path = path.join(mods_path, mod, g.path.entities)
	for _, type_name in ipairs(mod_entities_path) do
		table.insert(mod_entity_names, type_name)
	end
	return mod_entity_names
end