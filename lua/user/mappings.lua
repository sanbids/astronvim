return {
  n = {
    L = {
      function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end,
      desc = "Next buffer",
    },
    H = {
      function() require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end,
      desc = "Previous buffer",
    },
    ["<leader><leader>"] = { require("astronvim.utils").telescope "files", desc = "Find files(current)" },
    ["<leader>fw"] = { require("astronvim.utils").telescope "live_grep", desc = "Find word(current)" },
    ["<leader>lm"] = { ":Mason <cr> ", desc = "lsp Installer" },
    ["<leader>fr"] = { ":Telescope oldfiles <cr> ", desc = "Recent files" },
    ["<leader>x"] = { desc = "+diagnostics/quickfix" },
    T = { require("ts-node-action").node_action, desc = "Trigger Node Action" },
  },
  t = {},
  v = {},
}
