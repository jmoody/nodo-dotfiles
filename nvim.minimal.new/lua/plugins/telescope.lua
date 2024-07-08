return {
	"nvim-telescope/telescope.nvim",
	branch = "0.1.x",
	dependencies = { "nvim-lua/plenary.nvim" },
	priority = 10,
	config = function()
		require("telescope").setup({
			defaults = {
				layout_strategy = "vertical",
				layout_config = {
					mirror = true,
					prompt_position = "top",
				},
			},
			pickers = {
				find_files = {
					hidden = true,
				},
			},
		})
		local builtin = require("telescope.builtin")
		vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "[f]ind [f]iles" })
		vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "[f]ind [g]rep" })
		vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "[f]ind [h]elp" })
		vim.keymap.set("n", "<leader>fr", builtin.resume, { desc = "[f]ind [r]esume" })
		vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "[f]ind [b]buffers" })

		-- shorter versions
		vim.keymap.set("n", "<leader><leader>", builtin.find_files, { desc = "find files" })
		vim.keymap.set("n", "<leader>,", builtin.buffers, { desc = "find buffers" })
	end,
}
