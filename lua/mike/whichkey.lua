local wk = require("which-key")

wk.register({
    ["<leader>"] = {
        f = {
            name = "Telescope",
            f = { "Find file" },
            a = { "Find in current buffer" },
            h = { "Help" },
            b = { "Get buffer list" },
            w = { "Grep" },
            r = { "Get recent files" }
        },
        g = {
            name = "LazyGit",
            g = { "Open panel" },
            c = { "Current file" }
        }
    },
})
