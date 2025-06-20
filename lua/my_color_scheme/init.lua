local M = {}

function M.setup()
	local colors = {
		bg = "#1e1e1e2e", -- background
		fg = "#cdd6f4", -- plain text
		red = "#FF0000",
		green = "#00FF00",
		blue = "#0000FF",
		yellow = "#FFFF00",
		purple = "#800080",
		cyan = "#00FFFF",
		gray = "#808080",
	}

	-- highlight groups
	local highlights = {
		Normal = { fg = color.fg, bg = colors.bg },
	}
end

return M
