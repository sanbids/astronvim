return {
  {
    "kevinhwang91/nvim-fundo",
    dependences = "kevinhwang91/promise-async",
    config = function() require("fundo").install() end,
  },
}
