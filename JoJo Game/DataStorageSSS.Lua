local datastore = game:GetService("DataStoreService"):GetDataStore("JoJo1")

function save(player)
	
	if player:FindFirstChild("Data") then
		
		local dataToSave = {}
		
		for i, v in pairs(player:FindFirstChild("Data"):GetChildren())do
			dataToSave[v.Name] = v.Value
		end
		
		datastore:SetAsync(player.UserId)
	end
	
end


game.Players.PlayerAdded:Connect(function(plr)
	
	local dataFolder = Instance.new("Folder", plr)
	dataFolder.Name = "Data"
	
	local stand = Instance.new("StringValue", dataFolder)
	stand.Name = "Stand"
	stand.Value = "None"
	
	local cash = Instance.new("IntValue", dataFolder)
	cash.Name = "Cash"
	cash.Value = 0
	
	if datastore:GetAsync(plr.UserId) then
		
		for i, v in pairs(datastore:GetAsync(plr,UserId))do
			if dataFolder[i] then
				dataFolder[i] = v
				
			end
		end
		
	end
	
end)

game:BindToClose(function()
	for i, v in pairs(game.Players:GetChildren())do
		save(v)
	end
end)

game.Players.PlayerRemoving:Connect(function(plr)
	if game:GetService("RunService"):IsStudio() then
		save(plr)
	end
end)