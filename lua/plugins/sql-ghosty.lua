local is_local = false

local plugin_table

if is_local then
    plugin_table = {
        dir = "~/projects/nvim/sql-ghosty.nvim", -- Path to your local plugin
        dependencies = {
            "nvim-treesitter/nvim-treesitter",
        },
        opts = {
            show_hints_by_default = true,
        },
    }
else
    plugin_table = {
        "pmouraguedes/sql-ghosty.nvim",
        dependencies = {
            "nvim-treesitter/nvim-treesitter",
        },
        opts = {
            show_hints_by_default = true,
        },
    }
end

return {
    plugin_table,
}
