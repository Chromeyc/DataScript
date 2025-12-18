local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "My Combined Script Hub", HidePremium = false, SaveConfig = true, ConfigFolder = "CombinedHub"})

-- Tab: Scripts
local ScriptsTab = Window:MakeTab({
	Name = "Scripts",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

ScriptsTab:AddSection({
	Name = "Leaked Scripts"
})

-- 1. Quadgame Leak (leak.lua)
ScriptsTab:AddButton({
	Name = "Quadgame Leak (Kick Bypass)",
	Callback = function()
        print("Loading Quadgame Leak...")
        loadstring([[
hookfunction(game.Players.LocalPlayer.Kick, newcclosure(function()
 return warn("kick")
end))
local req = request or http and http.request
if not req then
 warn("no request")
 return
end
local old_request = req
local hook_request = newcclosure(function(data)
 local url = (data.Url or data.URL or data.url or "")
 local method = (data.Method or data.method):upper()
 if url:find("validate") then
  print("meow")
  return {
   StatusMessage = "OK",
   Success = true,
   StatusCode = 200,
   Body = game:GetService("HttpService"):JSONEncode({
    plan = "100-400m",
    roblox_username = "hi im 08v3",
    active = true,
    max_gen = 400,
    status = "ok",
    expires_at = "never",--"2025-11-11T04:32:52.713315+00:00",
    min_gen = 100
   })
  }
 end
 if url:find("user") then
  return {
   StatusMessage = "OK",
   Success = true,
   StatusCode = 200,
   Body = game:GetService("HttpService"):JSONEncode({
    status = "ok",
    users = {}
   })
  }
 end
 return old_request(data)
end)
if request then
 request = hook_request
end
if http and http.request then
 setreadonly(http, false)
 http.request = hook_request
 setreadonly(http, true)
end
-- .gg/luxar
-- ===============================

_G.KEY = "CRACKEDBYIMEANIGUESS" -- Replace KEY with your key from /profile.

_G.AUTOJOINER_CONFIG = {
    MIN_GEN = 10,-- Minimum M/s you want to detect.
    MAX_GEN = 9999,

    MAX_JOIN_ATTEMPTS = 120,
    GRAPPLE_SPEED = false, -- Set to true for grapple speed.

    EXCLUDE = {},
    INCLUDE = {
        ["BRAINROT NAME"] = { OPERATOR = ">=", VALUE = 0 },
    }
}

loadstring(game:HttpGet("https://raw.githubusercontent.com/urgay123413/Quadgame/refs/heads/main/LEAK"))()
        ]])()
  	end    
})

-- 2. Crusty Laser Bypass (oyyaz7t.lua)
ScriptsTab:AddButton({
	Name = "Crusty Laser Bypass",
	Callback = function()
        print("Loading Crusty Laser Bypass...")
        loadstring([[
-- THAT CODE PUBLISHED BY CRUSTY HUB 
-- discord.gg/DBKxZQ8FmK

local LaserBypassScreenGui = Instance.new("ScreenGui") -- Crusty Hub discord.gg/DBKxZQ8FmK
LaserBypassScreenGui.Name = "CrustyLaserUI" -- Crusty Hub discord.gg/DBKxZQ8FmK
LaserBypassScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui") -- Crusty Hub discord.gg/DBKxZQ8FmK
LaserBypassScreenGui.ResetOnSpawn = false -- Crusty Hub discord.gg/DBKxZQ8FmK
local TweenService = game:GetService("TweenService") -- Crusty Hub discord.gg/DBKxZQ8FmK
local UserInputService = game:GetService("UserInputService") -- Crusty Hub discord.gg/DBKxZQ8FmK
local ReplicatedStorage = game:GetService("ReplicatedStorage") -- Crusty Hub discord.gg/DBKxZQ8FmK
local Players = game:GetService("Players") -- Crusty Hub discord.gg/DBKxZQ8FmK
local RunService = game:GetService("RunService") -- Crusty Hub discord.gg/DBKxZQ8FmK
local LocalPlayer = Players.LocalPlayer -- Crusty Hub discord.gg/DBKxZQ8FmK
local defaultPos = UDim2.new(0.5, -90, 0.5, -55) -- Crusty Hub discord.gg/DBKxZQ8FmK
local qlfrFrame = Instance.new("Frame") -- Crusty Hub discord.gg/DBKxZQ8FmK
qlfrFrame.Size = UDim2.new(0, 180, 0, 110) -- Crusty Hub discord.gg/DBKxZQ8FmK
qlfrFrame.Position = defaultPos -- Crusty Hub discord.gg/DBKxZQ8FmK
qlfrFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30) -- Crusty Hub discord.gg/DBKxZQ8FmK
qlfrFrame.BorderSizePixel = 0 -- Crusty Hub discord.gg/DBKxZQ8FmK
qlfrFrame.Parent = LaserBypassScreenGui -- Crusty Hub discord.gg/DBKxZQ8FmK
local rpxfCorner = Instance.new("UICorner") -- Crusty Hub discord.gg/DBKxZQ8FmK
rpxfCorner.CornerRadius = UDim.new(0, 15) -- Crusty Hub discord.gg/DBKxZQ8FmK
rpxfCorner.Parent = qlfrFrame -- Crusty Hub discord.gg/DBKxZQ8FmK
local xgfbTitle = Instance.new("TextLabel") -- Crusty Hub discord.gg/DBKxZQ8FmK
xgfbTitle.Size = UDim2.new(1, -10, 0, 25) -- Crusty Hub discord.gg/DBKxZQ8FmK
xgfbTitle.Position = UDim2.new(0, 5, 0, 5) -- Crusty Hub discord.gg/DBKxZQ8FmK
xgfbTitle.BackgroundTransparency = 1 -- Crusty Hub discord.gg/DBKxZQ8FmK
xgfbTitle.Text = "Crusty Laser Bypass" -- Crusty Hub discord.gg/DBKxZQ8FmK
xgfbTitle.TextColor3 = Color3.fromRGB(255, 255, 255) -- Crusty Hub discord.gg/DBKxZQ8FmK
xgfbTitle.Font = Enum.Font.SourceSansBold -- Crusty Hub discord.gg/DBKxZQ8FmK
xgfbTitle.TextSize = 16 -- Crusty Hub discord.gg/DBKxZQ8FmK
xgfbTitle.TextXAlignment = Enum.TextXAlignment.Left -- Crusty Hub discord.gg/DBKxZQ8FmK
xgfbTitle.Parent = qlfrFrame -- Crusty Hub discord.gg/DBKxZQ8FmK
local bypassButton = Instance.new("TextButton") -- Crusty Hub discord.gg/DBKxZQ8FmK
bypassButton.Size = UDim2.new(1, -20, 0, 35) -- Crusty Hub discord.gg/DBKxZQ8FmK
bypassButton.Position = UDim2.new(0, 10, 0, 35) -- Crusty Hub discord.gg/DBKxZQ8FmK
bypassButton.BackgroundColor3 = Color3.fromRGB(70, 70, 70) -- Crusty Hub discord.gg/DBKxZQ8FmK
bypassButton.BorderSizePixel = 0 -- Crusty Hub discord.gg/DBKxZQ8FmK
bypassButton.TextColor3 = Color3.fromRGB(255, 255, 255) -- Crusty Hub discord.gg/DBKxZQ8FmK
bypassButton.Text = "Bypass" -- Crusty Hub discord.gg/DBKxZQ8FmK
bypassButton.Font = Enum.Font.SourceSansBold -- Crusty Hub discord.gg/DBKxZQ8FmK
bypassButton.TextSize = 16 -- Crusty Hub discord.gg/DBKxZQ8FmK
bypassButton.Parent = qlfrFrame -- Crusty Hub discord.gg/DBKxZQ8FmK
local btnCorner = Instance.new("UICorner") -- Crusty Hub discord.gg/DBKxZQ8FmK
btnCorner.CornerRadius = UDim.new(0, 10) -- Crusty Hub discord.gg/DBKxZQ8FmK
btnCorner.Parent = bypassButton -- Crusty Hub discord.gg/DBKxZQ8FmK
local cooldownLabel = Instance.new("TextLabel") -- Crusty Hub discord.gg/DBKxZQ8FmK
cooldownLabel.Size = UDim2.new(1, -20, 0, 25) -- Crusty Hub discord.gg/DBKxZQ8FmK
cooldownLabel.Position = UDim2.new(0, 10, 0, 75) -- Crusty Hub discord.gg/DBKxZQ8FmK
cooldownLabel.BackgroundTransparency = 1 -- Crusty Hub discord.gg/DBKxZQ8FmK
cooldownLabel.Text = "" -- Crusty Hub discord.gg/DBKxZQ8FmK
cooldownLabel.TextColor3 = Color3.fromRGB(255, 100, 100) -- Crusty Hub discord.gg/DBKxZQ8FmK
cooldownLabel.Font = Enum.Font.SourceSansBold -- Crusty Hub discord.gg/DBKxZQ8FmK
cooldownLabel.TextSize = 14 -- Crusty Hub discord.gg/DBKxZQ8FmK
cooldownLabel.Parent = qlfrFrame -- Crusty Hub discord.gg/DBKxZQ8FmK
bypassButton.MouseEnter:Connect(function() -- Crusty Hub discord.gg/DBKxZQ8FmK
    if not bypassButton:GetAttribute("OnCooldown") then -- Crusty Hub discord.gg/DBKxZQ8FmK
        TweenService:Create(bypassButton, TweenInfo.new(0.2), {BackgroundColor3 = Color3.fromRGB(100, 100, 100)}):Play() -- Crusty Hub discord.gg/DBKxZQ8FmK
    end -- Crusty Hub discord.gg/DBKxZQ8FmK
end) -- Crusty Hub discord.gg/DBKxZQ8FmK
bypassButton.MouseLeave:Connect(function() -- Crusty Hub discord.gg/DBKxZQ8FmK
    if not bypassButton:GetAttribute("OnCooldown") then -- Crusty Hub discord.gg/DBKxZQ8FmK
        TweenService:Create(bypassButton, TweenInfo.new(0.2), {BackgroundColor3 = Color3.fromRGB(70, 70, 70)}):Play() -- Crusty Hub discord.gg/DBKxZQ8FmK
    end -- Crusty Hub discord.gg/DBKxZQ8FmK
end) -- Crusty Hub discord.gg/DBKxZQ8FmK
local dragging = false -- Crusty Hub discord.gg/DBKxZQ8FmK
local dragInput, dragStart, startPos -- Crusty Hub discord.gg/DBKxZQ8FmK
local function update(input) -- Crusty Hub discord.gg/DBKxZQ8FmK
    local delta = input.Position - dragStart -- Crusty Hub discord.gg/DBKxZQ8FmK
    qlfrFrame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y) -- Crusty Hub discord.gg/DBKxZQ8FmK
end -- Crusty Hub discord.gg/DBKxZQ8FmK
qlfrFrame.InputBegan:Connect(function(input) -- Crusty Hub discord.gg/DBKxZQ8FmK
    if input.UserInputType == Enum.UserInputType.Touch or input.UserInputType == Enum.UserInputType.MouseButton1 then -- Crusty Hub discord.gg/DBKxZQ8FmK
        dragging = true -- Crusty Hub discord.gg/DBKxZQ8FmK
        dragStart = input.Position -- Crusty Hub discord.gg/DBKxZQ8FmK
        startPos = qlfrFrame.Position -- Crusty Hub discord.gg/DBKxZQ8FmK
        input.Changed:Connect(function() -- Crusty Hub discord.gg/DBKxZQ8FmK
            if input.UserInputState == Enum.UserInputState.End then -- Crusty Hub discord.gg/DBKxZQ8FmK
                dragging = false -- Crusty Hub discord.gg/DBKxZQ8FmK
            end -- Crusty Hub discord.gg/DBKxZQ8FmK
        end) -- Crusty Hub discord.gg/DBKxZQ8FmK
    end -- Crusty Hub discord.gg/DBKxZQ8FmK
end) -- Crusty Hub discord.gg/DBKxZQ8FmK
qlfrFrame.InputChanged:Connect(function(input) -- Crusty Hub discord.gg/DBKxZQ8FmK
    if input.UserInputType == Enum.UserInputType.Touch or input.UserInputType == Enum.UserInputType.MouseMovement then -- Crusty Hub discord.gg/DBKxZQ8FmK
        dragInput = input -- Crusty Hub discord.gg/DBKxZQ8FmK
    end -- Crusty Hub discord.gg/DBKxZQ8FmK
end) -- Crusty Hub discord.gg/DBKxZQ8FmK
UserInputService.InputChanged:Connect(function(input) -- Crusty Hub discord.gg/DBKxZQ8FmK
    if input == dragInput and dragging then -- Crusty Hub discord.gg/DBKxZQ8FmK
        update(input) -- Crusty Hub discord.gg/DBKxZQ8FmK
    end -- Crusty Hub discord.gg/DBKxZQ8FmK
end) -- Crusty Hub discord.gg/DBKxZQ8FmK
local Net = require(ReplicatedStorage:WaitForChild("Packages").Net) -- Crusty Hub discord.gg/DBKxZQ8FmK
local UseItem = Net:RemoteEvent("UseItem") -- Crusty Hub discord.gg/DBKxZQ8FmK
local function getClosest() -- Crusty Hub discord.gg/DBKxZQ8FmK
    local player = Players.LocalPlayer -- Crusty Hub discord.gg/DBKxZQ8FmK
    local character = player.Character -- Crusty Hub discord.gg/DBKxZQ8FmK
    if not character then return nil end -- Crusty Hub discord.gg/DBKxZQ8FmK
    local HumanoidRootPart = character:FindFirstChild("HumanoidRootPart") -- Crusty Hub discord.gg/DBKxZQ8FmK
    if not HumanoidRootPart then return nil end -- Crusty Hub discord.gg/DBKxZQ8FmK
    local closestPlayer = nil -- Crusty Hub discord.gg/DBKxZQ8FmK
    local shortestDistance = math.huge -- Crusty Hub discord.gg/DBKxZQ8FmK
    for _, otherPlayer in ipairs(Players:GetPlayers()) do -- Crusty Hub discord.gg/DBKxZQ8FmK
        if otherPlayer ~= player then -- Crusty Hub discord.gg/DBKxZQ8FmK
            local targetChar = otherPlayer.Character -- Crusty Hub discord.gg/DBKxZQ8FmK
            local targetHRP = targetChar and targetChar:FindFirstChild("HumanoidRootPart") -- Crusty Hub discord.gg/DBKxZQ8FmK
            if targetHRP then -- Crusty Hub discord.gg/DBKxZQ8FmK
                local distance = (targetHRP.Position - HumanoidRootPart.Position).Magnitude -- Crusty Hub discord.gg/DBKxZQ8FmK
                if distance < shortestDistance then -- Crusty Hub discord.gg/DBKxZQ8FmK
                    shortestDistance = distance -- Crusty Hub discord.gg/DBKxZQ8FmK
                    closestPlayer = otherPlayer -- Crusty Hub discord.gg/DBKxZQ8FmK
                end -- Crusty Hub discord.gg/DBKxZQ8FmK
            end -- Crusty Hub discord.gg/DBKxZQ8FmK
        end -- Crusty Hub discord.gg/DBKxZQ8FmK
    end -- Crusty Hub discord.gg/DBKxZQ8FmK
    return closestPlayer -- Crusty Hub discord.gg/DBKxZQ8FmK
end -- Crusty Hub discord.gg/DBKxZQ8FmK
local antiFall = false -- Crusty Hub discord.gg/DBKxZQ8FmK
local antiConnection -- Crusty Hub discord.gg/DBKxZQ8FmK
local function enableAntiFall() -- Crusty Hub discord.gg/DBKxZQ8FmK
    if antiConnection then return end -- Crusty Hub discord.gg/DBKxZQ8FmK
    antiConnection = RunService.Heartbeat:Connect(function() -- Crusty Hub discord.gg/DBKxZQ8FmK
        local player = Players.LocalPlayer -- Crusty Hub discord.gg/DBKxZQ8FmK
        local character = player.Character -- Crusty Hub discord.gg/DBKxZQ8FmK
        if character then -- Crusty Hub discord.gg/DBKxZQ8FmK
            local humanoid = character:FindFirstChild("Humanoid") -- Crusty Hub discord.gg/DBKxZQ8FmK
            if humanoid then -- Crusty Hub discord.gg/DBKxZQ8FmK
                humanoid:ChangeState(Enum.HumanoidStateType.Physics) -- Crusty Hub discord.gg/DBKxZQ8FmK
                local root = character:FindFirstChild("HumanoidRootPart") -- Crusty Hub discord.gg/DBKxZQ8FmK
                if root then -- Crusty Hub discord.gg/DBKxZQ8FmK
                    root.Velocity = Vector3.new(0, 0, 0) -- Crusty Hub discord.gg/DBKxZQ8FmK
                    root.RotVelocity = Vector3.new(0, 0, 0) -- Crusty Hub discord.gg/DBKxZQ8FmK
                end -- Crusty Hub discord.gg/DBKxZQ8FmK
            end -- Crusty Hub discord.gg/DBKxZQ8FmK
        end -- Crusty Hub discord.gg/DBKxZQ8FmK
    end) -- Crusty Hub discord.gg/DBKxZQ8FmK
end -- Crusty Hub discord.gg/DBKxZQ8FmK
local function disableAntiFall() -- Crusty Hub discord.gg/DBKxZQ8FmK
    if antiConnection then -- Crusty Hub discord.gg/DBKxZQ8FmK
        antiConnection:Disconnect() -- Crusty Hub discord.gg/DBKxZQ8FmK
        antiConnection = nil -- Crusty Hub discord.gg/DBKxZQ8FmK
    end -- Crusty Hub discord.gg/DBKxZQ8FmK
    local player = Players.LocalPlayer -- Crusty Hub discord.gg/DBKxZQ8FmK
    local character = player.Character -- Crusty Hub discord.gg/DBKxZQ8FmK
    if character then -- Crusty Hub discord.gg/DBKxZQ8FmK
        local humanoid = character:FindFirstChild("Humanoid") -- Crusty Hub discord.gg/DBKxZQ8FmK
        if humanoid then -- Crusty Hub discord.gg/DBKxZQ8FmK
            humanoid:ChangeState(Enum.HumanoidStateType.GettingUp) -- Crusty Hub discord.gg/DBKxZQ8FmK
        end -- Crusty Hub discord.gg/DBKxZQ8FmK
    end -- Crusty Hub discord.gg/DBKxZQ8FmK
end -- Crusty Hub discord.gg/DBKxZQ8FmK
local function executeBypass() -- Crusty Hub discord.gg/DBKxZQ8FmK
    local player = Players.LocalPlayer -- Crusty Hub discord.gg/DBKxZQ8FmK
    local character = player.Character or player.CharacterAdded:Wait() -- Crusty Hub discord.gg/DBKxZQ8FmK
    local humanoid = character:WaitForChild("Humanoid") -- Crusty Hub discord.gg/DBKxZQ8FmK
    local root = character:WaitForChild("HumanoidRootPart") -- Crusty Hub discord.gg/DBKxZQ8FmK
    local backpack = player:WaitForChild("Backpack") -- Crusty Hub discord.gg/DBKxZQ8FmK
    local target = getClosest() -- Crusty Hub discord.gg/DBKxZQ8FmK
    if target then -- Crusty Hub discord.gg/DBKxZQ8FmK
        local targetHRP = target.Character and target.Character:FindFirstChild("HumanoidRootPart") -- Crusty Hub discord.gg/DBKxZQ8FmK
        if targetHRP then -- Crusty Hub discord.gg/DBKxZQ8FmK
            local tool = backpack:FindFirstChild("Web Slinger") or character:FindFirstChild("Web Slinger") -- Crusty Hub discord.gg/DBKxZQ8FmK
            if tool then -- Crusty Hub discord.gg/DBKxZQ8FmK
                if tool.Parent == backpack then -- Crusty Hub discord.gg/DBKxZQ8FmK
                    humanoid:EquipTool(tool) -- Crusty Hub discord.gg/DBKxZQ8FmK
                    task.wait(0.1) -- Crusty Hub discord.gg/DBKxZQ8FmK
                end -- Crusty Hub discord.gg/DBKxZQ8FmK
                UseItem:FireServer(targetHRP.Position, targetHRP) -- Crusty Hub discord.gg/DBKxZQ8FmK
            end -- Crusty Hub discord.gg/DBKxZQ8FmK
        end -- Crusty Hub discord.gg/DBKxZQ8FmK
    end -- Crusty Hub discord.gg/DBKxZQ8FmK
    task.wait(0.3) -- Crusty Hub discord.gg/DBKxZQ8FmK
    enableAntiFall() -- Crusty Hub discord.gg/DBKxZQ8FmK
    local originalCFrame = root.CFrame -- Crusty Hub discord.gg/DBKxZQ8FmK
    root.Anchored = true -- Crusty Hub discord.gg/DBKxZQ8FmK
    root.CFrame = CFrame.new(0, -999999999999999993939383838383838383383888283883838383838383883838, 0) -- Crusty Hub discord.gg/DBKxZQ8FmK
    task.wait(0.5) -- Crusty Hub discord.gg/DBKxZQ8FmK
    root.CFrame = originalCFrame -- Crusty Hub discord.gg/DBKxZQ8FmK
    root.Anchored = false -- Crusty Hub discord.gg/DBKxZQ8FmK
    task.wait(0.1) -- Crusty Hub discord.gg/DBKxZQ8FmK
    humanoid:ChangeState(Enum.HumanoidStateType.GettingUp) -- Crusty Hub discord.gg/DBKxZQ8FmK
    root.Velocity = Vector3.new(0, 0, 0) -- Crusty Hub discord.gg/DBKxZQ8FmK
    root.RotVelocity = Vector3.new(0, 0, 0) -- Crusty Hub discord.gg/DBKxZQ8FmK
    task.wait(0.2) -- Crusty Hub discord.gg/DBKxZQ8FmK
    disableAntiFall() -- Crusty Hub discord.gg/DBKxZQ8FmK
    if antiConnection then -- Crusty Hub discord.gg/DBKxZQ8FmK
        antiConnection:Disconnect() -- Crusty Hub discord.gg/DBKxZQ8FmK
        antiConnection = nil -- Crusty Hub discord.gg/DBKxZQ8FmK
    end -- Crusty Hub discord.gg/DBKxZQ8FmK
end -- Crusty Hub discord.gg/DBKxZQ8FmK
bypassButton.MouseButton1Click:Connect(function() -- Crusty Hub discord.gg/DBKxZQ8FmK
    if bypassButton:GetAttribute("OnCooldown") then -- Crusty Hub discord.gg/DBKxZQ8FmK
        return -- Crusty Hub discord.gg/DBKxZQ8FmK
    end -- Crusty Hub discord.gg/DBKxZQ8FmK
    bypassButton:SetAttribute("OnCooldown", true) -- Crusty Hub discord.gg/DBKxZQ8FmK
    bypassButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50) -- Crusty Hub discord.gg/DBKxZQ8FmK
    bypassButton.Text = "Processing..." -- Crusty Hub discord.gg/DBKxZQ8FmK
    executeBypass() -- Crusty Hub discord.gg/DBKxZQ8FmK
    for i = 10, 1, -1 do -- Crusty Hub discord.gg/DBKxZQ8FmK
        if i == 7 then -- Crusty Hub discord.gg/DBKxZQ8FmK
            cooldownLabel.Text = "START STEALING" -- Crusty Hub discord.gg/DBKxZQ8FmK
            bypassButton.Text = tostring(i) -- Crusty Hub discord.gg/DBKxZQ8FmK
        elseif i < 7 then -- Crusty Hub discord.gg/DBKxZQ8FmK
            cooldownLabel.Text = "START STEALING" -- Crusty Hub discord.gg/DBKxZQ8FmK
            bypassButton.Text = tostring(i) -- Crusty Hub discord.gg/DBKxZQ8FmK
        else -- Crusty Hub discord.gg/DBKxZQ8FmK
            cooldownLabel.Text = "" -- Crusty Hub discord.gg/DBKxZQ8FmK
            bypassButton.Text = tostring(i) -- Crusty Hub discord.gg/DBKxZQ8FmK
        end -- Crusty Hub discord.gg/DBKxZQ8FmK
        task.wait(1) -- Crusty Hub discord.gg/DBKxZQ8FmK
    end -- Crusty Hub discord.gg/DBKxZQ8FmK
    bypassButton:SetAttribute("OnCooldown", false) -- Crusty Hub discord.gg/DBKxZQ8FmK
    bypassButton.BackgroundColor3 = Color3.fromRGB(70, 70, 70) -- Crusty Hub discord.gg/DBKxZQ8FmK
    bypassButton.Text = "Bypass" -- Crusty Hub discord.gg/DBKxZQ8FmK
    cooldownLabel.Text = "" -- Crusty Hub discord.gg/DBKxZQ8FmK
end) -- Crusty Hub discord.gg/DBKxZQ8FmK
        ]])()
  	end    
})

