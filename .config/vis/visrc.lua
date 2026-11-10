-- load standard vis module, providing parts of the Lua API
require('vis')

vis.events.subscribe(vis.events.INIT, function()
	-- Your global configuration options
    vis:command('set theme gruvbox-light')
end)

vis.events.subscribe(vis.events.WIN_OPEN, function(win) -- luacheck: no unused args
	-- Your per window configuration options e.g.
	-- vis:command('set number')
	vis:command('set relativenumber')
    vis:command('set numberwidth 3')
	vis:command('set showeof off')
    vis:command('set expandtab on')
    vis:command('set tabwidth 4')

    local name = win.file.name or ""
    local filename = (win.file.name or ""):gsub("\\", "/"):match("([^/]+)$")

    if name:match("missa.tex", 1, true) then
        win:map(vis.modes.NORMAL, " c", ":!make -B >/tmp/make.log 2>&1 &<Enter>")
        win:map(vis.modes.NORMAL, " o", ":!zathura out/missa.pdf >/dev/null 2>&1 &<Enter>")
    end
    if name:match("%.ly$") then
        win:map(vis.modes.NORMAL, " c", ":!lilypond --output /tmp/lilypond-" .. filename:gsub("%.[^%.]+$", "") .. " " .. name .. "")
        win:map(vis.modes.NORMAL, " o", ":!zathura /tmp/lilypond-" .. filename:gsub("%.[^%.]+$", "") .. ".pdf >/dev/null 2>&1 &")
    end
end)

-- plugins

