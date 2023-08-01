local locations = {
    {name = "Construct", coords = {{10, 29, 23}, {53, 12, 63}, {40, 15, 37}}},
    {name = "Indoor Courtyard", coords = {}},
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
    {name = "Traprooms", coords = {}},
    {name = "Train Terminal", coords = {}},
    {name = "Scorching Outpost", coords = {}},
    {name = "Trimp", coords = {}},
    
}

-- Function to get count and all coordinates for a given location
local function getAllCoordinates(location)
    local count = #location.coords
    return count, location.coords
end

-- Function to get coordinates for a given map name
local function getCordinates(mapname)
    for _, location in ipairs(locations) do
        if location.name == mapname then
            local locationCount, locationCoordinates = getAllCoordinates(location)
            return { numofcoords = locationCount, coords = locationCoordinates }
        end
    end
    return { numofcoords = 0, coords = {} }
end

-- Function to format coordinates as a string
local function formatCoordinates(coordsSet)
    return "{" .. coordsSet[1] .. "," .. coordsSet[2] .. "," .. coordsSet[3] .. "}"
end

-- Function to pick a specific coordinate by index
local function pickCoordinateByIndex(coordinates, index)
    if index >= 1 and index <= #coordinates then
        return coordinates[index]
    end
end
