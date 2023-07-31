-- Define the module table
local MapCoordinates = {}

-- Initialize the Rank table with the existing maps
MapCoordinates.Rank = {
    easylvl = {
        {name = "Construct", coords = {}},
        {name = "Indoor Courtyard", coords = {}},
    },
    normallvl = {
        {name = "Arid Ruins", coords = {-181, -18, 27}},
        {name = "Backrooms", coords = {}},
        {name = "Seraph Research", coords = {}},
        {name = "Underground Facility", coords = {}},
        {name = "Four Corners", coords = {}},
        {name = "Ikea", coords = {}},
        {name = "Silver Mall", coords = {}},
        {name = "Laboratory", coords = {}},
        {name = "Crossroads", coords = {}},
        {name = "Neighborhood", coords = {}},
        {name = "Icebreaker", coords = {}},
        {name = "Tudor Manor", coords = {}},
        {name = "Drab", coords = {}},
        {name = "Elysium Tower", coords = {}},
        {name = "Kyoto", coords = {}},
        {name = "Alpine Palace", coords = {}},
        {name = "Winter City", coords = {}},
        {name = "Nuclear Processing", coords = {}},
        {name = "Elysium Moonbase", coords = {}},
    },
    hardlvl = {
        {name = "Desert Bus", coords = {}},
        {name = "Maze", coords = {}},
        {name = "Poolrooms", coords = {}},
        {name = "Facade", coords = {}},
        {name = "Library", coords = {}},
        {name = "Mansion", coords = {}},
        {name = "Jungle", coords = {}},
        {name = "Station", coords = {}},
        {name = "Catacombs", coords = {}},
        {name = "Warped Estate", coords = {}},
        {name = "Insane Asylum", coords = {}},
        {name = "Work Facility", coords = {}},
        {name = "Mayday", coords = {}},
        {name = "Cliffshire", coords = {}},
        {name = "Alleyways", coords = {}},
        {name = "Terror Hotel", coords = {}},
        -- Add other maps here
    },
    expertlvl = {
        {name = "Traprooms", coords = {}},
        {name = "Train Terminal", coords = {}},
        {name = "Scorching Outpost", coords = {}},
        -- Add other maps here
    },
    rarelvl = {
        {name = "Trimp", coords = {}},
    }
}

-- Function to load and execute the library
function MapCoordinates.LoadLibrary()
    -- Function to add coordinates to a map
    function MapCoordinates.AddCoordinates(mapName, x, y, z)
        for _, level in pairs(MapCoordinates.Rank) do
            for _, map in ipairs(level) do
                if map.name == mapName then
                    table.insert(map.coords, {x = x, y = y, z = z})
                    return true
                end
            end
        end
        return false -- Map not found
    end

    -- Function to retrieve coordinates of a map
    function MapCoordinates.GetCoordinates(mapName)
        for _, level in pairs(MapCoordinates.Rank) do
            for _, map in ipairs(level) do
                if map.name == mapName then
                    return map.coords
                end
            end
        end
        return nil -- Map not found
    end
end

-- Return the module table
return MapCoordinates

-- Return the module table
return MapCoordinates
