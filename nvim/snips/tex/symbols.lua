local n = require("luasnip-nodes")
local h = require("luasnip-helpers")

return {
    n.s({trig="//", snippetType="autosnippet"},
        n.fmta("\\frac{<>}{<>}",
            { n.i(1), n.i(2), }),
        { condition = h.in_mathzone }
    ),
    n.s({trig="oo", snippetType="autosnippet"},
        { n.t("\\infty") },
        { condition = h.in_mathzone }
    ),
    n.s ({trig="sin", snippetType="autosnippet"},
        { n.t("\\sin") },
        { condition = h.in_mathzone }
    ),
    n.s ({trig="cos", snippetType="autosnippet"},
        { n.t("\\cos") },
        { condition = h.in_mathzone }
    ),
    n.s ({trig="tan", snippetType="autosnippet"},
        { n.t("\\tan") },
        { condition = h.in_mathzone }
    ),
    n.s ({trig="csc", snippetType="autosnippet"},
        { n.t("\\csc") },
        { condition = h.in_mathzone }
    ),
    n.s ({trig="sec", snippetType="autosnippet"},
        { n.t("\\sec") },
        { condition = h.in_mathzone }
    ),
    n.s ({trig="cot", snippetType="autosnippet"},
        { n.t("\\cot") },
        { condition = h.in_mathzone }
    ),
    n.s ({trig="ln", snippetType="autosnippet"},
        { n.t("\\ln") },
        { condition = h.in_mathzone }
    ),
    n.s({trig="inn", snippetType="autosnippet"},
        { n.t("\\in") },
        { condition = h.in_mathzone }
    ),
    n.s({trig="=>", snippetType="autosnippet"},
        { n.t("\\implies") },
        { condition = h.in_mathzone }
    ),
    n.s({trig="=<", snippetType="autosnippet"},
        { n.t("\\impliedby ") },
        { condition = h.in_mathzone }
    ),
    n.s({trig="iff", snippetType="autosnippet"},
        { n.t("\\iff") },
        { condition = h.in_mathzone }
    ),
    n.s({trig="NN", snippetType="autosnippet"},
        { n.t("\\N") }
    ),
    n.s({trig="RR", snippetType="autosnippet"},
        { n.t("\\R") }
    ),
    n.s({trig="ZZ", snippetType="autosnippet"},
        { n.t("\\Z") }
    ),
    n.s({trig="OO", snippetType="autosnippet"},
        { n.t("\\emptyset") }
    ),
    n.s({trig="QQ", snippetType="autosnippet"},
        { n.t("\\Q") }
    ),
    n.s({trig="CC", snippetType="autosnippet"},
        { n.t("\\C") }
    ),
    n.s({trig="EE", snippetType="autosnippet"},
        { n.t("\\exists") },
        { condition = h.in_mathzone }
    ),
    n.s({trig="AA", snippetType="autosnippet"},
        { n.t("\\forall") },
        { condition = h.in_mathzone }
    ),
    n.s({trig="<=", snippetType="autosnippet"},
        { n.t("\\le") },
        { condition = h.in_mathzone }
    ),
    n.s({trig=">=", snippetType="autosnippet"},
        { n.t("\\ge") },
        { condition = h.in_mathzone }
    ),
    n.s({trig="<<", snippetType="autosnippet"},
        { n.t("\\ll") },
        { condition = h.in_mathzone }
    ),
    n.s({trig=">>", snippetType="autosnippet"},
        { n.t("\\gg") },
        { condition = h.in_mathzone }
    ),
    n.s({trig="!=", snippetType="autosnippet"},
        { n.t("\\neq") },
        { condition = h.in_mathzone }
    ),
    n.s({trig="->", snippetType="autosnippet", priority=100},
        { n.t("\\to") },
        { condition = h.in_mathzone }
    ),
    n.s({trig="<->", snippetType="autosnippet", priority=200},
        { n.t("\\leftrightarrow") },
        { condition = h.in_mathzone }
    ),
    n.s({trig="^^", snippetType="autosnippet"},
        { n.t("\\uparrow") },
        { condition = h.in_mathzone }
    ),
    n.s({trig="vv", snippetType="autosnippet"},
        { n.t("\\downarrow") },
        { condition = h.in_mathzone }
    ),
    n.s({trig="!>", snippetType="autosnippet"},
        { n.t("\\mapsto") },
        { condition = h.in_mathzone }
    ),
    n.s({trig="stm", snippetType="autosnippet"},
        { n.t("\\setminus") },
        { condition = h.in_mathzone }
    ),
    n.s({trig="||", snippetType="autosnippet"},
        { n.t("\\mid") },
        { condition = h.in_mathzone }
    ),
    n.s({trig="**", snippetType="autosnippet"},
        { n.t("\\cdot") },
        { condition = h.in_mathzone }
    ),
    n.s({trig="xx", snippetType="autosnippet"},
        { n.t("\\times") },
        { condition = h.in_mathzone }
    ),
    n.s({trig="cc", snippetType="autosnippet"},
        { n.t("\\subseteq") },
        { condition = h.in_mathzone }
    ),
    n.s({trig="cq", snippetType="autosnippet"},
        { n.t("\\subset") },
        { condition = h.in_mathzone }
    ),
    n.s({trig="qq", snippetType="autosnippet"},
        { n.t("\\supseteq") },
        { condition = h.in_mathzone }
    ),
    n.s({trig="qc", snippetType="autosnippet"},
        { n.t("\\supset") },
        { condition = h.in_mathzone }
    ),
    n.s({trig="Nn", snippetType="autosnippet"},
        { n.t("\\cap") },
        { condition = h.in_mathzone }
    ),
    n.s({trig="UU", snippetType="autosnippet"},
        { n.t("\\cup") },
        { condition = h.in_mathzone }
    ),
    n.s({trig="uU", snippetType="autosnippet"},
        { n.t("\\sqcup") },
        { condition = h.in_mathzone }
    ),
    n.s({trig="bar", snippetType="autosnippet", priority=100},
        n.fmta("\\bar{<>}",
            { n.i(1) }),
        { condition = h.in_mathzone }
    ),
    n.s({trig=[[((\\[a-zA-Z]+)|[A-Za-z0-9])bar]], trigEngine="ecma", wordTrig=false, snippetType="autosnippet", priority=200},
        n.fmta("\\bar{<>}",
            { n.f(function(_, parent) return parent.captures[1] end) }),
        { condition = h.in_mathzone }
    ),

    n.s({trig="hat", snippetType="autosnippet", priority=100},
        n.fmta("\\hat{<>}",
            { n.i(1) }),
        { condition = h.in_mathzone }
    ),
    n.s({trig=[[(\\[a-zA-Z]+|[A-Za-z0-9]|\\[a-z]+\{\\?[A-Za-z0-9]+\})hat]],
            wordTrig=false, trigEngine="ecma", snippetType="autosnippet", priority=200},
        n.fmta("\\hat{<>}",
            { n.f(function(_, parent) return parent.captures[1] end) }),
        { condition = h.in_mathzone }
    ),

    n.s({trig=[[!\?|\?!]], trigEngine="ecma", snippetType="autosnippet", priority=100},
        n.fmta("\\vec{<>}",
            { n.i(1) }),
        { condition = h.in_mathzone }
    ),
    n.s({trig=[[(\\[a-zA-Z]+|[A-Za-z0-9]|\\[a-z]+\{\\?[A-Za-z0-9]+\})(!\?|\?!)]],
            wordTrig=false, trigEngine="ecma", snippetType="autosnippet", priority=200},
        n.fmta("\\vec{<>}",
            { n.f(function(_, parent) return parent.captures[1] end) }),
        { condition = h.in_mathzone }
    ),

    n.s({trig="t(o+)t", regTrig=true, snippetType="autosnippet", priority=100},
        n.fmta("\\<>ot{<>}",
            { n.f(function(_, parent) return string.rep("d", string.len(parent.captures[1])) end),
              n.i(1) }),
        { condition = h.in_mathzone }
    ),
    n.s({trig=[[(\\[a-zA-Z]+|[A-Za-z0-9]|\\[a-z]+\{\\?[A-Za-z0-9]+\})t(o+)t]],
            wordTrig=false, trigEngine="ecma", snippetType="autosnippet", priority=200},
        n.fmta("\\<>ot{<>}",
            { n.f(function(_, parent) return string.rep("d", string.len(parent.captures[2])) end),
              n.f(function(_, parent) return parent.captures[1] end) }),
        { condition = h.in_mathzone }
    ),

    n.s({trig="'ti", regTrig=true, snippetType="autosnippet", priority=100},
        n.fmta("\\tilde{<>}",
            { n.i(1) }),
        { condition = h.in_mathzone }
    ),
    n.s({trig=[[(\\[a-zA-Z]+|[A-Za-z0-9]|\\[a-z]+\{\\?[A-Za-z0-9]+\})'ti]],
            wordTrig=false, trigEngine="ecma", snippetType="autosnippet", priority=200},
        n.fmta("\\tilde{<>}",
            { n.f(function(_, parent) return parent.captures[1] end) }),
        { condition = h.in_mathzone }
    ),

    n.s({trig=[[([a-zA-Z])(:#|#:)]], wordTrig=false, trigEngine="ecma", snippetType="autosnippet", priority=200},
        n.fmta("\\mathcal{<>}",
            { n.f(function(_, parent) return string.upper(parent.captures[1]) end) }),
        { condition = h.in_mathzone }
    ),
    n.s({trig="(:#|#:)", wordTrig=false, trigEngine="ecma", snippetType="autosnippet", priority=100},
        n.fmta("\\mathcal{<>}",
            { n.i(1) }),
        { condition = h.in_mathzone }
    ),

    n.s({trig=[[([a-zA-Z])(@#|#@)]], wordTrig=false, trigEngine="ecma", snippetType="autosnippet", priority=200},
        n.fmta("\\mathbb{<>}",
            { n.f(function(_, parent) return string.upper(parent.captures[1]) end) }),
        { condition = h.in_mathzone }
    ),
    n.s({trig="1(@#|#@)", wordTrig=false, trigEngine="ecma", snippetType="autosnippet", priority=200},
        { n.t("\\1") },
        { condition = h.in_mathzone }
    ),
    n.s({trig="(@#|#@)", wordTrig=false, trigEngine="ecma", snippetType="autosnippet", priority=100},
        n.fmta("\\mathbb{<>}",
            { n.i(1) }),
        { condition = h.in_mathzone }
    ),
    n.s({trig="mfr", wordTrig=false, trigEngine="ecma", snippetType="autosnippet"},
        n.fmta("\\mathfrak{<>}",
            { n.i(1) }),
        { condition = h.in_mathzone }
    ),
    n.s({trig="mrm", wordTrig=false, trigEngine="ecma", snippetType="autosnippet"},
        n.fmta("\\mathrm{<>}",
            { n.i(1) }),
        { condition = h.in_mathzone }
    ),
    n.s({trig="msf", wordTrig=false, trigEngine="ecma", snippetType="autosnippet"},
        n.fmta("\\mathsf{<>}",
            { n.i(1) }),
        { condition = h.in_mathzone }
    ),

    n.s({trig="'hb", snippetType="autosnippet"},
        { n.t("\\hbar") },
        { condition = h.in_mathzone }
    ),
    n.s({trig="'pi", snippetType="autosnippet"},
        { n.t("\\pi") },
        { condition = h.in_mathzone }
    ),
    n.s({trig="'ph", snippetType="autosnippet"},
        { n.t("\\phi") },
        { condition = h.in_mathzone }
    ),
    n.s({trig="'Ph", snippetType="autosnippet"},
        { n.t("\\Phi") },
        { condition = h.in_mathzone }
    ),
    n.s({trig="'vp", snippetType="autosnippet"},
        { n.t("\\varphi") },
        { condition = h.in_mathzone }
    ),
    n.s({trig="'th", snippetType="autosnippet"},
        { n.t("\\theta") },
        { condition = h.in_mathzone }
    ),
    n.s({trig="'Th", snippetType="autosnippet"},
        { n.t("\\Theta") },
        { condition = h.in_mathzone }
    ),
    n.s({trig="'Om", snippetType="autosnippet"},
        { n.t("\\Omega") },
        { condition = h.in_mathzone }
    ),
    n.s({trig="'om", snippetType="autosnippet"},
        { n.t("\\omega") },
        { condition = h.in_mathzone }
    ),
    n.s({trig="'ep", snippetType="autosnippet"},
        { n.t("\\epsilon") },
        { condition = h.in_mathzone }
    ),
    n.s({trig="'ta", snippetType="autosnippet"},
        { n.t("\\tau") },
        { condition = h.in_mathzone }
    ),
    n.s({trig="'rh", snippetType="autosnippet"},
        { n.t("\\rho") },
        { condition = h.in_mathzone }
    ),
    n.s({trig="'ch", snippetType="autosnippet"},
        { n.t("\\chi") },
        { condition = h.in_mathzone }
    ),
    n.s({trig="'na", snippetType="autosnippet"},
        { n.t("\\nabla") },
        { condition = h.in_mathzone }
    ),
    n.s({trig="del", snippetType="autosnippet"},
        { n.t("\\Del") },
        { condition = h.in_mathzone }
    ),
    n.s({trig="==", snippetType="autosnippet"},
        { n.t("\\equiv") },
        { condition = h.in_mathzone }
    ),
    n.s({trig="~~", snippetType="autosnippet"},
        { n.t("\\approx") },
        { condition = h.in_mathzone }
    ),
    n.s({trig="=~", snippetType="autosnippet"},
        { n.t("\\cong") },
        { condition = h.in_mathzone }
    ),
    n.s({trig="'de", snippetType="autosnippet"},
        { n.t("\\delta") },
        { condition = h.in_mathzone }
    ),
    n.s({trig="'De", snippetType="autosnippet"},
        { n.t("\\Delta") },
        { condition = h.in_mathzone }
    ),
    n.s({trig="'nu", snippetType="autosnippet"},
        { n.t("\\nu") },
        { condition = h.in_mathzone }
    ),
    n.s({trig="'mu", snippetType="autosnippet"},
        { n.t("\\mu") },
        { condition = h.in_mathzone }
    ),
    n.s({trig="'ps", snippetType="autosnippet"},
        { n.t("\\psi") },
        { condition = h.in_mathzone }
    ),
    n.s({trig="'Ps", snippetType="autosnippet"},
        { n.t("\\Psi") },
        { condition = h.in_mathzone }
    ),
    n.s({trig="'ve", snippetType="autosnippet"},
        { n.t("\\varepsilon") },
        { condition = h.in_mathzone }
    ),
    n.s({trig="'al", snippetType="autosnippet"},
        { n.t("\\alpha") },
        { condition = h.in_mathzone }
    ),
    n.s({trig="'be", snippetType="autosnippet"},
        { n.t("\\beta") },
        { condition = h.in_mathzone }
    ),
    n.s({trig="'ga", snippetType="autosnippet"},
        { n.t("\\gamma") },
        { condition = h.in_mathzone }
    ),
    n.s({trig="'Ga", snippetType="autosnippet"},
        { n.t("\\Gamma") },
        { condition = h.in_mathzone }
    ),
    n.s({trig="'la", snippetType="autosnippet"},
        { n.t("\\lambda") },
        { condition = h.in_mathzone }
    ),
    n.s({trig="'La", snippetType="autosnippet"},
        { n.t("\\Lambda") },
        { condition = h.in_mathzone }
    ),
    n.s({trig="'el", snippetType="autosnippet"},
        { n.t("\\ell") },
        { condition = h.in_mathzone }
    ),
    n.s({trig="'si", snippetType="autosnippet"},
        { n.t("\\sigma") },
        { condition = h.in_mathzone }
    ),
    n.s({trig="'Si", snippetType="autosnippet"},
        { n.t("\\Sigma") },
        { condition = h.in_mathzone }
    ),
    n.s({trig="'xi", snippetType="autosnippet"},
        { n.t("\\xi") },
        { condition = h.in_mathzone }
    ),
    n.s({trig="'ka", snippetType="autosnippet"},
        { n.t("\\kappa") },
        { condition = h.in_mathzone }
    ),
    n.s({trig="'ci", snippetType="autosnippet"},
        { n.t("\\circ") },
        { condition = h.in_mathzone }
    ),
    n.s({trig="'dg", snippetType="autosnippet", wordTrig=false},
        { n.t("^{\\circ}") },
        { condition = h.in_mathzone }
    ),
    n.s({trig="'da", snippetType="autosnippet", wordTrig=false},
        { n.t("^{\\dag}") },
        { condition = h.in_mathzone }
    ),
    n.s({trig="oxx", snippetType="autosnippet"},
        { n.t("\\otimes") },
        { condition = h.in_mathzone }
    ),
    n.s({trig="opp", snippetType="autosnippet"},
        { n.t("\\oplus") },
        { condition = h.in_mathzone }
    ),
    n.s({trig="upp", snippetType="autosnippet"},
        { n.t("\\uplus") },
        { condition = h.in_mathzone }
    ),
    n.s({trig="pm", snippetType="autosnippet"},
        { n.t("\\pm") },
        { condition = h.in_mathzone }
    ),
    n.s({trig="<|", snippetType="autosnippet"},
        { n.t("\\lhd") },
        { condition = h.in_mathzone }
    ),
    n.s({trig="|>", snippetType="autosnippet"},
        { n.t("\\rhd") },
        { condition = h.in_mathzone }
    ),
    n.s({trig=",,", snippetType="autosnippet", wordTrig = false},
        { n.t("\\,") },
        { condition = h.in_mathzone }
    ),
}
