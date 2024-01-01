return {
	"glepnir/template.nvim",
	cmd = { "Template", "TemProject" },
	config = function()
		require("template").setup({
			-- config in there
			temp_dir = "~/.config/nvim/templates",
			author = "Anand",
			email = "a@student.ubc.ca",
		})
	end,
}
