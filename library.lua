local Library = {}

function Library:CreateWindow(name)
	-- Instances:

	local MethisUI = Instance.new("ScreenGui")
	local Main = Instance.new("Frame")
	local UICorner = Instance.new("UICorner")
	local Line = Instance.new("Frame")
	local Text = Instance.new("TextLabel")
	local UIScale = Instance.new("UIScale")
	local ImageButton = Instance.new("ImageButton")

	--Properties:

	MethisUI.Name = "MethisUI"
	MethisUI.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
	MethisUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	Main.Name = "Main"
	Main.Parent = MethisUI
	Main.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
	Main.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Main.BorderSizePixel = 0
	Main.Position = UDim2.new(0.5, -250, 0.5, -150)
	Main.Size = UDim2.new(0, 500, 0, 300)

	UICorner.Parent = Main

	Line.Name = "Line"
	Line.Parent = Main
	Line.BackgroundColor3 = Color3.fromRGB(162, 162, 162)
	Line.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Line.BorderSizePixel = 0
	Line.Position = UDim2.new(0, 0, 0, 40)
	Line.Size = UDim2.new(1, 0, 0, 2)

	Text.Name = "Text
	Text.Parent = Main
	Text.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Text.BackgroundTransparency = 1.000
	Text.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Text.BorderSizePixel = 0
	Text.Size = UDim2.new(1, 0, 0, 40)
	Text.Font = Enum.Font.SourceSansSemibold
	Text.Text = name
	Text.TextColor3 = Color3.fromRGB(162, 162, 162)
	Text.TextSize = 21.000
	Text.TextWrapped = true

	UIScale.Parent = Main

	ImageButton.Parent = Main
	ImageButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ImageButton.BackgroundTransparency = 1.000
	ImageButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
	ImageButton.BorderSizePixel = 0
	ImageButton.Position = UDim2.new(1, -35, 0, 5)
	ImageButton.Size = UDim2.new(0, 30, 0, 30)
	ImageButton.Image = "rbxassetid://132261474823036"
	ImageButton.ImageColor3 = Color3.fromRGB(162, 162, 162)

	-- Scripts:

	local function TGPLIZQ_fake_script() -- ImageButton.Script 
		local sc = Instance.new('LocalScript', ImageButton)

		local TweenService = game:GetService("TweenService")
		local DestroyTime = 0.4
		local ColorTime = 0.15
		local Button = sc.Parent
		local Main = Button.Parent
		local UIScale = Main.UIScale
		
		Button.MouseEnter:Connect(function()
			local TweenInfo = TweenInfo.new(ColorTime, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut)
			local Tween = TweenService:Create(Button, TweenInfo, {ImageColor3 = Color3.new(0.48, 0.48, 0.48)})
			Tween:Play()
		end)
		
		Button.MouseLeave:Connect(function()
			local TweenInfo = TweenInfo.new(ColorTime, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut)
			local Tween = TweenService:Create(Button, TweenInfo, {ImageColor3 = Color3.new(0.63, 0.63, 0.63)})
			Tween:Play()
		end)
		
		Button.Activated:Connect(function()
			local TweenInfo = TweenInfo.new(DestroyTime, Enum.EasingStyle.Back, Enum.EasingDirection.In)
			local Tween = TweenService:Create(Main, TweenInfo, {Position = UDim2.fromScale(Main.Position.X.Scale, Main.Position.Y.Scale)})
			local Tween2 = TweenService:Create(UIScale, TweenInfo, {Scale = 0})
			Tween:Play()
			Tween2:Play()
			Tween.Completed:Wait()
			Main.Parent:Destroy()
		end)
	end
	coroutine.wrap(TGPLIZQ_fake_script)()
end

return Library
