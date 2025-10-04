local modname = minetest.get_current_modname()

minetest.register_node(modname .. ":invisible_light", {
    description = "alien",
    light_source = minetest.LIGHT_MAX,
    paramtype = "light",
    groups = { not_in_creative_inventory = 1 },
    walkable = false,
    drawtype = "airlike",
    can_dig = false,
    buildable_to = false,
    selection_box = {
      type = "fixed",
      fixed = { 0, 0, 0, 0, 0, 0 }
    },
    on_timer = function(pos)
      minetest.set_node(pos, { name = "air" })
      return false
    end
  })