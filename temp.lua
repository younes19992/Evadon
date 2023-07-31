-- Define the module table
local MapList = {}

-- Initialize the Rank table with the existing maps
MapList.Rank = {
    easylvl = {
        {name = "Construct", coords = {}},
        {name = "Indoor Courtyard", coords = {}}
    },
    normallvl = {
        {name = "Arid Ruins", coords = {}},
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

        -- Add other maps here
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
        -- Add other maps here
    }
}

-- Function to get the entire map list
function MapList.GetMapList()
    return MapList.Rank
end

-- Function to get the list of maps for a specific difficulty level
function MapList.GetMapsByDifficulty(difficulty)
    return MapList.Rank[difficulty]
end

-- Function to get the list of coordinates for a specific map
function MapList.GetCoordinatesForMap(mapName)
    for _, level in pairs(MapList.Rank) do
        for _, map in ipairs(level) do
            if map.name == mapName then
                return map.coords
            end
        end
    end
    return nil -- Map not found
end

-- Function to add coordinates to a map in the format {name = "Construct", coords = {10, 20, 30}}
-- function MapList.AddCoordinatesToMap(mapName, coords)
--     for _, level in pairs(MapList.Rank) do
--         for _, map in ipairs(level) do
--             if map.name == mapName then
--                 map.coords = coords
--                 return true
--             end
--         end
--     end
--     return false -- Map not found
-- end

-- Return the module table
return MapList
