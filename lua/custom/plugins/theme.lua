return {
  {
    'rose-pine/neovim',
    name = 'rose-pine',
    priority = 1000, -- Make sure to load this before all the other start plugins.
    config = function()
      ---@diagnostic disable-next-line: missing-fields
      require('rose-pine').setup {
        variant = 'main',
        dim_inactive_windows = true,
        styles = {
          transparency = false,
          bold = true,
          italic = false,
        },
      }
      vim.cmd 'colorscheme rose-pine-main'
    end,
  },
  -- {
  --   'rebelot/kanagawa.nvim',
  --   config = function()
  --     vim.cmd 'colorscheme kanagawa'
  --   end,
  -- },
}
