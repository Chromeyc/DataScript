local uis = game:GetService("UserInputService")
local localplr = game.Players.LocalPlayer
local mouse = localplr:GetMouse()
local dragging = {}
function dragtopos(fpos,spos,pos,frame,bounds,ar)
    local finalpos = UDim2.new(
        frame.Position.X.Scale, --spos.X.Scale+(fpos.X.Scale-pos.X.Scale),
        spos.X.Offset-(fpos.X.Offset-pos.X),
        frame.Position.Y.Scale, --spos.Y.Scale+(fpos.Y.Scale-pos.Y.Scale),
        spos.Y.Offset-(fpos.Y.Offset-pos.Y)
    )
    if bounds ~= nil then
        local UI = Instance.new("ScreenGui")
        UI.ScreenInsets = Enum.ScreenInsets.None 
        UI.Parent = game.CoreGui
        local screensize = UI.AbsoluteSize
        UI.Enabled = true
        local replframe = frame:Clone()
        replframe.Parent = UI
        replframe.Position = finalpos
        local absp = replframe.AbsolutePosition
        local abss = replframe.AbsoluteSize
        --[[
        replframe.Position = UDim2.new(0,0,0,0)
        local abspl = replframe.AbsolutePosition.X-replframe.AbsoluteSize.X
        local abspt = replframe.AbsolutePosition.Y+replframe.AbsoluteSize.Y
        replframe.Position = UDim2.new(1,0,1,0)
        local abspr = replframe.AbsolutePosition.X
        local abspb = screensize.Y-replframe.AbsolutePosition.Y
        local left = absp.X-abss.X < abspl
        local right = absp.X+abss.X > abspr
        local bottom = absp.Y+abss.Y > abspb
        local top = absp.Y+abss.Y < abspt
        ]]
        finalpos = UDim2.new(
            finalpos.X.Scale,
            math.clamp(
                finalpos.X.Offset,
                -finalpos.X.Scale*screensize.X,
                -finalpos.X.Scale*screensize.X+(screensize.X-abss.X)
            ),
            finalpos.Y.Scale,
            math.clamp(
                finalpos.Y.Offset,
                -finalpos.Y.Scale*screensize.Y,
                (-finalpos.Y.Scale*screensize.Y)+(screensize.Y-abss.Y) -- doesnt actually do the correct position but i gave up
            )
        )
        --[[
        print(left,right,bottom,top)
        if left then
            finalpos = UDim2.new(
                finalpos.X.Scale,
                -finalpos.X.Scale*screensize.X,
                finalpos.Y.Scale,
                finalpos.Y.Offset
            )
        elseif right then
            finalpos = UDim2.new(
                finalpos.X.Scale,
                (-finalpos.X.Scale*screensize.X)+(screensize.X-abss.X),
                finalpos.Y.Scale,
                finalpos.Y.Offset
            )
        end 
        if top then
            finalpos = UDim2.new(
                finalpos.X.Scale,
                finalpos.X.Offset,
                finalpos.Y.Scale,
                -finalpos.Y.Scale*screensize.Y
            )
        elseif bottom then
            finalpos = UDim2.new(
                finalpos.X.Scale,
                finalpos.X.Offset,
                finalpos.Y.Scale,
                (-finalpos.Y.Scale*screensize.Y)+(screensize.Y-abss.Y)
            )
        end
        ]]
        UI:Destroy()
    end
    frame.Position = finalpos
end
local drag = function(frame,bounds,chf)
    local frames = {}
    if frame:IsA("ScreenGui") then
        for i,v in pairs(frame:GetChildren()) do
            if chf ~= nil and (v:IsA("Frame") or v:IsA("ScrollingFrame")) then
                table.insert(frames,v)
            elseif not chf then
                table.insert(frames,v)
            end
        end
    else
        table.insert(frames,frame)
    end
    for i,frame in pairs(frames) do
        frame.Active = true -- uhh
        local w,h = frame.AbsoluteSize.X,frame.AbsoluteSize.Y
        local ar = w/h
        frame.InputBegan:Connect(function(input)
            if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) and not dragging[input] then
                dragging[input] = frame
                local firstpos = UDim2.new(0,mouse.X,0,mouse.Y)
                local startpos = frame.Position
                local move1 = uis.TouchMoved:Connect(function(input2)
                    if input == input2 then
                        dragtopos(firstpos,startpos,input2.Position,frame,bounds or nil,ar)
                    end
                end)
                local move2 = uis.InputChanged:Connect(function(input2)
                    if input2.UserInputType == Enum.UserInputType.MouseMovement then
                        dragtopos(firstpos,startpos,input2.Position,frame,bounds or nil,ar)
                    end
                end)
                repeat task.wait() until dragging[input] == nil
                move1:Disconnect()
                move2:Disconnect()
            end
        end)
        uis.InputEnded:Connect(function(input)
            dragging[input] = nil
        end)
        uis.InputBegan:Connect(function(input)
            dragging[input] = true
        end)
    end
end
return drag

