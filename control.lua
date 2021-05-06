local function buildColor(event)
    local setLamp = event.created_entity or event.entity
    
    --if(setLamp.name == "smart-lamp") then
        --setLamp.light.color = {r = 1, g = 0, b = 0}
    --end
    --game.write_file("debug.txt", setLamp.help() .. "\n", true)
end


local function loader()
    script.on_event({defines.events.on_built_entity}, buildColor)
end

script.on_init(loader)
script.on_load(loader)