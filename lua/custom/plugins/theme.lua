local build_github_url = function (username, repository) return "https://github.com/" .. username ..  "/" .. repository end;

--[[
-- Gruvbox theme
vim.pack.add ( { "https://github.com/ellisonleao/gruvbox.nvim" } );

require ("gruvbox").setup {
  styles = {
    comments = { italic = false }, -- Disable italics in comments
  }
}

vim.cmd.colorscheme ("gruvbox")
--]]

vim.pack.add (
  {
    -- "https://github.com/SayanShankhari/scotopia.nvim"
    {
      src = build_github_url ("SayanShankhari", "scotopia.nvim"),
      name = "scotopia",
    },
  }
);

require ("scotopia").setup (
  -- config_options:
  {
    styles = {
      comments = { italic = false }, -- Disable italics in comments
    }
  },
  -- color_specs:
  {
    ui = {
      bg     = "#0F1115", -- Dark Steel/Abyss Canvas
      bg_dim = "#14171E", -- Eerie Black Panel
    },
  }
);

-- `load` directly without any configuration
vim.cmd.colorscheme ("scotopia");

