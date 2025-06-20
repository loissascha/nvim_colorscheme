local M = {}

function M.setup()
	local colors = {
		bg = "#000000", -- background
		fg = "#cdd6f4", -- plain text
		red = "#FFB3BA",
		green = "#BAFFC9",
		blue = "#BAE1FF",
		yellow = "#FFFFBA",
		purple = "#E0BBE4",
		cyan = "#BEE9F4",
		gray = "#D3D3D3",
	}

	-- highlight groups
	local highlights = {
		Normal = { fg = colors.fg, bg = colors.bg },
		Comment = { fg = colors.gray, italic = true },
		Keyword = { fg = colors.purple, bold = true },
		String = { fg = colors.green },
		Number = { fg = colors.yellow },
		LineNr = { fg = colors.gray },
		FloatBorder = { fg = colors.red },
		CursorLine = { bg = colors.gray },
		StatusLine = { fg = colors.fg, bg = colors.blue },
		Visual = { bg = colors.blue, fg = colors.bg },
		["@variable"] = { fg = colors.blue },
		["@keyword"] = { fg = colors.blue },
		["@field"] = { fg = colors.purple },
		Structure = { fg = colors.yellow },
		Function = { fg = colors.green },
		WinSeparator = { fg = colors.red, bg = colors.bg },
		VertSplit = { link = "WinSeparator" },
		Search = { fg = colors.fg, bg = colors.bg },
		-- Telescope
		TelescopeBorder = { fg = colors.gray, bg = colors.red },
		TelescopeTitle = { fg = colors.cyan },
		TelescopeSelection = { link = "CursorLine" },
		TelescopeSelectionCaret = { link = "CursorLineNr" },
		TelescopeResultsClass = { link = "Structure" },
		TelescopeResultsStruct = { link = "Structure" },
		TelescopeResultsField = { link = "@field" },
		TelescopeResultsMethod = { link = "Function" },
		TelescopeResultsVariable = { link = "@variable" },
	}
	highlights.Identifier = { link = "Visual" }

	-- Apply highlights
	for group, opts in pairs(highlights) do
		vim.api.nvim_set_hl(0, group, opts)
	end
end

return M
