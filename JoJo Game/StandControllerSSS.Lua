game:GetService("ReplicatedStorage"):WaitForChild("StandRemote").OnServerEvent:Connect(function(player, what)
	local character = workspace:WaitForChild(player.Name)
	if what == "Equip" then
	
	local stand = game:GetService("ReplicatedStorage"):WaitForChild("Stands").LionPlatinum:Clone()
	for i, v in pairs(stand:GetDescendants()) do
		if v:IsA("MeshPart") or v:IsA("Part") then
			v.Transparency = 1
		end
	end
	stand.Parent = character
	
	local w = Instance.new("Weld",stand)
	w.Part0 = character.HumanoidRootPart
	w.Part1 = stand.HumanoidRootPart
	w.C1 = CFrame.new(2.5, -1, -2)
	
	for i, v in pairs(stand:GetDescendants()) do
		if v:IsA("MeshPart") or v:IsA("Part") then
				local tween = game:GetService("TweenService"):Create(w, TweenInfo.new(0.5, Enum.EasingStyle.Linear, Enum.EasingDirection.Out, 0, false, 0), {Transparency = 0})
				tween:Play()
		end
	end
		
	local tween = game:GetService("TweenService"):Create(w, TweenInfo.new(0.5, Enum.EasingStyle.Linear, Enum.EasingDirection.Out, 0, false, 0), {C1 = CFrame.new(2.5, -1, -2)})
		tween:Play()
		
	elseif what == "Unequip" then
		
		if character:FindFirstChild("LionPlatinum") then
			
			for i, v in pairs(stand:GetDescendants()) do
				if v:IsA("MeshPart") or v:IsA("Part") then
					local tween = game:GetService("TweenService"):Create(w, TweenInfo.new(0.5, Enum.EasingStyle.Linear, Enum.EasingDirection.Out, 0, false, 0), {Transparency = 1})
					tween:Play()
				end
			end
			wait(5)
			local tween = game:GetService("TweenService"):Create(w, TweenInfo.new(0.5, Enum.EasingStyle.Linear, Enum.EasingDirection.Out, 0, false, 0), {Transparency = 0})
			tween:Play()
			
		elseif what == "Unequip" then
			
			if character:FindFirstChild("LionPlatinum") then
				character:FindFirstChild("LionPlatinum"):Destroy()
			end
		end
	end
	
end)