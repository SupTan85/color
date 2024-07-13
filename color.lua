--[[

    |   █▀▀ █▀█ █░░ █▀█ █▀█   █░░ █ █▄▄ █▀█ ▄▀█ █▀█ █▄█
    |   █▄▄ █▄█ █▄▄ █▄█ █▀▄   █▄▄ █ █▄█ █▀▄ █▀█ █▀▄ ░█░
    ||  Module version: v1.3.0
    firework | user interface on command prompt or terminal
    >> SupTan!
]]

local color = {_VERSION = "1.3.0"}
local STYLE = {
    RESET = "\27[0m",
    BOLD = "\27[1m",
    ITALIC = "\27[3m",
    UNDERLINE = "\27[4m",
    STRIKETHROUGH = "\27[9m"
}

local COLORS = {
    RED = "\27[31m",
    GREEN = "\27[32m",
    YELLOW = "\27[33m",
    BLUE = "\27[34m",
    MAGENTA = "\27[35m",
    CYAN = "\27[36m",
    WHITE = "\27[37m"
}

local BG_COLORS = {
    BLACK = "\27[40m",
    RED = "\27[41m",
    GREEN = "\27[42m",
    YELLOW = "\27[43m",
    BLUE = "\27[44m",
    MAGENTA = "\27[45m",
    CYAN = "\27[46m",
    WHITE = "\27[47m"
}

-- basic functions
function color.setcolor3(R, G, B)
    return ("\27[38;2;%s%s%sm"):format(R, (G and ";"..G) or "", (B and ";"..B) or "")
end

function color.backgroundcolor3(R, G, B)
    return ("\27[48;2;%s%s%sm"):format(R, (G and ";"..G) or "", (B and ";"..B) or "")
end

color.color, color.background, color.style = COLORS, BG_COLORS, STYLE
function color.applycolor3(text, R, G, B)
    return color.setcolor3(R, G, B)..text..STYLE.RESET
end

function color.applybackground3(text, R, G, B)
    return color.backgroundcolor3(R, G, B)..text..STYLE.RESET
end

function color.applyColor(text, color)
    return COLORS[(color):upper()]..text..STYLE.RESET
end

function color.applyBackground(text, color)
    return BG_COLORS[(color):upper()]..text..STYLE.RESET
end

function color.bold(text)
    return STYLE.BOLD..text..STYLE.RESET
end

function color.italic(text)
    return STYLE.ITALIC..text..STYLE.RESET
end

function color.underline(text)
    return STYLE.UNDERLINE..text..STYLE.RESET
end

function color.strikethrough(text)
    return STYLE.STRIKETHROUGH..text..STYLE.RESET
end

return color