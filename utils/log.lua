log = {}

local time = os.date()
log.info = function(msg)
    print('\27[32m'.. "[ INFO ".. time .. " ]  " ..'\27[0m' .. msg)
end

log.warn = function (msg)
    print('\27[33m'.. "[ WARN ".. time .. " ]  "..'\27[0m'..msg)
end

log.error = function (msg)
    print('\27[31m'.. "[ ERROR ".. time .. " ] "..'\27[0m' .. msg)
    os.exit(1)
end

return log