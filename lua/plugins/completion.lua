-- nvim-cmp is an extra and needs to be enabled on LazyExtras in order to be able to fetch the default lazyvim configuration
-- this is saved in lazyvim.json
return {
    {
        "saghen/blink.cmp",
        -- ops = {
        --     -- completion = {
        --     --     menu = {
        --     --         auto_show = false,
        --     --     },
        --     -- },
        --     -- Don't show completion menu until I press ctrl-space.
        --     completion = {
        --         menu = {
        --             enabled = false,
        --             auto_show = false,
        --         },
        --         trigger = {
        --             show_on_insert_on_trigger_character = false,
        --             show_on_accept_on_trigger_character = false,
        --             show_on_blocked_trigger_characters = false,
        --             show_in_snippet = false,
        --             show_on_keyword = false,
        --             show_on_trigger_character = false,
        --         },
        --         list = {
        --             selection = {
        --                 auto_insert = false,
        --             },
        --         },
        --         ghost_text = {
        --             enabled = false,
        --         },
        --     },
        --     sources = {
        --         providers = {
        --             lsp = {
        --                 enabled = false,
        --             },
        --         },
        --     },
        -- },
        config = function(_, opts)
            opts.completion.menu.auto_show = false
            -- opts.keymap = opts.keymap or {}
            -- opts.keymap["<C-Space>"] = { "show" }
            -- function(cmp)
            --     cmp.show({ providers = { "snippets" } })
            -- end,
            -- }
            opts.keymap.preset = "super-tab"
            -- ["<C-e>"] = { "show_documentation" },
            -- function(cmp)
            --     cmp.show({ providers = { "snippets" } })
            -- end,
            -- },
            -- }
        end,
    },
    {
        "hrsh7th/nvim-cmp",
        opts = function(_, opts)
            opts.completion.autocomplete = false

            local has_words_before = function()
                unpack = unpack or table.unpack
                local line, col = unpack(vim.api.nvim_win_get_cursor(0))
                return col ~= 0
                    and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
            end

            local cmp = require("cmp")

            opts.mapping = vim.tbl_extend("force", opts.mapping, {
                ["<Tab>"] = cmp.mapping(function(fallback)
                    if cmp.visible() then
                        -- You could replace select_next_item() with confirm({ select = true }) to get VS Code autocompletion behavior
                        cmp.select_next_item()
                    elseif vim.snippet.active({ direction = 1 }) then
                        vim.schedule(function()
                            vim.snippet.jump(1)
                        end)
                    elseif has_words_before() then
                        cmp.complete()
                    else
                        fallback()
                    end
                end, { "i", "s" }),
                ["<S-Tab>"] = cmp.mapping(function(fallback)
                    if cmp.visible() then
                        cmp.select_prev_item()
                    elseif vim.snippet.active({ direction = -1 }) then
                        vim.schedule(function()
                            vim.snippet.jump(-1)
                        end)
                    else
                        fallback()
                    end
                end, { "i", "s" }),
            })
        end,
    },
}
