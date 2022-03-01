script.Parent.Fire.OnServerEvent:Connect(function(player,mousePos)
	
	local raycastParams = RaycastParams.new()
	raycastParams.FilterDescendantsInstances = {player.Character}
	raycastParams.FilterType = Enum.RaycastFilterType.Blacklist
	
	local raycastResult = workspace:Raycast(script.Parent.Handle.Position,(mousePos - script.Parent.Handle.Position)*300,raycastParams)
	if raycastResult then
		local hitPart = raycastResult.Instance
		local model = hitPart:FindFirstAncestorOfClass("Model")
		
		if model then
			if model:FindFirstAncestorOfClass("Model") then
				
				if model then
					if model:FindFirstChild("Humanoid") then
						model.Humanoid.Health = 30
					end
				end
			end
		end
	end
end)
