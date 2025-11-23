---@diagnostic disable: undefined-global
return {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    keys = {
        -- stylua: ignore start
        -- Top Pickers & Explorer
        { "<leader><space>", function() Snacks.picker.smart() end, desc = "Smart Find Files" },
        { "<leader>,", function() Snacks.picker.buffers() end, desc = "Buffers" },
        { "<leader>:", function() Snacks.picker.command_history() end, desc = "Command History" },
        { "<leader>e", function() Snacks.explorer() end, desc = "File Explorer" },
        -- Git
        { "<leader>gb", function() Snacks.picker.git_branches() end, desc = "Branches" },
        { "<leader>gl", function() Snacks.picker.git_log() end, desc = "Log" },
        { "<leader>gL", function() Snacks.picker.git_log_line() end, desc = "Log Line" },
        { "<leader>gs", function() Snacks.picker.git_status() end, desc = "Status" },
        { "<leader>gS", function() Snacks.picker.git_stash() end, desc = "Stash" },
        { "<leader>gd", function() Snacks.picker.git_diff() end, desc = "Diff (Hunks)" },
        { "<leader>gf", function() Snacks.picker.git_log_file() end, desc = "Log File" },
        { "<leader>gB", function() Snacks.gitbrowse() end, desc = "Browse", mode = { "n", "v" } },
        { "<leader>gg", function() Snacks.lazygit() end, desc = "Lazygit" },
        { "<leader>gi", function() Snacks.picker.gh_issue() end, desc = "Issues (open)" },
        { "<leader>gI", function() Snacks.picker.gh_issue({ state = "all" }) end, desc = "Issues (all)" },
        { "<leader>gp", function() Snacks.picker.gh_pr() end, desc = "Pull Requests (open)" },
        { "<leader>gP", function() Snacks.picker.gh_pr({ state = "all" }) end, desc = "Pull Requests (all)" },
        -- Other
        { "<leader>uz",  function() Snacks.zen() end, desc = "Toggle Zen Mode" },
        { "<leader>uZ",  function() Snacks.zen.zoom() end, desc = "Toggle Zoom" },
        { "<leader>u.",  function() Snacks.scratch() end, desc = "Toggle Scratch Buffer" },
        { "<leader>uS",  function() Snacks.scratch.select() end, desc = "Select Scratch Buffer" },
        { "<leader>un",  function() Snacks.notifier.show_history() end, desc = "Notification History" },
        { "<leader>bd", function() Snacks.bufdelete() end, desc = "Delete Buffer" },
        { "<leader>cR", function() Snacks.rename.rename_file() end, desc = "Rename File" },
        { "<leader>uN", function() Snacks.notifier.hide() end, desc = "Dismiss All Notifications" },
        { "<c-/>",      function() Snacks.terminal() end, desc = "Toggle Terminal" },
        { "<c-_>",      function() Snacks.terminal() end, desc = "which_key_ignore" },
        { "]]",         function() Snacks.words.jump(vim.v.count1) end, desc = "Next Reference", mode = { "n", "t" } },
        { "[[",         function() Snacks.words.jump(-vim.v.count1) end, desc = "Prev Reference", mode = { "n", "t" } },
        -- stylua: ignore end
        {
            "<leader>N",
            desc = "Neovim News",
            function()
                Snacks.win({
                    file = vim.api.nvim_get_runtime_file("doc/news.txt", false)[1],
                    width = 0.6,
                    height = 0.6,
                    wo = {
                        spell = false,
                        wrap = false,
                        signcolumn = "yes",
                        statuscolumn = " ",
                        conceallevel = 3,
                    },
                })
            end,
        },
    },
    ---@type snacks.Config
    opts = {
        bigfile = { enabled = true },
        dashboard = {
            enabled = true,
            preset = {
                header = [[
⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⣶⣿⣿⠩⠄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⡟⠟⠩⡄⠀⠀⠀⡀⠠⠔⠤⡀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⣗⣮⣱⡷⢶⣿⣷⣠⠀⠀⡇⡇⠀⠀⠀
⠀⢀⣠⣤⣶⣾⣿⠍⡿⣽⣸⣻⣼⣶⣿⣶⡿⠷⠇⠀⠀⠀
⢸⡿⢓⣯⣿⣿⣿⡾⣧⣾⣿⡟⠛⠉⠉⠀⠀⠀⠀⠀⠀⠀
⠘⠿⠾⠿⠛⠋⠉⣇⢸⡚⡇⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⣼⣯⣵⣮⡍⠓⢄⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⢰⣿⡛⡫⣻⣿⡄⠀⢢⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠰⣿⣏⣽⣿⣿⣧⠀⠀⡆⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠙⣾⡏⣿⡼⣿⣿⠆⠈⢻⣢⢄⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⢹⡹⠈⠃⣯⣘⢦⣀⡌⡿⠀⠈⢢⢄⡀
⠀⠀⠀⠀⠀⠀⠀⣽⠃⠀⡆⡄⠉⣷⣿⢷⣇⠃⠀⠀⠃⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠃⠁⠸⣿⠿⣾⣿⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣯⠟⠉⡟⠀⠀⠀⠀⠀
          ]],
                -- stylua: ignore
                keys = {
                    { icon = " ", key = "f", desc = "Find File", action = ":lua Snacks.dashboard.pick('files')" },
                    { icon = " ", key = "n", desc = "New File", action = ":ene | startinsert" },
                    { icon = " ", key = "g", desc = "Find Text", action = ":lua Snacks.dashboard.pick('live_grep')" },
                    { icon = " ", key = "r", desc = "Recent Files", action = ":lua Snacks.dashboard.pick('oldfiles')" },
                    { icon = " ", key = "c", desc = "Config", action = ":lua Snacks.dashboard.pick('files', {cwd = vim.fn.stdpath('config')})" },
                    { icon = " ", key = "s", desc = "Restore Session", section = "session" },
                    { icon = "󰒲 ", key = "l", desc = "Lazy", action = ":Lazy" },
                    { icon = " ", key = "q", desc = "Quit", action = ":qa" },
                },
            },
        },
        explorer = { enabled = true },
        indent = { enabled = true },
        input = { enabled = true },
        picker = {
            enabled = true,
            hidden = true,
            ignored = true,
            sources = {
                explorer = {
                    layout = {
                        layout = {
                            position = "right",
                        },
                    },
                },
            },
            icons = {
                files = {
                    enabled = false,
                },
            },
        },
        notifier = { enabled = true },
        quickfile = { enabled = true },
        scope = { enabled = true },
        scroll = { enabled = true },
        statuscolumn = { enabled = true },
        words = { enabled = true },
    },
}
