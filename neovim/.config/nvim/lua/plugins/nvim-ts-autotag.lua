return {
    "windwp/nvim-ts-autotag",
    ft = { "html", "javascript", "javascriptreact", "markdown", "typescript", "typescriptreact" },
    opts = {
        enable_close = true,
        enable_rename = true,
        enable_close_on_slash = true,
    },
    config = function(_, opts)
        require("nvim-ts-autotag").setup(opts)
    end,
}
