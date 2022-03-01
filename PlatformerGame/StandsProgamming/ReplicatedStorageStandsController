local uis = game:GetService("UserInputService")
local player = game.Players.LocalPlayer

uis.InputBegan:Connect(function(input,gpe)
	if not gpe then
		if input.KeyCode == Enum.KeyCode.Q then
		
			if workspace:WaitForChild(player.Name):FindFirstChild("LionPlatinum") then
				
				game:GetService("ReplicatedStorage"):WaitForChild("StandRemote"):FireServer("Unequip")
				
			else
				game:GetService("ReplicatedStorage"):WaitForChild("StandRemote"):FireServer("Equip")
			end
			
		end
	end
end)