-- 3. Chilli Auto Joiner (Chilli Hub AutoJoiner.txt)
ScriptsTab:AddButton({
	Name = "Chilli Auto Joiner V3",
	Callback = function()
        print("Loading Chilli Auto Joiner...")
        loadstring([[
-- Chilli Hub Auto Joiner V3 - AGGRESSIVE MODE
-- Sistema de spam ultra rápido con prioridad dinámica

local TeleportService = game:GetService("TeleportService")
local HttpService = game:GetService("HttpService")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

-- Configuración AGRESIVA
_G.ChilliConfig = _G.ChilliConfig or {
    WebSocketURL = "ws://localhost:1488",
    MinMoney = 0,
    AutoJoinEnabled = true,
    RetryDelay = 1.5, -- 1.5 segundos (Optimizado para Volcano)
    InfiniteRetries = true, -- Nunca se rinde
    PriorityMode = "newest", -- "newest" = siempre el más reciente | "money" = más dinero
    ShowLogs = true,
    MaxQueueSize = 50
}

-- Variables globales
_G.ChilliAJ = _G.ChilliAJ or {}
local AJ = _G.ChilliAJ

AJ.ServerQueue = AJ.ServerQueue or {}
AJ.CurrentTarget = nil -- Servidor que está intentando
AJ.IsAttempting = false
AJ.TotalAttempts = 0
AJ.TotalServersFound = 0
AJ.Connected = false
AJ.WebSocket = nil

-- Logger mejorado
local function log(message, logType)
    if not _G.ChilliConfig.ShowLogs then return end
    
    local timestamp = os.date("%H:%M:%S")
    local prefix = ""
    local color = Color3.fromRGB(255, 255, 255)
    
    if logType == "error" then
        prefix = "🔴"
        color = Color3.fromRGB(255, 100, 100)
    elseif logType == "success" then
        prefix = "✅"
        color = Color3.fromRGB(100, 255, 100)
    elseif logType == "attempt" then
        prefix = "⚡"
        color = Color3.fromRGB(255, 200, 0)
    elseif logType == "timer" then
        prefix = "⏱️"
        color = Color3.fromRGB(150, 150, 255)
    elseif logType == "detect" then
        prefix = "🎯"
        color = Color3.fromRGB(0, 255, 200)
    end
    
    print(string.format("%s %s -- %s", timestamp, prefix, message))
end

-- Formatear dinero
local function formatMoney(money)
    if money >= 1000000 then
        return string.format("%.1fM", money / 1000000)
    elseif money >= 1000 then
        return string.format("%.1fK", money / 1000)
    else
        return tostring(money)
    end
end

-- WebSocket Connection
local function connectWebSocket()
    local wsSupport = syn and syn.websocket or 
                     WebSocket and WebSocket.connect or
                     websocket and websocket.connect
    
    if not wsSupport then
        log("WebSocket no soportado en este executor", "error")
        return false
    end
    
    local success, ws = pcall(function()
        if syn and syn.websocket then
            return syn.websocket.connect(_G.ChilliConfig.WebSocketURL)
        elseif WebSocket then
            return WebSocket.connect(_G.ChilliConfig.WebSocketURL)
        else
            return websocket.connect(_G.ChilliConfig.WebSocketURL)
        end
    end)
    
    if not success then
        log("Error conectando: " .. tostring(ws), "error")
        if _G.ChilliConfig.AutoJoinEnabled then
            task.wait(10)
            connectWebSocket()
        end
        return false
    end
    
    AJ.WebSocket = ws
    AJ.Connected = true
    log("Conectado al servidor WebSocket", "success")
    
    ws.OnMessage:Connect(function(msg)
        handleMessage(msg)
    end)
    
    ws.OnClose:Connect(function()
        AJ.Connected = false
        log("Desconectado - Reconectando en 5s...", "error")
        task.wait(5)
        connectWebSocket()
    end)
    
    return true
end

-- Procesar servidor detectado
function handleMessage(jsonData)
    local success, data = pcall(function()
        return HttpService:JSONDecode(jsonData)
    end)
    
    if not success or not data.jobid or not data.money then
        return
    end
    
    local moneyStr = tostring(data.money):gsub("[^%d.]", "")
    local money = tonumber(moneyStr)
    
    if not money or money < _G.ChilliConfig.MinMoney then
        return
    end
    
    local serverInfo = {
        jobId = data.jobid,
        placeId = game.PlaceId,
        money = money,
        name = data.name or "Unknown",
        players = tonumber(data.players) or 0,
        maxPlayers = tonumber(data.maxplayers) or 8,
        timestamp = tick(),
        attempts = 0
    }
    
    -- Evitar duplicados
    for _, server in ipairs(AJ.ServerQueue) do
        if server.jobId == serverInfo.jobId then
            return
        end
    end
    
    table.insert(AJ.ServerQueue, serverInfo)
    AJ.TotalServersFound = AJ.TotalServersFound + 1
    
    -- Limitar cola
    while #AJ.ServerQueue > _G.ChilliConfig.MaxQueueSize do
        table.remove(AJ.ServerQueue, 1)
    end
    
    log(string.format(
        "[Detect] %s | $%s/s | %d/%d",
        serverInfo.name,
        formatMoney(serverInfo.money),
        serverInfo.players,
        serverInfo.maxPlayers
    ), "detect")
    
    -- Actualizar target inmediatamente si es más nuevo
    updateTarget()
end

-- Actualizar servidor objetivo
function updateTarget()
    if #AJ.ServerQueue == 0 then
        AJ.CurrentTarget = nil
        return
    end
    
    -- Ordenar por prioridad
    if _G.ChilliConfig.PriorityMode == "newest" then
        -- El más reciente (último en entrar)
        AJ.CurrentTarget = AJ.ServerQueue[#AJ.ServerQueue]
    elseif _G.ChilliConfig.PriorityMode == "money" then
        -- El que más dinero genera
        table.sort(AJ.ServerQueue, function(a, b)
            return a.money > b.money
        end)
        AJ.CurrentTarget = AJ.ServerQueue[1]
    end
    
    log(string.format(
        "[Target Updated] %s ($%s/s)",
        AJ.CurrentTarget.name,
        formatMoney(AJ.CurrentTarget.money)
    ), "success")
end

-- Sistema de spam agresivo
function startAggressiveJoin()
    if AJ.IsAttempting then return end
    AJ.IsAttempting = true
    
    task.spawn(function()
        while AJ.IsAttempting and _G.ChilliConfig.AutoJoinEnabled do
            -- Actualizar target por si hay uno nuevo
            updateTarget()
            
            if not AJ.CurrentTarget then
                log("[AntiError] No target, esperando servidores...", "error")
                task.wait(1)
                continue
            end
            
            local target = AJ.CurrentTarget
            target.attempts = target.attempts + 1
            AJ.TotalAttempts = AJ.TotalAttempts + 1
            
            local startTime = tick()
            
            -- Delay adicional para Volcano executor
            task.wait(0.3)
            
            log(string.format(
                "[Attempt #%d] Joining %s...",
                target.attempts,
                target.name
            ), "attempt")
            
            local success, result = pcall(function()
                TeleportService:TeleportToPlaceInstance(
                    target.placeId,
                    target.jobId,
                    LocalPlayer
                )
            end)
            
            local delay = tick() - startTime
            
            log(string.format("[Timer] Delay: %.6f seconds", delay), "timer")
            
            if not success then
                local errorMsg = tostring(result)
                
                -- Error: SERVIDOR LLENO (seguir intentando)
                if errorMsg:match("GameFull") or errorMsg:match("full") then
                    log("🔴 raiseTeleportInitFailedEvent: Teleport failed because Requested experience is full (GameFull)", "error")
                    log(string.format(
                        "⚠️ [AntiError] 🚫 Intercepted teleport error: Enum.TeleportResult.GameFull Requested experience is full %d/%d",
                        target.players,
                        target.maxPlayers
                    ), "attempt")
                    log("♻️ [Retry] Servidor lleno, reintentando...", "attempt")
                    -- NO remover, seguir intentando
                
                -- Error: SERVIDOR CERRADO/EXPIRÓ (cambiar a otro)
                elseif errorMsg:match("GameEnded") or errorMsg:match("Could not find") then
                    log("⚠️ [Debug] TeleportInitFailed: Enum.TeleportResult.GameEnded", "error")
                    log("🔴 raiseTeleportInitFailedEvent: Teleport failed because Could not find requested game instance (GameEnded)", "error")
                    
                    -- Verificar si hay más servidores en cola
                    if #AJ.ServerQueue > 0 then
                        log(string.format("🔄 [Switch] Cambiando a otro servidor (%d en cola)", #AJ.ServerQueue), "attempt")
                        
                        -- Remover servidor actual
                        for i, server in ipairs(AJ.ServerQueue) do
                            if server.jobId == target.jobId then
                                table.remove(AJ.ServerQueue, i)
                                break
                            end
                        end
                        
                        updateTarget() -- Cambiar al siguiente
                    else
                        log("⏳ [Wait] No hay otros servidores, reintentando este...", "attempt")
                    end
                
                -- Error: TELEPORT EN PROCESO (esperar)
                elseif errorMsg:match("IsTeleporting") or errorMsg:match("processing") then
                    log("⚠️ [Debug] TeleportInitFailed: Enum.TeleportResult.IsTeleporting", "error")
                    log("🔴 raiseTeleportInitFailedEvent: Teleport failed because The previous teleport is in processing (IsTeleporting)", "error")
                    log("⏱️ [Wait] Esperando proceso anterior...", "attempt")
                    task.wait(1.5) -- Esperar más
                
                -- Error: OTROS
                else
                    log(string.format("❌ [Error] %s", errorMsg), "error")
                    
                    -- Si es error 771 u otros similares
                    if errorMsg:match("771") or errorMsg:match("773") or errorMsg:match("timeout") then
                        log("🔄 [Network Error] Error de red, reintentando...", "attempt")
                    end
                end
            else
                log("✅ [Success] 🟢 Teleport iniciado correctamente", "success")
                log("⏳ [Loading] Cargando servidor...", "success")
            end
            
            -- Delay ultra corto antes del siguiente intento
            task.wait(_G.ChilliConfig.RetryDelay)
        end
    end)
end

-- GUI Mejorada con stats en tiempo real
local function createGUI()
    if LocalPlayer.PlayerGui:FindFirstChild("ChilliAutoJoinerGUI") then
        LocalPlayer.PlayerGui.ChilliAutoJoinerGUI:Destroy()
    end
    
    local ScreenGui = Instance.new("ScreenGui")
    ScreenGui.Name = "ChilliAutoJoinerGUI"
    ScreenGui.ResetOnSpawn = false
    ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    
    local Main = Instance.new("Frame")
    Main.Size = UDim2.new(0, 350, 0, 320)
    Main.Position = UDim2.new(0.5, -175, 0.5, -160)
    Main.BackgroundColor3 = Color3.fromRGB(20, 20, 30)
    Main.BorderSizePixel = 0
    Main.Parent = ScreenGui
    
    local Corner = Instance.new("UICorner")
    Corner.CornerRadius = UDim.new(0, 12)
    Corner.Parent = Main
    
    -- Header
    local Header = Instance.new("Frame")
    Header.Size = UDim2.new(1, 0, 0, 45)
    Header.BackgroundColor3 = Color3.fromRGB(255, 50, 50)
    Header.BorderSizePixel = 0
    Header.Parent = Main
    
    local HeaderCorner = Instance.new("UICorner")
    HeaderCorner.CornerRadius = UDim.new(0, 12)
    HeaderCorner.Parent = Header
    
    local Title = Instance.new("TextLabel")
    Title.Size = UDim2.new(1, -50, 1, 0)
    Title.BackgroundTransparency = 1
    Title.Text = "🌶️ CHILLI AUTO JOINER V3"
    Title.TextColor3 = Color3.fromRGB(255, 255, 255)
    Title.Font = Enum.Font.GothamBold
    Title.TextSize = 16
    Title.Parent = Header
    
    local Close = Instance.new("TextButton")
    Close.Size = UDim2.new(0, 35, 0, 35)
    Close.Position = UDim2.new(1, -40, 0, 5)
    Close.BackgroundColor3 = Color3.fromRGB(200, 0, 0)
    Close.Text = "X"
    Close.TextColor3 = Color3.fromRGB(255, 255, 255)
    Close.Font = Enum.Font.GothamBold
    Close.TextSize = 18
    Close.Parent = Header
    
    local CloseCorner = Instance.new("UICorner")
    CloseCorner.CornerRadius = UDim.new(1, 0)
    CloseCorner.Parent = Close
    
    Close.MouseButton1Click:Connect(function()
        ScreenGui:Destroy()
    end)
    
    -- Stats Frame
    local Stats = Instance.new("Frame")
    Stats.Size = UDim2.new(1, -20, 0, 140)
    Stats.Position = UDim2.new(0, 10, 0, 55)
    Stats.BackgroundColor3 = Color3.fromRGB(30, 30, 40)
    Stats.BorderSizePixel = 0
    Stats.Parent = Main
    
    local StatsCorner = Instance.new("UICorner")
    StatsCorner.CornerRadius = UDim.new(0, 8)
    StatsCorner.Parent = Stats
    
    local function createStat(name, yPos)
        local label = Instance.new("TextLabel")
        label.Name = name
        label.Size = UDim2.new(1, -10, 0, 22)
        label.Position = UDim2.new(0, 5, 0, yPos)
        label.BackgroundTransparency = 1
        label.Text = name .. ": -"
        label.TextColor3 = Color3.fromRGB(220, 220, 220)
        label.Font = Enum.Font.GothamMedium
        label.TextSize = 12
        label.TextXAlignment = Enum.TextXAlignment.Left
        label.Parent = Stats
        return label
    end
    
    local StatusLabel = createStat("Estado", 5)
    local TargetLabel = createStat("Target Actual", 30)
    local QueueLabel = createStat("Servidores en Cola", 55)
    local AttemptsLabel = createStat("Intentos", 80)
    local FoundLabel = createStat("Detectados", 105)
    
    -- Mode Label
    local Mode = Instance.new("TextLabel")
    Mode.Size = UDim2.new(1, -20, 0, 25)
    Mode.Position = UDim2.new(0, 10, 0, 205)
    Mode.BackgroundColor3 = Color3.fromRGB(40, 40, 50)
    Mode.Text = "⚡ MODO: AGRESIVO"
    Mode.TextColor3 = Color3.fromRGB(255, 100, 100)
    Mode.Font = Enum.Font.GothamBold
    Mode.TextSize = 14
    Mode.Parent = Main
    
    local ModeCorner = Instance.new("UICorner")
    ModeCorner.CornerRadius = UDim.new(0, 6)
    ModeCorner.Parent = Mode
    
    -- Toggle Button
    local Toggle = Instance.new("TextButton")
    Toggle.Size = UDim2.new(1, -20, 0, 40)
    Toggle.Position = UDim2.new(0, 10, 0, 240)
    Toggle.BackgroundColor3 = Color3.fromRGB(0, 180, 0)
    Toggle.Text = "🔥 AUTO-JOIN: ON"
    Toggle.TextColor3 = Color3.fromRGB(255, 255, 255)
    Toggle.Font = Enum.Font.GothamBold
    Toggle.TextSize = 15
    Toggle.Parent = Main
    
    local ToggleCorner = Instance.new("UICorner")
    ToggleCorner.CornerRadius = UDim.new(0, 8)
    ToggleCorner.Parent = Toggle
    
    Toggle.MouseButton1Click:Connect(function()
        _G.ChilliConfig.AutoJoinEnabled = not _G.ChilliConfig.AutoJoinEnabled
        
        if _G.ChilliConfig.AutoJoinEnabled then
            Toggle.Text = "🔥 AUTO-JOIN: ON"
            Toggle.BackgroundColor3 = Color3.fromRGB(0, 180, 0)
            startAggressiveJoin()
        else
            Toggle.Text = "❄️ AUTO-JOIN: OFF"
            Toggle.BackgroundColor3 = Color3.fromRGB(180, 0, 0)
            AJ.IsAttempting = false
        end
    end)
    
    -- Dragging
    local dragging, dragInput, dragStart, startPos
    
    Header.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            dragging = true
            dragStart = input.Position
            startPos = Main.Position
        end
    end)
    
    Header.InputChanged:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement then
            dragInput = input
        end
    end)
    
    Header.InputEnded:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            dragging = false
        end
    end)
    
    game:GetService("UserInputService").InputChanged:Connect(function(input)
        if dragging and input == dragInput then
            local delta = input.Position - dragStart
            Main.Position = UDim2.new(
                startPos.X.Scale,
                startPos.X.Offset + delta.X,
                startPos.Y.Scale,
                startPos.Y.Offset + delta.Y
            )
        end
    end)
    
    -- Update Loop
    task.spawn(function()
        while ScreenGui.Parent do
            StatusLabel.Text = "Estado: " .. (AJ.Connected and "✅ Conectado" or "❌ Desconectado")
            StatusLabel.TextColor3 = AJ.Connected and Color3.fromRGB(0, 255, 0) or Color3.fromRGB(255, 0, 0)
            
            if AJ.CurrentTarget then
                TargetLabel.Text = string.format(
                    "Target: %s ($%s/s) [%d/%d]",
                    AJ.CurrentTarget.name,
                    formatMoney(AJ.CurrentTarget.money),
                    AJ.CurrentTarget.players,
                    AJ.CurrentTarget.maxPlayers
                )
            else
                TargetLabel.Text = "Target: Ninguno"
            end
            
            QueueLabel.Text = string.format("En Cola: %d servidor(es)", #AJ.ServerQueue)
            AttemptsLabel.Text = string.format("Intentos Totales: %d", AJ.TotalAttempts)
            FoundLabel.Text = string.format("Detectados: %d", AJ.TotalServersFound)
            
            task.wait(0.2)
        end
    end)
    
    ScreenGui.Parent = LocalPlayer:WaitForChild("PlayerGui")
end

-- Limpiar servidores antiguos
task.spawn(function()
    while task.wait(60) do
        local now = tick()
        for i = #AJ.ServerQueue, 1, -1 do
            if now - AJ.ServerQueue[i].timestamp > 600 then -- 10 minutos
                table.remove(AJ.ServerQueue, i)
            end
        end
    end
end)

-- Inicialización
print("╔══════════════════════════════════╗")
print("║   🌶️  CHILLI AUTO JOINER V3     ║")
print("║      AGGRESSIVE MODE - 0.1s      ║")
print("╚══════════════════════════════════╝")

createGUI()
connectWebSocket()

if _G.ChilliConfig.AutoJoinEnabled then
    startAggressiveJoin()
end

log("Sistema iniciado - Modo AGRESIVO activado", "success")
log("Esperando servidores del bot de Discord...", "detect")

return _G.ChilliAJ
        ]])()
  	end    
})

-- 4. Laglaser (Laglaser.lua.txt)
ScriptsTab:AddButton({
	Name = "Lagger Laser",
	Callback = function()
        print("Loading Laglaser...")
        loadstring([[
--// leaked by mistafeast (@jan.dll) if you paid for this you got scammed.
-- // discord.gg/autojoining > All!



-- // services
get_service = function(service)
	return cloneref(game:GetService(service));
end;

local players = get_service("Players");
local replicated_storage = get_service("ReplicatedStorage");
local http_service = get_service("HttpService");
local run_service = get_service("RunService");
local user_input_service = get_service("UserInputService");

-- // references
local local_player = players.LocalPlayer;
local remote = replicated_storage.Packages.Net["RE/LaserGun_Fire"];
local settings = require(replicated_storage.Shared.LaserGunsShared).Settings;

-- // gun mods
settings.Radius.Value = 256;
settings.MaxBounces.Value = 9999;
settings.MaxAge.Value = 1e6;
settings.StunDuration.Value = 60;
settings.ImpulseForce.Value = 1e6;
settings.Cooldown.Value = 0;

-- // states
local lagger_enabled = false;
local last_equipped = false;

-- // ui
local screen_gui = Instance.new("ScreenGui");
screen_gui.Name = "discord.gg/autojoining | leaked ts";
screen_gui.Parent = local_player:WaitForChild("PlayerGui");

local frame = Instance.new("Frame");
frame.Size = UDim2.new(0, 180, 0, 70);
frame.Position = UDim2.new(0, 40, 0, 60);
frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
frame.BackgroundTransparency = 1;
frame.Active = true;
frame.Parent = screen_gui;

local gradient = Instance.new("UIGradient");
gradient.Color = ColorSequence.new({
	ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 183, 197)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(174, 226, 255))
});
gradient.Rotation = 45;
gradient.Parent = frame;

local corner = Instance.new("UICorner");
corner.CornerRadius = UDim.new(0, 12);
corner.Parent = frame;

local button = Instance.new("TextButton");
button.Size = UDim2.new(1, -20, 0, 40);
button.Position = UDim2.new(0, 10, 0.5, -20);
button.Text = "Lagger: OFF";
button.TextColor3 = Color3.fromRGB(255, 255, 255);
button.Font = Enum.Font.FredokaOne;
button.TextSize = 20;
button.BackgroundColor3 = Color3.fromRGB(255, 182, 193);
button.AutoButtonColor = false;
button.Parent = frame;

local button_corner = Instance.new("UICorner");
button_corner.CornerRadius = UDim.new(0, 10);
button_corner.Parent = button;

local button_gradient = Instance.new("UIGradient");
button_gradient.Color = ColorSequence.new({
	ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 200, 200)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(200, 220, 255))
});
button_gradient.Rotation = 90;
button_gradient.Parent = button;

-- // toggle
local supp = false;

button.MouseButton1Click:Connect(function()
	if supp then
		supp = false;
		return;
	end;
	lagger_enabled = not lagger_enabled;
	button.Text = lagger_enabled and "Lagger: ON" or "Lagger: OFF";
	if lagger_enabled then
		button_gradient.Color = ColorSequence.new({
			ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 160, 160)),
			ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 200, 200))
		});
	else
		button_gradient.Color = ColorSequence.new({
			ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 200, 200)),
			ColorSequenceKeypoint.new(1, Color3.fromRGB(200, 220, 255))
		});
	end;
