require("spectre").setup({
	mapping = {
		-- 删除选中
		["toggle_line"] = {
			map = "dd",
			cmd = "<cmd>lua require('spectre').toggle_line()<CR>",
			desc = "toggle current item",
		},
		-- 前往文件
		["enter_file"] = {
			map = "<CR>",
			cmd = "<cmd>lua require('spectre.actions').select_entry()<CR>",
			desc = "goto current file",
		},
		-- 查看菜单（忽略大小写、忽略隐藏文件）
		["show_option_menu"] = {
			map = "<leader>o",
			cmd = "<cmd>lua require('spectre').show_options()<CR>",
			desc = "show option",
		},
		-- 开始替换
		["run_replace"] = {
			map = "<leader>r",
			cmd = "<cmd>lua require('spectre.actions').run_replace()<CR>",
			desc = "replace all",
		},
		-- 显示差异
		["change_view_mode"] = {
			map = "<leader>v",
			cmd = "<cmd>lua require('spectre').change_view()<CR>",
			desc = "change result view mode",
		},
	},
})

-- 全项目替换
keymap.g("n", "<leader>rp", "<cmd>lua require('spectre').open()<CR>", keymap.opts)
-- 只替换当前文件
keymap.g("n", "<leader>rf", "viw:lua require('spectre').open_file_search()<CR>", keymap.opts)
-- 全项目中搜索当前单词
keymap.g("n", "<leader>rw", "<cmd>lua require('spectre').open_visual({select_word=true})<CR>", keymap.opts)
