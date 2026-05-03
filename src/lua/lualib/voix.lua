local voix = {}

voix.xbps = {
	pkgs = {},
}

voix.system = {
	hostname = "",
	keyboard = {
		tty_keyboard = "",
		x_keyboard = "",
	},
	glibc_locales = "",
	timezone = "",
	users = {},
}

voix.runit = {
	enabled_services = {},
}

voix.install = {}

return voix
