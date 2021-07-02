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
		
		local h = world.containerAddItems(entity.id(), {name = "pat_limestone"})
		if h then
			world.spawnItem(h, entity.position())
		end
	end
end
