return {
	{
		"neovim/nvim-lspconfig",
		lazy = false,
		dependencies = {
			"williamboman/mason-lspconfig.nvim",
		},
		opts = {
			servers = {
				clangd = {
					settings = {},
				},
				basedpyright = {
					settings = {
						basedpyright = {
							analysis = {
								-- autoSearchPaths = true,
								-- diagnosticMode = "openFilesOnly",
								-- useLibraryCodeForTypes = true
							},
						},
					},
				},
				lua_ls = {
					settings = {
						Lua = {
							hint = {
								enable = true,
							},
							runtime = {
								version = "LuaJIT",
							},
							workspace = {
								library = {
									vim.env.VIMRUNTIME,
								},
							},
						},
					},
				},
			},
		},
		config = function(_, opts)
			for server, config in pairs(opts.servers) do
				config.capabilities = require("blink.cmp").get_lsp_capabilities(config.capabilities)
				vim.lsp.config(server, config)
			end
		end,
	},
	{
		"williamboman/mason.nvim",
		opts = {
			ui = {
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗",
				},
			},
		},
	},
	{
		"williamboman/mason-lspconfig.nvim",
		dependencies = "williamboman/mason.nvim",
		opts = {
			ensure_installed = { "lua_ls", "basedpyright", "clangd" },
			-- automatic_enable = {
			-- 	exclude = { "jdtls" },
			-- },
		},
	},
	{
		"nvimtools/none-ls.nvim",
		lazy = false,
		dependencies = "nvim-lua/plenary.nvim",
		opts = function()
			local null_ls = require("null-ls")
			local opts = {
				sources = {
					null_ls.builtins.formatting.stylua,
					null_ls.builtins.formatting.black,
				},
			}
			return opts
		end,
	},
}
