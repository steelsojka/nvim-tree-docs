local template = require "nvim-tree-docs.template"

local M = {}

M['function'] = template.compile [[
--- Description
<? for _, p in ctx.for_each(ctx.parameters) do ?>
-- @param <%= ctx.text(p.name) %>: the <%= ctx.text(p.name) %n>
<? end ?>
<? if ctx['return'] then ?>
-- @returns
<? end ?>
]]

M['variable'] = template.compile [[
--- Description
]]

return M
