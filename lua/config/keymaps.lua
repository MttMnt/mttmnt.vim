local map = vim.keymap.set
local Snacks = require("snacks")
local Cmp = require("blink.cmp")

map("i", "jj", "<ESC>", { desc = "Faster <ESC>", noremap = true })

-- Finders

map("n", "<leader>ff", function()
	Snacks.picker.files()
end, { desc = "Snacks find files" })

map("n", "<leader><leader>", function()
	Snacks.picker.files()
end, { desc = "Snacks find files" })

map("n", "<leader>fg", function()
	Snacks.picker.grep()
end, { desc = "Snacks live grep" })

map("n", "<leader>fb", function()
	Snacks.picker.buffers()
end, { desc = "Snacks buffers" })

map("n", "<leader>fh", function()
	require("snacks.picker").help_tags()
end, { desc = "Snacks help tags" })

map("n", "<leader>fc", function()
	Snacks.picker.colorschemes()
end, { desc = "Snacks coloscheme picker" })

-- Buffers

map("n", "<S-h>", "<cmd>bprevious<cr>", { desc = "Prev Buffer" })
map("n", "<S-l>", "<cmd>bnext<cr>", { desc = "Next Buffer" })
map("n", "<leader>bb", "<cmd>bprevious<cr>", { desc = "Prev Buffer" })

map("n", "<leader>bd", function()
	Snacks.bufdelete()
end, { desc = "Delete Buffer" })

map("n", "<leader>bo", function()
	Snacks.bufdelete.other()
end, { desc = "Delete Other Buffers" })

map("n", "<leader>bD", "<cmd>:bd<cr>", { desc = "Delete Buffer and Window" })

-- Lsp

map({ "n", "v" }, "<leader>F", function(bufnr)
	vim.lsp.buf.format({
		filter = function(client)
			return client.name == "null-ls"
		end,
		bufnr = bufnr,
	})
end, { desc = "Format file" })

map("n", "<leader>lc", function()
	vim.lsp.buf.code_action()
end, { desc = "LSP Code Action" })

map("n", "<leader>lD", function()
	Snacks.picker.lsp_declarations()
end, { desc = "LSP Declarations (usually not implemented by LSPs)" })

map("n", "<leader>ld", function()
	Snacks.picker.lsp_definitions()
end, { desc = "LSP Definitions" })

map("n", "<S-k>", function()
	vim.lsp.buf.hover()
end, { desc = "LSP Hover Documentation" })

map("n", "<leader>li", function()
	Snacks.picker.lsp_implementations()
end, { desc = "LSP Implementations" })

map("n", "<leader>lr", function()
	Snacks.picker.lsp_references()
end, { desc = "LSP References" })

map("n", "<leader>lR", function()
	vim.lsp.buf.rename()
end, { desc = "LSP Rename Symbol" })

map("n", "<leader>lh", function()
	vim.lsp.buf.signature_help()
end, { desc = "LSP Signature Help" })

map("n", "<leader>lH", function()
	Snacks.picker.diagnostics()
end, { desc = "LSP Diagnostics" })

