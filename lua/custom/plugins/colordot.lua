-- Enable 24-bit RGB true color in the terminal
vim.opt.termguicolors = true
--[[
-- setup colorizer virtualtext mode
require ("colorizer").setup (
  {
    filetypes = { "*" },
    user_default_options = {
      mode = "virtualtext",
      RGB = true,
      RRGGBB = true,
      names = false,
      rgb_fn = true,
      hsl_fn = true,
      css = true,
    },
  }
);
--]]
-- force background to be transparent
-- strip away background color from plugin's groups
--[[
vim.api.nvim_create_autocmd (
  { "ColorScheme", "BufEnter" }
  , {
    callback = function ()
    -- get all active colorizer highlight group
      for _, name in ipairs (vim.fn.getcompletion ("Colorizer", "highlight")) do
        -- force the background to inherit normal text background
        vim.api.nvim_set_hl (0, name, { bg = "NONE", ctermbg = "NONE" })
      end
    end
  }
);
--]]

-- add the package
-- vim.pack.add ( { "https://github.com/SayanShankhari/colordot.nvim" } );

--[[
-- Configure the plugin to match VS Code virtual text style
require ("nvim-highlight-colors").setup (
  {
    render = 'virtual_text',
    virtual_text_icon = '■',
    enable_named_colors = true,
    enable_tailwind = true,
  }
)
--]]




-- configure locally
--[[
vim.pack.add (
  {
    {
      -- src = vim.fn.getcwd() .. "/lua/custom/plugins/scotopia/",
      -- src = "file:///home/sayan/Projects/scotopia.nvim",
      -- uri = "file:///home/sayan/Projects/scotopia.nvim",
      -- path = vim.uv.cwd() .. "/../scopia.nvim",
      src = "file://" .. vim.uv.cwd() .. "/../scotopia.nvim",
      name = "scotopia",
    }
  }
);
--]]

-- LOCAL DEPLOYMENT:-
-- 2.1. using runtime path to run locally
-- attach directly to runtime path
vim.opt.rtp:append ("/home/sayan/Projects/colordot.nvim")

--[[
require ("colordot").setup (
  -- config_options:
  {
    styles = {
      comments = { italic = false }, -- Disable italics in comments
    }
  }
  -- color_specs:
  -- nil
);
--]]
-- `load` directly without any configuration
require ("colordot").setup();
