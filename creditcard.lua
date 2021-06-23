function startsWith(text, prefix)
    return text:find(prefix, 1, true) == 1
end

function clear()
    term.clear()
    term.setCursorPos(1,1)
    term.setCursorBlink(true)
end

function main()
    clear()
    print('Bitte lege eine leere Karte ein!')
    while true do
        os.queueEvent("randomEvent")
        os.pullEvent()
        if disk.isPresent then
            local label = disk.getLabel('top')
            if label == nil then
                label = 'Test'
            end
            if startsWith(label, 'Visa ') then
                print('Diese Karte ist beteits eine Visa Karte!')
                os.sleep(5)
                return
            end

            local id = tostring(math.random(1000, 9999))
            if disk.isPresent('top') then
                disk.setLabel('top', 'Visa Card ID:'..tostring(id))
                fs.copy('./data.lua', 'disk/data.lua')
                clear()
                print('Fertig!')
                os.sleep(5)
                return
            end
        end
    end
end


main()
os.reboot()
