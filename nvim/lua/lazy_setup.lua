vim.g.mapleader = " "
vim.g.maplocalleader = " "
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  { "tpope/vim-surround" },
  {
    "nvim-treesitter/nvim-treesitter",
    -- master supports nvim 0.10; the main branch needs 0.11+
    branch = "master",
    build = ":TSUpdate",
    config = function()
      require("nvim-treesitter.configs").setup({
        ensure_installed = { "verilog" },
        highlight = { enable = true },
      })
    end,
  },
  {
    "mfussenegger/nvim-lint",
    ft = { "verilog", "systemverilog" },
    config = function()
      local lint = require("lint")
      lint.linters_by_ft = {
        verilog = { "verilator" },
        systemverilog = { "verilator" },
      }
      vim.api.nvim_create_autocmd({ "BufWritePost", "BufReadPost", "InsertLeave" }, {
        group = vim.api.nvim_create_augroup("nvim-lint", { clear = true }),
        callback = function()
          lint.try_lint(nil, { ignore_errors = true })
        end,
      })
    end,
  },
})
