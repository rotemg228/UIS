lib = {windows = {},Flags = {}}
local GuiExists = {}
local IsRecvBind = false;
local WM_RCTRL = Enum.KeyCode.RightControl

--[[
    Positions : {
        1 : 0.0662983432, 0, 0.0122850118, 0,
        2 : 0.285, 0,0.012, 0,
        3 : 0.439, 0,0.012, 0,
        4 : 0.588, 0,0.012, 0,
        5 : 0.775, 0,0.012, 0
    }
]]




function FindPos()
	print(#GuiExists)
	if (#GuiExists == 1) then
		return UDim2.new(0.0662983432, 0, 0.0122850118, 0);
	end

	if (#GuiExists == 2) then
		return UDim2.new(0.285, 0,0.012, 0);
	end

	if (#GuiExists == 3) then
		return UDim2.new(0.439, 0,0.012, 0);
	end

	if (#GuiExists == 4) then
		return UDim2.new(0.588, 0,0.012, 0)
	end

	if (#GuiExists == 5) then
		return UDim2.new(0.775, 0,0.012, 0)
	end
end

local function getFnctions(parent)
	function parent:Button(options)
		local TextButton = Instance.new("TextButton")
		options = FilterTable(options)
		TextButton.Parent = self.MainFrame.Gradient
		TextButton.BackgroundColor3 = self.isDark ~= true and Color3.fromRGB(44, 83, 199) or Color3.fromRGB(25,25,25)
		TextButton.BorderSizePixel = 0
		TextButton.Size = UDim2.new(0, 205, 0, 50)
		TextButton.Font = Enum.Font.SourceSansItalic
		TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
		TextButton.TextSize = 25.000
		TextButton.TextWrapped = true
		TextButton.Text = options.Text


		TextButton.MouseButton1Down:Connect(function()
			options.Callback();
		end)
	end
	function parent:Toggle(options)
		options = FilterTable(options);
		local TextButton = Instance.new("TextButton")
		options = FilterTable(options)
		TextButton.Parent = self.MainFrame.Gradient
		TextButton.BackgroundColor3 = self.isDark ~= true and Color3.fromRGB(44, 83, 199) or Color3.fromRGB(25,25,25)
		TextButton.BorderSizePixel = 0
		TextButton.Size = UDim2.new(0, 205, 0, 50)
		TextButton.Font = Enum.Font.SourceSansItalic
		TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
		TextButton.TextSize = 25.000
		TextButton.TextWrapped = true
		TextButton.Text = options.Text

		TextButton.MouseButton1Down:Connect(function()
			if (options.State == false or options.State == nil) then
				TextButton.BackgroundColor3 = Color3.fromRGB(0, 170, 127)
				options.State = true
				while wait() do
					options.Callback(options.State);
				end
			else
				TextButton.BackgroundColor3 = Color3.fromRGB(25,25,25)
				options.State = false
				while wait() do
					options.Callback(options.State);
				end
			end
		end)
	end

	function parent:Bind(options)
		options = FilterTable(options)
		local Button_2 = Instance.new("ImageButton")
		local TextButton = Instance.new("TextButton")
		options = FilterTable(options)
		TextButton.Parent = self.MainFrame.Gradient
		TextButton.BackgroundColor3 = self.isDark ~= true and Color3.fromRGB(44, 83, 199) or Color3.fromRGB(25,25,25)
		TextButton.BorderSizePixel = 0
		TextButton.Size = UDim2.new(0, 205, 0, 50)
		TextButton.Font = Enum.Font.SourceSansItalic
		TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
		TextButton.TextSize = 25.000
		TextButton.TextWrapped = true
		TextButton.Text = options.Text

		TextButton.MouseButton1Down:Connect(function()
			IsRecvBind = true;
			game.Players.LocalPlayer:GetMouse().KeyDown:Connect(function(k)
				if (TextButton.Text ~= options.Text.." Key: ".. k and IsRecvBind) then
					TextButton.Text = options.Text.." Key: "..k:upper()
					options.Callback(k:upper())
					IsRecvBind = false;
				elseif (TextButton.Text:lower() == options.Text .." Key: "..k:upper()) then
					options.Callback(k:upper())
				end
			end)
		end)
	end

	function parent:Box(options)
		local TextBox = Instance.new("TextBox")
		TextBox.Parent = self.MainFrame.Gradient
		TextBox.BackgroundColor3 = self.isDark ~= true and Color3.fromRGB(44, 83, 199) or Color3.fromRGB(25,25,25)
		TextBox.BackgroundTransparency = 0
		TextBox.Size = UDim2.new(0, 205, 0, 50)
		TextBox.Font = Enum.Font.SourceSans
		TextBox.Text = typeof(options.Text) == "string" and options.Text or "";
		TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
		TextBox.TextSize = 25.000
		TextBox.BorderSizePixel = 0
		if (options.isGlobalFlag) then
		_G[options.Flag] = ""
		else
			lib.Flags[options.Flag] = ""
		end
		TextBox:GetPropertyChangedSignal("Text"):Connect(function()
			if (options.isGlobalFlag) then
				_G[options.Flag] = TextBox.Text
				else
					lib.Flags[options.Flag] = TextBox.Text
				end
		end)
	end

	function parent:Label(options)
		options = FilterTable(options);
		local TextBox = Instance.new("TextLabel")

		TextBox.Parent = self.MainFrame.Gradient
		TextBox.BackgroundColor3 = self.isDark ~= true and Color3.fromRGB(44, 83, 199) or Color3.fromRGB(25,25,25)
		TextBox.BackgroundTransparency = 0.000
		TextBox.Size = UDim2.new(0, 205, 0, 50)
		TextBox.Font = Enum.Font.SourceSans
		TextBox.Text = typeof(options.Text) == "string" and options.Text or "";
		TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
		TextBox.TextSize = 21.000
		TextBox.BorderSizePixel = 0
	end

	return parent;
end
function lib:CreateWindow(title,dark)

	local ScreenGui = Instance.new("ScreenGui",game.Players.LocalPlayer.PlayerGui)--game.CoreGui)
	table.insert(GuiExists,ScreenGui)
	local Frame = Instance.new("Frame")
	local Gradient = Instance.new("Frame")
	local UIListLayout = Instance.new("UIListLayout")
	local Button_2 = Instance.new("TextButton",Gradient)
	local TextLabel_2 = Instance.new("TextLabel")

	Frame.Name = "Frame"
	Frame.Parent = ScreenGui
	Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Frame.BackgroundTransparency = 1.000
	Frame.Position = FindPos()
	Frame.Size = UDim2.new(0, 204, 0, 405)

	Gradient.Name = "Gradient"
	Gradient.Parent = Frame
	Gradient.BackgroundColor3 = dark == false and Color3.fromRGB(255,255,255) or Color3.fromRGB(35,35,35)
	Gradient.BorderColor3 = dark == false and Color3.fromRGB(32, 60, 144) or Color3.fromRGB(35,35,35)
	Gradient.BorderSizePixel = 0
	Gradient.Position = UDim2.new(0, 0,0.123, 0)
	Gradient.Size = UDim2.new(0, 204,0, 361)


	UIListLayout.Parent = Gradient
	UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder






	Button_2.Name = "Button"
	Button_2.Parent = Frame
	Button_2.Position = UDim2.new(0,0,0,0)
	Button_2.BackgroundColor3 = dark == false and Color3.fromRGB(255,255,255) or Color3.fromRGB(25,25,25)
	Button_2.BackgroundTransparency = 0
	Button_2.Size = UDim2.new(0, 204, 0, 50)
	Button_2.BorderSizePixel = 0
	--Button_2.ImageColor3 = dark == false and Color3.fromRGB(32, 60, 144) or Color3.fromRGB(25,25,25)
	--Button_2.ScaleType = Enum.ScaleType.Slice

	Button_2.Text = tostring(title)
	Button_2.Font = Enum.Font.GothamSemibold
	Button_2.TextColor3 = dark == false and Color3.fromRGB(25,25,25) or Color3.fromRGB(255,255,255)
	Button_2.TextSize = 21.000  
	Button_2.MouseButton1Down:Connect(function()
		Gradient.Visible = not Gradient.Visible
	end)

	

	local window = {MainFrame = Frame,isDark = dark}
	table.insert(self.windows,window)
	getFnctions(window)
	return window;
end
function FilterTable(options)
	options = typeof(options) == "table" and options or {};
	options.Text = typeof(options.Text) == "string" and options.Text or "";
	options.Callback = typeof(options.Callback) == "function" and options.Callback or function() end;
	options.State = typeof(options.State) == "boolean" and options.State or false;
	options.Flag = typeof(options.Flag) == "string" and options.Flag or "";
	options.isGlobalFlag = typeof(options.isGlobalFlag) == "boolean" and options.isGlobalFlag or false
	return options;
end

game:service"UserInputService".InputBegan:Connect(function(k)
	if (k.KeyCode == WM_RCTRL) then
		if (#GuiExists > 0) then
			for i = 1,#GuiExists do
				if (GuiExists[i]:IsA("ScreenGui")) then
					GuiExists[i].Enabled = not GuiExists[i].Enabled
				end
			end
		end
	end
end)


local function getHiddenFnctions(WND)

	function WND:Button(options)
		options = FilterTable(options)
	end
end

function lib:CreateHiddenWindow(title)
	local HiddenWindow = {MainFrame = Frame}
	table.insert(lib.HiddenWindows, HiddenWindow)
	getHiddenFnctions(HiddenWindow)
	return HiddenWindow;
end




return lib;