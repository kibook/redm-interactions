local PickerIsOpen = false

local entityEnumerator = {
	__gc = function(enum)
		if enum.destructor and enum.handle then
			enum.destructor(enum.handle)
		end
		enum.destructor = nil
		enum.handle = nil
	end
}

function EnumerateEntities(firstFunc, nextFunc, endFunc)
	return coroutine.wrap(function()
		local iter, id = firstFunc()

		if not id or id == 0 then
			endFunc(iter)
			return
		end

		local enum = {handle = iter, destructor = endFunc}
		setmetatable(enum, entityEnumerator)

		local next = true
		repeat
			coroutine.yield(id)
			next, id = nextFunc(iter)
		until not next

		enum.destructor, enum.handle = nil, nil
		endFunc(iter)
	end)
end

function EnumerateObjects()
	return EnumerateEntities(FindFirstObject, FindNextObject, EndFindObject)
end

function IsPlayerNearCoords(coords, radius)
	local playerCoords = GetEntityCoords(PlayerPedId())

	return GetDistanceBetweenCoords(playerCoords.x, playerCoords.y, playerCoords.z, coords.x, coords.y, coords.z, true) <= radius
end

function HasCompatibleModel(entity, models)
	local entityModel = GetEntityModel(entity)

	for _, model in ipairs(models) do
		if entityModel  == GetHashKey(model) then
			return true
		end
	end
	return false
end

function CanStartInteractionAtObject(interaction, object)
	return IsPlayerNearCoords(GetEntityCoords(object), interaction.radius) and HasCompatibleModel(object, interaction.objects)
end

function StartInteractionAtObject(interaction)
	local objectHeading = GetEntityHeading(interaction.object)
	local objectCoords = GetEntityCoords(interaction.object)

	local r = math.rad(objectHeading)
	local cosr = math.cos(r)
	local sinr = math.sin(r)

	local x = interaction.x * cosr - interaction.y * sinr + objectCoords.x
	local y = interaction.y * cosr + interaction.x * sinr + objectCoords.y
	local z = interaction.z + objectCoords.z
	local h = interaction.heading + objectHeading

	ClearPedTasksImmediately(PlayerPedId())

	TaskStartScenarioAtPosition(PlayerPedId(), GetHashKey(interaction.scenario), x, y, z, h, -1, false, true)
end

function IsCompatible(t)
	return not t.isCompatible or t.isCompatible()
end

function SortInteractionsByName(a, b)
	return a.scenario < b.scenario
end

function StartInteraction()
	local availableInteractions = {}

	for _, interaction in ipairs(Config.Interactions) do
		if IsCompatible(interaction) then
			for object in EnumerateObjects() do
				if CanStartInteractionAtObject(interaction, object, objectCoords) then
					for _, scenario in ipairs(interaction.scenarios) do
						if IsCompatible(scenario) then
							table.insert(availableInteractions, {
								x = interaction.x,
								y = interaction.y,
								z = interaction.z,
								heading = interaction.heading,
								scenario = scenario.name,
								object = object,
							})
						end
					end
				end
			end
		end
	end

	if #availableInteractions == 1 then
		StartInteractionAtObject(availableInteractions[1])
	elseif #availableInteractions > 0 then
		table.sort(availableInteractions, SortInteractionsByName)

		SendNUIMessage({
			type = 'showInteractionPicker',
			interactions = json.encode(availableInteractions)
		})

		PickerIsOpen = true
	else
		SendNUIMessage({
			type = 'hideInteractionPicker'
		})


		PickerIsOpen = false
	end
end

function StopInteraction()
	ClearPedTasks(PlayerPedId())
end

RegisterNUICallback('startInteraction', function(data, cb)
	StartInteractionAtObject(data)
	cb({})
end)

RegisterNUICallback('stopInteraction', function(data, cb)
	StopInteraction()
	cb({})
end)

RegisterCommand('interact', function(source, args, raw)
	StartInteraction()
end, false)

CreateThread(function()
	while true do
		Wait(0)

		if IsControlJustPressed(0, Config.InteractControl) then
			StartInteraction()
		end

		if PickerIsOpen then
			if IsControlJustPressed(0, 0x911CB09E) then
				SendNUIMessage({
					type = 'moveSelectionUp'
				})
			end

			if IsControlJustPressed(0, 0x4403F97F) then
				SendNUIMessage({
					type = 'moveSelectionDown'
				})
			end

			if IsControlJustPressed(0, 0x43DBF61F) then
				SendNUIMessage({
					type = 'startInteraction'
				})
			end

			if IsControlJustPressed(0, 0x308588E6) then
				SendNUIMessage({
					type = 'hideInteractionPicker'
				})
				PickerIsOpen = false
			end
		end
	end
end)
