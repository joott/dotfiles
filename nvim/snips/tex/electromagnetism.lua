local n = require("luasnip-nodes")
local h = require("luasnip-helpers")

return {
    n.s({trig=";rr", snippetType="autosnippet"},
        { n.t("\\scriptr") },
        { condition = h.in_mathzone }
    ),
}
