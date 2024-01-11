local M = {}

function M.get_normal_bg_color()
    local normal_bg = vim.fn.synIDattr(vim.fn.synIDtrans(vim.fn.hlID('Normal')), 'bg#')
    return normal_bg
end

return M
