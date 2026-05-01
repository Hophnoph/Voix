local services = {}

services.sv = {
	elogind = 0, -- example services
	getty = 1, -- example services
}

-- write a function that will look into /etc/sv/, and add them to services enum table
function services:load()
	self.sv = {}
	-- ... it will then ls all what's in /etc/sv
	-- and run a loop to add each to sv enum with a zero variable integar
	-- accending each time the loop begins
end

return services
