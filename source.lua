local player = game.Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

local guiModelId = "rbxassetid://131422687797659"
local guiModel = game:GetService("InsertService"):LoadAsset(guiModelId)

guiModel.Parent = playerGui

local mouse = player:GetMouse()
local camera = workspace.CurrentCamera
local RunService = game:GetService("RunService")

local sagui = guiModel:WaitForChild("SAGUI")
local trackingEnabledFrame = sagui.Container.ButtonContainer.TrackingEnabled
local wallcheckFrame = sagui.Container.ButtonContainer.Wallcheck

local trackingEnabled = trackingEnabledFrame.Enabled
local wallcheckEnabled = wallcheckFrame.Enabled
local isTracking = false
local targetHead = nil

local function toggleCheckmark(frame)
	local checkmark = frame.Checkmark
	local enabled = frame.Enabled
	enabled.Value = not enabled.Value

	if enabled.Value then
		checkmark.ImageTransparency = 0
	else
		checkmark.ImageTransparency = 1
	end
end

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

			if distance < closestDistance then
				if not wallcheckEnabled.Value or isTargetVisible(head) then
					closestDistance = distance
					closestHead = head
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

setupFrameClick(trackingEnabledFrame, function()
	toggleCheckmark(trackingEnabledFrame)
end)

setupFrameClick(wallcheckFrame, function()
	toggleCheckmark(wallcheckFrame)
end)
