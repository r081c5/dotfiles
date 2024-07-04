-- set leader key to backslash
vim.g.mapleader = "\\"

local keymap = vim.keymap -- for conciseness

---------------------
-- General Keymaps -------------------

-- keep c-v for inserting unicode characters
keymap.set("i", "<c-b>", "<c-v>")
keymap.set("n", "<leader><f2>", "<cmd>cd " .. vim.fn.stdpath("config") .. "/lua/robics/plugins<cr><cmd>e .<cr>")
if vim.fn.has("win32") == 1 then
	keymap.set("n", "<leader><f3>", "<cmd>cd " .. vim.env.HOME .. "/Documents/src<cr><cmd>e .<cr>")
	-- open file in browser
	keymap.set(
		"n",
		"<leader>ob",
		"<cmd>execute \"call jobstart(['powershell', '-Command', 'start', 'chrome', '\" .. expand('%:p') .. \"'])\"<cr>"
	)

	-- open explorer in file's dir
	keymap.set(
		"n",
		"<leader>oe",
		"<cmd>execute \"call jobstart(['powershell', '-Command', 'start', '\" .. expand('%:p:h') .. \"'])\"<cr>"
	)
else
	keymap.set("n", "<leader><f3>", "<cmd>cd " .. vim.env.HOME .. "/src<cr><cmd>e .<cr>")
	-- open file in browser
	keymap.set(
		"n",
		"<leader>ob",
		"<cmd>execute \"call jobstart(['google-chrome-stable', '\" .. expand('%:p') .. \"'])\"<cr>"
	)
end

-- cd into directory of current file
keymap.set("n", "<leader>cd", "<cmd>exec('cd ' .. expand('%:p:h'))<cr>")

-- use kq to exit insert mode
keymap.set("i", "kq", "<ESC>", { desc = "Exit insert mode with kq" })

keymap.set("n", "<leader>riq", ':let @x=@"<cr>di""xP', { desc = "Replace quotes content with yank register" })

keymap.set("n", "<leader>bg", 'i<CR>backgroundColor: "red"', { desc = "write background css" })

-- clear search highlights
--keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- delete single character without copying into register
-- keymap.set("n", "x", '"_x')

-- increment/decrement numbers
-- keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" }) -- increment
-- keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" }) -- decrement

-- window management
-- keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
-- keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
-- keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
-- keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

-- keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
-- keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
-- keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
-- keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
-- keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab

-- console.log for javascript
keymap.set("i", "<F2>", "<esc>Sconsole.log(``)<esc>hi", { desc = "insert Javascript comment" })
keymap.set("n", "<F2>", "<esc>Sconsole.log(``)<esc>hi", { desc = "insert Javascript comment" })
