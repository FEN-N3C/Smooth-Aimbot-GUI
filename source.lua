local player = game.Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

local sagui = Instance.new("ScreenGui")
sagui.Name = "SAGUI"
sagui.ResetOnSpawn = false
sagui.Parent = playerGui

local container = Instance.new("Frame")
container.Name = "Container"
container.Size = UDim2.new(0, 694, 0, 342)
container.Position = UDim2.new(0.154, 0, 0.191, 0)
container.BackgroundColor3 = Color3.fromRGB(34, 37, 43)
container.Parent = sagui

local containerUICorner = Instance.new("UICorner")
containerUICorner.CornerRadius = UDim.new(0, 8)
containerUICorner.Parent = container

local header = Instance.new("Frame")
header.Name = "Header"
header.Size = UDim2.new(0, 694, 0, 53)
header.Position = UDim2.new(0, 0, 0, 0)
header.BackgroundColor3 = Color3.fromRGB(21, 23, 27)
header.Parent = container

local title = Instance.new("TextLabel")
title.Name = "Title"
title.Size = UDim2.new(0, 346, 0, 33)
title.Position = UDim2.new(0.017, 0, 0.17, 0)
title.Text = "Smooth Aimbot GUI"
title.TextScaled = true
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.Font = Enum.Font.GothamBold
title.TextXAlignment = Enum.TextXAlignment.Left
title.BackgroundTransparency = 1
title.Parent = header

local headerUICorner = Instance.new("UICorner")
headerUICorner.CornerRadius = UDim.new(0, 8)
headerUICorner.Parent = header

local buttonContainer = Instance.new("ScrollingFrame")
buttonContainer.Name = "ButtonContainer"
buttonContainer.Size = UDim2.new(0, 511, 0, 289)
buttonContainer.Position = UDim2.new(0.262, 0, 0.155, 0)
buttonContainer.BackgroundColor3 = Color3.fromRGB(21, 23, 27)
buttonContainer.ScrollBarThickness = 4
buttonContainer.BorderSizePixel = 0
buttonContainer.Parent = container
buttonContainer.ScrollingEnabled = true

local line1 = Instance.new("Frame")
line1.Name = "Frame"
line1.Size = UDim2.new(0, 694, 0, 1)
line1.Position = UDim2.new(-0, 0, 0.153, 0)
line1.BackgroundColor3 = Color3.fromRGB(139, 139, 139)
line1.BorderSizePixel = 0
line1.Parent = container

local line2 = Instance.new("Frame")
line2.Name = "Frame"
line2.Size = UDim2.new(0, 1, 0, 288)
line2.Position = UDim2.new(0.26, 0, 0.156, 0)
line2.BackgroundColor3 = Color3.fromRGB(139, 139, 139)
line2.BorderSizePixel = 0
line2.Parent = container

local uilistlayout = Instance.new("UIListLayout")
uilistlayout.Padding = UDim.new(0, 10)
uilistlayout.FillDirection = Enum.FillDirection.Vertical
uilistlayout.SortOrder = Enum.SortOrder.LayoutOrder
uilistlayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
uilistlayout.Parent = buttonContainer

local uipadding = Instance.new("UIPadding")
uipadding.PaddingTop = UDim.new(0,10)
uipadding.Parent = buttonContainer

local trackingEnabledFrame = Instance.new("Frame")
trackingEnabledFrame.Name = "TrackingEnabled"
trackingEnabledFrame.Size = UDim2.new(0, 479, 0, 42)
trackingEnabledFrame.BackgroundColor3 = Color3.fromRGB(34, 37, 43)
trackingEnabledFrame.Parent = buttonContainer

local trackingText = Instance.new("TextLabel")
trackingText.Name = "TextLabel"
trackingText.Size = UDim2.new(0, 330, 0, 26)
trackingText.Position = UDim2.new(0.019, 0, 0.19, 0)
trackingText.Text = "Aimbot Enabled"
trackingText.TextScaled = true
trackingText.TextColor3 = Color3.fromRGB(255, 255, 255)
trackingText.TextXAlignment = Enum.TextXAlignment.Left
trackingText.Font = Enum.Font.GothamBold
trackingText.BackgroundTransparency = 1
trackingText.Parent = trackingEnabledFrame

