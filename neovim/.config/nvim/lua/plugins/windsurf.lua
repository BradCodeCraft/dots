return {
    {
        "Exafunction/windsurf.nvim",
        event = "InsertEnter",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "saghen/blink.cmp",
        },
        config = function()
            require("codeium").setup({
                enable_cmp_source = false,
            })
        end,
    },
}
