return {
	{
		"williamboman/mason.nvim",
		lazy = false,
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		lazy = false,
		config = function ()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"html",
					"lua_ls",
					"angularls",
					"ts_ls",
				}
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		lazy = false,
		config = function()
			local lspconfig = require("lspconfig")
			lspconfig.html.setup({})
			lspconfig.lua_ls.setup({})
			lspconfig.cssls.setup({})
			lspconfig.angularls.setup({
				filetypes = { "html" },
				root_dir = lspconfig.util.root_pattern("angular.json", "package.json", "nx.json"),
				init_options = {
					angularOnly = true
				}
			})
			lspconfig.ts_ls.setup({})
			vim.keymap.set("n", "<leader>k", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
			vim.keymap.set("n", "gi", vim.lsp.buf.implementation, {})
			vim.keymap.set("n", "gr", vim.lsp.buf.references, {})
			vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
		end,
	},
}