local trackingUICorner = Instance.new("UICorner")
trackingUICorner.CornerRadius = UDim.new(0, 8)
trackingUICorner.Parent = trackingEnabledFrame

local trackingEnabled = Instance.new("BoolValue")
trackingEnabled.Name = "Enabled"
trackingEnabled.Parent = trackingEnabledFrame
trackingEnabled.Value = false

local checkmarkTracking = Instance.new("ImageButton")
checkmarkTracking.Name = "Checkmark"
checkmarkTracking.Size = UDim2.new(0, 34, 0, 34)
checkmarkTracking.Position = UDim2.new(0.898, 0, 0.095, 0)
checkmarkTracking.Image = "rbxassetid://6475688241"
checkmarkTracking.ImageTransparency = 1
checkmarkTracking.BackgroundColor3 = Color3.fromRGB(21, 23, 27)
checkmarkTracking.Parent = trackingEnabledFrame

local trackingbuttoncorner = Instance.new("UICorner")
trackingbuttoncorner.CornerRadius = UDim.new(0, 8)
trackingbuttoncorner.Parent = checkmarkTracking

local uistroketracking = Instance.new("UIStroke")
uistroketracking.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
uistroketracking.Color = Color3.fromRGB(139, 139, 139)
uistroketracking.Thickness = 1
uistroketracking.Parent = trackingEnabledFrame

local uistroketrackingbtn = Instance.new("UIStroke")
uistroketrackingbtn.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
uistroketrackingbtn.Color = Color3.fromRGB(139, 139, 139)
uistroketrackingbtn.Thickness = 1
uistroketrackingbtn.Parent = checkmarkTracking

local wallcheckFrame = Instance.new("Frame")
wallcheckFrame.Name = "Wallcheck"
wallcheckFrame.Size = UDim2.new(0, 479, 0, 42)
wallcheckFrame.BackgroundColor3 = Color3.fromRGB(34, 37, 43)
wallcheckFrame.Parent = buttonContainer

local wallcheckText = Instance.new("TextLabel")
wallcheckText.Name = "TextLabel"
wallcheckText.Size = UDim2.new(0, 330, 0, 26)
wallcheckText.Position = UDim2.new(0.019, 0, 0.19, 0)
wallcheckText.Text = "Wallcheck"
wallcheckText.TextScaled = true
wallcheckText.TextColor3 = Color3.fromRGB(255, 255, 255)
wallcheckText.Font = Enum.Font.GothamBold
wallcheckText.TextXAlignment = Enum.TextXAlignment.Left
wallcheckText.BackgroundTransparency = 1
wallcheckText.Parent = wallcheckFrame

local uistrokewallcheck = Instance.new("UIStroke")
uistrokewallcheck.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
uistrokewallcheck.Color = Color3.fromRGB(139, 139, 139)
uistrokewallcheck.Thickness = 1
uistrokewallcheck.Parent = wallcheckFrame

local wallcheckUICorner = Instance.new("UICorner")
wallcheckUICorner.CornerRadius = UDim.new(0, 8)
wallcheckUICorner.Parent = wallcheckFrame

local wallcheckEnabled = Instance.new("BoolValue")
wallcheckEnabled.Name = "Enabled"
wallcheckEnabled.Parent = wallcheckFrame
wallcheckEnabled.Value = false

local checkmarkWallcheck = Instance.new("ImageButton")
checkmarkWallcheck.Name = "Checkmark"
checkmarkWallcheck.Size = UDim2.new(0, 34, 0, 34)
checkmarkWallcheck.Position = UDim2.new(0.898, 0, 0.095, 0)
checkmarkWallcheck.Image = "rbxassetid://6475688241"
checkmarkWallcheck.ImageTransparency = 1
checkmarkWallcheck.BackgroundColor3 = Color3.fromRGB(21, 23, 27)
checkmarkWallcheck.Parent = wallcheckFrame

