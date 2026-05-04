-- basic voix lua config library, they will be much more options later
-- currently i will focus on implmenting the runit modual
local voix = {}

function voix:load() end

voix.xbps = {}
voix.xbps.pkgs = {} -- string array type

voix.system = {}
voix.system.hostname = ""
voix.system.timezone = ""
voix.system.keyboard = { xorg = "", tty = "" }
voix.system.locale = ""

voix.runit = {}
voix.runit.enabled_services = {} -- string array type
voix.runit.sv = {} -- string enum

-- i will plan how adding users will work exactly
voix.user = {}
voix.root = { enabled = false }
--[[
voix.user.alex = {
  groups = {"wheel", "users"}, or groups = voix.user.default_groups or admin_groups
  options = {
    homedir = true
    etc...
  }
}
--]]

-- i will plan how installer options will work
voix.installer = {}

return voix
