return {
  {
    'catppuccin/nvim',
    name = 'catppuccin',
    priority = 1000,
    opts = {
      flavour = 'auto',
      background = {
        light = 'latte',
        dark = 'mocha',
      },
    },
    config = function(_, opts)
      require('catppuccin').setup(opts)
      -- TODO: move these lines somewhere else
      vim.cmd.colorscheme 'catppuccin'
      vim.o.termguicolors = true
      vim.o.background = 'dark'
    end,
  },
  {
    'maxmx03/solarized.nvim',
    lazy = false,
    priority = 1000,
    ---@type solarized.config
    opts = {},
    -- config = function(_, opts)
    --   vim.o.background = 'light'
    --   require('solarized').setup(opts)
    --   vim.cmd.colorscheme 'solarized'
    -- end,
  },
  'shaunsingh/nord.nvim',
}
