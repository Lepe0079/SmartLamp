data:extend({
    {
        type = "technology",
        name = "optics",
        icon_size = 256, icon_mipmaps = 4,
        icon = "__base__/graphics/technology/lamp.png",
        effects =
        {
          {
            type = "unlock-recipe",
            recipe = "smart-lamp"
          }
        },
        unit =
        {
          count = 10,
          ingredients = {{"automation-science-pack", 1}},
          time = 15
        },
      }
    })