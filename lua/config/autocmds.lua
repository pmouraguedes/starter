-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

-- Autoformat setting
local set_autoformat = function(pattern, bool_val)
    vim.api.nvim_create_autocmd({ "FileType" }, {
        pattern = pattern,
        callback = function()
            vim.b.autoformat = bool_val
        end,
    })
end

set_autoformat({ "java" }, false)
-- set_autoformat({ "cpp" }, true)
-- set_autoformat({ "fish" }, false)
-- set_autoformat({ "lua" }, true)
-- set_autoformat({ "perl" }, false)
-- set_autoformat({ "yaml" }, false)

vim.api.nvim_create_autocmd({ "TextChanged", "InsertLeave", "BufLeave" }, {
    pattern = "*",
    callback = function()
        if vim.bo.modifiable and vim.bo.filetype ~= "oil" then
            vim.cmd("silent! write")
        end
    end,
})
