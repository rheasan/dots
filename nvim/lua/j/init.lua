require("j.remap")
require("j.set")
require("j.packer")
require("j.catppuccin-themes.amoled")
local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

--for catppuccin-amoled
--https://github.com/nullchilly/nvim/blob/nvim/lua/config/catppuccin.lua
--require("j.catppuccin-themes.amoled")
