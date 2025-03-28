local Lexer = loadstring(game:HttpGet("https://raw.githubusercontent.com/ProjektEta/SDA-Pro/refs/heads/main/Lexer.lua"))()

local ScreenGui = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local Topbar = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local ScriptEditor = Instance.new("Frame")
local Line = Instance.new("Frame")
local ScrollingFrame = Instance.new("ScrollingFrame")
local UIListLayout = Instance.new("UIListLayout")
local TextLabel = Instance.new("TextLabel")
local ScriptArea = Instance.new("ScrollingFrame")
local TextBox = Instance.new("TextBox")
local Bottombar = Instance.new("Frame")
local UIListLayout_2 = Instance.new("UIListLayout")
local Execute = Instance.new("TextButton")
local Clear = Instance.new("TextButton")
local WIP = Instance.new("TextButton")
local WIP_2 = Instance.new("TextButton")

ScreenGui.Parent = cloneref(game:GetService("CoreGui"))
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Global

Main.Name = "Main"
Main.Parent = ScreenGui
Main.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
Main.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.BorderSizePixel = 0
Main.Position = UDim2.new(0.253997535, 0, 0.179199994, 0)
Main.Size = UDim2.new(0, 800, 0, 400)

Topbar.Name = "Topbar"
Topbar.Parent = Main
Topbar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Topbar.BackgroundTransparency = 1.000
Topbar.BorderColor3 = Color3.fromRGB(0, 0, 0)
Topbar.BorderSizePixel = 0
Topbar.Size = UDim2.new(0, 800, 0, 50)

Title.Name = "Title"
Title.Parent = Topbar
Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title.BackgroundTransparency = 1.000
Title.BorderColor3 = Color3.fromRGB(0, 0, 0)
Title.BorderSizePixel = 0
Title.Size = UDim2.new(0, 200, 0, 50)
Title.Font = Enum.Font.Unknown
Title.Text = "  SYLVIE SUITE"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextSize = 30.000
Title.TextXAlignment = Enum.TextXAlignment.Left

ScriptEditor.Name = "ScriptEditor"
ScriptEditor.Parent = Main
ScriptEditor.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ScriptEditor.BackgroundTransparency = 1.000
ScriptEditor.BorderColor3 = Color3.fromRGB(0, 0, 0)
ScriptEditor.BorderSizePixel = 0
ScriptEditor.Position = UDim2.new(0.081249997, 0, 0.125, 0)
ScriptEditor.Size = UDim2.new(0, 491, 0, 289)

Line.Name = "Line"
Line.Parent = ScriptEditor
Line.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Line.BackgroundTransparency = 1.000
Line.BorderColor3 = Color3.fromRGB(0, 0, 0)
Line.BorderSizePixel = 0
Line.Size = UDim2.new(0, 20, 0, 289)

ScrollingFrame.Parent = Line
ScrollingFrame.Active = true
ScrollingFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ScrollingFrame.BackgroundTransparency = 1.000
ScrollingFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
ScrollingFrame.BorderSizePixel = 0
ScrollingFrame.Size = UDim2.new(1, 0, 1, 0)
ScrollingFrame.ScrollBarThickness = 0
ScrollingFrame.ScrollingEnabled = false
ScriptArea.AutomaticCanvasSize = Enum.AutomaticSize.X

UIListLayout.Parent = ScrollingFrame
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

local newThing = function(index)
    TextLabel.Parent = ScrollingFrame
    TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel.BackgroundTransparency = 1.000
    TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
    TextLabel.BorderSizePixel = 0
    TextLabel.Size = UDim2.new(1, 0, -0.0692041516, 40)
    TextLabel.Font = Enum.Font.SourceSans
    TextLabel.Text = index
    TextLabel.TextColor3 = Color3.fromRGB(144, 144, 144)
    TextLabel.TextScaled = true
    TextLabel.TextSize = 14.000
    TextLabel.TextWrapped = true
    TextLabel.TextXAlignment = Enum.TextXAlignment.Left
    TextLabel.TextYAlignment = Enum.TextYAlignment.Top
end

ScriptArea.Name = "ScriptArea"
ScriptArea.Parent = ScriptEditor
ScriptArea.Active = true
ScriptArea.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ScriptArea.BackgroundTransparency = 1.000
ScriptArea.BorderColor3 = Color3.fromRGB(0, 0, 0)
ScriptArea.BorderSizePixel = 0
ScriptArea.Position = UDim2.new(0.0407331958, 0, 0, 0)
ScriptArea.Size = UDim2.new(0.959266782, 0, 1, 0)
ScriptArea.ScrollBarThickness = 3
ScriptArea.AutomaticCanvasSize = Enum.AutomaticSize.XY

