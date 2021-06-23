while true do
    if disk.isPresent() then
        fs.copy('./data.lua', 'disk/data.lua')
    end
end