local uistrokewallcheckcheck = Instance.new("UIStroke")
uistrokewallcheckcheck.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
uistrokewallcheckcheck.Color = Color3.fromRGB(139, 139, 139)
uistrokewallcheckcheck.Thickness = 1
uistrokewallcheckcheck.Parent = checkmarkWallcheck

local wallcheckbuttoncorner = Instance.new("UICorner")
wallcheckbuttoncorner.CornerRadius = UDim.new(0, 8)
wallcheckbuttoncorner.Parent = checkmarkWallcheck

local teamCheckFrame = Instance.new("Frame")
teamCheckFrame.Name = "TeamCheck"
teamCheckFrame.Size = UDim2.new(0, 479, 0, 42)
teamCheckFrame.BackgroundColor3 = Color3.fromRGB(34, 37, 43)
teamCheckFrame.Parent = buttonContainer

local teamCheckText = Instance.new("TextLabel")
teamCheckText.Name = "TextLabel"
teamCheckText.Size = UDim2.new(0, 330, 0, 26)
teamCheckText.Position = UDim2.new(0.019, 0, 0.19, 0)
teamCheckText.Text = "Teamcheck"
teamCheckText.TextScaled = true
teamCheckText.TextColor3 = Color3.fromRGB(255, 255, 255)
teamCheckText.Font = Enum.Font.GothamBold
teamCheckText.TextXAlignment = Enum.TextXAlignment.Left
teamCheckText.BackgroundTransparency = 1
teamCheckText.Parent = teamCheckFrame

local teamCheckUICorner = Instance.new("UICorner")
teamCheckUICorner.CornerRadius = UDim.new(0, 8)
teamCheckUICorner.Parent = teamCheckFrame

local teamCheckEnabled = Instance.new("BoolValue")
teamCheckEnabled.Name = "Enabled"
teamCheckEnabled.Parent = teamCheckFrame
teamCheckEnabled.Value = false

local checkmarkTeamCheck = Instance.new("ImageButton")
checkmarkTeamCheck.Name = "Checkmark"
checkmarkTeamCheck.Size = UDim2.new(0, 34, 0, 34)
checkmarkTeamCheck.Position = UDim2.new(0.898, 0, 0.095, 0)
checkmarkTeamCheck.Image = "rbxassetid://6475688241"
checkmarkTeamCheck.ImageTransparency = 1
checkmarkTeamCheck.BackgroundColor3 = Color3.fromRGB(21, 23, 27)
checkmarkTeamCheck.Parent = teamCheckFrame

local teamCheckButtonCorner = Instance.new("UICorner")
teamCheckButtonCorner.CornerRadius = UDim.new(0, 8)
teamCheckButtonCorner.Parent = checkmarkTeamCheck

local uistroketeamcheck = Instance.new("UIStroke")
uistroketeamcheck.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
uistroketeamcheck.Color = Color3.fromRGB(139, 139, 139)
uistroketeamcheck.Thickness = 1
uistroketeamcheck.Parent = teamCheckFrame

local uistroketeamcheckbtn = Instance.new("UIStroke")
uistroketeamcheckbtn.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
uistroketeamcheckbtn.Color = Color3.fromRGB(139, 139, 139)
uistroketeamcheckbtn.Thickness = 1
uistroketeamcheckbtn.Parent = checkmarkTeamCheck

local versiontext = Instance.new("TextLabel")
versiontext.Name = "TextLabel"
versiontext.Size = UDim2.new(0, 50, 0, 13)
versiontext.Position = UDim2.new(0, 0, 0.959, 0)
versiontext.Text = "V0.1.1"
versiontext.TextScaled = true
versiontext.TextColor3 = Color3.fromRGB(255, 255, 255)
versiontext.Font = Enum.Font.Gotham
versiontext.BackgroundTransparency = 1
versiontext.TextTransparency = 0.4
versiontext.Parent = container