TextBox.Parent = ScriptArea
TextBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextBox.BackgroundTransparency = 1.000
TextBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextBox.BorderSizePixel = 0
TextBox.Size = UDim2.new(1, 0, 1, 0)
TextBox.ClearTextOnFocus = false
TextBox.Font = Enum.Font.Highway
TextBox.MultiLine = true
TextBox.RichText = true
TextBox.AutomaticSize = Enum.AutomaticSize.XY
TextBox.Text = Lexer.run("print(\"Love eta\")")
TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
TextBox.TextSize = 20.000
TextBox.TextXAlignment = Enum.TextXAlignment.Left
TextBox.TextYAlignment = Enum.TextYAlignment.Top

Bottombar.Name = "Bottombar"
Bottombar.Parent = Main
Bottombar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Bottombar.BackgroundTransparency = 1.000
Bottombar.BorderColor3 = Color3.fromRGB(0, 0, 0)
Bottombar.BorderSizePixel = 0
Bottombar.Position = UDim2.new(0, 0, 0.847500026, 0)
Bottombar.Size = UDim2.new(0, 580, 0, 61)

UIListLayout_2.Parent = Bottombar
UIListLayout_2.FillDirection = Enum.FillDirection.Horizontal
UIListLayout_2.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout_2.VerticalAlignment = Enum.VerticalAlignment.Center
UIListLayout_2.Padding = UDim.new(0, 5)

Execute.Name = "Execute"
Execute.Parent = Bottombar
Execute.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Execute.BorderColor3 = Color3.fromRGB(0, 0, 0)
Execute.BorderSizePixel = 0
Execute.Position = UDim2.new(0.250862062, 0, 0.213114753, 0)
Execute.Size = UDim2.new(0, 122, 0, 35)
Execute.Font = Enum.Font.Highway
Execute.Text = "Execute"
Execute.TextColor3 = Color3.fromRGB(255, 255, 255)
Execute.TextSize = 14.000

Clear.Name = "Clear"
Clear.Parent = Bottombar
Clear.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Clear.BorderColor3 = Color3.fromRGB(0, 0, 0)
Clear.BorderSizePixel = 0
Clear.Position = UDim2.new(0.470107913, 0, 0.213114753, 0)
Clear.Size = UDim2.new(0, 122, 0, 35)
Clear.Font = Enum.Font.Highway
Clear.Text = "Clear"
Clear.TextColor3 = Color3.fromRGB(255, 255, 255)
Clear.TextSize = 14.000

WIP.Name = "WIP"
WIP.Parent = Bottombar
WIP.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
WIP.BorderColor3 = Color3.fromRGB(0, 0, 0)
WIP.BorderSizePixel = 0
WIP.Position = UDim2.new(0.470107913, 0, 0.213114753, 0)
WIP.Size = UDim2.new(0, 122, 0, 35)
WIP.Font = Enum.Font.Highway
WIP.Text = "SAVE FILE (WIP)"
WIP.TextColor3 = Color3.fromRGB(255, 255, 255)
WIP.TextSize = 14.000

WIP_2.Name = "WIP"
WIP_2.Parent = Bottombar
WIP_2.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
WIP_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
WIP_2.BorderSizePixel = 0
WIP_2.Position = UDim2.new(0.470107913, 0, 0.213114753, 0)
WIP_2.Size = UDim2.new(0, 122, 0, 35)
WIP_2.Font = Enum.Font.Highway
WIP_2.Text = "LOAD FILE (WIP)"
WIP_2.TextColor3 = Color3.fromRGB(255, 255, 255)
WIP_2.TextSize = 14.000

local UserInputService = cloneref(game:GetService("UserInputService"))
UserInputService.InputBegan:Connect(function(keycode)
    if (Enum.KeyCode == Enum.KeyCode.Insert) then
        ScreenGui.Visible = not ScreenGui.Visible
    end
end)

local RunService = cloneref(game:GetService("RunService"))

Clear.MouseButton1Click:Connect(function()
    TextBox.Text = "";
end)

Execute.MouseButton1Click:Connect(function()
    loadstring(TextBox.Text)();
end)

function countNewlines(str)
    local count = 0
    for _ in str:gmatch("\n") do
        count = count + 1
    end
    return count
end

while task.wait(1) do
    local s,e = pcall(function()
        TextBox.Text = Lexer.run(TextBox.Text);

        for _,v in pairs(ScrollingFrame:GetChildren()) do
            if v:IsA("TextLabel") then
                v:Destroy()
            end
        end

        local lines = countNewlines(TextBox.Text)

        for i=0, lines do
            newThing(i)
        end
    end)
end
