return {
	"nvim-telescope/telescope.nvim",
	branch = "0.1.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		local telescope = require("telescope")
		local actions = require("telescope.actions")

		telescope.setup({
			defaults = {
				path_display = { "truncate " },
				mappings = {
					i = {
						-- ["<C-k>"] = actions.move_selection_previous, -- move to prev result
						-- ["<C-j>"] = actions.move_selection_next, -- move to next result
						["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
					},
				},
			},
		})

		telescope.load_extension("fzf")

		-- set keymaps
		local keymap = vim.keymap -- for conciseness

		-- keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Fuzzy find files in cwd" })
		-- keymap.set("n", "<leader>fr", "<cmd>Telescope oldfiles<cr>", { desc = "Fuzzy find recent files" })
		-- keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>", { desc = "Find string in cwd" })
		-- keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>", { desc = "Find string under cursor in cwd" })

		keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Find file" })
		keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", { desc = "Grep" })
		keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>", { desc = "Find buffer" })
		keymap.set(
			"n",
			"<leader>fC",
			"<cmd>Telescope current_buffer_fuzzy_find<cr>",
			{ desc = "Find in current buffer" }
		)
		keymap.set("n", "<leader>fm", "<cmd>Telescope marks<cr>", { desc = "Find mark" })
		keymap.set("n", "<leader>fr", "<cmd>Telescope lsp_references<cr>", { desc = "Find references (LSP)" })
		keymap.set("n", "<leader>fs", "<cmd>Telescope lsp_document_symbols<cr>", { desc = "Find symbols (LSP)" })
		keymap.set("n", "<leader>fc", "<cmd>Telescope lsp_incoming_calls<cr>", { desc = "Find incoming calls (LSP)" })
		keymap.set("n", "<leader>fo", "<cmd>Telescope lsp_outgoing_calls<cr>", { desc = "Find outgoing calls (LSP)" })
		keymap.set("n", "<leader>fi", "<cmd>Telescope lsp_implementations<cr>", { desc = "Find implementations (LSP)" })
		keymap.set("n", "<leader>fx", "<cmd>Telescope diagnostics bufnr=0<cr>", { desc = "Find errors (LSP)" })
		keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>", { desc = "Find in help docs" })
		keymap.set("n", "<leader>fM", "<cmd>Telescope man_pages<cr>", { desc = "Find in man pages" })
		keymap.set("n", "<leader>fp", "<cmd>Telescope resume<cr>", { desc = "Open the previous picker" })
	end,
}
