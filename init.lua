local modname = minetest.get_current_modname()
local modpath = minetest.get_modpath(modname)
dofile(modpath .. "/nodes.lua")
dofile(modpath .. "/items.lua")
dofile(modpath .. "/crafts.lua")


minetest.register_globalstep(function(dtime)
  for _, player in ipairs(minetest.get_connected_players()) do
    local item = player:get_wielded_item()
    if item:get_name() == "default:torch" then
      player:set_physics_override({ jump = 2 })
      local pos = player:get_pos()
      pos.y = pos.y + 1
      local nodeName = minetest.get_node(pos).name
      if nodeName == "air" or nodeName == modname .. ":invisible_light" then
        minetest.set_node(pos, { name = modname .. ":invisible_light" })
        local timer = minetest.get_node_timer(pos)
        timer:start(0.2)
      end
    end
  end
end)
