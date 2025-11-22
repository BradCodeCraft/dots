return {
    "nvim-telescope/telescope.nvim",
    event = "VimEnter",
    dependencies = {
        "nvim-lua/plenary.nvim",
        {
            "nvim-telescope/telescope-fzf-native.nvim",
            build = "make",
            cond = function()
                return vim.fn.executable("make") == 1
            end,
        },
        { "nvim-telescope/telescope-ui-select.nvim" },
    },
    config = function()
        require("telescope").setup({
            extensions = {
                ["ui-select"] = {
                    require("telescope.themes").get_dropdown(),
                },
            },
        })

        -- Enable Telescope extensions if they are installed
        pcall(require("telescope").load_extension, "fzf")
        pcall(require("telescope").load_extension, "ui-select")

        local builtin = require("telescope.builtin")
        vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Help" })
        vim.keymap.set("n", "<leader>fk", builtin.keymaps, { desc = "Keymaps" })
        vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Files" })
        vim.keymap.set("n", "<leader>fs", builtin.builtin, { desc = "Select Telescope" })
        vim.keymap.set("n", "<leader>fw", builtin.grep_string, { desc = "Current Word" })
        vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "By Grep" })
        vim.keymap.set("n", "<leader>fd", builtin.diagnostics, { desc = "Diagnostics" })
        vim.keymap.set("n", "<leader>fr", builtin.resume, { desc = "Resume" })
        vim.keymap.set("n", "<leader>f.", builtin.oldfiles, { desc = 'Recent Files ("." for repeat)' })
        vim.keymap.set("n", "<leader><leader>", builtin.buffers, { desc = "Find In Existing Buffers" })

        -- Slightly advanced example of overriding default behavior and theme
        vim.keymap.set("n", "<leader>/", function()
            -- You can pass additional configuration to Telescope to change the theme, layout, etc.
            builtin.current_buffer_fuzzy_find(require("telescope.themes").get_dropdown({
                winblend = 10,
                previewer = false,
            }))
        end, { desc = "/ Fuzzily Find In Current Buffer" })

        vim.keymap.set("n", "<leader>f/", function()
            builtin.live_grep({
                grep_open_files = true,
                prompt_title = "Live Grep in Open Files",
            })
        end, { desc = "/ In Open Files" })

        vim.keymap.set("n", "<leader>fn", function()
            builtin.find_files({ cwd = vim.fn.stdpath("config") })
        end, { desc = "Neovim Files" })
    end,
}
