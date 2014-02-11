vortoj = {}

dofile(minetest.get_modpath("vortoj").."/de.lua")
dofile(minetest.get_modpath("vortoj").."/fr.lua")


local language = minetest.setting_get("language")

if language == "DE" then
	list = vortoj.de
if language == "FR" then
	list = vortoj.fr
elseif language == "ES" then
	-- list = vortoj.es
end

for _,item in ipairs(list) do
	if minetest.registered_items[item[1]] then
		minetest.override_item(item[1], {description = item[2]})
	end
end
