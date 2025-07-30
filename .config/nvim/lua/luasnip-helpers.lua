local n = require("luasnip-nodes")
local utils = {}

utils.get_visual = function(args, parent)
  if (#parent.snippet.env.LS_SELECT_RAW > 0) then
    return n.sn(nil, n.i(1, parent.snippet.env.LS_SELECT_RAW))
  else  -- If LS_SELECT_RAW is empty, return a blank insert node
    return n.sn(nil, n.i(1))
  end
end

utils.in_mathzone = function()  -- math context detection
  return vim.fn['vimtex#syntax#in_mathzone']() == 1
end
utils.in_text = function()
  return not utils.in_mathzone()
end
utils.in_comment = function()  -- comment detection
  return vim.fn['vimtex#syntax#in_comment']() == 1
end
utils.in_env = function(name)  -- generic environment detection
    local is_inside = vim.fn['vimtex#env#is_inside'](name)
    return (is_inside[1] > 0 and is_inside[2] > 0)
end
-- A few concrete environments---adapt as needed
utils.in_equation = function()  -- equation environment detection
    return utils.in_env('equation')
end
utils.in_itemize = function()  -- itemize environment detection
    return utils.in_env('itemize')
end
utils.in_enumerate = function()  -- itemize environment detection
    return utils.in_env('enumerate')
end
utils.in_tikz = function()  -- TikZ picture environment detection
    return utils.in_env('tikzpicture')
end

utils.line_begin = require("luasnip.extras.expand_conditions").line_begin

return utils
