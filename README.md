# Rotem's UI Library V1
* (Window)Library:CreateWindow(string title, bool isDark)
* (void)Window:Toggle({Callback = function,Text = string, flagname = string})
* (void)Window:Button({Callback = function,Test = string})
* (void)Window:Bind({Callback = function,Text = string})
* (void)Window:Box({Text = string, flagname = string})
* (void)Window:Label({Text = string})

# Example
```lua
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/rotemg228/UIS/main/Rotem%20UI%20Library%20v1.lua", true))()

local Window = Library:CreateWindow("Example Gui v1", true)
Window:Toggle({Text = "Toggle", Callback = function(checked) print("Toggle = "..Checked) end})
Window:Button({Text = "Button", Callback = function() print("Clicked") end})
Window:Bind({Text = "Bind", Callback = function(key) print("Key = "..key) end})
Window:Box({Text = "Box", flagname = "BoxFlag"})
Window:Label({Text = "Label"})
while wait(.5) do
print(_G.BoxFlag)
end
```