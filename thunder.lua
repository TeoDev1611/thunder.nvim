local TOML = require("utils.toml")
local LOG = require("utils.log")
local INSPECT = require("utils.inspect")

local string = [[
[plugins]
example = {}

[plugins.example]
name="test"
]]

setup = TOML.parse(string)

print(INSPECT.inspect(setup))

local function GenerateToml()
    if setup ~= nil then
        local tomlStr = TOML.encode(setup)
        local file = io.open("./thunder.toml", "w")
        file:write(tomlStr)
        file:close()
    else
        LOG.error("Table is empty please add the plugins for install")
    end
end

GenerateToml()