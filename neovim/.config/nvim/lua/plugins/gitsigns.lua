---@diagnostic disable: param-type-mismatch
return {
    "lewis6991/gitsigns.nvim",
    event = "BufReadPost",
    opts = {
        signs = {
            add = { text = "+" },
            change = { text = "~" },
            delete = { text = "_" },
            topdelete = { text = "‾" },
            changedelete = { text = "~" },
        },
        on_attach = function(bufnr)
            local gitsigns = require("gitsigns")

            local function map(mode, l, r, opts)
                opts = opts or {}
                opts.buffer = bufnr
                vim.keymap.set(mode, l, r, opts)
            end

            -- Navigation
            map("n", "]c", function()
                if vim.wo.diff then
                    vim.cmd.normal({ "]c", bang = true })
                else
                    gitsigns.nav_hunk("next")
                end
            end, { desc = "Jump To Next Git Change" })

            map("n", "[c", function()
                if vim.wo.diff then
                    vim.cmd.normal({ "[c", bang = true })
                else
                    gitsigns.nav_hunk("prev")
                end
            end, { desc = "Jump To Previous Git Change" })

            -- Actions
            -- visual mode
            map("v", "<leader>hs", function()
                gitsigns.stage_hunk({ vim.fn.line("."), vim.fn.line("v") })
            end, { desc = "Stage Hunk" })
            map("v", "<leader>hr", function()
                gitsigns.reset_hunk({ vim.fn.line("."), vim.fn.line("v") })
            end, { desc = "Reset Hunk" })
            -- normal mode
            map("n", "<leader>hs", gitsigns.stage_hunk, { desc = "Stage Hunk" })
            map("n", "<leader>hr", gitsigns.reset_hunk, { desc = "Reset Hunk" })
            map("n", "<leader>hS", gitsigns.stage_buffer, { desc = "Stage Buffer" })
            map("n", "<leader>hu", gitsigns.stage_hunk, { desc = "Undo stage Hunk" })
            map("n", "<leader>hR", gitsigns.reset_buffer, { desc = "Reset Buffer" })
            map("n", "<leader>hp", gitsigns.preview_hunk, { desc = "Preview Hunk" })
            map("n", "<leader>hb", gitsigns.blame_line, { desc = "Blame Line" })
            map("n", "<leader>hd", gitsigns.diffthis, { desc = "Diff Against Index" })
            map("n", "<leader>hD", function()
                gitsigns.diffthis("@")
            end, { desc = "Diff Against Last Commit" })
            -- Toggles
            map("n", "<leader>ub", gitsigns.toggle_current_line_blame, { desc = "Toggle git show blame line" })
            map("n", "<leader>uD", gitsigns.preview_hunk_inline, { desc = "Toggle git show Deleted" })
        end,
    },
}
