local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()

local Window = Fluent:CreateWindow({
    Title = "Sab Script Hub",
    SubTitle = "Fluid Version",
    TabWidth = 160,
    Size = UDim2.fromOffset(580, 460),
    Acrylic = true, 
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.LeftControl,
    IntroEnabled = false
})

local Tabs = {
    Main = Window:AddTab({ Title = "Main", Icon = "home" }),
    Settings = Window:AddTab({ Title = "Settings", Icon = "settings" })
}

--------------------------------------------
-- QUADGAME
--------------------------------------------
Tabs.Main:AddParagraph({
    Title = "Quadgame Leak",
    Content = "Enhanced protection enabled."
})

Tabs.Main:AddButton({
    Title = "Load Quadgame Leak",
    Callback = function()
        -- Anti-Error
        task.spawn(function()
            local ScriptContext = game:GetService("ScriptContext")
            local LogService = game:GetService("LogService")
            pcall(function() ScriptContext.Error:Connect(function() end) end)
            pcall(function() ScriptContext:SetSignalEnabled("ScriptGenericError", false) end)
            while true do
                pcall(function() LogService:ClearOutput(); ScriptContext:SetSignalEnabled("ScriptGenericError", false) end)
                task.wait()
            end
        end)
        -- Anti-Kick
        local mt = getrawmetatable(game)
        setreadonly(mt, false)
        local old = mt.__namecall
        mt.__namecall = newcclosure(function(self, ...)
            if getnamecallmethod() == "Kick" then return end
            return old(self, ...)
        end)
        setreadonly(mt, true)
        hookfunction(game.Players.LocalPlayer.Kick, newcclosure(function() end))

        -- Load
        loadstring(game:HttpGet("https://raw.githubusercontent.com/urgay123413/Quadgame/main/LEAK"))()
    end
})

--------------------------------------------
-- CRUSTY LASER BYPASS (User requested "Noclip stuff")
--------------------------------------------
Tabs.Main:AddButton({
    Title = "Load Crusty Laser Bypass",
    Description = "Bypasses lasers by teleporting under map.",
    Callback = function()
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

--------------------------------------------
-- LASER LAGGER
--------------------------------------------
Tabs.Main:AddButton({
    Title = "Load Laser Lagger",
    Description = "Loads the Laser Gun lagg script (Gui).",
    Callback = function()
        loadstring([[
--// SAFE CLONEREF PATCH
local cloneref = cloneref or function(o) return o end

--// leaked by mistafeast (@jan.dll)
get_service = function(service) return cloneref(game:GetService(service)) end
local players = get_service("Players")
local replicated_storage = get_service("ReplicatedStorage")
local http_service = get_service("HttpService")
local run_service = get_service("RunService")
local user_input_service = get_service("UserInputService")
local local_player = players.LocalPlayer
local remote = replicated_storage.Packages.Net["RE/LaserGun_Fire"]
local settings = require(replicated_storage.Shared.LaserGunsShared).Settings

settings.Radius.Value = 256
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

-- SaveManager
SaveManager:SetLibrary(Fluent)
InterfaceManager:SetLibrary(Fluent)
SaveManager:IgnoreThemeSettings()
SaveManager:SetFolder("SabHub")
InterfaceManager:BuildInterfaceSection(Tabs.Settings)

Window:SelectTab(Tabs.Main)
