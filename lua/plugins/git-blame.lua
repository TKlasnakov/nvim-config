return {
    "f-person/git-blame.nvim",
    event = "VeryLazy",
    opts = {
        enabled = true,
        message_template = "<date> • <author> • <summary>",
        date_format = "%d-%m-%Y %H:%M:%S",
        virtual_text_column = 1,
    },
		vim.keymap.set('n', 'gb', ':GitBlameToggle<CR>', {})
}
