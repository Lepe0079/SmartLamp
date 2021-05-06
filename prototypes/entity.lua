data:extend({
    {--start def
        type = "lamp",
        name = "smart-lamp",
        icon = "__base__/graphics/icons/small-lamp.png",
        icon_size = 64, icon_mipmaps = 4,
        flags = {"placeable-neutral", "player-creation"},
        minable = {mining_time = 0.1, result = "smart-lamp"},
        max_health = 100,
        collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
        selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
        energy_source =
        {
        type = "electric",
        usage_priority = "lamp"
        },
        energy_usage_per_tick = "5KW",
        always_on = true,
        light = {intensity = 0.9, size = 40, color = {r=1.0, g=1.0, b=0.75}},
        light_when_colored = {intensity = 0, size = 6, color = {r=1.0, g=1.0, b=0.75}},
        glow_size = 10,
        glow_color_intensity = 1,
        glow_render_mode = "multiplicative",

        --when turned on
        picture_on =
        {
            filename = "__SmartLamp__/graphics/lamp_asset_lq.png",
            priority = "high",
            width = 46,
            height = 40,
            frame_count = 1,
            axially_symmetrical = false,
            direction_count = 1,
            shift = util.by_pixel(0, -7),
            hr_version =
            {
                filename = "__SmartLamp__/graphics/lamp_light_asset_hq.png",
                priority = "high",
                width = 83,
                height = 70,
                frame_count = 1,
                axially_symmetrical = false,
                direction_count = 1,
                shift = util.by_pixel(0, 3),
                scale = 0.5
            }
        },

        --when turned off
        picture_off =
        {
                filename = "__SmartLamp__/graphics/lamp_asset_lq.png",
                priority = "high",
                width = 42,
                height = 36,
                frame_count = 1,
                axially_symmetrical = false,
                direction_count = 1,
                shift = util.by_pixel(0,3),
                hr_version =
                {
                  filename = "__SmartLamp__/graphics/lamp_asset_hq.png",
                  priority = "high",
                  width = 83,
                  height = 70,
                  frame_count = 1,
                  axially_symmetrical = false,
                  direction_count = 1,
                  shift = util.by_pixel(0.25,3),
                  scale = 0.5
                }
            
        },
        --colors!
        signal_to_color_mapping =
        {
        {type = "virtual", name = "signal-red",    color = {r = 1, g = 0, b = 0}},
        {type = "virtual", name = "signal-green",  color = {r = 0, g = 1, b = 0}},
        {type = "virtual", name = "signal-blue",   color = {r = 0, g = 0, b = 1}},
        {type = "virtual", name = "signal-yellow", color = {r = 1, g = 1, b = 0}},
        {type = "virtual", name = "signal-pink",   color = {r = 1, g = 0, b = 1}},
        {type = "virtual", name = "signal-cyan",   color = {r = 0, g = 1, b = 1}},
        {type = "virtual", name = "signal-white",  color = {r = 1, g = 1, b = 1}}
        },

        circuit_wire_connection_point = circuit_connector_definitions["lamp"].points,
        circuit_connector_sprites = circuit_connector_definitions["lamp"].sprites,
        circuit_wire_max_distance = default_circuit_wire_max_distance


    }--end def
})