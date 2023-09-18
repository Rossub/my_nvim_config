return {
  "lukas-reineke/indent-blankline.nvim",
  
  config = function()

    local indent = require("indent_blankline")
    vim.opt.termguicolors = true
    vim.opt.list = true
    -- vim.opt.listchars:append("space:⋅")

    vim.cmd([[highlight IndentBlanklineChar guifg=#44475a gui=nocombine]])

    indent.setup({
      -- char = "▏",
      -- char = "│",
      char = "╎",
      filetype_exclude = {
        "help",
        "alpha",
        "dashboard",
        "neo-tree",
        "Trouble",
        "lazy",
        "mason",
        "notify",
        "toggleterm",
        "lazyterm",
      },
      show_trailing_blankline_indent = false,
      show_current_context = false,
    })
  end
}
