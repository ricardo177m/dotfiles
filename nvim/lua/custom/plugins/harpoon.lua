return {
  'ThePrimeagen/harpoon',
  dependencies = {
    'nvim-lua/plenary.nvim',
  },
  config = function()
    require("harpoon"):setup({
      menu = {
        width = 80
      }
    })
  end

}
