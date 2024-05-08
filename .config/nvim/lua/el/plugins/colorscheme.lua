return {
    "ellisonleao/gruvbox.nvim",
    priority = 1000,
    config = function()
        require("gruvbox").setup({
            -- you can place your customization parameters here
        })
        vim.cmd("colorscheme gruvbox")
    end
}
