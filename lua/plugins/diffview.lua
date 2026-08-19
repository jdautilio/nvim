return {
	"sindrets/diffview.nvim",
	keys = {
		{ "<leader>do", "<cmd>DiffviewOpen<cr>", desc = "Diffview open" },
		{ "<leader>dO", "<cmd>DiffviewOpen HEAD~1<cr>", desc = "Diffview last commit" },
		{ "<leader>df", "<cmd>DiffviewFileHistory %<cr>", desc = "File history" },
		{ "<leader>dh", "<cmd>DiffviewFileHistory<cr>", desc = "Repo history" },
		{ "<leader>dq", "<cmd>DiffviewClose<cr>", desc = "Diffview close" },
		{ "<leader>dr", "<cmd>DiffviewRefresh<cr>", desc = "Diffview refresh" },
	},
	config = function()
		local actions = require("diffview.actions")

		require("diffview").setup({
			view = {
				-- Configure the layout and behavior of different types of views.
				-- Available layouts:
				--  'diff1_plain'
				--    |'diff2_horizontal'
				--    |'diff2_vertical'
				--    |'diff3_horizontal'
				--    |'diff3_vertical'
				--    |'diff3_mixed'
				--    |'diff4_mixed'
				-- For more info, see |diffview-config-view.x.layout|.
				merge_tool = {
					-- Config for conflicted files in diff views during a merge or rebase.
					layout = "diff3_mixed",
					disable_diagnostics = true, -- Temporarily disable diagnostics for diff buffers while in the view.
					winbar_info = true, -- See |diffview-config-view.x.winbar_info|
				},
			},
			keymaps = {
				view = {
					{ "n", "<leader>de", actions.focus_files, { desc = "Focus Diffview files" } },
					{ "n", "<leader>db", actions.toggle_files, { desc = "Toggle Diffview files" } },
				},
				file_panel = {
					{ "n", "<leader>de", actions.focus_files, { desc = "Focus Diffview files" } },
					{ "n", "<leader>db", actions.toggle_files, { desc = "Toggle Diffview files" } },
				},
				file_history_panel = {
					{ "n", "<leader>de", actions.focus_files, { desc = "Focus Diffview files" } },
					{ "n", "<leader>db", actions.toggle_files, { desc = "Toggle Diffview files" } },
				},
			},
		})
	end,
}
