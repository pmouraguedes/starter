return {
    {
        "giuxtaposition/blink-cmp-copilot",
        event = "VeryLazy",
    },
    {
        "saghen/blink.cmp",
        event = "VeryLazy",
        version = "*",

        opts = function(_, opts)
            opts.completion.menu.auto_show = false
            opts.completion.ghost_text.enabled = false

            opts.completion.list = {
                selection = {
                    auto_insert = true,
                    preselect = true,
                },
            }
            opts.completion.documentation = { auto_show = false }

            opts.signature = { enabled = false }

            -- opts.completion.trigger = {
            --     show_in_snippet = false,
            -- }

            opts.sources = {
                -- adding any nvim-cmp sources here will enable them with blink.compat
                compat = {},
                default = { "lsp", "omni", "path", "snippets", "buffer" },
            }

            opts.keymap = {
                preset = "none",
                ["<C-space>"] = { "show", "show_documentation", "hide_documentation" },
                ["<C-e>"] = { "hide" },
                ["<C-y>"] = { "select_and_accept" },
                ["<C-l>"] = { "select_and_accept" },
                -- Tab doesnt work well
                -- ["Tab"] = { "select_and_accept" },

                ["<Up>"] = { "select_prev", "fallback" },
                ["<Down>"] = { "select_next", "fallback" },
                ["<C-k>"] = { "select_prev", "fallback" },
                ["<C-j>"] = { "select_next", "fallback" },

                ["<C-b>"] = { "scroll_documentation_up", "fallback" },
                ["<C-f>"] = { "scroll_documentation_down", "fallback" },

                -- by default is C-k so remap this
                ["<C-S>"] = { "show_signature", "hide_signature", "fallback" },
            }
        end,
    },
}
