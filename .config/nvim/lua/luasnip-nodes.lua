local nodes = {}

local ls = require("luasnip")
local extras = require("luasnip.extras")

nodes.s = ls.snippet
nodes.sn = ls.snippet_node
nodes.isn = ls.indent_snippet_node
nodes.t = ls.text_node
nodes.i = ls.insert_node
nodes.f = ls.function_node
nodes.c = ls.choice_node
nodes.d = ls.dynamic_node
nodes.r = ls.restore_node
nodes.events = require("luasnip.util.events")
nodes.ai = require("luasnip.nodes.absolute_indexer")
nodes.l = extras.lambda
nodes.rep = extras.rep
nodes.p = extras.partial
nodes.m = extras.match
nodes.n = extras.nonempty
nodes.dl = extras.dynamic_lambda
nodes.fmt = require("luasnip.extras.fmt").fmt
nodes.fmta = require("luasnip.extras.fmt").fmta
nodes.conds = require("luasnip.extras.expand_conditions")
nodes.postfix = require("luasnip.extras.postfix").postfix
nodes.types = require("luasnip.util.types")
nodes.parse = require("luasnip.util.parser").parse_snippet
nodes.ms = ls.multi_snippet

return nodes
