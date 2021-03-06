local _0_0 = nil
do
  local name_0_ = "nvim-tree-docs.utils"
  local loaded_0_ = package.loaded[name_0_]
  local module_0_ = nil
  if ("table" == type(loaded_0_)) then
    module_0_ = loaded_0_
  else
    module_0_ = {}
  end
  module_0_["aniseed/module"] = name_0_
  module_0_["aniseed/locals"] = (module_0_["aniseed/locals"] or {})
  module_0_["aniseed/local-fns"] = (module_0_["aniseed/local-fns"] or {})
  package.loaded[name_0_] = module_0_
  _0_0 = module_0_
end
local function _2_(...)
  local ok_3f_0_, val_0_ = nil, nil
  local function _2_()
    return {require("aniseed.core")}
  end
  ok_3f_0_, val_0_ = pcall(_2_)
  if ok_3f_0_ then
    _0_0["aniseed/local-fns"] = {require = {core = "aniseed.core"}}
    return val_0_
  else
    return print(val_0_)
  end
end
local _local_0_ = _2_(...)
local core = _local_0_[1]
local _2amodule_2a = _0_0
local _2amodule_name_2a = "nvim-tree-docs.utils"
do local _ = ({nil, _0_0, {{}, nil, nil, nil}})[2] end
local ns = nil
do
  local v_0_ = nil
  do
    local v_0_0 = vim.api.nvim_create_namespace("blorg")
    _0_0["ns"] = v_0_0
    v_0_ = v_0_0
  end
  _0_0["aniseed/locals"]["ns"] = v_0_
  ns = v_0_
end
local get_start_node = nil
do
  local v_0_ = nil
  do
    local v_0_0 = nil
    local function get_start_node0(entry)
      local _4_
      do
        local _3_0 = entry
        if _3_0 then
          local _5_0 = _3_0.start_point
          if _5_0 then
            _4_ = _5_0.node
          else
            _4_ = _5_0
          end
        else
          _4_ = _3_0
        end
      end
      local function _6_()
        local _5_0 = entry
        if _5_0 then
          local _7_0 = _5_0.definition
          if _7_0 then
            return _7_0.node
          else
            return _7_0
          end
        else
          return _5_0
        end
      end
      return (_4_ or _6_())
    end
    v_0_0 = get_start_node0
    _0_0["get-start-node"] = v_0_0
    v_0_ = v_0_0
  end
  _0_0["aniseed/locals"]["get-start-node"] = v_0_
  get_start_node = v_0_
end
local get_end_node = nil
do
  local v_0_ = nil
  do
    local v_0_0 = nil
    local function get_end_node0(entry)
      local _4_
      do
        local _3_0 = entry
        if _3_0 then
          local _5_0 = _3_0.end_point
          if _5_0 then
            _4_ = _5_0.node
          else
            _4_ = _5_0
          end
        else
          _4_ = _3_0
        end
      end
      local function _6_()
        local _5_0 = entry
        if _5_0 then
          local _7_0 = _5_0.definition
          if _7_0 then
            return _7_0.node
          else
            return _7_0
          end
        else
          return _5_0
        end
      end
      return (_4_ or _6_())
    end
    v_0_0 = get_end_node0
    _0_0["get-end-node"] = v_0_0
    v_0_ = v_0_0
  end
  _0_0["aniseed/locals"]["get-end-node"] = v_0_
  get_end_node = v_0_
