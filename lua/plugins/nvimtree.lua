return {
  {
    "nvim-tree/nvim-tree.lua",
    config = function()
      require("nvim-tree").setup({
        git = {
          timeout = 5000,
        },
      })
    end,
  },
}
