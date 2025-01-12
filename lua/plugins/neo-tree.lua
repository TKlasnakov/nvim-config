return 	{
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	config = function()
		require('neo-tree').setup({
			filesystem = {
				follow_current_file = true,
				use_libuv_file_watcher = true,
				filtered_items = {
					visible = true,
				}
			},
		})
		vim.keymap.set('n', '!', ':Neotree filesystem toggle left<CR>', {})
	end
}
