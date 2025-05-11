local gui = Instance.new("ScreenGui")
gui.Name = "AANNExecutor"
gui.ResetOnSpawn = false
gui.Parent = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui")

local frame = Instance.new("Frame", gui)
frame.Size = UDim2.new(0, 400, 0, 300)
frame.Position = UDim2.new(0.5, -200, 0.5, -150)
frame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
frame.Active = true
frame.Draggable = true

local corner = Instance.new("UICorner", frame)
corner.CornerRadius = UDim.new(0, 10)

local title = Instance.new("TextLabel", frame)
title.Size = UDim2.new(1, 0, 0, 40)
title.Text = "AANN EXECUTOR"
title.Font = Enum.Font.GothamBold
title.TextSize = 24
title.BackgroundColor3 = Color3.fromRGB(0, 255, 150)
title.TextColor3 = Color3.fromRGB(255, 255, 255)

local box = Instance.new("TextBox", frame)
box.Size = UDim2.new(0.8, 0, 0, 50)
box.Position = UDim2.new(0.1, 0, 0.2, 0)
box.PlaceholderText = "Ingresa la Key"
box.Font = Enum.Font.Gotham
box.TextSize = 18
box.Text = ""
box.TextColor3 = Color3.fromRGB(255, 255, 255)
box.BackgroundColor3 = Color3.fromRGB(40, 40, 40)

local button = Instance.new("TextButton", frame)
button.Size = UDim2.new(0.5, 0, 0, 50)
button.Position = UDim2.new(0.25, 0, 0.45, 0)
button.Text = "Activar Hack"
button.Font = Enum.Font.GothamBold
button.TextSize = 20
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.BackgroundColor3 = Color3.fromRGB(0, 255, 150)

local footer = Instance.new("TextLabel", frame)
footer.Size = UDim2.new(1, 0, 0, 40)
footer.Position = UDim2.new(0, 0, 0.75, 0)
footer.Text = "TikTok: aann_luck | IG: pzk_rodri | YouTube: HIPAPUS XD"
footer.Font = Enum.Font.Gotham
footer.TextSize = 16
footer.TextColor3 = Color3.fromRGB(255, 255, 255)
footer.BackgroundTransparency = 1

-- Arcoiris para el footer
spawn(function()
	local hue = 0
	while task.wait() do
		hue = (hue + 0.005) % 1
		footer.TextColor3 = Color3.fromHSV(hue, 1, 1)
	end
end)

-- Función al presionar
button.MouseButton1Click:Connect(function()
	if box.Text == "AANN'S 2010" then
		frame:Destroy() -- Ocultar UI

		game.StarterGui:SetCore("SendNotification", {
			Title = "AANN Executor",
			Text = "Hack cargado correctamente.",
			Duration = 5
		})

		pcall(function()
			loadstring(game:HttpGet("https://raw.githubusercontent.com/depthso/Grow-a-Garden/refs/heads/main/autofarm.lua"))()
		end)
	else
		game.StarterGui:SetCore("SendNotification", {
			Title = "Key incorrecta",
			Text = "Intenta con: AANN'S 2010",
			Duration = 5
		})
	end
end)
