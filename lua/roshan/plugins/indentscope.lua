return {
  "echasnovski/mini.indentscope",

  config = function()
    local indent = require("mini.indentscope")
    
    vim.cmd([[highlight IndentScope guifg=#50fa7b]])

    indent.setup({
      -- symbol = "▏",
      -- symbol = "│",
      symbol = "╎",
      options = { try_as_border = true },
})
  end
}
