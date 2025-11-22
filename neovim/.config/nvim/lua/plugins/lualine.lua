return {
    "nvim-lualine/lualine.nvim",
    event = { "BufReadPre", "BufNewFile" },
    opts = {
        sections = {
            lualine_a = { "mode" },
            lualine_b = { "branch", "diff", "diagnostics" },
            lualine_c = { "" },
            lualine_x = { "" },
            lualine_y = { "filetype" },
            lualine_z = { "location" },
        },
    },
    config = function(_, opts)
        require("lualine").setup(opts)
    end,
}
