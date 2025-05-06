local a = game.Players.LocalPlayer
repeat task.wait() until a:FindFirstChild("PlayerGui")

local b = Instance.new("ScreenGui")
b.Name = "UpdateNotification"
b.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
b.Parent = a.PlayerGui

local c = Instance.new("BlurEffect")
c.Name = "UpdateBlur"
c.Size = 0
c.Parent = game:GetService("Lighting")

task.spawn(function()
	for i = 0, 30 do
		c.Size = i
		task.wait(0.02)
	end

	while true do
		for i = 30, 50 do
			c.Size = i
			task.wait(0.05)
		end
		for i = 50, 30, -1 do
			c.Size = i
			task.wait(0.05)
		end
	end
end)

local d = Instance.new("Frame")
d.Size = UDim2.new(1, 0, 1, 0)
d.BackgroundTransparency = 1
d.Parent = b

local e = Instance.new("TextLabel")
e.Size = UDim2.new(1, 0, 0.1, 0)
e.Position = UDim2.new(0, 0, 0.45, 0)
e.BackgroundTransparency = 1
e.Text = [[<font color="#00CFFF">This script</font> is currently undergoing an update. Stay tuned!]]
e.RichText = true
e.Font = Enum.Font.FredokaOne
e.TextScaled = true
e.TextColor3 = Color3.fromRGB(255, 255, 255)
e.TextStrokeTransparency = 0.8
e.Parent = d

e.TextTransparency = 1
task.spawn(function()
	for i = 1, 0, -0.05 do
		e.TextTransparency = i
		task.wait(0.05)
	end
end)

return {
    Destroy = function()
        c:Destroy()
        b:Destroy()
    end
}
