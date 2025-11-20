return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  opts = {
    preset = "helix",
  },
  config = function(_, opts)
    require("which-key").setup(opts)
    require("which-key").add({
      { "<leader>f", group = "find", icon = { icon = "󱥰", color = "orange" } },
      { "<leader>b", group = "buffers", icon = { icon = "", color = "red" } },
      { "<leader>l", group = "lsp", icon = { icon = "", color = "cyan" } }
    })
  end,
}

