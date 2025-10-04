local modname = minetest.get_current_modname()

minetest.register_craft({
    type = "shapeless",
    output = modname .. ":apple_juice",
    recipe = {
      "vessels:drinking_glass",
      "default:apple"
    }
})
  
minetest.register_craft({
    type = "cooking",
    output = "default:coal_lump",
    recipe = "group:tree",
    cooktime = 4
})

minetest.register_craft({
    output = modname .. ":lantern",
    recipe = {
        {"group:wood", "group:wood", "group:wood"},
        {"default:glass", "default:mese_crystal_fragment", "default:glass"},
        {"group:stone", "group:stone", "group:stone"},
    }
})