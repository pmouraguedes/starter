return {
    {
        "nvim-treesitter/nvim-treesitter",
        opts = {
            auto_install = true,
            ensure_installed = { "dart", "c3" },

            parser_install_info = {
                c3 = {
                    install_info = {
                        url = "https://github.com/c3lang/tree-sitter-c3",
                        files = { "src/parser.c", "src/scanner.c" },
                        branch = "main",
                    },
                    sync_install = false, -- Set to true if you want to install synchronously
                    auto_install = true, -- Automatically install when opening a file
                    filetype = "c3", -- if filetype does not match the parser name
                },
            },
        },
    },
    {
        "nvim-treesitter/nvim-treesitter-context",
        event = "VeryLazy",
    },
}
