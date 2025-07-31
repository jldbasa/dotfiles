return {
  "catppuccin/nvim",
  config=function()
    require("catppuccin").setup({
      flavour = "mocha"
    });
    vim.cmd("colorscheme catppuccin");
  end
}

