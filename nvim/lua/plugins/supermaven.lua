return {
  "supermaven-inc/supermaven-nvim",
  config = function()
    require("supermaven-nvim").setup({
      keymaps = {
        accept_suggestion = "<Tab>",
        clear_suggestion = "<C-]>",
        accept_word = "<C-j>",
      },
      color = {
        suggestion_color = "#ffffff",
        cterm = 244,
      },
      ignore_filetypes = {
        TelescopePrompt = true,
        FTerm = true,
        ["neo-tree"] = true,
      },
    })
  end,
}
