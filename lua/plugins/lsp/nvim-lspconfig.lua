return {
  "neovim/nvim-lspconfig",
  config = function()
    local lspconfig = require("lspconfig")
    local capabilities = require("cmp_nvim_lsp").default_capabilities()

    lspconfig.lua_ls.setup({
      capabilities = capabilities,
      settings = {
        Lua = {
          format = {
            enable = true,
            defaultConfig = {
              indent_style = "space",
              indent_size = "2",
            },
          },
          runtime = {
            -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
            version = "LuaJIT",
          },
          diagnostics = {
            -- Get the language server to recognize the `vim` global
            globals = { "vim" },
          },
          workspace = {
            -- Make the server aware of Neovim runtime files
            library = vim.api.nvim_get_runtime_file("", true),
            checkThirdParty = false,
          },
          -- Do not send telemetry data containing a randomized but unique identifier
          telemetry = {
            enable = false,
          },
        },
      },
    })
    lspconfig.html.setup({
      capabilities = capabilities,
      cmd = { "vscode-html-language-server", "--stdio" },
      filetypes = { "html", "templ" },
      single_file_support = true,
      settings = {},
      init_options = {
        provideFormatter = true,
        embeddedLanguages = { css = true, javascript = true },
        configurationSection = { "html", "css", "javascript" },
      },
    })
    lspconfig.cssls.setup({
      capabilities = capabilities,
    })
    lspconfig.eslint.setup({
      capabilities = capabilities,
    })
    lspconfig.bashls.setup({
      capabilities = capabilities,
    })
    lspconfig.tsserver.setup({
      capabilities = capabilities,
    })

    vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
    vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
    vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
    vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
    vim.keymap.set("n", "<leader>gr", vim.lsp.buf.rename, {})
  end,
}
