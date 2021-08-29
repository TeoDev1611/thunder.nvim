local M = {}

local TOML = require 'thunder.toml'
local VLOG = require 'thunder.vlog'
local INSPECT = require 'thunder.inspect'

-- Toml parsing
M.toml.parse = TOML.parse
M.toml.strict = TOML.strict
M.toml.version = TOML.version

-- Vlogger creation
M.vlog.new = VLOG.new

--Inspector
M.inspector.inspect = INSPECT.inspect
M.inspector.key = INSPECT.KEY
M.inspector.metatable = INSPECT.METATABLE
M.inspector.version = INSPECT._VERSION

return M
