return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		local lualine = require("lualine")
		local lazy_status = require("lazy.status") -- to configure lazy pending updates count

		lualine.setup({
			options = {
				icons_enabled = true,
				theme = "auto",
				-- component_separators = { left = '', right = ''},
				component_separators = { left = "|", right = "|" },
				-- section_separators = { left = '', right = ''},
				-- section_separators = { left = '', right = ''},
				section_separators = { left = "", right = "" },
				disabled_filetypes = {
					statusline = {},
					winbar = {},
				},
				ignore_focus = {},
				always_divide_middle = true,
				globalstatus = false,
				refresh = {
					statusline = 1000,
					tabline = 1000,
					winbar = 1000,
				},
			},
			sections = {
				-- lualine_a = { '""', "mode" },
				lualine_a = {
					{ "mode", separator = { left = "", right = "" }, right_padding = 0 },
				},
				lualine_b = { "branch", "diff", "diagnostics" },
				lualine_c = { "filename" },
				-- lualine_x = {'encoding', 'fileformat', 'filetype'},
				lualine_x = { "fileformat", "filetype" },
				lualine_y = { "progress", "location" },
				-- lualine_z = { "location" },
				-- lualine_z = {
				-- { "location", separator = { left = "", right = "" }, left_padding = 0 },
				-- },
				lualine_z = {
					{
						"datetime",
						-- options: default, us, uk, iso, or your own format string ("%H:%M", etc..)
						style = "%I:%M %p",
						separator = { left = "", right = "" },
					},
					-- separator = { left = "", right = "" },
				},
			},
			inactive_sections = {
				lualine_a = {},
				lualine_b = {},
				lualine_c = { "filename" },
				lualine_x = { "location" },
				lualine_y = {},
				lualine_z = {},
			},
			tabline = {},
			winbar = {},
			inactive_winbar = {},
			extensions = {},
		})
	end,
}
