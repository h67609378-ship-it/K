-- COLE O LINK DA SUA IMAGEM AQUI (precisa ser um link direto .png ou .jpg)
local ImageUrl = "https://chatgpt.com/s/m_6a9272514a9881918c6b57ced70a114c"

-- COLE O SEU LOADSTRING AQUI
local ScriptPrincipal = loadstring([[
    -- Coloque seu loadstring ou script real aqui dentro
    print("Script carregado!")
]])

-- Criação da Interface
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "SplashScreen"
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ResetOnSpawn = false

local Background = Instance.new("Frame")
Background.Size = UDim2.new(1, 0, 1, 0)
Background.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Background.Parent = ScreenGui

local ImageLabel = Instance.new("ImageLabel")
ImageLabel.Size = UDim2.new(1, 0, 1, 0)
ImageLabel.BackgroundTransparency = 1
ImageLabel.Image = ImageUrl
ImageLabel.ScaleType = Enum.ScaleType.Fit
ImageLabel.Parent = Background

-- Animação de entrada (opcional)
Background.BackgroundTransparency = 1
ImageLabel.ImageTransparency = 1

Background:TweenSize(UDim2.new(1, 0, 1, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.5, true)
task.wait(0.5)
ImageLabel:TweenSize(UDim2.new(1, 0, 1, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.2, true)

-- Espera 2 segundos
task.wait(2)

-- Executa o loadstring principal
if ScriptPrincipal then
    pcall(ScriptPrincipal)
end

-- Remove a tela de abertura
ScreenGui:Destroy()
