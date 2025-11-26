return {
    "windwp/nvim-ts-autotag",
    ft = { "html", "javascript", "javascriptreact", "markdown", "typescript", "typescriptreact" },
    config = function()
        require("nvim-ts-autotag").setup({
            enable_close = true,
            enable_rename = true,
            enable_close_on_slash = true,
        })
    end,
}
