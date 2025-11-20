return {
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    lazy = false,
    config = true,
  },
  {
    'akinsho/bufferline.nvim',
    lazy = false,
    version = "*",
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    opts = {
      options = {
        diagnostics = "nvim_lsp",
        close_icon = '󰅖',
      },
    },
    config = true,
  },
  {
		"catgoose/nvim-colorizer.lua",
		event = "VeryLazy",
		opts = {
			lazy_load = true,
			-- other setup options
		},
  },
}
