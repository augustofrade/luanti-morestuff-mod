local modname = minetest.get_current_modname()

minetest.register_craftitem(modname .. ":apple_juice", {
    description = "Apple Juice",
    on_use = minetest.item_eat(5, "vessels:drinking_glass"),
    inventory_image = "apple_juice.png",
    groups = { eatable = 1 }
})

minetest.register_tool(modname .. ":lantern", {
    description = "Lantern",
    on_use = function()
        minetest.chat_send_all("used OFF")
    end,
    inventory_image = "lantern_off.png",
    _alternate = modname .. "lantern_on"
})

minetest.register_tool(modname .. ":lantern_on", {
    description = "Lantern",
    on_use = function()
        print("used ON")
    end,
    inventory_image = "lantern_on.png",
    _alternate = modname .. "lantern_off"
})