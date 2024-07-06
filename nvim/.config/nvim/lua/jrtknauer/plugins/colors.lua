return {
    "folke/tokyonight.nvim",

    config = function()
        require("tokyonight").setup({
            style = "night",
            light_style = "day",
            terminal_colors = true,
            styles = {
                comments = { italic = false },
                keywords = { italic = false },
                sidebars = "dark",
            },
        })

        vim.cmd("colorscheme tokyonight")
    end,
}

