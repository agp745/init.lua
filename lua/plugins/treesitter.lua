return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    -- require("nvim-ts-autotag").setup(),

    -- config = function()
    -- 	local config = require("nvim-treesitter.configs")
    -- 	config.setup({
    -- 		ensure_installed = { "markdown", "markdown_inline" },
    -- 		auto_install = true,
    -- 		highlight = { enable = true },
    -- 		indent = { enable = true },
    -- 		autotag = { enable = true },
    -- 	})
    -- end,
  },
  {
    "windwp/nvim-ts-autotag",
    config = function()
      require("nvim-ts-autotag").setup()
    end,
  },
}
