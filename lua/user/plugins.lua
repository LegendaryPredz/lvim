-- Additional Plugins
lvim.plugins = {
	"cpea2506/one_monokai.nvim",
	{
		"navarasu/onedark.nvim",
		require("onedark").setup({
			style = "warmer",
		}),
	},
	"sainnhe/edge",
	"p00f/nvim-ts-rainbow",
	"windwp/nvim-ts-autotag",
	"kylechui/nvim-surround",
	"NvChad/nvim-colorizer.lua",
	"lvimuser/lsp-inlayhints.nvim",
	"jose-elias-alvarez/typescript.nvim",
	"mxsdev/nvim-dap-vscode-js",
	"petertriho/nvim-scrollbar",
	-- "j-hui/fidget.nvim",
	"folke/todo-comments.nvim",
	"nvim-treesitter/playground",
	"nvim-treesitter/nvim-treesitter-textobjects",
	"christianchiarulli/harpoon",
	"hrsh7th/cmp-emoji",
	"renerocksai/telekasten.nvim",
	"renerocksai/calendar-vim",
	{ "tzachar/cmp-tabnine", run = "./install.sh" },
	{
		"zbirenbaum/copilot.lua",
		-- event = { "VimEnter" },
		config = function()
			vim.defer_fn(function()
				require("copilot").setup({
					plugin_manager_path = os.getenv("LUNARVIM_RUNTIME_DIR") .. "/site/pack/packer",
				})
			end, 100)
		end,
	},
	{
		"zbirenbaum/copilot-cmp",
		after = { "copilot.lua" },
		config = function()
			require("copilot_cmp").setup({
				formatters = {
					insert_text = require("copilot_cmp.format").remove_existing,
				},
			})
		end,
	},
}