local dragging = false
local dragStart = Vector2.new(0, 0)
local startPos = UDim2.new(0, 0, 0, 0)

local userInputService = game:GetService("UserInputService")
local runService = game:GetService("RunService")

header.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 then
		dragging = true
		dragStart = input.Position
		startPos = container.Position
	end
end)

header.InputEnded:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 then
		dragging = false
	end
end)

userInputService.InputChanged:Connect(function(input)
	if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
		local delta = input.Position - dragStart
		container.Position = UDim2.new(
			startPos.X.Scale,
			startPos.X.Offset + delta.X,
			startPos.Y.Scale,
			startPos.Y.Offset + delta.Y
		)
	end
end)

-- aimbot stuff

local mouse = player:GetMouse()
local camera = workspace.CurrentCamera
local RunService = game:GetService("RunService")

local isTracking = false
local targetHead = nil

local function setupCheckmark(frame)
	local checkmark = frame:FindFirstChild("Checkmark")
	local enabled = frame:FindFirstChild("Enabled")

	if checkmark and enabled then
		checkmark.MouseButton1Click:Connect(function()
			enabled.Value = not enabled.Value

			checkmark.ImageTransparency = enabled.Value and 0 or 1
		end)
	end
end

setupCheckmark(trackingEnabledFrame)
setupCheckmark(wallcheckFrame)
setupCheckmark(teamCheckFrame)

-- Wall check function
local function isTargetVisible(targetHead)
	if not targetHead then return false end
	local origin = camera.CFrame.Position
	local direction = (targetHead.Position - origin).Unit * (targetHead.Position - origin).Magnitude
	local raycastParams = RaycastParams.new()
	raycastParams.FilterType = Enum.RaycastFilterType.Exclude
	raycastParams.FilterDescendantsInstances = {player.Character}

	local result = workspace:Raycast(origin, direction, raycastParams)
	return not result or result.Instance:IsDescendantOf(targetHead.Parent)
end

local function getClosestHead()
	local closestDistance = math.huge
	local closestHead = nil

	for _, otherPlayer in pairs(game.Players:GetPlayers()) do
		if otherPlayer ~= player and otherPlayer.Character and otherPlayer.Character:FindFirstChild("Head") then
			local head = otherPlayer.Character.Head
			local distance = (head.Position - camera.CFrame.Position).Magnitude

			if not teamCheckEnabled.Value or otherPlayer.Team ~= player.Team then
				if distance < closestDistance then
					if not wallcheckEnabled.Value or isTargetVisible(head) then
						closestDistance = distance
						closestHead = head
					end
				end
			end
		end
	end

	return closestHead
end

mouse.Button2Down:Connect(function()
	if trackingEnabled.Value then
		isTracking = true
		targetHead = getClosestHead()

		RunService:BindToRenderStep("SmoothTracking", Enum.RenderPriority.Camera.Value + 1, function(deltaTime)
			if isTracking and targetHead and targetHead:IsDescendantOf(workspace) then
				if not wallcheckEnabled.Value or isTargetVisible(targetHead) then
					local predictedPosition = targetHead.Position
					camera.CFrame = CFrame.new(camera.CFrame.Position, predictedPosition)
				end
			else
				targetHead = getClosestHead()
			end
		end)
	end
end)

mouse.Button2Up:Connect(function()
	isTracking = false
	RunService:UnbindFromRenderStep("SmoothTracking")
end)

local function setupFrameClick(frame, callback)
	frame.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			callback()
		end
	end)
end

setupFrameClick(checkmarkTracking, function()
	setupCheckmark(checkmarkTracking)
end)

setupFrameClick(checkmarkWallcheck, function()
	setupCheckmark(checkmarkWallcheck)
end)

setupFrameClick(checkmarkTeamCheck, function()
	setupCheckmark(checkmarkTeamCheck)
end)