end
local get_position = nil
do
  local v_0_ = nil
  do
    local v_0_0 = nil
    local function get_position0(keys, default_position, entry)
      local i = 1
      local result = nil
      while (not result and (i <= #keys)) do
        do
          local key = keys[i]
          local match_3f = entry[key]
          local has_match_3f = (core["table?"](match_3f) and match_3f.node)
          local position_3f = nil
          if has_match_3f then
            position_3f = (match_3f.position or default_position)
          else
            position_3f = nil
          end
          if has_match_3f then
            if (position_3f == "start") then
              result = {(match_3f.node):start()}
            else
              result = {(match_3f.node):end_()}
            end
          end
        end
        i = core.inc(i)
      end
      return unpack(result)
    end
    v_0_0 = get_position0
    _0_0["get-position"] = v_0_0
    v_0_ = v_0_0
  end
  _0_0["aniseed/locals"]["get-position"] = v_0_
  get_position = v_0_
end
local get_start_position = nil
do
  local v_0_ = nil
  do
    local v_0_0 = nil
    local function _3_(...)
      return get_position({"start_point", "definition"}, "start", ...)
    end
    v_0_0 = _3_
    _0_0["get-start-position"] = v_0_0
    v_0_ = v_0_0
  end
  _0_0["aniseed/locals"]["get-start-position"] = v_0_
  get_start_position = v_0_
end
local get_end_position = nil
do
  local v_0_ = nil
  do
    local v_0_0 = nil
    local function _3_(...)
      return get_position({"end_point", "definition"}, "end", ...)
    end
    v_0_0 = _3_
    _0_0["get-end-position"] = v_0_0
    v_0_ = v_0_0
  end
  _0_0["aniseed/locals"]["get-end-position"] = v_0_
  get_end_position = v_0_
end
local get_edit_start_position = nil
do
  local v_0_ = nil
  do
    local v_0_0 = nil
    local function _3_(...)
      return get_position({"edit_start_point", "start_point", "definition"}, "start", ...)
    end
    v_0_0 = _3_
    _0_0["get-edit-start-position"] = v_0_0
    v_0_ = v_0_0
  end
  _0_0["aniseed/locals"]["get-edit-start-position"] = v_0_
  get_edit_start_position = v_0_
end
local get_edit_end_position = nil
do
  local v_0_ = nil
  do
    local v_0_0 = nil
    local function _3_(...)
      return get_position({"edit_end_point", "end_point", "definition"}, "end", ...)
    end
    v_0_0 = _3_
    _0_0["get-edit-end-position"] = v_0_0
    v_0_ = v_0_0
  end
  _0_0["aniseed/locals"]["get-edit-end-position"] = v_0_
  get_edit_end_position = v_0_
end
local get_bufnr = nil
do
  local v_0_ = nil
  do
    local v_0_0 = nil
    local function get_bufnr0(bufnr)
      return (bufnr or vim.api.nvim_get_current_buf())
    end
    v_0_0 = get_bufnr0
    _0_0["get-bufnr"] = v_0_0
    v_0_ = v_0_0
  end
  _0_0["aniseed/locals"]["get-bufnr"] = v_0_
  get_bufnr = v_0_
end
local get_buf_content = nil
do
  local v_0_ = nil
  do
    local v_0_0 = nil
    local function get_buf_content0(start_row, start_col, end_row, end_col, bufnr)
      return vim.api.nvim_buf_get_lines(bufnr, start_row, (end_row + 1), false)
    end
    v_0_0 = get_buf_content0
    _0_0["get-buf-content"] = v_0_0
    v_0_ = v_0_0
  end
  _0_0["aniseed/locals"]["get-buf-content"] = v_0_
  get_buf_content = v_0_
end
local get = nil
do
  local v_0_ = nil
  do
    local v_0_0 = nil
    local function get0(path, tbl, default_3f)
      local segments = nil
      if (type(path) == "string") then
        segments = vim.split(path, "%.")
      else
        segments = path
      end
      local result = tbl
      for _, segment in ipairs(segments) do
        if (type(result) == "table") then
          result = result[segment]
        else
          result = nil
        end
      end
      if (result == nil) then
        return default_3f
      else
        return result
      end
    end
    v_0_0 = get0
    _0_0["get"] = v_0_0
    v_0_ = v_0_0
  end
  _0_0["aniseed/locals"]["get"] = v_0_
  get = v_0_
end
local make_inverse_list = nil
do
  local v_0_ = nil
  do
    local v_0_0 = nil
    local function make_inverse_list0(tbl)
      local result = {}
      for i, v in ipairs(tbl) do
        result[v] = i
      end
      return result
    end
    v_0_0 = make_inverse_list0
    _0_0["make-inverse-list"] = v_0_0
    v_0_ = v_0_0
  end
  _0_0["aniseed/locals"]["make-inverse-list"] = v_0_
  make_inverse_list = v_0_
end
local get_all_truthy_keys = nil
do
  local v_0_ = nil
  do
    local v_0_0 = nil
    local function get_all_truthy_keys0(tbl)
      local result = {}
      for k, v in pairs(tbl) do
        if v then
          table.insert(result, k)
        end
      end
      return result
    end
    v_0_0 = get_all_truthy_keys0
    _0_0["get-all-truthy-keys"] = v_0_0
    v_0_ = v_0_0
  end
  _0_0["aniseed/locals"]["get-all-truthy-keys"] = v_0_
  get_all_truthy_keys = v_0_
end
local func_3f = nil
do
  local v_0_ = nil
  do
    local v_0_0 = nil
    local function func_3f0(v)
      return (type(v) == "function")
    end
    v_0_0 = func_3f0
    _0_0["func?"] = v_0_0
    v_0_ = v_0_0
  end
  _0_0["aniseed/locals"]["func?"] = v_0_
  func_3f = v_0_
end
local method_3f = nil
do
  local v_0_ = nil
  do
    local v_0_0 = nil
    local function method_3f0(v, key)
      return ((type(v) == "table") and (type(v[key]) == "function"))
    end
    v_0_0 = method_3f0
    _0_0["method?"] = v_0_0
    v_0_ = v_0_0
  end
  _0_0["aniseed/locals"]["method?"] = v_0_
  method_3f = v_0_
end
local highlight_marks = nil
do
  local v_0_ = nil
  do
    local v_0_0 = nil
    local function highlight_marks0(marks, bufnr)
      for _, mark in ipairs(marks) do
        local line = (mark.line - 1)
        vim.highlight.range(bufnr, ns, "Visual", {line, mark.start}, {line, mark.stop})
      end
      return nil
    end
    v_0_0 = highlight_marks0
    _0_0["highlight-marks"] = v_0_0
    v_0_ = v_0_0
  end
  _0_0["aniseed/locals"]["highlight-marks"] = v_0_
  highlight_marks = v_0_
end
return nil