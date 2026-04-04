---@type vim.lsp.Config
return {
  cmd = { 'lua-language-server' },
  root_markers = { { '.luarc.json', '.luarc.jsonc' }, '.git' },
  filetypes = { 'lua' },
  ---@type lspconfig.settings.lua_ls
  settings = {
    Lua = {
      runtime = {
        version = 'LuaJIT',
      },
      completion = {
        callSnippet = 'Replace',
      },
      -- You can toggle below to ignore Lua_LS's noisy `missing-fields` warnings
      -- diagnostics = { disable = { 'missing-fields' } },
    },
  },
}
