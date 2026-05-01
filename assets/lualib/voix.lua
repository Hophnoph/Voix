-- voix lua config library

-- local services = require("assets.lualib.services")
local voix = {}

voix.xbps = {
	pkgs = {
		--"go", "git", "neovim"
		-- each of the packages in here will be tracked in a root owned file
	},
}

voix.system = {
	hostname = "",
	keyboard = {
		tty_keyboard = "",
		x_keyboard = "",
	},
	glibc_locales = "",
	timezone = "",
	users = {
		--example_user = {
		--groups = { "wheel", "example_users", "users" },
		--},
	},
}

--services:load() to load services
voix.runit = {
	enabled_services = {
		--services.sv.elogind
		--services.sv.lightdm
		--services.sv.etc services
	},
}

voix.voix_install = {
	--[[
  the table where voix-install command will get install only options
  so when runing voix-install it looks for it, and installs system
]]
}

return voix
