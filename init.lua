local language = string.upper(minetest.setting_get("language"))

if "" == language then
	local env = os.getenv("LANG")
	if nil ~= env then
		language = string.upper(string.match(env, "[^_]*"))
	else
		language = "EN"
	end
end

if io.open(minetest.get_modpath("vortoj").."/".. language ..".lua") then
	local vortoj = dofile(minetest.get_modpath("vortoj").."/".. language ..".lua")

	for _,item in ipairs(vortoj) do
		if minetest.registered_items[item[1]] and item[2] ~= "" then
			minetest.override_item(item[1], {description = item[2]})
		end
	end
end
