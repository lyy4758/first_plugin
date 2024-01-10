local M = {}
function M.fg(name)
	---@type {foreground?:number}?
	---@diagnostic disable-next-line: deprecated
	local hl = vim.api.nvim_get_hl and vim.api.nvim_get_hl(0, { name = name })
		or vim.api.nvim_get_hl_by_name(name, true)
	---@diagnostic disable-next-line: undefined-field
	local fg = hl and (hl.fg or hl.foreground)
	return fg and { fg = string.format("#%06x", fg) } or nil
end

M.colors = {
	[""] = M.fg("Special"),
	["Normal"] = M.fg("Special"),
	["Warning"] = M.fg("DiagnosticError"),
	["InProgress"] = M.fg("DiagnosticWarn"),
}
return M
