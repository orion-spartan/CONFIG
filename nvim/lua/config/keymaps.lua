-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.api.nvim_create_user_command("Oc", function()
  local oc_bin = vim.fn.exepath("oc")
  if oc_bin == "" then
    oc_bin = vim.fn.exepath("opencode")
  end

  if oc_bin == "" then
    vim.notify("No encontre oc ni opencode en tu PATH", vim.log.levels.ERROR)
    return
  end

  if vim.fn.winnr("$") == 1 then
    vim.cmd("botright vsplit")
  elseif vim.fn.winnr("l") ~= vim.fn.winnr() then
    vim.cmd("wincmd l")
  end

  vim.cmd("enew")
  vim.fn.termopen({ oc_bin, "." }, { cwd = vim.fn.getcwd() })
  vim.cmd("startinsert")
end, { desc = "Open oc in terminal" })

----- OBSIDIAN -----
vim.keymap.set("n", "<leader>ok", "<cmd>Obsidian check<CR>", { desc = "Obsidian Check Checkbox" })
vim.keymap.set("n", "<leader>ot", "<cmd>Obsidian template<CR>", { desc = "Insert Obsidian Template" })
vim.keymap.set("n", "<leader>oo", "<cmd>Obsidian open<CR>", { desc = "Open in Obsidian App" })
vim.keymap.set("n", "<leader>ob", "<cmd>Obsidian backlinks<CR>", { desc = "Show Obsidian Backlinks" })
vim.keymap.set("n", "<leader>ol", "<cmd>Obsidian links<CR>", { desc = "Show Obsidian Links" })
vim.keymap.set("n", "<leader>on", "<cmd>Obsidian new<CR>", { desc = "Create New Note" })
vim.keymap.set("n", "<leader>os", "<cmd>Obsidian search<CR>", { desc = "Search Obsidian" })
vim.keymap.set("n", "<leader>oq", "<cmd>Obsidian quick-switch<CR>", { desc = "Quick Switch" })
