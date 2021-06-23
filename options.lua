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
    print('1: Eine neue Kreditkarte erstellen')
    print('2: Abheben')
    print('3: Einzahlen')
    io.write('Was möchtest du machen?: \n')
    local input = io.read()
    if input == '1' then
        shell.run('creditcard.lua')
    elseif input == '2' then
        shell.run('abheben.lua')
    elseif input == '2' then
        shell.run('einzahlen.lua')
    end
end


main()
os.reboot()
