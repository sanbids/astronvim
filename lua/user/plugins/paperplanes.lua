return {
  { -- One of the most useful plugins I've ever seen
    "rktjmp/paperplanes.nvim",
    keys = {
      {
        "<leader>np",
        ":PP<CR>",
        mode = "n",
        desc = "Send Buffer to Pastebin Client",
      },
      {
        "<leader>np",
        ":PP<CR>",
        mode = "v",
        desc = "Send Seleceted Code to Pastebin Client",
      },
    },

    config = function(_, opts)
      require("paperplanes").setup(opts)
    end,

    opts = {
      register = "+",
      provider = "0x0.st",
      provider_options = {},
      notifier = vim.notify or print,
    },
  }
}