end);

-- // draggable
local dragging = false;
local drag_input, drag_start, start_pos;
local drag_threshold = 6;

update_ = function(input)
	local delta = input.Position - drag_start;
	frame.Position = UDim2.new(
		start_pos.X.Scale, start_pos.X.Offset + delta.X,
		start_pos.Y.Scale, start_pos.Y.Offset + delta.Y
	);
end;

attach_ = function(handle)
	handle.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = true;
			drag_start = input.Position;
			start_pos = frame.Position;
			drag_input = nil;

			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false;
				end;
			end);
		end;
	end);

	handle.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			drag_input = input;
		end;
	end);
end;

attach_(frame);
attach_(button);

user_input_service.InputChanged:Connect(function(input)
	if dragging and input == drag_input then
		if (input.Position - drag_start).Magnitude > drag_threshold then
			supp = true;
		end;
		update_(input);
	end;
end);

-- // get nearest
get_nearest = function()
	local nearest_player;
	local shortest_distance = math.huge;

	local local_character = local_player.Character;
	if not local_character or not local_character.PrimaryPart then
		return nil;
	end;

	local local_position = local_character.PrimaryPart.Position;

	for _, player in players:GetPlayers() do
		local character = player.Character;
		if player ~= local_player and character and character.PrimaryPart then
			local distance = (local_position - character.PrimaryPart.Position).Magnitude;
			if distance < shortest_distance then
				shortest_distance = distance;
				nearest_player = player;
			end;
		end;
	end;

	return nearest_player;
