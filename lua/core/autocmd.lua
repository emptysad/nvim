local autocmd = vim.api.nvim_create_autocmd

local function augroup(name, fnc)
    fnc(vim.api.nvim_create_augroup(name, { clear = true }))
end

augroup("AlphaHighlightning", function(group)
    autocmd("VimEnter", {
        group = group,
        callback = function()
            vim.cmd[[highlight Startlogo1    guifg='#ffc800']]
            vim.cmd[[highlight Startlogo2    guifg='#ffaa20']]
            vim.cmd[[highlight Startlogo3    guifg='#fe8c34']]
            vim.cmd[[highlight Startlogo4    guifg='#f37143']]
            vim.cmd[[highlight Startlogo5    guifg='#e3584f']]
            vim.cmd[[highlight Startlogo6    guifg='#ce4357']]
            vim.cmd[[highlight Startlogo7    guifg='#b4335d']]
            vim.cmd[[highlight Startlogo8    guifg='#98285e']]
            vim.cmd[[highlight Startlogo9    guifg='#79215c']]
            vim.cmd[[highlight Startlogo10   guifg='#5b1c55']]
            vim.cmd[[highlight Startlogo11   guifg='#3d174a']]
            vim.cmd[[highlight Startlogo12   guifg='#80308d']]
        end
    })
end)

--
-- augroup("AutoStartNvimTree", function(group)
--     autocmd("VimEnter", {
--         group = group,
--         callback = function()
--             vim.cmd [[NvimTreeToggle]]
--             if vim.bo.filetype == 'NvimTree' then
--                 vim.wo.statuscolumn = ""
--             end
--             vim.cmd [[wincmd l]]
--         end
--     })
-- end)

augroup("NvimTreeStatusColumn", function(group)
    autocmd("BufEnter", {
        group = group,
        callback = function()
            if vim.bo.filetype == 'NvimTree' then
                vim.wo.statuscolumn = ""
            end
        end
    })
end)
