local Library = {}
function Library:CreateWindow(titleText,prompt)
    local ModestLib = Instance.new("ScreenGui")
    local Window = Instance.new("Frame")
    local TitleFrame = Instance.new("Frame")
    local Title = Instance.new("TextLabel")
    local UIListLayout = Instance.new("UIListLayout")
    pcall(function() if game:GetService("CoreGui").ModestLib then game:GetService("CoreGui").ModestLib:Destroy() else print('F'); end; end)
    ModestLib.Name = "ModestLib"
    ModestLib.Parent = game:GetService("CoreGui")
    ModestLib.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

    Window.Name = "Window"
    Window.Parent = ModestLib
    Window.BackgroundColor3 = Color3.fromRGB(25,25,25)
    Window.BackgroundTransparency = 0.100
    Window.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Window.BorderSizePixel = 3
    Window.Position = UDim2.new(0.0340346545, 0, 0.0375426635, 0)
    Window.Size = UDim2.new(0, 389, 0, 789)
    Window.Draggable = true
    Window.Active = true
    Window.Selectable = true

    TitleFrame.Name = "TitleFrame"
    TitleFrame.Parent = Window
    TitleFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TitleFrame.BackgroundTransparency = 1.000
    TitleFrame.Size = UDim2.new(0, 389, 0, 26)

    Title.Name = "Title"
    Title.Parent = TitleFrame
    Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Title.BackgroundTransparency = 1.000
    Title.BorderSizePixel = 0
    Title.Size = UDim2.new(0, 389, 0, 26)
    Title.Font = Enum.Font.GothamSemibold
    if titleText == "" then
        Title.Text = "Totem's Modest Menu Lib v0.4.2"
    else
        Title.Text = titleText or "Totem's Modest Menu Lib v0.4.2"
    end
    
    Title.TextColor3 = Color3.fromRGB(255, 255, 255)
    Title.TextSize = 16.000

    UIListLayout.Parent = Window
    UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
    UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

    local innards = {}

    function innards:Destroy()
        ModestLib:Destroy()
    end

    function innards:NewTab(name,danger)
        local Tab = Instance.new("Frame")
        local UIListLayout = Instance.new("UIListLayout")
        local Home = Instance.new("TextButton")
        local TextButton = Instance.new("TextButton")
        local TabImage = Instance.new("ImageLabel")
        local ReturnImage = Instance.new("ImageLabel")

        TextButton.Parent = Window
        TextButton.BackgroundColor3 = Color3.fromRGB(255,255,255)
        TextButton.BackgroundTransparency = 1.000
        TextButton.BorderSizePixel = 0
        TextButton.Size = UDim2.new(1, 0, 0.026, 0)
        TextButton.Font = Enum.Font.GothamSemibold
        if danger then
            TextButton.Text = "      "..name
        else
            TextButton.Text = "  "..name
        end
        TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
        TextButton.TextSize = 16.000
        TextButton.TextXAlignment = Enum.TextXAlignment.Left
        
        TabImage.Name = "TabImage"
        TabImage.Parent = TextButton
        TabImage.BackgroundTransparency = 1
        TabImage.LayoutOrder = 10
        TabImage.AnchorPoint = Vector2.new(0.5, 0.5)
        TabImage.Position = UDim2.new(0.97, 0, 0.5, 0)
        TabImage.Size = UDim2.new(0, 25, 0, 25)
        TabImage.ZIndex = 2
        TabImage.Image = "rbxassetid://3926307971"
        TabImage.ImageRectOffset = Vector2.new(764, 244)
        TabImage.ImageRectSize = Vector2.new(36, 36)

        TextButton.MouseEnter:Connect(function()
            TextButton.BackgroundTransparency = 0
        end)
        
        TextButton.MouseLeave:Connect(function()
            TextButton.BackgroundTransparency = 1
        end)
        
        Tab.Name = name
        Tab.Parent = Window
        Tab.BackgroundColor3 = Color3.fromRGB(255,255,255)
        Tab.BackgroundTransparency = 1.000
        Tab.BorderColor3 = Color3.fromRGB(0, 0, 0)
        Tab.BorderSizePixel = 0
        Tab.Position = UDim2.new(0, 0, 0.0329531059, 0)
        Tab.Size = UDim2.new(1, 0, 0.00126742711, 762)
        Tab.Visible = false
        
        UIListLayout.Parent = Tab
        UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
        UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
        
        Home.Parent = Tab
        Home.BackgroundColor3 = Color3.fromRGB(255,255,255)
        Home.BackgroundTransparency = 1.000
        Home.BorderSizePixel = 0
        Home.Size = UDim2.new(1, 0, 0.026, 0)
        Home.Font = Enum.Font.GothamSemibold
        Home.Text = "  .."
        Home.TextColor3 = Color3.fromRGB(255, 255, 255)
        Home.TextSize = 16.000
        Home.TextXAlignment = Enum.TextXAlignment.Left
        
        ReturnImage.Name = "ReturnImage"
        ReturnImage.Parent = Home
        ReturnImage.BackgroundTransparency = 1
        ReturnImage.LayoutOrder = 10
        ReturnImage.AnchorPoint = Vector2.new(0.5, 0.5)
        ReturnImage.Position = UDim2.new(0.97, 0, 0.5, 0)
        ReturnImage.Rotation = 180
        ReturnImage.Size = UDim2.new(0, 25, 0, 25)
        ReturnImage.ZIndex = 2
        ReturnImage.Image = "rbxassetid://3926307971"
        ReturnImage.ImageRectOffset = Vector2.new(764, 244)
        ReturnImage.ImageRectSize = Vector2.new(36, 36)
        
        if danger then
            local warning = Instance.new("ImageButton")
                
            warning.Name = "warning"
            warning.Parent = TextButton
            warning.AnchorPoint = Vector2.new(0.5, 0.5)
            warning.BackgroundTransparency = 1
            warning.Position = UDim2.new(0.04, 0, 0.5, 0)
            warning.Size = UDim2.new(0, 25, 0, 25)
            warning.ZIndex = 2
            warning.Image = "rbxassetid://6764432408"
            warning.ImageRectOffset = Vector2.new(0, 900)
            warning.ImageRectSize = Vector2.new(50, 50)
        end

        Home.MouseEnter:Connect(function()
            Home.BackgroundTransparency = 0
        end)
        
        Home.MouseLeave:Connect(function()
            Home.BackgroundTransparency = 1
        end)
        
        TextButton.MouseButton1Click:Connect(function()
            for _,v in pairs(Window:GetChildren()) do
                if v:IsA("TextButton") then
                    v.Visible = false
                    Tab.Visible = true
                end
            end
        end)
        
        Home.MouseButton1Click:Connect(function()
            for _,v in pairs(Window:GetChildren()) do
                if v:IsA("TextButton") then
                    Tab.Visible = false
                    v.Visible = true
                end
            end
        end)
        
        local tabInnards = {}
        
        function tabInnards:Destroy()
            ModestLib:Destroy()
        end
        
        function tabInnards:NewButton(name, interaction, danger)
            local TextButton = Instance.new("TextButton")
    
            TextButton.Parent = Tab
            TextButton.BackgroundColor3 = Color3.fromRGB(255,255,255)
            TextButton.BackgroundTransparency = 1.000
            TextButton.BorderSizePixel = 0
            TextButton.Size = UDim2.new(1, 0, 0.026, 0)
            TextButton.Font = Enum.Font.GothamSemibold
            if danger then
                TextButton.Text = "      "..name
            else
                TextButton.Text = "  "..name
            end
            TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
            TextButton.TextSize = 16.000
            TextButton.TextXAlignment = Enum.TextXAlignment.Left
            
            
            if danger then
                local warning = Instance.new("ImageButton")
                    
                warning.Name = "warning"
                warning.Parent = TextButton
                warning.AnchorPoint = Vector2.new(0.5, 0.5)
                warning.BackgroundTransparency = 1
                warning.Position = UDim2.new(0.04, 0, 0.5, 0)
                warning.Size = UDim2.new(0, 25, 0, 25)
                warning.ZIndex = 2
                warning.Image = "rbxassetid://6764432408"
                warning.ImageRectOffset = Vector2.new(0, 900)
                warning.ImageRectSize = Vector2.new(50, 50)
            end
            
            TextButton.MouseButton1Click:Connect(interaction)
            
            TextButton.MouseEnter:Connect(function()
                TextButton.BackgroundTransparency = 0
            end)
            
            TextButton.MouseLeave:Connect(function()
                TextButton.BackgroundTransparency = 1
            end)
        end
        
        function tabInnards:NewToggle(name,state,interaction,danger)
            local TextButton = Instance.new("TextButton")
            local uncheck = Instance.new("ImageButton")
            local check = Instance.new("ImageButton")

            TextButton.Parent = Tab
            TextButton.BackgroundColor3 = Color3.fromRGB(255,255,255)
            TextButton.BackgroundTransparency = 1.000
            TextButton.BorderSizePixel = 0
            TextButton.Size = UDim2.new(1, 0, 0.026, 0)
            TextButton.Font = Enum.Font.GothamSemibold
            if danger then
                TextButton.Text = "      "..name
            else
                TextButton.Text = "  "..name
            end
            TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
            TextButton.TextSize = 16.000
            TextButton.TextXAlignment = Enum.TextXAlignment.Left
            
            uncheck.Name = "uncheck"
            uncheck.Parent = TextButton
            uncheck.AnchorPoint = Vector2.new(0.5, 0.5)
            uncheck.BackgroundTransparency = 1.000
            uncheck.LayoutOrder = 3
            uncheck.Position = UDim2.new(0.970000029, 0, 0.5, 0)
            uncheck.Size = UDim2.new(0, 22, 0, 22)
            uncheck.ZIndex = 2
            uncheck.Image = "rbxassetid://3926305904"
            uncheck.ImageRectOffset = Vector2.new(924, 724)
            uncheck.ImageRectSize = Vector2.new(36, 36)
            
            check.Name = "check"
            check.Parent = TextButton
            check.AnchorPoint = Vector2.new(0.5, 0.5)
            check.BackgroundTransparency = 1.000
            check.Position = UDim2.new(0.970000029, 0, 0.5, 0)
            check.Size = UDim2.new(0, 22, 0, 22)
            check.ZIndex = 2
            check.Image = "rbxassetid://3926305904"
            check.ImageRectOffset = Vector2.new(312, 4)
            check.ImageRectSize = Vector2.new(24, 24)
            
            if danger then
                local warning = Instance.new("ImageButton")
                    
                warning.Name = "warning"
                warning.Parent = TextButton
                warning.AnchorPoint = Vector2.new(0.5, 0.5)
                warning.BackgroundTransparency = 1
                warning.Position = UDim2.new(0.04, 0, 0.5, 0)
                warning.Size = UDim2.new(0, 25, 0, 25)
                warning.ZIndex = 2
                warning.Image = "rbxassetid://6764432408"
                warning.ImageRectOffset = Vector2.new(0, 900)
                warning.ImageRectSize = Vector2.new(50, 50)
            end
            
            if state then uncheck.Visible = false; check.Visible = true else uncheck.Visible = true; check.Visible = false end
            
            TextButton.MouseButton1Click:Connect(function()
                state = not state
                if state then 
                    uncheck.Visible = false; 
                    check.Visible = true
                else 
                    uncheck.Visible = true; 
                    check.Visible = false 
                end
    
                if state then
                    interaction(state)
                elseif not state then
                    interaction(state)
                end
            end)
            
            TextButton.MouseEnter:Connect(function()
                TextButton.BackgroundTransparency = 0
            end)
            
            TextButton.MouseLeave:Connect(function()
                TextButton.BackgroundTransparency = 1
            end)
        end
        
        function tabInnards:NewLabel(name,warning)
            local TextButton = Instance.new("TextButton")
    
            TextButton.Parent = Tab
            TextButton.BackgroundColor3 = Color3.fromRGB(255,255,255)
            TextButton.BackgroundTransparency = 1.000
            TextButton.BorderSizePixel = 0
            TextButton.Size = UDim2.new(1, 0, 0.026, 0)
            TextButton.Font = Enum.Font.GothamSemibold
            TextButton.Text = name
            if warning then
                TextButton.TextColor3 = Color3.fromRGB(255,255,255)
            else
                TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
            end
            TextButton.TextSize = 16.000
            TextButton.TextXAlignment = Enum.TextXAlignment.Center
        end
        
        function tabInnards:NewParagraph(name,height,fontSize,warning)
            local TextButton = Instance.new("TextButton")
    
            TextButton.Parent = Tab
            TextButton.BackgroundColor3 = Color3.fromRGB(255,255,255)
            TextButton.BackgroundTransparency = 1.000
            TextButton.BorderSizePixel = 0
            TextButton.Size = UDim2.new(1, 0, height or 0.026, 0)
            TextButton.Font = Enum.Font.GothamSemibold
            TextButton.TextWrapped = true
            TextButton.Text = name
            if warning then
                TextButton.TextColor3 = Color3.fromRGB(255,255,255)
            else
                TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
            end
            TextButton.TextSize = fontSize or 16
            TextButton.TextXAlignment = Enum.TextXAlignment.Center
        end
        
        function tabInnards:NewSelection(name, selections, default, interaction)
            local TextButton = Instance.new("TextButton")
            local Selection = Instance.new("TextButton")
            local right = Instance.new("ImageButton")
            local left = Instance.new("ImageButton")
            local UIListLayout = Instance.new("UIListLayout")
            local nobody = Instance.new("TextLabel")
            local selectionNum = 0;
            local curSelection = default
            
            for _,v in pairs(selections) do
                selectionNum = selectionNum + 1;
            end
            
    
            TextButton.Parent = Tab
            TextButton.BackgroundColor3 = Color3.fromRGB(255,255,255)
            TextButton.BackgroundTransparency = 1.000
            TextButton.BorderSizePixel = 0
            TextButton.Size = UDim2.new(1, 0, 0.026, 0)
            TextButton.Font = Enum.Font.GothamSemibold
            if danger then
                TextButton.Text = "      "..name
            else
                TextButton.Text = "  "..name
            end
            TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
            TextButton.TextSize = 16.000
            TextButton.TextXAlignment = Enum.TextXAlignment.Left
            
            right.Name = "right"
            right.Parent = TextButton
            right.AnchorPoint = Vector2.new(0.5, 0.5)
            right.BackgroundTransparency = 1.000
            right.LayoutOrder = 5
            right.Position = UDim2.new(0.97, 0, 0.5, 0)
            right.Size = UDim2.new(0, 25, 0, 25)
            right.ZIndex = 2
            right.Image = "rbxassetid://6764432408"
            right.ImageRectOffset = Vector2.new(100, 150)
            right.ImageRectSize = Vector2.new(50, 50)
            
            left.Name = "left"
            left.Parent = TextButton
            left.AnchorPoint = Vector2.new(0.5, 0.5)
            left.BackgroundTransparency = 1.000
            left.LayoutOrder = 5
            left.Position = UDim2.new(0.5, 0, 0.342726082, 0)
            left.Size = UDim2.new(0, 25, 0, 25)
            left.ZIndex = 2
            left.Image = "rbxassetid://6764432408"
            left.ImageRectOffset = Vector2.new(150, 300)
            left.ImageRectSize = Vector2.new(50, 50)
            
            nobody.Name = "nobody"
            nobody.Parent = TextButton
            nobody.AnchorPoint = Vector2.new(0.5, 0.5)
            nobody.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            nobody.BackgroundTransparency = 1.000
            nobody.BorderSizePixel = 0
            nobody.Position = UDim2.new(0.741645217, 0, 0.657273829, 0)
            nobody.Size = UDim2.new(0, 150, 0, 20)
            nobody.Font = Enum.Font.GothamSemibold
            nobody.Text = selections[curSelection] or "nil"
            nobody.TextColor3 = Color3.fromRGB(255, 255, 255)
            nobody.TextSize = 14.000
            nobody.TextYAlignment = Enum.TextYAlignment.Center
            
            UIListLayout.Parent = TextButton
            UIListLayout.FillDirection = Enum.FillDirection.Horizontal
            UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Right
            UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center
    
            if danger then
                local warning = Instance.new("ImageButton")
                    
                warning.Name = "warning"
                warning.Parent = TextButton
                warning.AnchorPoint = Vector2.new(0.5, 0.5)
                warning.BackgroundTransparency = 1
                warning.Position = UDim2.new(0.04, 0, 0.5, 0)
                warning.Size = UDim2.new(0, 25, 0, 25)
                warning.ZIndex = 2
                warning.Image = "rbxassetid://6764432408"
                warning.ImageRectOffset = Vector2.new(0, 900)
                warning.ImageRectSize = Vector2.new(50, 50)
            end
            
            
            
            left.MouseButton1Click:Connect(function()
                curSelection = curSelection - 1
                if curSelection == 0 then
                    curSelection = selectionNum
                elseif curSelection == selectionNum then
                    curSelection = 1
                end
                
                nobody.Text = selections[curSelection]
                
                interaction(selections[curSelection],curSelection)
            end)
            
            right.MouseButton1Click:Connect(function()
                curSelection = curSelection + 1
                if curSelection == 0 then
                    curSelection = selectionNum
                elseif curSelection > selectionNum then
                    curSelection = 1
                end
                
                nobody.Text = selections[curSelection]
                
                interaction(selections[curSelection],curSelection)
            end)
        end

        function tabInnards:NewValueSelection(name, minimum, maximum, countby, default, interaction)
            local TextButton = Instance.new("TextButton")
            local Selection = Instance.new("TextButton")
            local right = Instance.new("ImageButton")
            local left = Instance.new("ImageButton")
            local UIListLayout = Instance.new("UIListLayout")
            local nobody = Instance.new("TextLabel")
            local curSelection = default
    
            TextButton.Parent = Tab
            TextButton.BackgroundColor3 = Color3.fromRGB(255,255,255)
            TextButton.BackgroundTransparency = 1.000
            TextButton.BorderSizePixel = 0
            TextButton.Size = UDim2.new(1, 0, 0.026, 0)
            TextButton.Font = Enum.Font.GothamSemibold
            TextButton.Text = "  "..name
            TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
            TextButton.TextSize = 16.000
            TextButton.TextXAlignment = Enum.TextXAlignment.Left
            
            right.Name = "right"
            right.Parent = TextButton
            right.AnchorPoint = Vector2.new(0.5, 0.5)
            right.BackgroundTransparency = 1.000
            right.LayoutOrder = 5
            right.Position = UDim2.new(0.97, 0, 0.5, 0)
            right.Size = UDim2.new(0, 25, 0, 25)
            right.ZIndex = 2
            right.Image = "rbxassetid://6764432408"
            right.ImageRectOffset = Vector2.new(100, 150)
            right.ImageRectSize = Vector2.new(50, 50)
            
            left.Name = "left"
            left.Parent = TextButton
            left.AnchorPoint = Vector2.new(0.5, 0.5)
            left.BackgroundTransparency = 1.000
            left.LayoutOrder = 5
            left.Position = UDim2.new(0.5, 0, 0.342726082, 0)
            left.Size = UDim2.new(0, 25, 0, 25)
            left.ZIndex = 2
            left.Image = "rbxassetid://6764432408"
            left.ImageRectOffset = Vector2.new(150, 300)
            left.ImageRectSize = Vector2.new(50, 50)
            
            nobody.Name = "nobody"
            nobody.Parent = TextButton
            nobody.AnchorPoint = Vector2.new(0.5, 0.5)
            nobody.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            nobody.BackgroundTransparency = 1.000
            nobody.BorderSizePixel = 0
            nobody.Position = UDim2.new(0.741645217, 0, 0.657273829, 0)
            nobody.Size = UDim2.new(0, 150, 0, 20)
            nobody.Font = Enum.Font.GothamSemibold
            nobody.Text = default or "nil"
            nobody.TextColor3 = Color3.fromRGB(255, 255, 255)
            nobody.TextSize = 14.000
            nobody.TextYAlignment = Enum.TextYAlignment.Center
            
            UIListLayout.Parent = TextButton
            UIListLayout.FillDirection = Enum.FillDirection.Horizontal
            UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Right
            UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center
            local heldR = false
            local heldL = false
    
            spawn(function()
                while wait(0.1) do
                    if heldR then
                        if curSelection < maximum then
                            curSelection = curSelection + countby
                            nobody.Text = curSelection
                        elseif curSelection >= maximum then
                            if curSelection > maximum then curSelection = maximum; nobody.Text = curSelection end
                            heldR = false
                        end
                    elseif heldL then
                        if curSelection > minimum then
                            curSelection = curSelection - countby
                            nobody.Text = curSelection
                        elseif curSelection <= minimum then
                            if curSelection < minimum then curSelection = minimum; nobody.Text = curSelection end
                            heldL = false
                        end
                    end
                end
            end)
            
    
            left.MouseButton1Down:Connect(function()
                heldL = true
            end)
    
            left.MouseButton1Up:Connect(function()
                heldL = false
                nobody.Text = curSelection
                interaction(curSelection)
            end)
            
            right.MouseButton1Down:Connect(function()
                heldR = true
            end)
    
            right.MouseButton1Up:Connect(function()
                heldR = false
                nobody.Text = curSelection
                interaction(curSelection)
            end)
        end
        
        function tabInnards:DestroyGuiButton()
            local TextButton = Instance.new("TextButton")
            local power = Instance.new("ImageButton")
    
            TextButton.Parent = Tab
            TextButton.AnchorPoint = Vector2.new(0.5, 0.5)
            TextButton.Position = UDim2.new(0.5, 0, 0.5, 0)
            TextButton.BackgroundColor3 = Color3.fromRGB(224,97,69)
            TextButton.BackgroundTransparency = 1.000
            TextButton.BorderSizePixel = 0
            TextButton.Size = UDim2.new(1, 0, 0.026, 0)
            TextButton.Font = Enum.Font.GothamSemibold
            TextButton.TextWrapped = true
            TextButton.Text = "        Destroy Gui"
            TextButton.TextColor3 = Color3.fromRGB(205, 105, 105)
            TextButton.TextSize = 16
            TextButton.TextXAlignment = Enum.TextXAlignment.Left
            
            power.Name = "power"
            power.Parent = TextButton
            power.AnchorPoint = Vector2.new(0.5, 0.5)
            power.BackgroundTransparency = 1.000
            power.Position = UDim2.new(0.04, 0, 0.5, 0)
            power.Size = UDim2.new(0, 25, 0, 25)
            power.ZIndex = 2
            power.Image = "rbxassetid://6764432408"
            power.ImageRectOffset = Vector2.new(100, 400)
            power.ImageRectSize = Vector2.new(50, 50)
            
            
            TextButton.MouseButton1Click:Connect(function()
                ModestLib:Destroy()
            end)
            
            TextButton.MouseEnter:Connect(function()
                TextButton.BackgroundTransparency = 0.7
            end)
            
            TextButton.MouseLeave:Connect(function()
                TextButton.BackgroundTransparency = 1
            end)
        end

        function tabInnards:NewColorPicker(name,interaction)
            local TextButton = Instance.new("TextButton")
            local right = Instance.new("ImageButton")
            local Picker = Instance.new("Frame")
            local Colour = Instance.new("Frame")
            local TextLabel = Instance.new("TextLabel")
            local Wheel = Instance.new("ImageButton")
            local Ring = Instance.new("ImageLabel")
            local Slider = Instance.new("ImageButton")
            local Slide = Instance.new("Frame")
            local Colour_2 = Instance.new("Frame")
            local TextLabel_2 = Instance.new("TextLabel")
    
            TextButton.Parent = Tab
            TextButton.BackgroundColor3 = Color3.fromRGB(255,255,255)
            TextButton.BackgroundTransparency = 1.000
            TextButton.BorderSizePixel = 0
            TextButton.Size = UDim2.new(1, 0, 0.026, 0)
            TextButton.Font = Enum.Font.GothamSemibold
            TextButton.Text = "  "..name
            TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
            TextButton.TextSize = 16.000
            TextButton.TextXAlignment = Enum.TextXAlignment.Left
    
            right.Name = "right"
            right.Parent = TextButton
            right.AnchorPoint = Vector2.new(0.5, 0.5)
            right.BackgroundTransparency = 1.000
            right.Position = UDim2.new(0.970000029, 0, 0.65, 0)
            right.Rotation = 45.000
            right.Size = UDim2.new(0, 25, 0, 25)
            right.ZIndex = 2
            right.Image = "rbxassetid://6764432408"
            right.ImageRectOffset = Vector2.new(100, 150)
            right.ImageRectSize = Vector2.new(50, 50)
    
            Picker.Name = "Picker"
            Picker.Parent = TextButton
            Picker.AnchorPoint = Vector2.new(0.5, 0.5)
            Picker.BackgroundColor3 = Color3.fromRGB(11, 65, 106)
            Picker.BorderColor3 = Color3.fromRGB(0, 0, 0)
            Picker.BorderSizePixel = 3
            Picker.Position = UDim2.new(1.26999998, 0, 6.48060322, 0)
            Picker.Size = UDim2.new(0.494079441, 0, 10.26, 0)
            Picker.ZIndex = 4
            Picker.Visible = false
    
            Colour.Name = "Colour"
            Colour.Parent = Picker
            Colour.AnchorPoint = Vector2.new(0, 1)
            Colour.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Colour.BorderSizePixel = 0
            Colour.Position = UDim2.new(0.00700000022, 1, 0.995000005, 0)
            Colour.Size = UDim2.new(0.140133113, 0, 0.134908468, 0)
            Colour.SizeConstraint = Enum.SizeConstraint.RelativeYY
            Colour.ZIndex = 50
    
            TextLabel.Parent = Colour
            TextLabel.BackgroundColor3 = Color3.fromRGB(11, 65, 106)
            TextLabel.BackgroundTransparency = 0.100
            TextLabel.BorderSizePixel = 0
            TextLabel.Position = UDim2.new(1.15417576, 0, 0, 0)
            TextLabel.Size = UDim2.new(3.12651801, 0, 1, 0)
            TextLabel.ZIndex = 51
            TextLabel.Font = Enum.Font.SourceSans
            TextLabel.Text = "  255,255,255"
            TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
            TextLabel.TextSize = 14.000
            TextLabel.TextXAlignment = Enum.TextXAlignment.Left
    
            Wheel.Name = "Wheel"
            Wheel.Parent = Picker
            Wheel.Active = false
            Wheel.BackgroundColor3 = Color3.fromRGB(11, 65, 106)
            Wheel.BackgroundTransparency = 0.100
            Wheel.BorderSizePixel = 0
            Wheel.Position = UDim2.new(0.00999999978, 0, 0.0179999992, 0)
            Wheel.Selectable = false
            Wheel.Size = UDim2.new(0.761994362, 0, 0.768390059, 0)
            Wheel.SizeConstraint = Enum.SizeConstraint.RelativeYY
            Wheel.ZIndex = 50
            Wheel.AutoButtonColor = false
            Wheel.Image = "rbxassetid://2849458409"
            Wheel.TileSize = UDim2.new(0.200000003, 0, 0.200000003, 0)
    
            Ring.Name = "Ring"
            Ring.Parent = Wheel
            Ring.AnchorPoint = Vector2.new(0.5, 0.5)
            Ring.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Ring.BackgroundTransparency = 1.000
            Ring.Position = UDim2.new(0.5, 0, 0.5, 0)
            Ring.Size = UDim2.new(0.0799999982, 0, 0.0799999982, 0)
            Ring.SizeConstraint = Enum.SizeConstraint.RelativeYY
            Ring.ZIndex = 51
            Ring.Image = "rbxassetid://244221613"
            Ring.ImageColor3 = Color3.fromRGB(0, 0, 0)
    
            Slider.Name = "Slider"
            Slider.Parent = Wheel
            Slider.Active = false
            Slider.BackgroundColor3 = Color3.fromRGB(248, 248, 248)
            Slider.BorderSizePixel = 0
            Slider.Position = UDim2.new(1.03163815, 0, -0.0193511341, 0)
            Slider.Selectable = false
            Slider.Size = UDim2.new(0.153808787, 0, 1.29734778, 0)
            Slider.SizeConstraint = Enum.SizeConstraint.RelativeYY
            Slider.ZIndex = 51
            Slider.AutoButtonColor = false
            Slider.Image = "rbxassetid://156579757"
    
            Slide.Name = "Slide"
            Slide.Parent = Slider
            Slide.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
            Slide.BorderSizePixel = 0
            Slide.Size = UDim2.new(1, 0, 0.0399999991, 0)
            Slide.ZIndex = 52
    
            Colour_2.Name = "Colour"
            Colour_2.Parent = TextButton
            Colour_2.AnchorPoint = Vector2.new(0.5, 0.5)
            Colour_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Colour_2.BorderSizePixel = 0
            Colour_2.Position = UDim2.new(0.77506423, 1, 0.5, 0)
            Colour_2.Size = UDim2.new(5.25, 0, 1, 0)
            Colour_2.SizeConstraint = Enum.SizeConstraint.RelativeYY
            Colour_2.ZIndex = 50
    
            TextLabel_2.Parent = Colour_2
            TextLabel_2.BackgroundColor3 = Color3.fromRGB(11, 65, 106)
            TextLabel_2.BackgroundTransparency = 1
            TextLabel_2.BorderSizePixel = 0
            TextLabel_2.Position = UDim2.new(-0.783039451, 0, 0, 0)
            TextLabel_2.Size = UDim2.new(0.690020859, 0, 1, 0)
            TextLabel_2.ZIndex = 51
            TextLabel_2.Font = Enum.Font.SourceSans
            TextLabel_2.Text = "  255,255,255"
            TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
            TextLabel_2.TextSize = 14.000
            TextLabel_2.TextXAlignment = Enum.TextXAlignment.Left
    
            local function THUF_fake_script() -- Picker.ColorPicker 
                local script = Instance.new('LocalScript', Picker)
            
                --------------------------
                -- Localize
                --------------------------
                local ceil,clamp,atan2,pi	= math.ceil,math.clamp,math.atan2,math.pi
                local tostr,sub				= tostring,string.sub
                local fromHSV				= Color3.fromHSV
                local v2,udim2				= Vector2.new,UDim2.new
                --------------------------
                -- GUI Elements
                --------------------------
                local wheel		= script.Parent:WaitForChild("Wheel");
                local ring		= wheel:WaitForChild("Ring");
                
                local slider	= wheel:WaitForChild("Slider")
                local slide		= slider:WaitForChild("Slide")
                
                local colour	= script.Parent:WaitForChild("Colour");
                
                --------------------------
                -- Input variables
                --------------------------
                local UserInputService	= game:GetService("UserInputService")
                local Mouse				= game.Players.LocalPlayer:GetMouse()
                
                local WheelDown			= false
                local SlideDown			= false
                
                --------------------------
                -- Math
                --------------------------
                
                local function toPolar(v)
                    return atan2(v.y, v.x), v.magnitude;
                end
                
                local function radToDeg(x)
                    return ((x + pi) / (2 * pi)) * 360;
                end
                
                --------------------------
                -- Color control
                --------------------------
                local hue, saturation, value = 0, 0, 1;
                
                local function update()
                    local c = fromHSV(hue, saturation, value);
                    
                    Colour_2.BackgroundColor3 = c
                    colour.BackgroundColor3 = c
                    Colour_2.TextLabel.Text	=	"  "..sub(tostr(ceil(clamp(c.r*255,0,255))),1,3)..", "..
                                                sub(tostr(ceil(clamp(c.g*255,0,255))),1,3)..", "..
                                                sub(tostr(ceil(clamp(c.b*255,0,255))),1,3)
                    colour.TextLabel.Text	=	"  "..sub(tostr(ceil(clamp(c.r*255,0,255))),1,3)..", "..
                                                sub(tostr(ceil(clamp(c.g*255,0,255))),1,3)..", "..
                                                sub(tostr(ceil(clamp(c.b*255,0,255))),1,3)
                    interaction(c,colour.TextLabel.Text)
                end
                
                --------------------------
                -- GUI control
                --------------------------
                local function UpdateSlide(iX,iY)	
                    local rY = iY - slider.AbsolutePosition.y;
                    local cY = clamp(rY, 0, slider.AbsoluteSize.y - slide.AbsoluteSize.y);
                    slide.Position = udim2(0, 0, 0, cY);
                    
                    value = 1 - (cY / (slider.AbsoluteSize.y - slide.AbsoluteSize.y));
                    slide.BackgroundColor3 = fromHSV(0, 0, 1-value);
                    
                    update();
                end
                local function UpdateRing(iX,iY)
                    local r = wheel.AbsoluteSize.x/2
                    local d = v2(iX, iY) - wheel.AbsolutePosition - wheel.AbsoluteSize/2;
                
                    if (d:Dot(d) > r*r) then
                        d = d.unit * r;
                    end
                    
                    ring.Position = udim2(0.5, d.x, 0.5, d.y);
                    
                    local phi, len = toPolar(d * v2(1, -1));
                    hue, saturation = radToDeg(phi)/360, len / r;
                    slider.BackgroundColor3 = fromHSV(hue, saturation, 1);
                    
                    update();
                end
                
                
                wheel.MouseButton1Down:Connect(function()
                    WheelDown = true
                    UpdateRing(Mouse.X,Mouse.Y)
                end)
                slider.MouseButton1Down:Connect(function()
                    SlideDown = true
                    UpdateSlide(Mouse.X,Mouse.Y)
                end)
                
                
                UserInputService.InputEnded:Connect(function(input)
                    if input.UserInputType == Enum.UserInputType.MouseButton1 then
                        WheelDown = false
                        SlideDown = false
                    end
                end)
                
                wheel.MouseMoved:Connect(function()
                    if WheelDown then
                        UpdateRing(Mouse.X,Mouse.Y)
                    end
                end)
                slider.MouseMoved:Connect(function()
                    if SlideDown then
                        UpdateSlide(Mouse.X,Mouse.Y)
                    end
                end)
            end
            coroutine.wrap(THUF_fake_script)()
    
            TextButton.MouseButton1Click:Connect(function()
                Picker.Visible = not Picker.Visible
            end)
    
            right.MouseButton1Click:Connect(function()
                Picker.Visible = not Picker.Visible
            end)
    
            TextButton.MouseEnter:Connect(function()
                TextButton.BackgroundTransparency = 0
            end)
            
            TextButton.MouseLeave:Connect(function()
                TextButton.BackgroundTransparency = 1
            end)
    
            right.MouseEnter:Connect(function()
                TextButton.BackgroundTransparency = 0
            end)
            
            right.MouseLeave:Connect(function()
                TextButton.BackgroundTransparency = 1
            end)
        end
        
        return tabInnards;
    end

    function innards:NewButton(name, interaction, danger)
        local TextButton = Instance.new("TextButton")

        TextButton.Parent = Window
        TextButton.BackgroundColor3 = Color3.fromRGB(255,255,255)
        TextButton.BackgroundTransparency = 1.000
        TextButton.BorderSizePixel = 0
        TextButton.Size = UDim2.new(1, 0, 0.026, 0)
        TextButton.Font = Enum.Font.GothamSemibold
        if danger then
            TextButton.Text = "      "..name
        else
            TextButton.Text = "  "..name
        end
        TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
        TextButton.TextSize = 16.000
        TextButton.TextXAlignment = Enum.TextXAlignment.Left
        
        if danger then
            local warning = Instance.new("ImageButton")
                
            warning.Name = "warning"
            warning.Parent = TextButton
            warning.AnchorPoint = Vector2.new(0.5, 0.5)
            warning.BackgroundTransparency = 1
            warning.Position = UDim2.new(0.04, 0, 0.5, 0)
            warning.Size = UDim2.new(0, 25, 0, 25)
            warning.ZIndex = 2
            warning.Image = "rbxassetid://6764432408"
            warning.ImageRectOffset = Vector2.new(0, 900)
            warning.ImageRectSize = Vector2.new(50, 50)
        end
        
        TextButton.MouseButton1Click:Connect(interaction)
        
        TextButton.MouseEnter:Connect(function()
            TextButton.BackgroundTransparency = 0
        end)
        
        TextButton.MouseLeave:Connect(function()
            TextButton.BackgroundTransparency = 1
        end)
    end

    function innards:NewToggle(name,state,interaction,danger)
        local TextButton = Instance.new("TextButton")
        local uncheck = Instance.new("ImageButton")
        local check = Instance.new("ImageButton")

        TextButton.Parent = Window
        TextButton.BackgroundColor3 = Color3.fromRGB(255,255,255)
        TextButton.BackgroundTransparency = 1.000
        TextButton.BorderSizePixel = 0
        TextButton.Size = UDim2.new(1, 0, 0.026, 0)
        TextButton.Font = Enum.Font.GothamSemibold
        if danger then
            TextButton.Text = "      "..name
        else
            TextButton.Text = "  "..name
        end
        TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
        TextButton.TextSize = 16.000
        TextButton.TextXAlignment = Enum.TextXAlignment.Left
        
        uncheck.Name = "uncheck"
        uncheck.Parent = TextButton
        uncheck.AnchorPoint = Vector2.new(0.5, 0.5)
        uncheck.BackgroundTransparency = 1.000
        uncheck.LayoutOrder = 3
        uncheck.Position = UDim2.new(0.970000029, 0, 0.5, 0)
        uncheck.Size = UDim2.new(0, 22, 0, 22)
        uncheck.ZIndex = 2
        uncheck.Image = "rbxassetid://3926305904"
        uncheck.ImageRectOffset = Vector2.new(924, 724)
        uncheck.ImageRectSize = Vector2.new(36, 36)
        
        check.Name = "check"
        check.Parent = TextButton
        check.AnchorPoint = Vector2.new(0.5, 0.5)
        check.BackgroundTransparency = 1.000
        check.Position = UDim2.new(0.970000029, 0, 0.5, 0)
        check.Size = UDim2.new(0, 22, 0, 22)
        check.ZIndex = 2
        check.Image = "rbxassetid://3926305904"
        check.ImageRectOffset = Vector2.new(312, 4)
        check.ImageRectSize = Vector2.new(24, 24)
        
        if danger then
            local warning = Instance.new("ImageButton")
                
            warning.Name = "warning"
            warning.Parent = TextButton
            warning.AnchorPoint = Vector2.new(0.5, 0.5)
            warning.BackgroundTransparency = 1
            warning.Position = UDim2.new(0.04, 0, 0.5, 0)
            warning.Size = UDim2.new(0, 25, 0, 25)
            warning.ZIndex = 2
            warning.Image = "rbxassetid://6764432408"
            warning.ImageRectOffset = Vector2.new(0, 900)
            warning.ImageRectSize = Vector2.new(50, 50)
        end
        
        if state then 
            uncheck.Visible = false; 
            check.Visible = true
        else 
            uncheck.Visible = true; 
            check.Visible = false 
        end
        
        TextButton.MouseButton1Click:Connect(function()
            state = not state
            if state then uncheck.Visible = false; check.Visible = true else uncheck.Visible = true; check.Visible = false end

            if state then
                interaction(state)
            elseif not state then
                interaction(state)
            end
        end)
        
        TextButton.MouseEnter:Connect(function()
            TextButton.BackgroundTransparency = 0
        end)
        
        TextButton.MouseLeave:Connect(function()
            TextButton.BackgroundTransparency = 1
        end)
    end

    function innards:NewSelection(name, selections, default, interaction)
        local TextButton = Instance.new("TextButton")
        local Selection = Instance.new("TextButton")
        local right = Instance.new("ImageButton")
        local left = Instance.new("ImageButton")
        local UIListLayout = Instance.new("UIListLayout")
        local nobody = Instance.new("TextLabel")
        local selectionNum = 0
        local curSelection = default
        
        for _,v in pairs(selections) do
            selectionNum = selectionNum + 1
        end
        

        TextButton.Parent = Window
        TextButton.BackgroundColor3 = Color3.fromRGB(255,255,255)
        TextButton.BackgroundTransparency = 1.000
        TextButton.BorderSizePixel = 0
        TextButton.Size = UDim2.new(1, 0, 0.026, 0)
        TextButton.Font = Enum.Font.GothamSemibold
        TextButton.Text = "  "..name
        TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
        TextButton.TextSize = 16.000
        TextButton.TextXAlignment = Enum.TextXAlignment.Left
        
        right.Name = "right"
        right.Parent = TextButton
        right.AnchorPoint = Vector2.new(0.5, 0.5)
        right.BackgroundTransparency = 1.000
        right.LayoutOrder = 5
        right.Position = UDim2.new(0.97, 0, 0.5, 0)
        right.Size = UDim2.new(0, 25, 0, 25)
        right.ZIndex = 2
        right.Image = "rbxassetid://6764432408"
        right.ImageRectOffset = Vector2.new(100, 150)
        right.ImageRectSize = Vector2.new(50, 50)
        
        left.Name = "left"
        left.Parent = TextButton
        left.AnchorPoint = Vector2.new(0.5, 0.5)
        left.BackgroundTransparency = 1.000
        left.LayoutOrder = 5
        left.Position = UDim2.new(0.5, 0, 0.342726082, 0)
        left.Size = UDim2.new(0, 25, 0, 25)
        left.ZIndex = 2
        left.Image = "rbxassetid://6764432408"
        left.ImageRectOffset = Vector2.new(150, 300)
        left.ImageRectSize = Vector2.new(50, 50)
        
        nobody.Name = "nobody"
        nobody.Parent = TextButton
        nobody.AnchorPoint = Vector2.new(0.5, 0.5)
        nobody.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        nobody.BackgroundTransparency = 1.000
        nobody.BorderSizePixel = 0
        nobody.Position = UDim2.new(0.741645217, 0, 0.657273829, 0)
        nobody.Size = UDim2.new(0, 150, 0, 20)
        nobody.Font = Enum.Font.GothamSemibold
        nobody.Text = selections[curSelection] or "nil"
        nobody.TextColor3 = Color3.fromRGB(255, 255, 255)
        nobody.TextSize = 14.000
        nobody.TextYAlignment = Enum.TextYAlignment.Center
        
        UIListLayout.Parent = TextButton
        UIListLayout.FillDirection = Enum.FillDirection.Horizontal
        UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Right
        UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center
        
        left.MouseButton1Click:Connect(function()
            curSelection = curSelection - 1
            if curSelection == 0 then
                curSelection = selectionNum
            elseif curSelection == selectionNum then
                curSelection = 1
            end
            
            nobody.Text = selections[curSelection]
            
            interaction(selections[curSelection],curSelection)
        end)
        
        right.MouseButton1Click:Connect(function()
            curSelection = curSelection + 1
            if curSelection == 0 then
                curSelection = selectionNum
            elseif curSelection > selectionNum then
                curSelection = 1
            end
            
            nobody.Text = selections[curSelection]
            
            interaction(selections[curSelection],curSelection)
        end)

        left.MouseEnter:Connect(function()
            TextButton.BackgroundTransparency = 0
        end)
        
        left.MouseLeave:Connect(function()
            TextButton.BackgroundTransparency = 1
        end)

        right.MouseEnter:Connect(function()
            TextButton.BackgroundTransparency = 0
        end)
        
        right.MouseLeave:Connect(function()
            TextButton.BackgroundTransparency = 1
        end)
    end
    
    function innards:NewValueSelection(name, minimum, maximum, countby, default, interaction)
        local TextButton = Instance.new("TextButton")
        local Selection = Instance.new("TextButton")
        local right = Instance.new("ImageButton")
        local left = Instance.new("ImageButton")
        local UIListLayout = Instance.new("UIListLayout")
        local nobody = Instance.new("TextLabel")
        local curSelection = default

        TextButton.Parent = Window
        TextButton.BackgroundColor3 = Color3.fromRGB(255,255,255)
        TextButton.BackgroundTransparency = 1.000
        TextButton.BorderSizePixel = 0
        TextButton.Size = UDim2.new(1, 0, 0.026, 0)
        TextButton.Font = Enum.Font.GothamSemibold
        TextButton.Text = "  "..name
        TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
        TextButton.TextSize = 16.000
        TextButton.TextXAlignment = Enum.TextXAlignment.Left
        
        right.Name = "right"
        right.Parent = TextButton
        right.AnchorPoint = Vector2.new(0.5, 0.5)
        right.BackgroundTransparency = 1.000
        right.LayoutOrder = 5
        right.Position = UDim2.new(0.97, 0, 0.5, 0)
        right.Size = UDim2.new(0, 25, 0, 25)
        right.ZIndex = 2
        right.Image = "rbxassetid://6764432408"
        right.ImageRectOffset = Vector2.new(100, 150)
        right.ImageRectSize = Vector2.new(50, 50)
        
        left.Name = "left"
        left.Parent = TextButton
        left.AnchorPoint = Vector2.new(0.5, 0.5)
        left.BackgroundTransparency = 1.000
        left.LayoutOrder = 5
        left.Position = UDim2.new(0.5, 0, 0.342726082, 0)
        left.Size = UDim2.new(0, 25, 0, 25)
        left.ZIndex = 2
        left.Image = "rbxassetid://6764432408"
        left.ImageRectOffset = Vector2.new(150, 300)
        left.ImageRectSize = Vector2.new(50, 50)
        
        nobody.Name = "nobody"
        nobody.Parent = TextButton
        nobody.AnchorPoint = Vector2.new(0.5, 0.5)
        nobody.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        nobody.BackgroundTransparency = 1.000
        nobody.BorderSizePixel = 0
        nobody.Position = UDim2.new(0.741645217, 0, 0.657273829, 0)
        nobody.Size = UDim2.new(0, 150, 0, 20)
        nobody.Font = Enum.Font.GothamSemibold
        nobody.Text = default or "nil"
        nobody.TextColor3 = Color3.fromRGB(255, 255, 255)
        nobody.TextSize = 14.000
        nobody.TextYAlignment = Enum.TextYAlignment.Center
        
        UIListLayout.Parent = TextButton
        UIListLayout.FillDirection = Enum.FillDirection.Horizontal
        UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Right
        UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center
        local heldR = false
        local heldL = false

        spawn(function()
            while wait(0.1) do
                if heldR then
                    if curSelection < maximum then
                        curSelection = curSelection + countby
                        nobody.Text = curSelection
                    elseif curSelection >= maximum then
                        if curSelection > maximum then curSelection = maximum; nobody.Text = curSelection end
                        heldR = false
                    end
                elseif heldL then
                    if curSelection > minimum then
                        curSelection = curSelection - countby
                        nobody.Text = curSelection
                    elseif curSelection <= minimum then
                        if curSelection < minimum then curSelection = minimum; nobody.Text = curSelection end
                        heldL = false
                    end
                end
            end
        end)
        

        left.MouseButton1Down:Connect(function()
            heldL = true
        end)

        left.MouseButton1Up:Connect(function()
            heldL = false
            nobody.Text = curSelection
            interaction(curSelection)
        end)
        
        right.MouseButton1Down:Connect(function()
            heldR = true
        end)

        right.MouseButton1Up:Connect(function()
            heldR = false
            nobody.Text = curSelection
            interaction(curSelection)
        end)

        left.MouseEnter:Connect(function()
            TextButton.BackgroundTransparency = 0
        end)
        
        left.MouseLeave:Connect(function()
            TextButton.BackgroundTransparency = 1
        end)

        right.MouseEnter:Connect(function()
            TextButton.BackgroundTransparency = 0
        end)
        
        right.MouseLeave:Connect(function()
            TextButton.BackgroundTransparency = 1
        end)
    end
    
    

    function innards:NewLabel(name,warning)
        local TextButton = Instance.new("TextButton")

        TextButton.Parent = Window
        TextButton.BackgroundColor3 = Color3.fromRGB(255,255,255)
        TextButton.BackgroundTransparency = 1.000
        TextButton.BorderSizePixel = 0
        TextButton.Size = UDim2.new(1, 0, 0.026, 0)
        TextButton.Font = Enum.Font.GothamSemibold
        TextButton.Text = name
        if warning then
            TextButton.TextColor3 = Color3.fromRGB(255,255,255)
        else
            TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
        end
        TextButton.TextSize = 16.000
        TextButton.TextXAlignment = Enum.TextXAlignment.Center
    end

    function innards:NewParagraph(name,height,fontSize,warning)
        local TextButton = Instance.new("TextButton")

        TextButton.Parent = Window
        TextButton.BackgroundColor3 = Color3.fromRGB(255,255,255)
        TextButton.BackgroundTransparency = 1.000
        TextButton.BorderSizePixel = 0
        TextButton.Size = UDim2.new(1, 0, height or 0.026, 0)
        TextButton.Font = Enum.Font.GothamSemibold
        TextButton.TextWrapped = true
        TextButton.Text = name
        if warning then
            TextButton.TextColor3 = Color3.fromRGB(255,255,255)
        else
            TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
        end
        TextButton.TextSize = fontSize or 16
        TextButton.TextXAlignment = Enum.TextXAlignment.Center
    end

    function innards:DestroyGuiButton()
        local TextButton = Instance.new("TextButton")
        local power = Instance.new("ImageButton")

        TextButton.Parent = Window
        TextButton.AnchorPoint = Vector2.new(0.5, 0.5)
        TextButton.Position = UDim2.new(0.5, 0, 0.5, 0)
        TextButton.BackgroundColor3 = Color3.fromRGB(224,97,69)
        TextButton.BackgroundTransparency = 1.000
        TextButton.BorderSizePixel = 0
        TextButton.Size = UDim2.new(1, 0, 0.026, 0)
        TextButton.Font = Enum.Font.GothamSemibold
        TextButton.TextWrapped = true
        TextButton.Text = "        Destroy Gui"
        TextButton.TextColor3 = Color3.fromRGB(205, 105, 105)
        TextButton.TextSize = 16
        TextButton.TextXAlignment = Enum.TextXAlignment.Left
        
        power.Name = "power"
        power.Parent = TextButton
        power.AnchorPoint = Vector2.new(0.5, 0.5)
        power.BackgroundTransparency = 1.000
        power.Position = UDim2.new(0.04, 0, 0.5, 0)
        power.Size = UDim2.new(0, 25, 0, 25)
        power.ZIndex = 2
        power.Image = "rbxassetid://6764432408"
        power.ImageRectOffset = Vector2.new(100, 400)
        power.ImageRectSize = Vector2.new(50, 50)
        
        
        TextButton.MouseButton1Click:Connect(function()
            ModestLib:Destroy()
        end)
        
        TextButton.MouseEnter:Connect(function()
            TextButton.BackgroundTransparency = 0.7
        end)
        
        TextButton.MouseLeave:Connect(function()
            TextButton.BackgroundTransparency = 1
        end)
    end

    function innards:NewColorPicker(name,interaction)
        local TextButton = Instance.new("TextButton")
        local right = Instance.new("ImageButton")
        local Picker = Instance.new("Frame")
        local Colour = Instance.new("Frame")
        local TextLabel = Instance.new("TextLabel")
        local Wheel = Instance.new("ImageButton")
        local Ring = Instance.new("ImageLabel")
        local Slider = Instance.new("ImageButton")
        local Slide = Instance.new("Frame")
        local Colour_2 = Instance.new("Frame")
        local TextLabel_2 = Instance.new("TextLabel")

        TextButton.Parent = Window
        TextButton.BackgroundColor3 = Color3.fromRGB(255,255,255)
        TextButton.BackgroundTransparency = 1.000
        TextButton.BorderSizePixel = 0
        TextButton.Size = UDim2.new(1, 0, 0.026, 0)
        TextButton.Font = Enum.Font.GothamSemibold
        TextButton.Text = "  "..name
        TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
        TextButton.TextSize = 16.000
        TextButton.TextXAlignment = Enum.TextXAlignment.Left

        right.Name = "right"
        right.Parent = TextButton
        right.AnchorPoint = Vector2.new(0.5, 0.5)
        right.BackgroundTransparency = 1.000
        right.Position = UDim2.new(0.970000029, 0, 0.65, 0)
        right.Rotation = 45.000
        right.Size = UDim2.new(0, 25, 0, 25)
        right.ZIndex = 2
        right.Image = "rbxassetid://6764432408"
        right.ImageRectOffset = Vector2.new(100, 150)
        right.ImageRectSize = Vector2.new(50, 50)

        Picker.Name = "Picker"
        Picker.Parent = TextButton
        Picker.AnchorPoint = Vector2.new(0.5, 0.5)
        Picker.BackgroundColor3 = Color3.fromRGB(11, 65, 106)
        Picker.BorderColor3 = Color3.fromRGB(0, 0, 0)
        Picker.BorderSizePixel = 3
        Picker.Position = UDim2.new(1.26999998, 0, 6.48060322, 0)
        Picker.Size = UDim2.new(0.494079441, 0, 10.26, 0)
        Picker.ZIndex = 4
        Picker.Visible = false

        Colour.Name = "Colour"
        Colour.Parent = Picker
        Colour.AnchorPoint = Vector2.new(0, 1)
        Colour.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Colour.BorderSizePixel = 0
        Colour.Position = UDim2.new(0.00700000022, 1, 0.995000005, 0)
        Colour.Size = UDim2.new(0.140133113, 0, 0.134908468, 0)
        Colour.SizeConstraint = Enum.SizeConstraint.RelativeYY
        Colour.ZIndex = 50

        TextLabel.Parent = Colour
        TextLabel.BackgroundColor3 = Color3.fromRGB(11, 65, 106)
        TextLabel.BackgroundTransparency = 0.100
        TextLabel.BorderSizePixel = 0
        TextLabel.Position = UDim2.new(1.15417576, 0, 0, 0)
        TextLabel.Size = UDim2.new(3.12651801, 0, 1, 0)
        TextLabel.ZIndex = 51
        TextLabel.Font = Enum.Font.SourceSans
        TextLabel.Text = "  255,255,255"
        TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
        TextLabel.TextSize = 14.000
        TextLabel.TextXAlignment = Enum.TextXAlignment.Left

        Wheel.Name = "Wheel"
        Wheel.Parent = Picker
        Wheel.Active = false
        Wheel.BackgroundColor3 = Color3.fromRGB(11, 65, 106)
        Wheel.BackgroundTransparency = 0.100
        Wheel.BorderSizePixel = 0
        Wheel.Position = UDim2.new(0.00999999978, 0, 0.0179999992, 0)
        Wheel.Selectable = false
        Wheel.Size = UDim2.new(0.761994362, 0, 0.768390059, 0)
        Wheel.SizeConstraint = Enum.SizeConstraint.RelativeYY
        Wheel.ZIndex = 50
        Wheel.AutoButtonColor = false
        Wheel.Image = "rbxassetid://2849458409"
        Wheel.TileSize = UDim2.new(0.200000003, 0, 0.200000003, 0)

        Ring.Name = "Ring"
        Ring.Parent = Wheel
        Ring.AnchorPoint = Vector2.new(0.5, 0.5)
        Ring.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Ring.BackgroundTransparency = 1.000
        Ring.Position = UDim2.new(0.5, 0, 0.5, 0)
        Ring.Size = UDim2.new(0.0799999982, 0, 0.0799999982, 0)
        Ring.SizeConstraint = Enum.SizeConstraint.RelativeYY
        Ring.ZIndex = 51
        Ring.Image = "rbxassetid://244221613"
        Ring.ImageColor3 = Color3.fromRGB(0, 0, 0)

        Slider.Name = "Slider"
        Slider.Parent = Wheel
        Slider.Active = false
        Slider.BackgroundColor3 = Color3.fromRGB(248, 248, 248)
        Slider.BorderSizePixel = 0
        Slider.Position = UDim2.new(1.03163815, 0, -0.0193511341, 0)
        Slider.Selectable = false
        Slider.Size = UDim2.new(0.153808787, 0, 1.29734778, 0)
        Slider.SizeConstraint = Enum.SizeConstraint.RelativeYY
        Slider.ZIndex = 51
        Slider.AutoButtonColor = false
        Slider.Image = "rbxassetid://156579757"

        Slide.Name = "Slide"
        Slide.Parent = Slider
        Slide.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
        Slide.BorderSizePixel = 0
        Slide.Size = UDim2.new(1, 0, 0.0399999991, 0)
        Slide.ZIndex = 52

        Colour_2.Name = "Colour"
        Colour_2.Parent = TextButton
        Colour_2.AnchorPoint = Vector2.new(0.5, 0.5)
        Colour_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Colour_2.BorderSizePixel = 0
        Colour_2.Position = UDim2.new(0.77506423, 1, 0.5, 0)
        Colour_2.Size = UDim2.new(5.25, 0, 1, 0)
        Colour_2.SizeConstraint = Enum.SizeConstraint.RelativeYY
        Colour_2.ZIndex = 50

        TextLabel_2.Parent = Colour_2
        TextLabel_2.BackgroundColor3 = Color3.fromRGB(11, 65, 106)
        TextLabel_2.BackgroundTransparency = 1
        TextLabel_2.BorderSizePixel = 0
        TextLabel_2.Position = UDim2.new(-0.783039451, 0, 0, 0)
        TextLabel_2.Size = UDim2.new(0.690020859, 0, 1, 0)
        TextLabel_2.ZIndex = 51
        TextLabel_2.Font = Enum.Font.SourceSans
        TextLabel_2.Text = "  255,255,255"
        TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
        TextLabel_2.TextSize = 14.000
        TextLabel_2.TextXAlignment = Enum.TextXAlignment.Left

        local function THUF_fake_script() -- Picker.ColorPicker 
            local script = Instance.new('LocalScript', Picker)
        
            --------------------------
            -- Localize
            --------------------------
            local ceil,clamp,atan2,pi	= math.ceil,math.clamp,math.atan2,math.pi
            local tostr,sub				= tostring,string.sub
            local fromHSV				= Color3.fromHSV
            local v2,udim2				= Vector2.new,UDim2.new
            --------------------------
            -- GUI Elements
            --------------------------
            local wheel		= script.Parent:WaitForChild("Wheel");
            local ring		= wheel:WaitForChild("Ring");
            
            local slider	= wheel:WaitForChild("Slider")
            local slide		= slider:WaitForChild("Slide")
            
            local colour	= script.Parent:WaitForChild("Colour");
            
            --------------------------
            -- Input variables
            --------------------------
            local UserInputService	= game:GetService("UserInputService")
            local Mouse				= game.Players.LocalPlayer:GetMouse()
            
            local WheelDown			= false
            local SlideDown			= false
            
            --------------------------
            -- Math
            --------------------------
            
            local function toPolar(v)
                return atan2(v.y, v.x), v.magnitude;
            end
            
            local function radToDeg(x)
                return ((x + pi) / (2 * pi)) * 360;
            end
            
            --------------------------
            -- Color control
            --------------------------
            local hue, saturation, value = 0, 0, 1;
            
            local function update()
                local c = fromHSV(hue, saturation, value);
                
                Colour_2.BackgroundColor3 = c
                colour.BackgroundColor3 = c
                Colour_2.TextLabel.Text	=	"  "..sub(tostr(ceil(clamp(c.r*255,0,255))),1,3)..", "..
                                            sub(tostr(ceil(clamp(c.g*255,0,255))),1,3)..", "..
                                            sub(tostr(ceil(clamp(c.b*255,0,255))),1,3)
                colour.TextLabel.Text	=	"  "..sub(tostr(ceil(clamp(c.r*255,0,255))),1,3)..", "..
                                            sub(tostr(ceil(clamp(c.g*255,0,255))),1,3)..", "..
                                            sub(tostr(ceil(clamp(c.b*255,0,255))),1,3)
                interaction(c,colour.TextLabel.Text)
            end
            
            --------------------------
            -- GUI control
            --------------------------
            local function UpdateSlide(iX,iY)	
                local rY = iY - slider.AbsolutePosition.y;
                local cY = clamp(rY, 0, slider.AbsoluteSize.y - slide.AbsoluteSize.y);
                slide.Position = udim2(0, 0, 0, cY);
                
                value = 1 - (cY / (slider.AbsoluteSize.y - slide.AbsoluteSize.y));
                slide.BackgroundColor3 = fromHSV(0, 0, 1-value);
                
                update();
            end
            local function UpdateRing(iX,iY)
                local r = wheel.AbsoluteSize.x/2
                local d = v2(iX, iY) - wheel.AbsolutePosition - wheel.AbsoluteSize/2;
            
                if (d:Dot(d) > r*r) then
                    d = d.unit * r;
                end
                
                ring.Position = udim2(0.5, d.x, 0.5, d.y);
                
                local phi, len = toPolar(d * v2(1, -1));
                hue, saturation = radToDeg(phi)/360, len / r;
                slider.BackgroundColor3 = fromHSV(hue, saturation, 1);
                
                update();
            end
            
            
            wheel.MouseButton1Down:Connect(function()
                WheelDown = true
                UpdateRing(Mouse.X,Mouse.Y)
            end)
            slider.MouseButton1Down:Connect(function()
                SlideDown = true
                UpdateSlide(Mouse.X,Mouse.Y)
            end)
            
            
            UserInputService.InputEnded:Connect(function(input)
                if input.UserInputType == Enum.UserInputType.MouseButton1 then
                    WheelDown = false
                    SlideDown = false
                end
            end)
            
            wheel.MouseMoved:Connect(function()
                if WheelDown then
                    UpdateRing(Mouse.X,Mouse.Y)
                end
            end)
            slider.MouseMoved:Connect(function()
                if SlideDown then
                    UpdateSlide(Mouse.X,Mouse.Y)
                end
            end)
        end
        coroutine.wrap(THUF_fake_script)()

        TextButton.MouseButton1Click:Connect(function()
            Picker.Visible = not Picker.Visible
        end)

        right.MouseButton1Click:Connect(function()
            Picker.Visible = not Picker.Visible
        end)

        TextButton.MouseEnter:Connect(function()
            TextButton.BackgroundTransparency = 0
        end)
        
        TextButton.MouseLeave:Connect(function()
            TextButton.BackgroundTransparency = 1
        end)

        right.MouseEnter:Connect(function()
            TextButton.BackgroundTransparency = 0
        end)
        
        right.MouseLeave:Connect(function()
            TextButton.BackgroundTransparency = 1
        end)
    end

    return innards;
end
return Library;