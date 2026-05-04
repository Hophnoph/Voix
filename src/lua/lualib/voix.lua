-- basic voix lua config library, they will be much more options later
require("io")

local voixtools = {}

function voixtools.ls(path)
	local t = {}
	local result = io.popen('ls "' .. path .. '"')

	if result == nil then
		return nil
	end

	for i in result:lines() do
		t[i] = i
	end

	return t
end

function voixtools.hostname()
	local result = io.popen("hostname")
	return result
end

local voix = {}

function voix:load()
	self.runit.sv = voixtools.ls("/etc/sv/")
	self.system.hostname = voixtools.hostname()
end

function voix:init()
	return self
end

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
