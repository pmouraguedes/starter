local is_local = false

local colorscheme_plugin_table

if is_local then
    colorscheme_plugin_table = {
        dir = "~/projects/nvim/neodarcula.nvim", -- Path to your local plugin
        -- name = "neodarcula",
        lazy = false, -- Load immediately for testing
        priority = 1000, -- Ensure it loads early

        opts = {
            transparent = false,
            dim = true,
        },
    }
else
    colorscheme_plugin_table = {
        "pmouraguedes/neodarcula.nvim",
        lazy = false,
        priority = 1000,
        opts = {
            transparent = false,
            dim = true,
        },
    }
end

return {
    colorscheme_plugin_table,
    -- { "folke/tokyonight.nvim" },
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "neodarcula",
        },
    },
}
