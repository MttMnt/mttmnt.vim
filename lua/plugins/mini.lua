return {
  'nvim-mini/mini.nvim',
  lazy = false,
  version = false,
  config = function()
    -- Setup the mini.pairs module
    require('mini.pairs').setup()
    -- Setup the mini.surround module
    require('mini.surround').setup()
  end,
}
