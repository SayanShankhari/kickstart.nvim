return {
  --[[]]
  --'EdenEast/nightfox.nvim',
  --'craftzdog/solarized-osaka.nvim',
  'ellisonleao/gruvbox.nvim',
  lazy = false,
  priority = 1000,
  config = function()
    --vim.cmd.colorscheme 'nightfox'
    --vim.cmd.colorscheme 'solarized-osaka'
    vim.cmd.colorscheme 'gruvbox'
  end,
}
