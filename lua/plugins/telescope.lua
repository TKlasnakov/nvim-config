return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.8",
		dependencies = {
			"nvim-lua/plenary.nvim"
		},
		config = function()
			local telescope = require("telescope")
			local builtin = require("telescope.builtin")

			telescope.setup({
				defaults = {
					sorting_strategy = "ascending",
					layout_strategy = "vertical",
					layout_config = {
						prompt_position = "top",
						mirror = true,
						vertical = {
							width = 0.9,
							height = 0.9,
						},
						horizontal = {
							width = 0.9,
							height = 0.9,
						},
					},
				},
			})

			vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Telescope find files" })
			vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Telescope live grep" })
			vim.keymap.set("n", "<leader><tab>", builtin.buffers, { desc = "Telescope buffers" })
			vim.keymap.set('n', '<leader>fe', '', {
				noremap = true,
				callback = function()
					builtin.diagnostics({ severity = vim.diagnostic.severity.ERROR })
				end
			})
			vim.keymap.set('n', '<leader>fr',	builtin.lsp_references, { desc = "Telescope LSP references" })
		end,
	},
	{
		"nvim-telescope/telescope-ui-select.nvim",
		config = function()
			require("telescope").setup({
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({}),
					},
				},
			})
			require("telescope").load_extension("ui-select")
		end,
	},
}
