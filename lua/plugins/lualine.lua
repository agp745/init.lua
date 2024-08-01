return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		require("lualine").setup({
			options = {
				theme = "catppuccin",
				section_separators = { left = "", right = "" },
				component_separators = { left = "", right = "" },
			},
			sections = {
				lualine_a = { "mode" },
				lualine_b = { "" },
				lualine_c = { "" },
				lualine_x = { "buffers" },
				lualine_y = {
					{
						"diagnostics",
						sources = { "nvim_diagnostic", "nvim_lsp", "coc" },
						update_in_insert = true,
					},
				},
				lualine_z = { "location" },
			},
		})
	end,
}
