local voix = require("voix")

local config = voix:init()

config.system.hostname = "runnables"
config.system.timezone = "/usr/share/zoneinfo/Africa/Cairo"

return config
