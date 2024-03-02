require("lualine").setup({
	options = {
		theme = "auto",
	},
	sections = { lualine_c = { require("auto-session.lib").current_session_name } },
})
