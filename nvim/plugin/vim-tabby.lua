-- vim.api.nvim_create_autocmd({"BufEnter", "BufWinEnter"}, {
--     pattern = "*",
--     callback = function()
-- 		print("this should be called")
--         vim.keymap.set("n", "<Tab>", vim.g.tabby_inline_completion_keybinding_accept, { silent = false })
--     end
-- })
