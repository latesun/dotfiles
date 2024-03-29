-- https://github.com/akinsho/bufferline.nvim

require("bufferline").setup({
	options = {
		-- 为每个 buffer 都配置一个序数
		numbers = "ordinal",
		-- 使用内置 LSP 进行诊断
		diagnostics = "nvim_lsp",
		-- 不建议更改图标
		indicator_icon = "▎",
		buffer_close_icon = "",
		modified_icon = "●",
		close_icon = "",
		left_trunc_marker = "",
		right_trunc_marker = "",
		-- 分割符样式："slant" | "thick" | "thin"
		-- 如果是透明背景，不推荐使用 slant
		separator_style = "thin",
		-- 左侧让出 nvim-tree 的位置
		offsets = {
			{
				filetype = "NvimTree",
				text = "File Explorer",
				highlight = "Directory",
				text_align = "left",
			},
		},
		-- 显示 LSP 报错图标
		diagnostics_indicator = function(count, level, diagnostics_dict, context)
			local s = " "
			for e, n in pairs(diagnostics_dict) do
				local sym = e == "error" and " " or (e == "warning" and " " or "")
				s = s .. n .. sym
			end
			return s
		end,
	},
})

-- swith the previous buffer
keymap.g("n", "<leader>bp", "<cmd>BufferLineCyclePrev<CR>", keymap.opts)
-- swith the next buffer
keymap.g("n", "<leader>bn", "<cmd>BufferLineCycleNext<CR>", keymap.opts)
-- delete current buffer
keymap.g("n", "<leader>bd", "<cmd>Bdelete!<CR>", keymap.opts)
