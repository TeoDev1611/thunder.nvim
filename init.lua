local toml = require 'thunder.toml'
local logger = require 'thunder.vlog'

print(toml.parse [[
name = 'asd'
]])

local log = logger.new {
  plugin = 'my_cool_plugin',
}

log.info("asdasd")
