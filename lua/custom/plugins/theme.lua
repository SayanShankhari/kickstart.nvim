-- local utils = require ("utils");

-- local build_github_url = function (repo) return "https://github.com/" .. repo end;

--[[
-- Gruvbox theme
-- vim.pack.add ( { "https://github.com/ellisonleao/gruvbox.nvim" } );
vim.pack.add ( { build_github_url ("ellisonleao/gruvbox.nvim") } );

require ("gruvbox").setup {
  styles = {
    comments = { italic = false }, -- Disable italics in comments
  }
}

vim.cmd.colorscheme ("gruvbox")
--]]

--[[
vim.pack.add (
  {
    -- "https://github.com/SayanShankhari/scotopia.nvim"
    {
      src = build_github_url ("SayanShankhari/scotopia.nvim")
      version = master
      name = "scotopia"
    }
  }
);
--]]

-- vim.opt.termguicolors = true

-- Scotopia (low light, low eye strain) theme:-
-- ***** ***** ***** ***** ***** ***** ***** *****
-- using builtin vim.pack
-- vim.pack uses only clonable remote links like github
--[[
vim.pack.add (
  {
    {
      src = "file:///home/sayan/Projects/colorlib",
      name = "colorlib",
    },
    {
      -- src = vim.fn.getcwd() .. "/lua/custom/plugins/scotopia/",
      -- src = "file:///home/sayan/Projects/scotopia.nvim",
      -- uri = "file:///home/sayan/Projects/scotopia.nvim",
      -- path = vim.uv.cwd() .. "/../scopia.nvim",
      src = "file://" .. vim.uv.cwd() .. "/../scotopia.nvim",
      name = "scotopia",
    },
  }
);
--]]

-- LOCAL DEPLOYMENT:-
-- 2.1. using runtime path to run locally
-- attach directly to runtime path

local colorlib_path = os.getenv ("COLORLIB_PATH");
if not colorlib_path then error ("COLORLIB_PATH environment path variable not set", 2) end;
local scotopia_path = os.getenv ("SCOTOPIA_PATH");
if not scotopia_path then error ("SCOTOPIA_PATH environment path variable not set", 2) end;

vim.opt.rtp:append (colorlib_path);
vim.opt.rtp:append (scotopia_path);

require ("scotopia").setup (
  -- config_options:
  {
    styles = {
      comments = { italic = false }, -- Disable italics in comments
    }
  }
  -- color_specs:
  -- nil
);

-- `load` directly without any configuration
vim.cmd.colorscheme ("scotopia");



--[[
-- 2.2. leverage lazy configuration to run locally
return {
  -- dir = vim.fn.stdpath('config') .. '/lua/custom/plugins/mytheme',
  dir = "../scotopia/",
  lazy = false,
  priority = 1000,
  config = function()
    -- require ("scotopia").load() --infinite loop
    -- rather invoke the function
    -- *loads* the above function from "lua/colors/scotopia.lua" file
    -- vim.cmd.colorscheme ("scotopia");
    require ("scotopia").setup (
      {
        transparent_background = true,
        terminal_colors = true,
      }
    );
  end,
}
--]]
