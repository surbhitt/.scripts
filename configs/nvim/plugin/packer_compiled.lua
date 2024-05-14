-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/subzero/.cache/nvim/packer_hererocks/2.1.1692716794/share/lua/5.1/?.lua;/home/subzero/.cache/nvim/packer_hererocks/2.1.1692716794/share/lua/5.1/?/init.lua;/home/subzero/.cache/nvim/packer_hererocks/2.1.1692716794/lib/luarocks/rocks-5.1/?.lua;/home/subzero/.cache/nvim/packer_hererocks/2.1.1692716794/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/subzero/.cache/nvim/packer_hererocks/2.1.1692716794/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  LuaSnip = {
    loaded = true,
    path = "/home/subzero/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/subzero/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["github-nvim-theme"] = {
    loaded = true,
    path = "/home/subzero/.local/share/nvim/site/pack/packer/start/github-nvim-theme",
    url = "https://github.com/projekt0n/github-nvim-theme"
  },
  ["lightline.vim"] = {
    config = { "\27LJ\2\nm\0\1\4\0\b\0\0166\1\0\0009\1\1\0019\1\2\1'\3\3\0B\1\2\2\a\1\4\0X\1\3�'\1\5\0L\1\2\0X\1\5�6\1\0\0009\1\1\0019\1\6\1'\3\a\0D\1\2\0K\0\1\0\6%\vgetreg\14[No Name]\5\b%:t\vexpand\afn\bvim�\3\1\0\5\0\22\0#6\0\0\0009\0\1\0+\1\1\0=\1\2\0006\0\0\0009\0\3\0005\1\r\0005\2\a\0004\3\3\0005\4\5\0>\4\1\0035\4\6\0>\4\2\3=\3\b\0024\3\4\0005\4\t\0>\4\1\0035\4\n\0>\4\2\0035\4\v\0>\4\3\3=\3\f\2=\2\14\0015\2\15\0=\2\16\1=\1\4\0003\0\17\0007\0\18\0006\0\0\0009\0\19\0009\0\20\0'\2\21\0+\3\2\0B\0\3\1K\0\1\0h\t\t\t\tfunction! g:LightlineFilename()\n\t\t\t\t\treturn v:lua.LightlineFilenameInLua()\n\t\t\t\tendfunction\n\t\t\t\t\14nvim_exec\bapi\27LightlineFilenameInLua\0\23component_function\1\0\1\rfilename\22LightlineFilename\vactive\1\0\0\nright\1\2\0\0\rfiletype\1\2\0\0\fpercent\1\2\0\0\rlineinfo\tleft\1\0\0\1\4\0\0\rreadonly\rfilename\rmodified\1\3\0\0\tmode\npaste\14lightline\6g\rshowmode\6o\bvim\0" },
    loaded = true,
    path = "/home/subzero/.local/share/nvim/site/pack/packer/start/lightline.vim",
    url = "https://github.com/itchyny/lightline.vim"
  },
  ["lsp-zero.nvim"] = {
    loaded = true,
    path = "/home/subzero/.local/share/nvim/site/pack/packer/start/lsp-zero.nvim",
    url = "https://github.com/VonHeikemen/lsp-zero.nvim"
  },
  ["mason-lspconfig.nvim"] = {
    loaded = true,
    path = "/home/subzero/.local/share/nvim/site/pack/packer/start/mason-lspconfig.nvim",
    url = "https://github.com/williamboman/mason-lspconfig.nvim"
  },
  ["mason.nvim"] = {
    loaded = true,
    path = "/home/subzero/.local/share/nvim/site/pack/packer/start/mason.nvim",
    url = "https://github.com/williamboman/mason.nvim"
  },
  ["material.nvim"] = {
    loaded = true,
    path = "/home/subzero/.local/share/nvim/site/pack/packer/start/material.nvim",
    url = "https://github.com/marko-cerovac/material.nvim"
  },
  moonfly = {
    config = { "\27LJ\2\n7\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0\24colorscheme moonfly\bcmd\bvim\0" },
    loaded = true,
    path = "/home/subzero/.local/share/nvim/site/pack/packer/start/moonfly",
    url = "https://github.com/bluz71/vim-moonfly-colors"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "/home/subzero/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/subzero/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/home/subzero/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/subzero/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/subzero/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["prettier.nvim"] = {
    loaded = true,
    path = "/home/subzero/.local/share/nvim/site/pack/packer/start/prettier.nvim",
    url = "https://github.com/MunifTanjim/prettier.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/subzero/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["trouble.nvim"] = {
    config = { "\27LJ\2\nC\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\nicons\1\nsetup\ftrouble\frequire\0" },
    loaded = true,
    path = "/home/subzero/.local/share/nvim/site/pack/packer/start/trouble.nvim",
    url = "https://github.com/folke/trouble.nvim"
  },
  undotree = {
    loaded = true,
    path = "/home/subzero/.local/share/nvim/site/pack/packer/start/undotree",
    url = "https://github.com/mbbill/undotree"
  },
  ["vim-be-good"] = {
    loaded = true,
    path = "/home/subzero/.local/share/nvim/site/pack/packer/start/vim-be-good",
    url = "https://github.com/ThePrimeagen/vim-be-good"
  },
  ["vim-commentary"] = {
    loaded = true,
    path = "/home/subzero/.local/share/nvim/site/pack/packer/start/vim-commentary",
    url = "https://github.com/tpope/vim-commentary"
  },
  ["vim-visual-multi"] = {
    loaded = true,
    path = "/home/subzero/.local/share/nvim/site/pack/packer/start/vim-visual-multi",
    url = "https://github.com/mg979/vim-visual-multi"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: moonfly
time([[Config for moonfly]], true)
try_loadstring("\27LJ\2\n7\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0\24colorscheme moonfly\bcmd\bvim\0", "config", "moonfly")
time([[Config for moonfly]], false)
-- Config for: trouble.nvim
time([[Config for trouble.nvim]], true)
try_loadstring("\27LJ\2\nC\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\nicons\1\nsetup\ftrouble\frequire\0", "config", "trouble.nvim")
time([[Config for trouble.nvim]], false)
-- Config for: lightline.vim
time([[Config for lightline.vim]], true)
try_loadstring("\27LJ\2\nm\0\1\4\0\b\0\0166\1\0\0009\1\1\0019\1\2\1'\3\3\0B\1\2\2\a\1\4\0X\1\3�'\1\5\0L\1\2\0X\1\5�6\1\0\0009\1\1\0019\1\6\1'\3\a\0D\1\2\0K\0\1\0\6%\vgetreg\14[No Name]\5\b%:t\vexpand\afn\bvim�\3\1\0\5\0\22\0#6\0\0\0009\0\1\0+\1\1\0=\1\2\0006\0\0\0009\0\3\0005\1\r\0005\2\a\0004\3\3\0005\4\5\0>\4\1\0035\4\6\0>\4\2\3=\3\b\0024\3\4\0005\4\t\0>\4\1\0035\4\n\0>\4\2\0035\4\v\0>\4\3\3=\3\f\2=\2\14\0015\2\15\0=\2\16\1=\1\4\0003\0\17\0007\0\18\0006\0\0\0009\0\19\0009\0\20\0'\2\21\0+\3\2\0B\0\3\1K\0\1\0h\t\t\t\tfunction! g:LightlineFilename()\n\t\t\t\t\treturn v:lua.LightlineFilenameInLua()\n\t\t\t\tendfunction\n\t\t\t\t\14nvim_exec\bapi\27LightlineFilenameInLua\0\23component_function\1\0\1\rfilename\22LightlineFilename\vactive\1\0\0\nright\1\2\0\0\rfiletype\1\2\0\0\fpercent\1\2\0\0\rlineinfo\tleft\1\0\0\1\4\0\0\rreadonly\rfilename\rmodified\1\3\0\0\tmode\npaste\14lightline\6g\rshowmode\6o\bvim\0", "config", "lightline.vim")
time([[Config for lightline.vim]], false)

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
