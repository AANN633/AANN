--// AANN EXECUTOR 2025 - con key, colores neon, y menú de hacks

local function rainbowColor()
	local t = tick() * 2
	local r = math.sin(t) * 0.5 + 0.5
	local g = math.sin(t + 2) * 0.5 + 0.5
	local b = math.sin(t + 4) * 0.5 + 0.5
	return Color3.new(r, g, b)
end

-- GUI base
local gui = Instance.new("ScreenGui", game.CoreGui)
gui.Name = "AANNExecutor"

-- Frame de key
local keyFrame = Instance.new("Frame", gui)
keyFrame.Size = UDim2.new(0, 300, 0, 160)
keyFrame.Position = UDim2.new(0.5, -150, 0.5, -80)
keyFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)

Instance.new("UICorner", keyFrame).CornerRadius = UDim.new(0, 10)

local title = Instance.new("TextLabel", keyFrame)
title.Size = UDim2.new(1, 0, 0, 40)
title.Text = "AANN EXECUTOR"
title.Font = Enum.Font.GothamBlack
title.TextSize = 24
title.BackgroundTransparency = 1

local input = Instance.new("TextBox", keyFrame)
input.PlaceholderText = "Escribe la KEY aquí..."
input.Size = UDim2.new(0.9, 0, 0, 35)
input.Position = UDim2.new(0.05, 0, 0.45, 0)
input.Font = Enum.Font.Gotham
input.TextSize = 20
input.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Instance.new("UICorner", input).CornerRadius = UDim.new(0, 8)

local verifyBtn = Instance.new("TextButton", keyFrame)
verifyBtn.Text = "VERIFICAR"
verifyBtn.Size = UDim2.new(0.9, 0, 0, 35)
verifyBtn.Position = UDim2.new(0.05, 0, 0.75, 0)
verifyBtn.Font = Enum.Font.GothamBold
verifyBtn.TextSize = 20
verifyBtn.BackgroundColor3 = Color3.fromRGB(0, 255, 150)
Instance.new("UICorner", verifyBtn).CornerRadius = UDim.new(0, 8)

-- GUI de hacks
local hackFrame = Instance.new("Frame", gui)
hackFrame.Size = UDim2.new(0, 280, 0, 320)
hackFrame.Position = UDim2.new(0.5, -140, 0.5, -160)
hackFrame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
hackFrame.Visible = false
Instance.new("UICorner", hackFrame).CornerRadius = UDim.new(0, 12)

local hacks = {
	{"Dead Rails", "https://pastebin.com/raw/zvgr04k1"},
	{"Grow a Garden", "https://pastebin.com/raw/X8nEz9M2"},
	{"Doors", "https://pastebin.com/raw/4bZT07Pe"},
	{"Brookhaven", "https://pastebin.com/raw/FV9t23wX"},
	{"Pet Simulator 99", "https://pastebin.com/raw/TXae0sxM"},
	{"Blox Fruits", "https://pastebin.com/raw/dXKTrQW5"},
	{"Evade", "https://pastebin.com/raw/zWYxkfaV"},
	{"Arsenal", "https://pastebin.com/raw/C9Lxvdt6"},
	{"Gunfight Arena", "https://pastebin.com/raw/MevV2u6j"},
	{"Slap Battles", "https://pastebin.com/raw/NbZfYZys"},
}

-- Crear botones para cada hack
for i, v in pairs(hacks) do
	local btn = Instance.new("TextButton", hackFrame)
	btn.Size = UDim2.new(0.9, 0, 0, 28)
	btn.Position = UDim2.new(0.05, 0, 0, 10 + (i - 1) * 30)
	btn.Text = v[1]
	btn.Font = Enum.Font.Gotham
	btn.TextSize = 18
	btn.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
	Instance.new("UICorner", btn).CornerRadius = UDim.new(0, 6)
	
	btn.MouseButton1Click:Connect(function()
		hackFrame.Visible = false
		pcall(function()
			game.StarterGui:SetCore("SendNotification", {
				Title = "AANN EXECUTOR",
				Text = v[1].." Hack Activado",
				Duration = 5
			})
		end)
		loadstring(game:HttpGet(v[2]))()
	end)
end

-- Cambiar colores dinámicamente
task.spawn(function()
	while true do
		local color = rainbowColor()
		title.TextColor3 = color
		verifyBtn.BackgroundColor3 = color
		input.BackgroundColor3 = color
		for _, btn in pairs(hackFrame:GetChildren()) do
			if btn:IsA("TextButton") then
				btn.BackgroundColor3 = color
			end
		end
		task.wait(0.1)
	end
end)

-- Verificar key
verifyBtn.MouseButton1Click:Connect(function()
	if input.Text == "AANN 2025" then
		keyFrame.Visible = false
		hackFrame.Visible = true
		pcall(function()
			game.StarterGui:SetCore("SendNotification", {
				Title = "AANN EXECUTOR",
				Text = "ACTIVADO",
				Duration = 4
			})
		end)
	else
		input.Text = "Clave incorrecta"
	end
end)
