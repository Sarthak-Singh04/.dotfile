-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
--
local discipline = require("config.cowboy.discipline")

discipline.cowboy()

local keymaps = vim.keymap
local opts = { noremap = true, silent = true }

-- Undo key
keymaps.set("n", "<C-z>", "u", opts)
keymaps.set("i", "<C-z>", "<C-o>u", opts)

-- Increment/decrement
keymaps.set("n", "+", "<C-a>")
keymaps.set("n", "-", "<C-x>")

-- Delete a word backwards
keymaps.set("n", "dw", "vb_d")

-- Select all
keymaps.set("n", "<C-a>", "gg<S-v>G")

-- Jumplist
keymaps.set("n", "<C-m>", "<C-i>", opts)

-- Tab Mapping
keymaps.set("n", "te", ":tabedit<Return>", opts)
keymaps.set("n", "<tab>", ":tabnext<Return>", opts)
keymaps.set("n", "<s-tab>", ":tabprev<Return>", opts)

-- Split window
keymaps.set("n", "<leader>h", ":split<Return>", opts)
keymaps.set("n", "<leader>v", ":vsplit<Return>", opts)

-- Close current split
keymaps.set("n", "<leader>c", "<C-w>c", opts)

-- Close horizontal split
keymaps.set("n", "<leader>ch", function()
  local layout = vim.fn.winlayout()
  if layout[1] == "row" then
    vim.cmd("wincmd c")
  end
end, opts)

-- Close vertical split
keymaps.set("n", "<leader>cv", function()
  local layout = vim.fn.winlayout()
  if layout[1] == "col" then
    vim.cmd("wincmd c")
  end
end, opts)

-- Move between split windows
keymaps.set("n", "<A-Left>", "<C-w>h", opts)
keymaps.set("n", "<A-Up>", "<C-w>k", opts)
keymaps.set("n", "<A-Down>", "<C-w>j", opts)
keymaps.set("n", "<A-Right>", "<C-w>l", opts)

-- Resize window
keymaps.set("n", "<C-w><left>", "<C-w>>")
keymaps.set("n", "<C-w><right>", "<C-w><")
keymaps.set("n", "<C-w><up>", "<C-w>+")
keymaps.set("n", "<C-w><down>", "<C-w>-")

-- Open terminal in horizontal split
keymaps.set("n", "<leader>th", ":split | terminal<Return>", opts)
-- Open terminal in vertical split
keymaps.set("n", "<leader>tv", ":vsplit | terminal<Return>", opts)

-- Close terminal
keymaps.set("t", "<Esc>", [[<C-\><C-n>:q<CR>]], opts)

-- Diagnostic
keymaps.set("n", "<C-j>", function()
  vim.diagnostic.goto_next()
end, opts)
