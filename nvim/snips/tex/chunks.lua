local n = require("luasnip-nodes")
local h = require("luasnip-helpers")

-- pump snippet input into wolframscript and get the output
-- if an error occurs, find out and redo snippet
local mathematica = function (_, snip)
    local cmd = "'Check[ToString[" .. snip.captures[1] .. ", TeXForm], Exit[1]]'"
    local output = string.sub(vim.fn.system("wolframscript -code " .. cmd), 1, -2)
    if string.sub(output, -7, -1) ~= "$Failed" and vim.v.shell_error == 0 then
        return n.sn(nil, n.t(output))
    else
        print("there was an error")
        return n.sn(nil, n.fmta("math " .. snip.captures[1] .. "<> math", { n.i(1) }))
    end
end

-- creates a matrix row as a snippet node
local rowGenerator = function (j, rows, columns)
    local column = {}
    local isSquare = rows == columns
    for k=1,columns do
        local digit = "0"
        if isSquare and j==k then
            digit = "1"
        end
        column[2*k-1] = n.i(k, digit)
        column[2*k] = n.t(" & ")
    end
    column[2*columns] = n.t({ " \\\\", "\t" })
    if j==rows then
        column[2*columns] = nil
    end
    return n.sn(j, column)
end

-- creates a table row as a snippet node
local tableRowGenerator = function (j, rows, columns)
    local column = {}
    for k=1,columns do
        column[2*k-1] = n.i(k)
        column[2*k] = n.t(" & ")
    end
    column[2*columns] = n.t({ " \\\\ \\hline", "\t" })
    if j==rows then
        column[2*columns] = n.t({ " \\\\ \\hline" })
    end
    return n.sn(j, column)
end

-- generates a matrix with dimensions as snippet capture groups
local matrix = function (_, snip)
    local rows = tonumber(snip.captures[1])
    local columns = tonumber(snip.captures[2])
    local nodes = {}
    for j=1,rows do
        nodes[j] = rowGenerator(j, rows, columns)
    end
    return n.sn(1, nodes)
end

-- generates a table with dimensions as snippet capture groups
local table = function (_, snip)
    local rows = tonumber(snip.captures[1])
    local columns = tonumber(snip.captures[2])
    local nodes = {}
    for j=1,rows do
        nodes[j] = tableRowGenerator(j, rows, columns)
    end
    return n.sn(1, nodes)
end

-- generates little partition definition thing for table environment
local tableCols = function (_, snip)
    local columns = tonumber(snip.captures[2])
    local output = string.rep("|l", columns)
    return output .. "|"
end

-- turns identifier into enum prefix
local enumType = function (_, snip)
    local type = snip.captures[1]
    if type == "n" then
        return "\\arabic*."
    elseif type == "a" then
        return "(\\alph*)"
    elseif type == "i" then
        return "(\\roman*)"
    end
end

return {
    -- environment
    n.s({trig="beg", snippetType="autosnippet"},
        n.fmta(
        [[
            \begin{<>}
                <>
            \end{<>}
        ]],
        { n.i(1), n.i(0), n.rep(1) }),
        { condition = h.line_begin }),
    -- named environment
    n.s({trig="beng", snippetType="autosnippet"},
        n.fmta(
        [[
            \begin{<>}[<>]
                <>
            \end{<>}
        ]],
        { n.i(1), n.i(2), n.i(0), n.rep(1) }),
        { condition = h.line_begin }),
    -- equation
    n.s({trig="beq", snippetType="autosnippet"},
        n.fmta(
        [[
            \begin{equation}
                <>
            \end{equation}
        ]],
        { n.i(0) }),
        { condition = h.line_begin }),
    -- WIP plot snippet
    n.s({trig="plot(", snippetType="autosnippet"},
        n.fmta(
        "plot(<>) <> plot",
        { n.i(1), n.i(2) })
    ),
    -- mathematica snippet
    n.s({trig="math", snippetType="autosnippet"},
        n.fmta("math <> math",
            { n.i(1) }),
        { condition = h.in_mathzone }
    ),
    n.s({trig="math (.*) math", regTrig=true, wordTrig=false},
        { n.d(1, mathematica) },
        { condition = h.in_mathzone }
    ),
    -- bmatrix
    n.s({trig="bm", snippetType="autosnippet"},
        n.fmta(
        [[
            \begin{bmatrix}{<>,<>} \end{bmatrix}
        ]],
        { n.i(1), n.i(2) }),
        { condition = h.line_begin * h.in_mathzone }),
    -- matrix with arbitrary brackets
    n.s({trig="zmat", snippetType="autosnippet"},
        n.fmta(
        [[
            \begin{<>matrix}{<>,<>} \end{<>matrix}
        ]],
        { n.i(1), n.i(2), n.i(3), n.rep(1) }),
        { condition = h.line_begin * h.in_mathzone }),
    n.s({trig="\\begin{.matrix}{(%d+),(%d+)} \\end{(.)matrix}", regTrig=true, wordTrig=false},
        n.fmta(
            [[
                \begin{<>matrix}
                    <>
                \end{<>matrix}
            ]],
            { n.f(function(_, parent) return parent.captures[3] end), n.d(1, matrix), n.f(function(_, parent) return parent.captures[3] end) }),
            { condition = h.in_mathzone }),
    -- table
    n.s({trig="tab", snippetType="autosnippet"},
        n.fmta(
        [[
            \begin{table}{<>,<>} \end{table}
        ]],
        { n.i(1), n.i(2) }),
        { condition = h.line_begin }),
    n.s({trig="\\begin{table}{(%d+),(%d+)} \\end{table}", regTrig=true, wordTrig=false},
        n.fmta(
            [[
                \begin{tabular}{<>}
                \hline
                    <>
                \end{tabular}
            ]],
            { n.f(tableCols), n.d(1, table) })),
    -- enum with n=numbers, a=alphas, or i=roman numerals
    n.s({trig="enum([nai])", regTrig=true, snippetType="autosnippet"},
        n.fmta(
            [[
                \begin{enumerate}[label=<>]
                    \item <>
                \end{enumerate}
            ]],
            { n.f(enumType), n.i(0) }),
            { condition = h.in_text * h.line_begin }),
    -- itemize
    n.s({trig="item", snippetType="autosnippet"},
        n.fmta(
            [[
                \begin{itemize}
                    \item <>
                \end{itemize}
            ]],
            { n.i(0) }),
            { condition = h.in_text * h.line_begin }),
    -- split equation environment
    n.s({trig="slt", snippetType="autosnippet"},
        n.fmta(
            [[
                \begin{equation}\begin{split}
                    <>
                \end{split}\end{equation}
            ]],
            { n.i(0) }),
            { condition = h.in_text * h.line_begin }),
    -- split display equation
    n.s({trig="sld", snippetType="autosnippet"},
        n.fmta(
            [[
                \[ \begin{split}
                    <>
                \end{split} \]
            ]],
            { n.i(0) }),
            { condition = h.in_text * h.line_begin }),
}