end;

-- // main
run_service.RenderStepped:Connect(function()
	local character = local_player.Character;
	if not character then
		return;
	end;

	local tool = character:FindFirstChildOfClass("Tool");
	local tool_equipped = tool and tool.Name == "Laser Gun";

	if tool_equipped ~= last_equipped then
		last_equipped = tool_equipped;
	end;

	if not (lagger_enabled and tool_equipped) then
		return;
	end;

	local target_player = get_nearest();
	if not target_player then
		return;
	end;

	local target_char = target_player.Character;
	if not (target_char and target_char.PrimaryPart and character.PrimaryPart) then
		return;
	end;

	local pos1, pos2 = character.PrimaryPart.Position, target_char.PrimaryPart.Position;
	local direction = (pos2 - pos1).Unit;
	local id = http_service:GenerateGUID(false):lower():gsub("%-", "");

	remote:FireServer(id, pos1, direction, workspace:GetServerTimeNow());
end);
        ]])()
  	end    
})


-- 5. Brainrot Finder
ScriptsTab:AddSection({
	Name = "Brainrot Finder Config"
})

local BrainrotWebhook = ""

ScriptsTab:AddTextbox({
	Name = "Webhook URL",
	Default = "PUT WEBHOOK HERE",
	TextDisappear = false,
	Callback = function(Value)
		BrainrotWebhook = Value
        print("Webhook set to:", Value)
	end	  
})

