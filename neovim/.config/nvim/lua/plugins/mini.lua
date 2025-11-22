return {
    "echasnovski/mini.nvim",
    event = "InsertEnter",
    config = function()
        -- Better Around/Inside textobjects
        require("mini.ai").setup({ n_lines = 500 })

        -- Add/delete/replace surroundings (brackets, quotes, etc.)
        require("mini.surround").setup({
            mappings = {
                add = "gsa",
                delete = "gsd",
                find = "gsf",
                find_left = "gsF",
                highlight = "gsh",
                replace = "gsr",
            },
        })
        local wk = require("which-key")
        wk.add({
            { "gsa", desc = "Add" },
            { "gsd", desc = "Delete" },
            { "gsf", desc = "Find right" },
            { "gsF", desc = "Find left" },
            { "gsh", desc = "Highlight" },
            { "gsr", desc = "Replace" },
        }, { mode = "n" })
        wk.add({
            { "gsa", desc = "Add" },
        }, { mode = "v" })
    end,
}
