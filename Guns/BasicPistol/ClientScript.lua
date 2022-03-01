local mouse = game.players.LocalPlayer:GetMouse()

mouse.Button1Down:Connect(function()
	script.Parent.Fire:FireServer(mouse.Hit.p)
end)
