-- basic voix lua config library, they will be much more options later
require("io")

local voixtools = {
	ls = function(path)
		local t = {}
		local result = io.popen('ls "' .. path .. '"')

		if result == nil then
			return nil
		end

		for i in result:lines() do
			t[i] = i
		end

		result:close()
		return t
	end,

	hostname = function()
		local result = io.popen("hostname")

		if result == nil then
			return nil
		end

		local n = ""
		for i in result:lines() do
			n = i
			break
		end

		result:close()
		return n
	end,

	readlink = function(path)
		local result = io.popen('readlink -f "' .. path .. '"')

		if result == nil then
			return nil
		end

		local n = ""
		for i in result:lines() do
			n = i
			break
		end

		result:close()
		return n
	end,
}

local voix = {}

function voix:init()
	local obj = self

	obj.runit.sv = voixtools.ls("/etc/sv")
	obj.system.hostname = voixtools.hostname()
	obj.system.timezone = voixtools.readlink("/etc/localtime")

	return obj
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
