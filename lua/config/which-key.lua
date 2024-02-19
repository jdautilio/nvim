local wk = require("which-key")

wk.register({
	c = {
		name = "code",
		f = { require("conform").format, "format" },
	},
	f = {
		name = "file",
		f = { "<cmd>Telescope find_files<cr>", "Find file" },
		g = { "<cmd>Telescope live_grep<cr>", "Live grep" },
		b = { "<cmd>Telescope buffers", "Find buffers" },
	},
	t = {
		name = "tree",
		t = { require("nvim-tree.api").tree.toggle, "toggle tree" },
		o = { require("nvim-tree.api").tree.open, "open tree" },
		c = { require("nvim-tree.api").tree.close, "close tree" },
		f = { require("nvim-tree.api").tree.focus, "focus tree" },
	},
}, {
	prefix = "<leader>",
})