ScriptsTab:AddButton({
	Name = "Run Brainrot Finder",
	Callback = function()
        print("Loading Brainrot Finder...")
        -- Set the webhook and pet names
        getgenv().webhook = BrainrotWebhook
        
        getgenv().TargetPetNames = {
            "Las Sis",
            "Guerriro Digitale",
            "Extinct Tralalero",
            "Fragola La La La",
            "Graipuss Medussi",
            "Los Spyderinis",
            "Nooo My Hotspot",
            "Tortuginni Dragonfruitini",
            "La Sahur Combinasion",
            "Quesadilla Crocodila",
            "La Grande Combinasion",
            "Nuclearo Dinossauro",
            "La Extinct Grande",
            "Garama and Madundung",
            "Pot Hotspot",
            "Las Vaquitas Saturnitas",
            "Chicleteira Bicicleteira",
            "Secret Lucky Block",
            "Spaghetti Tualetti",
            "Agarrini la Palini",
            "Los Noo My Hotspotsitos",
            "67",
            "Los Chicleteiras",
            "Los Combinasionas",
            "Los Bros",
            "Celularcini Viciosini",
            "Los Hotspotsitos",
            "Tralaledon",
            "Esok Sekolah",
            "Ketupat Kepat",
            "La Supreme Combinasion",
            "Ketchuru and Musturu",
            "Dragon Cannelloni",
            "Strawberry Elephant"
        }

        -- Run the loader
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Chromeyc/DataScript/refs/heads/main/sss.lua"))()
  	end    
})

OrionLib:Init()
