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
        highlight_groups = {
          StatusLine = { fg = 'love', bg = 'love', blend = 10 },
          StatusLineNC = { fg = 'subtle', bg = 'surface' },
        },
      }
      -- vim.cmd 'colorscheme rose-pine-main'
    end,
  },
  {
    'rebelot/kanagawa.nvim',
    config = function()
      require('kanagawa').setup {
        commentStyle = { italic = false },
        functionStyle = {},
        keywordStyle = { italic = false },
        statementStyle = { bold = true },
      }
      -- vim.cmd 'colorscheme kanagawa'
    end,
  },
  {
    'ramojus/mellifluous.nvim',
    config = function()
      require('mellifluous').setup {
        variant = 'kanagawa_dragon',
      }
      -- vim.cmd 'colorscheme mellifluous'
    end,
  },
  {
    'webhooked/kanso.nvim',
    lazy = false,
    priority = 1000,
    config = function()
      require('kanso').setup {
        bold = true,
        italics = false,
      }
      vim.cmd 'colorscheme kanso'
    end,
  },
}
