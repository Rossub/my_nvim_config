return {
  "nvim-tree/nvim-tree.lua",
  dependencies = {
    "nvim-tree/nvim-web-devicons"
  },
  config = function()
    
    local nvimtree = require("nvim-tree")
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1

    -- set termguicolors to enable highlight groups
    vim.opt.termguicolors = true
    vim.cmd([[ highlight NvimTreeIndentMarker guifg=#50fa7b ]])
    -- empty setup using defaults
    -- require("nvim-tree").setup()

    -- OR setup with some options
    nvimtree.setup({
      sort_by = "case_sensitive",
      view = {
        width = 30,
      },
      renderer = {
        icons = {
          glyphs = {
            folder = {
            arrow_closed = "",
            arrow_open = "",
            },
          },
        },
        group_empty = true,
      },
      filters = {
        dotfiles = true,
      },
    })
  end
  
}
