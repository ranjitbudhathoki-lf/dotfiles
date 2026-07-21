-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
vim.keymap.set("n", "<leader>gd", "<cmd>DiffviewOpen<cr>", { desc = "Diff View" })

vim.keymap.set("n", "<leader>fF", function()
  Snacks.picker.files({ hidden = true, no_ignore = true, follow = true })
end, { desc = "Find Files (hidden)" })
