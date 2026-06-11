return {
  vim.pack.add ( { "https://github.com/ellisonleao/gruvbox.nvim" } );

  require ("gruvbox").setup {
    styles = {
      comments = { italic = false }, -- Disable italics in comments
    },
  },

  vim.cmd.colorscheme ("gruvbox")
}
