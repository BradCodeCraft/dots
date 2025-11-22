return {
    "NMAC427/guess-indent.nvim",
    event = { "BufReadPre", "BufNewFile", "InsertEnter" },
    config = function()
        require("guess-indent").setup({})
    end,
}
