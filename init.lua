local language = minetest.setting_get("language"):upper()

local modpath = minetest.get_modpath("vortoj")
local filepath = modpath.."/"..language..".lua"

local file = io.open(filepath)

if file then
	file:close()

	local vortoj = dofile(filepath)

	for item, translate in pairs(vortoj) do
		if minetest.registered_items[item] and translate ~= "" then
			minetest.override_item(item, {description = translate})
		end
	end
end
