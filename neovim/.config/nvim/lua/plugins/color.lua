return {
    "EdenEast/nightfox.nvim",
    name = "nightfox",
    event = "VeryLazy",
    priority = 1000,
    config = function()
        vim.cmd.colorscheme("carbonfox")
    end,
}
