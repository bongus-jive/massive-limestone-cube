local oldInit = init or function() end
local oldUpdate = update or function() end

local protectorate

function init()
	oldInit()
	
	protectorate = world.type() == "protectorate"
end

function update(...)
	oldUpdate(...)
	
	if not storage.limestone and protectorate then
		storage.limestone = true
		world.containerAddItems(entity.id(), {name = "pat_limestone"})
	end
end
