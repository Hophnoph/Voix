--[[
metapkgs is simply a module containing multiple things that voix can implment for you

for example you want firewall you can import metapkgs into your config file

you do something like this:
metapkgs.security.firewall.ufw.enable = true
metapkgs.security.firewall.ufw.options = {
  ports = {"1000", "808"}
}

or maybe something like this:
metapkgs.wm.wayland.kde.enable = true
you get kde
]]
