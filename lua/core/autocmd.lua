local autocmd = vim.api.nvim_create_autocmd

local function augroup(name, fnc)
  fnc(vim.api.nvim_create_augroup(name, { clear = true }))
end

--
-- augroup("AutoStartNvimTree", function(group)
--   autocmd("VimEnter", {
--     group = group,
--     callback = function()
--       vim.cmd([[NvimTreeToggle]])
--       if vim.bo.filetype == "NvimTree" then
--         vim.wo.statuscolumn = ""
--       end
--       vim.cmd([[wincmd l]])
--     end,
--   })
-- end)

augroup("AutoStartNvimTreeUser", function(group)
  autocmd({ "User" }, {
    group = group,
    pattern = { "PersistenceLoadPost" },
    callback = function()
      if vim.bo.filetype ~= "gitcommit" then
        vim.cmd([[NvimTreeOpen]])
        vim.wo.statuscolumn = ""
        vim.cmd([[:setlocal fillchars+=vert:╎]]) --▏│▕
        vim.cmd([[wincmd l]])
        if vim.bo.filetype == "alpha" then
          vim.cmd([[:AlphaRedraw]])
        end
      end
    end,
  })
end)

augroup("AutoStartNvimTree", function(group)
  autocmd({ "VimEnter", "TabNewEntered" }, {
    group = group,
    callback = function()
      if vim.bo.filetype ~= "gitcommit" then
        vim.cmd([[NvimTreeOpen]])
        vim.wo.statuscolumn = ""
        vim.cmd([[:setlocal fillchars+=vert:╎]]) --▏│▕
        vim.cmd([[wincmd l]])
        if vim.bo.filetype == "alpha" then
          vim.cmd([[:AlphaRedraw]])
        end
      end
    end,
  })
end)

augroup("NvimTreeStatusColumn", function(group)
  autocmd("BufEnter", {
    group = group,
    callback = function()
      if vim.bo.filetype == "NvimTree" then
        vim.wo.statuscolumn = ""
        vim.cmd([[:setlocal fillchars+=vert:╎]]) --▏│▕
      end
    end,
  })
end)
