require("jrtknauer.set")
require("jrtknauer.remap")
require("jrtknauer.lazy_init")

local augroup = vim.api.nvim_create_augroup
local jrtknauerGroup = augroup("jrtknauer", {})

local autocmd = vim.api.nvim_create_autocmd

autocmd("LspAttach", {
    group = jrtknauerGroup,
    callback = function(e)
        local opts = { buffer = e.buf }
        vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
        vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
        vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
        vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)
        vim.keymap.set("n", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
    end
})

vim.cmd("setlocal spell spelllang=en_us")

