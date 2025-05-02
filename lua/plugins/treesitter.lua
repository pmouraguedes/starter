return {
    {
        "nvim-treesitter/nvim-treesitter",
        opts = {
            auto_install = true,
            ensure_installed = { "dart" },
        },
    },
    {
        "nvim-treesitter/nvim-treesitter-context",
        event = "VeryLazy",
    },
}
