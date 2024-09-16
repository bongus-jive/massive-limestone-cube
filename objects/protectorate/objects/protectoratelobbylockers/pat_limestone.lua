local _containerCallback = containerCallback
function containerCallback()
	if _containerCallback then _containerCallback() end

	if storage.pat_limestone then return end
	storage.pat_limestone = true

	if world.type() ~= "protectorate" then return end

	local leftover = world.containerAddItems(entity.id(), "pat_limestone")
	if leftover then
		world.spawnItem(leftover, entity.position())
	end
end
