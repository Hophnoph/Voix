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

return voixtools
