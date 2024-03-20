-- Colors
vim.cmd([[highlight Startlogo1    guifg='#ffc800']])
vim.cmd([[highlight Startlogo2    guifg='#ffaa20']])
vim.cmd([[highlight Startlogo3    guifg='#fe8c34']])
vim.cmd([[highlight Startlogo4    guifg='#f37143']])
vim.cmd([[highlight Startlogo5    guifg='#e3584f']])
vim.cmd([[highlight Startlogo6    guifg='#ce4357']])
vim.cmd([[highlight Startlogo7    guifg='#b4335d']])
vim.cmd([[highlight Startlogo8    guifg='#98285e']])
vim.cmd([[highlight Startlogo9    guifg='#79215c']])
vim.cmd([[highlight Startlogo10   guifg='#5b1c55']])
vim.cmd([[highlight Startlogo11   guifg='#3d174a']])
vim.cmd([[highlight Startlogo12   guifg='#80308d']])

-- Mappings
vim.keymap.set('n', '<Home>', ':Alpha<CR>', {})

local coolLines = {
    [[     ███    ██████████                            █████                █████████                █████    ███    ]],
    [[    ██░    ░░███░░░░░█                           ░░███                ███░░░░░███              ░░███    ░░░██   ]],
    [[   ██       ░███  █ ░  █████████████   ████████  ███████   █████ ████░███    ░░░   ██████    ███████      ░░██  ]],
    [[ ███        ░██████   ░░███░░███░░███ ░░███░░███░░░███░   ░░███ ░███ ░░█████████  ░░░░░███  ███░░███       ░░███]],
    [[░░░██       ░███░░█    ░███ ░███ ░███  ░███ ░███  ░███     ░███ ░███  ░░░░░░░░███  ███████ ░███ ░███        ██░ ]],
    [[  ░░██      ░███ ░   █ ░███ ░███ ░███  ░███ ░███  ░███ ███ ░███ ░███  ███    ░███ ███░░███ ░███ ░███       ██   ]],
    [[   ░░███    ██████████ █████░███ █████ ░███████   ░░█████  ░░███████ ░░█████████ ░░████████░░████████    ███    ]],
    [[    ░░░    ░░░░░░░░░░ ░░░░░ ░░░ ░░░░░  ░███░░░     ░░░░░    ░░░░░███  ░░░░░░░░░   ░░░░░░░░  ░░░░░░░░    ░░░     ]],
    [[                                       ░███                 ███ ░███                                            ]],
    [[                                        █████               ░░██████                                            ]],
    [[                                        ░░░░░                 ░░░░░░                                            ]],
    [[                                                                                                                ]],
    [[                                                                                                                ]],
}

local function lineColor(lines, popStart, popEnd)
    local out = {}
    for i, line in ipairs(lines) do
        local hi = "StartLogo" .. i
        local gradient = (popEnd - popStart) * 2
        local mod = i % gradient
        if mod == 0 then
            hi = "StartLogo" .. 2
        elseif mod <= popEnd then
            hi = "StartLogo" .. mod
        else
            hi = "StartLogo" .. popEnd - (mod - popEnd)
        end
        table.insert(out, { hi = hi, line = line })
    end
    return out
end

local headers = {
    lineColor(coolLines, 1, 11),
}

local function header_chars()
    math.randomseed(os.time())
    return headers[math.random(#headers)]
end

-- Map over the headers, setting a different color for each line.
-- This is done by setting the Highligh to StartLogoN, where N is the row index.
-- Define StartLogo1..StartLogoN to get a nice gradient.
local function header_color()
    local lines = {}
    for _, lineConfig in pairs(header_chars()) do
        local hi = lineConfig.hi
        local line_chars = lineConfig.line
        local line = {
            type = "text",
            val = line_chars,
            opts = {
                hl = hi,
                shrink_margin = false,
                position = "center",
            },
        }
        table.insert(lines, line)
    end

    local output = {
        type = "group",
        val = lines,
        opts = { position = "center", },
    }

    return output
end

local function configure()
    local theme = require("alpha.themes.theta")
    local themeconfig = theme.config
    local dashboard = require("alpha.themes.dashboard")
    local buttons = {
        type = "group",
        val = {
            { type = "text",    val = "Quick links", opts = { hl = "StartLogo5", position = "center" } },
            { type = "padding", val = 1 },
            dashboard.button("e", "  New file", "<cmd>ene<CR>"),
            dashboard.button("SPC ee", "󱏒  Open Nvim-tree"),
            dashboard.button("SPC ff", "  Find file"),
            dashboard.button("SPC fg", "  Find text"),
            dashboard.button("u", "󱐥  Update plugins", "<cmd>Lazy sync<CR>"),
            dashboard.button("t", "  Install language tools", "<cmd>Mason<CR>"),
            dashboard.button("q", "󰩈  Quit", "<cmd>qa<CR>"),
        },
        position = "center",
    }

    themeconfig.layout[4].val[1].opts.hl = "StartLogo1"
    themeconfig.layout[2] = header_color()
    themeconfig.layout[6] = buttons

    return themeconfig
end

return {
    'goolord/alpha-nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
        require 'alpha'.setup(configure())
    end
};
