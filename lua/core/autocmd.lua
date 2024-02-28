local autocmd = vim.api.nvim_create_autocmd

local function augroup(name, fnc)
    fnc(vim.api.nvim_create_augroup(name, { clear = true }))
end

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
