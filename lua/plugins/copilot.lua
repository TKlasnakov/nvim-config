return {
	{
		"CopilotC-Nvim/CopilotChat.nvim",
		dependencies = {
			{ "github/copilot.vim" },
			{ "nvim-lua/plenary.nvim", branch = "master" },
		},
		build = "make tiktoken",
		opts = {},
		vim.api.nvim_set_keymap("n", "<leader>cp", ":CopilotChatToggle<CR>", { noremap = true, silent = true }),
	},
}
