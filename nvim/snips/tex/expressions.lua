local n = require("luasnip-nodes")
local h = require("luasnip-helpers")

local closer = function (open)
    if open == "(" then
        return ")"
    elseif open == "\\{" then
        return "\\}"
    elseif open == "{" then
        return "}"
    elseif open == "[" then
        return "]"
    elseif open == "|" then
        return "|"
    elseif open == "\\langle" then
        return "\\rangle"
    else
        return nil
    end
end

local parens = function(_, parent)
    local open = parent.captures[1]

    if open == "{" then open = "\\{" end
    if open == "'a" then open = "\\langle" end

    local node = n.sn(1,
        n.fmta("\\left<> <> \\right<><>",
            { n.t(open), n.i(1), n.t(closer(open)), n.i(0) })
    )
    return node
end

return {
    n.s({trig="'{", snippetType="autosnippet"},
        n.fmta("\\{ <> \\}", { n.i(1) }),
        { condition = h.in_mathzone }
    ),
    n.s({trig=[[\\left([\(\[\{|]|'a)]], trigEngine="ecma", wordTrig=false, snippetType="autosnippet"},
        { n.d(1, parens) },
        { condition = h.in_mathzone }
    ),
    n.s({trig="'lf", snippetType="autosnippet"},
        { n.t("\\left") },
        { condition = h.in_mathzone }
    ),
    n.s({trig="'ang", snippetType="autosnippet"},
        n.fmta("\\langle <> \\rangle", { n.i(1) }),
        { condition = h.in_mathzone }
    ),
    n.s({trig="dsum", snippetType="autosnippet", priority=200},
        n.fmta("\\sum_{<>=<>}^{<>}",
            { n.i(1), n.i(2), n.i(3) }),
        { condition = h.in_mathzone }
    ),
    n.s({trig="sum", snippetType="autosnippet", priority=100},
        { n.t("\\sum") },
        { condition = h.in_mathzone }
    ),
    n.s({trig="od", snippetType="autosnippet", priority=100},
        n.fmta("\\od{<>}{<>}",
            { n.i(1), n.i(2) }),
        { condition = h.in_mathzone }
    ),
    n.s({trig="'od", snippetType="autosnippet", priority=200},
        n.fmta("\\od[<>]{<>}{<>}",
            { n.i(1), n.i(2), n.i(3) }),
        { condition = h.in_mathzone }
    ),
    n.s({trig="pd", snippetType="autosnippet", priority=100},
        n.fmta("\\pd{<>}{<>}",
            { n.i(1), n.i(2) }),
        { condition = h.in_mathzone }
    ),
    n.s({trig="'pd", snippetType="autosnippet", priority=200},
        n.fmta("\\pd[<>]{<>}{<>}",
            { n.i(1), n.i(2), n.i(3) }),
        { condition = h.in_mathzone }
    ),
    n.s({trig="dint", snippetType="autosnippet", priority=200},
        n.fmta("\\int_{<>}^{<>}",
            { n.i(1, "-\\infty"), n.i(2, "\\infty") }),
        { condition = h.in_mathzone }
    ),
    n.s({trig="int", snippetType="autosnippet", priority=100},
        { n.t("\\int") },
        { condition = h.in_mathzone }
    ),
    n.s({trig="oint", snippetType="autosnippet", priority=100},
        { n.t("\\oint") },
        { condition = h.in_mathzone }
    ),
    n.s({trig="doint", snippetType="autosnippet", priority=200},
        n.fmta("\\oint_{<>}^{<>}",
            { n.i(1), n.i(2) }),
        { condition = h.in_mathzone }
    ),
    n.s({trig="df", wordTrig=false, snippetType="autosnippet"},
        { n.t("\\diff ") },
        { condition = h.in_mathzone }
    ),
    n.s({trig="pf", wordTrig=false, snippetType="autosnippet"},
        { n.t("\\pdiff") },
        { condition = h.in_mathzone }
    ),
    n.s({trig = "tii", snippetType="autosnippet"},
        n.fmta("\\textit{<>}",
            { n.d(1, h.get_visual) }),
        { condition = h.in_text }
    ),
    n.s({trig = "tbb", snippetType="autosnippet"},
        n.fmta("\\textbf{<>}",
            { n.d(1, h.get_visual) }),
        { condition = h.in_text }
    ),
    n.s({trig = "xb", snippetType="autosnippet"},
        n.fmta("\\text{\\textbf{<>}}",
            { n.d(1, h.get_visual) }),
        { condition = h.in_mathzone }
    ),
    n.s({trig = "tuu", snippetType="autosnippet"},
        n.fmta("\\underline{<>}",
            { n.d(1, h.get_visual) }),
        { condition = h.in_text }
    ),
    n.s({trig = "=", snippetType="autosnippet"},
        { n.t("\\item ") },
        { condition = h.in_itemize * h.line_begin }
    ),
    n.s({trig = "=", snippetType="autosnippet"},
        { n.t("\\item ") },
        { condition = h.in_enumerate * h.line_begin }
    ),
    n.s({trig = "ceil", snippetType="autosnippet"},
        n.fmta("\\left\\lceil <> \\right\\rceil<>",
            { n.i(1), n.i(0) }),
        { condition = h.in_mathzone }
    ),
    n.s({trig = "floor", snippetType="autosnippet"},
        n.fmta("\\left\\lfloor <> \\right\\rfloor",
            { n.i(1) }),
        { condition = h.in_mathzone }
    ),
    n.s({trig="sr", snippetType="autosnippet", wordTrig=false},
        { n.t("^2") },
        { condition = h.in_mathzone }
    ),
    n.s({trig="cb", snippetType="autosnippet", wordTrig=false},
        { n.t("^3") },
        { condition = h.in_mathzone }
    ),
    n.s({trig="tf", snippetType="autosnippet", wordTrig=false},
        n.fmta("^{<>}",
            { n.i(1) }),
        { condition = h.in_mathzone }
    ),
    n.s({trig = "rf", wordTrig=false, snippetType="autosnippet"},
        n.fmta("_{<>}",
            { n.i(1) }),
        { condition = h.in_mathzone }
    ),
    n.s({trig="vm", snippetType="autosnippet"},
        n.fmta("$<>$",
            { n.i(1) }),
        { condition = h.in_text }
    ),
    n.s({trig="dm", snippetType="autosnippet"},
        n.fmta(
        [[
            \[
            <>
            \]
            <>
        ]],
            { n.i(1), n.i(0) }),
        { condition = h.in_text }
    ),
    n.s({trig=[[([A-Za-z])(\d)]], trigEngine="ecma", wordTrig=false, snippetType="autosnippet", priority=100},
        n.fmta("<>_<>",
            { n.f(function(_, parent) return parent.captures[1] end),
              n.f(function(_, parent) return parent.captures[2] end) }),
        { condition = h.in_mathzone }
    ),
    n.s({trig=[[([A-Za-z])_(\d{2})]], trigEngine="ecma", wordTrig=false, snippetType="autosnippet"},
        n.fmta("<>_{<>}",
            { n.f(function(_, parent) return parent.captures[1] end),
              n.f(function(_, parent) return parent.captures[2] end) }),
        { condition = h.in_mathzone }
    ),
    n.s({trig = "tx", snippetType="autosnippet"},
        n.fmta("\\text{<>}",
            { n.i(1) }),
        { condition = h.in_mathzone }
    ),
    n.s({trig = "sq", snippetType="autosnippet"},
        n.fmta("\\sqrt{<>}",
            { n.d(1, h.get_visual) }),
        { condition = h.in_mathzone }
    ),
    n.s({trig = "map", snippetType="autosnippet"},
        n.fmta("<> : <> \\to <>",
            { n.i(1), n.i(2), n.i(0) }),
        { condition = h.in_mathzone }
    ),
    n.s({trig = "eval", snippetType="autosnippet"},
        n.fmta("\\eval{<>}",
            { n.d(1, h.get_visual) }),
        { condition = h.in_mathzone }
    ),
    n.s({trig=[[\^\<(.*?)\|]], trigEngine="ecma", wordTrig=false, snippetType="autosnippet"},
        n.fmta([[\bra{<>}]],
            { n.f(function(_, parent) return parent.captures[1] end) }),
        { condition = h.in_mathzone }
    ),
    n.s({trig=[[\|(.*?)\^\>]], trigEngine="ecma", wordTrig=false, snippetType="autosnippet"},
        n.fmta([[\ket{<>}]],
            { n.f(function(_, parent) return parent.captures[1] end) }),
        { condition = h.in_mathzone }
    ),
    n.s({trig=[[\\bra\{(.*?)\}(.*?)\^\>]], trigEngine="ecma", wordTrig=false, snippetType="autosnippet"},
        n.fmta([[\braket{<>}{<>}]],
            { n.f(function(_, parent) return parent.captures[1] end),
              n.f(function(_, parent) return parent.captures[2] end) }),
        { condition = h.in_mathzone }
    ),
}
