

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/Articles-Hub/ROBLOXScript/refs/heads/main/Library/Orion/Source.lua')))()

local Run = game:GetService("RunService")

if game.PlaceId == 6403373529 or game.PlaceId == 9015014224 then
	local Window = OrionLib:MakeWindow({IntroText = "Slap Battles 👏", IntroIcon = "rbxassetid://15315284749",Name = ("ZybasHub - Slap Battles 👏".." | ".. identifyexecutor()),IntroToggleIcon = "rbxassetid://7734091286", HidePremium = false, SaveConfig = false, IntroEnabled = true, ConfigFolder = "slap battles"})
	loadstring(game:HttpGet("https://raw.githubusercontent.com/Bendyshechka/NewZybasHub/refs/heads/main/safespot.lua"))()
	local function EquipGlove(Glove)
	for i, v in pairs(game:GetService("ReplicatedStorage")._NETWORK:GetChildren()) do
      -- Check if the name contains the character '{'
      if v.Name:find("{") then
          local args = {
              [1] = Glove,
			  [2] = true
          }
  
          -- Check if v is a RemoteEvent and can FireServer
          if v:IsA("RemoteEvent") then
              v:FireServer(unpack(args))
          elseif v:IsA("RemoteFunction") then
              -- If it's a RemoteFunction, use InvokeServer
              local result = v:InvokeServer(unpack(args))
              print("Result from InvokeServer:", result)  -- Optional: Print the result
          else
              print("v is neither a RemoteEvent nor a RemoteFunction.")
          end
      end
  end
end


local Tab = Window:MakeTab({
	Name = "Информация",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddLabel("Новый лучший скрипт!")
Tab:AddLabel("Милена шлюха")

Tab:AddButton({
	Name = "Закрыть меню",
	Callback = function()
      		OrionLib:Destroy()
  	end    
})

local ScritpsTab = Window:MakeTab({
	Name = "Скрипты",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

ScritpsTab:AddButton({
	Name = "Флинг",
	Callback = function()
      		loadstring(game:HttpGet('https://raw.githubusercontent.com/n0kc/AtomicHub/main/Script.lua'))()
  	end    
})

local Tab2 = Window:MakeTab({
	Name = "Анти",
	Icon = "rbxassetid://7734056608",
	PremiumOnly = false
})

Tab2:AddDropdown({
	Name = "Анти войд",
	Default = "Normal",
	Options = {"Normal","Retro","Water","Psycho","Bob"},
	Callback = function(Value)
if _G.AntiVoid == true then
AntiVoid:Set(false)
wait(0.05)
_G.AntiVoidChoose = Value
wait(0.03)
AntiVoid:Set(true)
elseif _G.AntiVoid == false then
_G.AntiVoidChoose = Value
end
	end    
})

Tab2:AddSlider({
	Name = "Прозрачность анти войда",
	Min = 0,
	Max = 1,
	Default = 0.5,
	Color = Color3.fromRGB(255,255,255),
	Increment = 0.1,
	ValueName = "Transparency",
	Callback = function(Value)
_G.Transparency = Value
if _G.AntiVoid == true then
if _G.AntiVoidChoose == "Normal" then
game.Workspace["VoidPart"].Transparency = Value
game.Workspace["VoidPart"]["TAntiVoid"].Transparency = Value
elseif _G.AntiVoidChoose == "Retro" then
game.Workspace["Psycho"]["Retro1"].Transparency = Value
game.Workspace["Psycho"]["Retro1"]["Retro2"].Transparency = Value
game.Workspace["Psycho"]["Retro1"]["Retro3"].Transparency = Value
elseif _G.AntiVoidChoose == "Water" then
game.Workspace["Psycho"]["Kraken"].Transparency = Value
elseif _G.AntiVoidChoose == "Psycho" then
game.Workspace["Psycho"].Transparency = Value
elseif _G.AntiVoidChoose == "Bob" then
game.Workspace["VoidPart"]["TAntiVoid"].Transparency = Value
game.Workspace["BobWalk1"].Transparency = Value
for i,v in pairs(game.Workspace.BobWalk1:GetChildren()) do
v.Transparency = _G.Transparency
end
end
end
	end    
})

AntiVoid = Tab2:AddToggle({
	Name = "Антивойд",
	Default = false,
	Callback = function(Value)
_G.AntiVoid = Value
if _G.AntiVoidChoose == "Normal" then
game.Workspace["VoidPart"].CanCollide = Value
game.Workspace["VoidPart"]["TAntiVoid"].CanCollide = Value
if Value == false then
game.Workspace["VoidPart"].Transparency = 1
game.Workspace["VoidPart"]["TAntiVoid"].Transparency = 1
else
game.Workspace["VoidPart"].Transparency = _G.Transparency
game.Workspace["VoidPart"]["TAntiVoid"].Transparency = _G.Transparency
end
elseif _G.AntiVoidChoose == "Retro" then
game.Workspace["Psycho"]["Retro1"].CanCollide = Value
game.Workspace["Psycho"]["Retro1"]["Retro2"].CanCollide = Value
game.Workspace["Psycho"]["Retro1"]["Retro3"].CanCollide = Value
if Value == true then
game.Workspace["Psycho"]["Retro1"].Transparency = _G.Transparency
game.Workspace["Psycho"]["Retro1"]["Retro2"].Transparency = _G.Transparency
game.Workspace["Psycho"]["Retro1"]["Retro3"].Transparency = _G.Transparency
else
game.Workspace["Psycho"]["Retro1"].Transparency = 1
game.Workspace["Psycho"]["Retro1"]["Retro2"].Transparency = 1
game.Workspace["Psycho"]["Retro1"]["Retro3"].Transparency = 1
end
elseif _G.AntiVoidChoose == "Water" then
game.Workspace["Psycho"]["Kraken"].CanCollide = Value
if Value == true then
game.Workspace["Psycho"]["Kraken"].Transparency = _G.Transparency
else
game.Workspace["Psycho"]["Kraken"].Transparency = 1
end
elseif _G.AntiVoidChoose == "Psycho" then
game.Workspace["Psycho"].CanCollide = Value
if Value == true then
game.Workspace["Psycho"].Transparency = _G.Transparency
else
game.Workspace["Psycho"].Transparency = 1
end
elseif _G.AntiVoidChoose == "Bob" then
game.Workspace["VoidPart"]["TAntiVoid"].CanCollide = Value
game.Workspace["BobWalk1"].CanCollide = Value
for i,v in pairs(game.Workspace.BobWalk1:GetChildren()) do
v.CanCollide = Value
end
if Value == true then
game.Workspace["VoidPart"]["TAntiVoid"].Transparency = _G.Transparency
game.Workspace["BobWalk1"].Transparency = _G.Transparency
for i,v in pairs(game.Workspace.BobWalk1:GetChildren()) do
v.Transparency = _G.Transparency
end
else
game.Workspace["VoidPart"]["TAntiVoid"].Transparency = 1
game.Workspace["BobWalk1"].Transparency = 1
for i,v in pairs(game.Workspace.BobWalk1:GetChildren()) do
v.Transparency = 1
end
end
end
	end    
})

AntiPortal = Tab2:AddToggle({
	Name = "Анти портал",
	Default = false,
	Callback = function(Value)
_G.AntiPortal = Value
if _G.AntiPortal == true then
for i,v in pairs(workspace.Lobby:GetChildren()) do
if v.Name == "Teleport2" and v.Name == "Teleport3" and v.Name == "Teleport4" and v.Name == "Teleport6" then
if v.CanTouch == true then
v.CanTouch = false
end
end
end
else
for i,v in pairs(workspace.Lobby:GetChildren()) do
if v.Name == "Teleport2" and v.Name == "Teleport3" and v.Name == "Teleport4" and v.Name == "Teleport6" then
if v.CanTouch == false then
v.CanTouch = true
end
end
end
end
	end    
})

AntiAdmin = Tab2:AddToggle({
	Name = "Анти модеры / Админы",
	Default = false,
	Callback = function(Value)
_G.AntiMods = Value
while _G.AntiMods do
for i,v in pairs(game.Players:GetChildren()) do
        if v:GetRankInGroup(9950771) >= 2 then
         _G.AntiKick = false
     game.Players.LocalPlayer:Kick("High Rank Player Detected.".." [ "..v.Name.." ]")
   break
     end
end
task.wait()
end
	end    
})

AntiKick = Tab2:AddToggle({
	Name = "Анти кик",
	Default = false,
	Callback = function(Value)
	_G.AntiKick = Value
while _G.AntiKick do
for i,v in pairs(game.CoreGui.RobloxPromptGui.promptOverlay:GetDescendants()) do
                    if v.Name == "ErrorPrompt" then
game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId, game.Players.LocalPlayer)
                    end
                end
task.wait()
end
	end    
})


AntiObby = Tab2:AddToggle({
	Name = "Анти Обби",
	Default = false,
	Callback = function(Value)
		_G.AntiObby = Value
while _G.AntiObby do
for _, v in pairs(game.Workspace:GetChildren()) do
          if string.find(v.Name, "LavaSpinner") or string.find(v.Name, "LavaBlock") then
             if v.CanTouch == true then
                 v.CanTouch = false
             end
         end
     end
task.wait()
end
if _G.AntiObby == false then
for _, v in pairs(game.Workspace:GetChildren()) do
          if string.find(v.Name, "LavaSpinner") or string.find(v.Name, "LavaBlock") then
              if v.CanTouch == false then
                  v.CanTouch = true
             end
         end
    end
end
	end    
})

AntiRock = Tab2:AddToggle({
	Name = "Анти мегарок / Кастом",
	Default = false,
	Callback = function(Value)
		_G.AntiRock = Value
while _G.AntiRock do
for _,v in pairs(game.Players:GetChildren()) do
                    if v.Character:FindFirstChild("rock") then
                        v.Character:FindFirstChild("rock").CanTouch = false
                        v.Character:FindFirstChild("rock").CanQuery = false
                    end
                end
task.wait()
end
	end    
})

AntiSbeve = Tab2:AddToggle({
	Name = "Анти сбеве",
	Default = false,
	Callback = function(Value)
		_G.AntiSbeve = Value
while _G.AntiSbeve do
for _,v in pairs(game.Players:GetChildren()) do
                    if v ~= game.Players.LocalPlayer and v.Character:FindFirstChild("stevebody") then
                        v.Character:FindFirstChild("stevebody").CanTouch = false
                        v.Character:FindFirstChild("stevebody").CanQuery = false
                        v.Character:FindFirstChild("stevebody").CanCollide = false
                    end
                end
task.wait()
end
	end    
})

AntiBallBaller = Tab2:AddToggle({
	Name = "Анти Баллер",
	Default = false,
	Callback = function(Value)
		_G.AntiBallBaller = Value
while _G.AntiBallBaller do
for i,v in pairs(game.Workspace:GetChildren()) do
                    if v.Name == "ClonedBall" then
                        v.CanTouch = false
                        v.CanCollide = true
                    end
                end
task.wait()
end
	end    
})

AntiBus = Tab2:AddToggle({
	Name = "Анти Бус",
	Default = false,
	Callback = function(Value)
		_G.AntiBus = Value
while _G.AntiBus do
for i,v in pairs(game.Workspace:GetChildren()) do
                    if v.Name == "BusModel" then
                        v.CanTouch = false
                    end
                end
task.wait()
end
	end    
})

AntiLure = Tab2:AddToggle({
	Name = "Анти Люр",
	Default = false,
	Callback = function(Value)
		_G.AntiLure = Value
while _G.AntiLure do
for i,v in pairs(game.Workspace:GetChildren()) do
                    if string.find(v.Name, "_lure") and v:FindFirstChild("Root") and v:FindFirstChild("watercircle") then
                        v.Root.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                        v.watercircle.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                    end
                end
task.wait()
end
	end    
})

AntiMail = Tab2:AddToggle({
	Name = "Анти мейл",
	Default = false,
	Callback = function(Value)
game.Players.LocalPlayer.Character.YouHaveGotMail.Disabled = Value
_G.AntiMail = Value
while _G.AntiMail do
if game.Players.LocalPlayer.Character:FindFirstChild("YouHaveGotMail") then
game.Players.LocalPlayer.Character.YouHaveGotMail.Disabled = true
end
task.wait()
end
	end    
})


AntiKnock = Tab2:AddToggle({
	Name = "Анти кнокофф",
	Default = false,
	Callback = function(Value)
_G.AntiKnock = Value
while _G.AntiKnock do
if game.Workspace.CurrentCamera and game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid") and game.Workspace.CurrentCamera.CameraSubject ~= game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid") and game.Workspace.CurrentCamera.CameraSubject == game.Workspace:FindFirstChild(game.Players.LocalPlayer.Name.."'s_falsehead") then
game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
end
task.wait()
end
	end    
})

AntiBooster = Tab2:AddToggle({
	Name = "Анти Бустер",
	Default = false,
	Callback = function(Value)
		_G.AntiBooster = Value
while _G.AntiBooster do
for i,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                    if v.Name == "BoosterObject" then
                        v:Destroy()
                    end
                end
task.wait()
end
	end    
})

AntiSquid = Tab2:AddToggle({
	Name = "Анти Сквид",
	Default = false,
	Callback = function(Value)
	_G.AntiSquid = Value
if _G.AntiSquid == false then
game.Players.LocalPlayer.PlayerGui.SquidInk.Enabled = true
end
while _G.AntiSquid do
if game.Players.LocalPlayer.PlayerGui:FindFirstChild("SquidInk") then
game.Players.LocalPlayer.PlayerGui.SquidInk.Enabled = false
end
task.wait()
end
	end    
})





AntiTime = Tab2:AddToggle({
	Name = "Анти тайм стоп / стоп",
	Default = false,
	Callback = function(Value)
	_G.AntiTimestop = Value
while _G.AntiTimestop do
                for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                    if v.ClassName == "Part" then
                        v.Anchored = false
                    end
                end
task.wait()
end
	end    
})



AntiRun = Tab2:AddToggle({
	Name = "Анти Нулл",
	Default = false,
	Callback = function(Value)
_G.AutoExit = Value
while _G.AutoExit do
if game.Players.LocalPlayer.Character:FindFirstChild("InLabyrinth") ~= nil then
for _, v in next, workspace:GetChildren() do
    if string.find(v.Name, "Labyrinth") and v:FindFirstChild("Doors") then
        for _, y in ipairs(v.Doors:GetChildren()) do
            if y:FindFirstChild("Hitbox") and y.Hitbox:FindFirstChild("TouchInterest") then
              firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart"), y.Hitbox, 0)
              firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart"), y.Hitbox, 1)
            end
        end
    end
end
end
task.wait()
end
	end    
})

AntiBrick = Tab2:AddToggle({
	Name = "Анти Брик",
	Default = false,
	Callback = function(Value)
_G.AntiBrick = Value
while _G.AntiBrick do
for i,v in pairs(game.Workspace:GetChildren()) do
                    if v.Name == "Union" then
                        v.CanTouch = false
                        v.CanQuery = false
                    end
                end
task.wait()
end
	end    
})

AntiRecord = Tab2:AddToggle({
	Name = "Анти записывание",
	Default = false,
	Callback = function(Value)
_G.AntiRecord = Value
	end    
})
for i,p in pairs(game.Players:GetChildren()) do
if p ~= game.Players.LocalPlayer then
p.Chatted:Connect(function(message)
Words = message:split(" ")
if _G.AntiRecord == true then
for i, v in pairs(Words) do
if v:lower():match("recording") or v:lower():match(" rec") or v:lower():match("record") or v:lower():match("discor") or v:lower():match(" disco") or v:lower():match(" disc") or v:lower():match("ticket") or v:lower():match("tickets") or v:lower():match(" ds") or v:lower():match(" dc") or v:lower():match("dizzy") or v:lower():match("dizzycord") or v:lower():match(" clip") or v:lower():match("proof") or v:lower():match("evidence") then
AntiKick:Set(false)
game.Players.LocalPlayer:Kick("Possible player recording detected.".." [ "..p.Name.." ]".." [ "..message.." ]")
end
end
end
end)
end
end
game.Players.PlayerAdded:Connect(function(Player)
Player.Chatted:Connect(function(message)
Words = message:split(" ")
if _G.AntiRecord == true then
for i, v in pairs(Words) do
if v:lower():match("recording") or v:lower():match(" rec") or v:lower():match("record") or v:lower():match("discor") or v:lower():match(" disco") or v:lower():match(" disc") or v:lower():match("ticket") or v:lower():match("tickets") or v:lower():match(" ds") or v:lower():match(" dc") or v:lower():match("dizzy") or v:lower():match("dizzycord") or v:lower():match(" clip") or v:lower():match("proof") or v:lower():match("evidence") then
AntiKick:Set(false)
game.Players.LocalPlayer:Kick("Possible player recording detected.".." [ "..Player.Name.." ]".." [ "..message.." ]")
end
end
end
end)
end)

AntiBrazil = Tab2:AddToggle({
	Name = "Анти Бразилия",
	Default = false,
	Callback = function(Value)
_G.AntiBrazil = Value
while _G.AntiBrazil do
for i,v in pairs(game.Workspace.Lobby.brazil:GetChildren()) do
                  if v.CanTouch == true then
                     v.CanTouch = false
                 end
             end
task.wait()
end
if _G.AntiBrazil == false then
for i,v in pairs(game.Workspace.Lobby.brazil:GetChildren()) do
                  if v.CanTouch == false then
                     v.CanTouch = true
                 end
            end
end
	end    
})



AntiFort = Tab2:AddToggle({
	Name = "Анти Форт",
	Default = false,
	Callback = function(Value)
	_G.AntiFort = Value
            while _G.AntiFort do
                for i,v in pairs(game.Workspace:GetChildren()) do
                    if v.Name == "Part" then
                        v.CanCollide = false
                    end
                end
task.wait()
            end
	end    
})

AntiReaper = Tab2:AddToggle({
	Name = "Анти рипер",
	Default = false,
	Callback = function(Value)
	_G.AntiReaper = Value
            while _G.AntiReaper do
for i,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                    if v.Name == "DeathMark" then
                        game:GetService("ReplicatedStorage").ReaperGone:FireServer(game:GetService("Players").LocalPlayer.Character.DeathMark)
                    game:GetService("Lighting"):WaitForChild("DeathMarkColorCorrection"):Destroy() 
                    end
                end
task.wait()
end
	end    
})

AntiPusher = Tab2:AddToggle({
	Name = "Анти Пушер",
	Default = false,
	Callback = function(Value)
		_G.AntiPusher = Value
while _G.AntiPusher do
for i,v in pairs(game.Workspace:GetChildren()) do
                    if v.Name == "wall" then
                        v.CanCollide = false
                    end
                end
task.wait()
end
	end    
})

AntiDefend = Tab2:AddToggle({
	Name = "Анти дефенд",
	Default = false,
	Callback = function(Value)
	_G.NoclipBarrier = Value
if _G.NoclipBarrier == false then
for i,v in pairs(game.Workspace:GetChildren()) do
                    if string.find(v.Name, "ÅBarrier") then
                        if v.CanCollide == false then
                            v.CanCollide = true
                         end
                    end
                end
           end
while _G.NoclipBarrier do
for i,v in pairs(game.Workspace:GetChildren()) do
                    if string.find(v.Name, "ÅBarrier") then
                        if v.CanCollide == true then
                            v.CanCollide = false
                         end
                     end
                end
task.wait()
end
	end    
})

AntiAttackPlank = Tab2:AddToggle({
	Name = "Анти Планк",
	Default = false,
	Callback = function(Value)
	_G.AntiPlank = Value
while _G.AntiPlank do
for i,v in pairs(game.Workspace:GetChildren()) do
                    if string.find(v.Name, "'s Plank") and v.ClassName == "Part" then
                         v.CanTouch = false
                         v.CanQuery = false
                     end
                end
task.wait()
end
	end    
})

AntiBubble = Tab2:AddToggle({
	Name = "Анти бабл",
	Default = false,
	Callback = function(Value)
		 _G.AntiBubble = Value
while _G.AntiBubble do
for i,v in pairs(workspace:GetChildren()) do
                    if v.Name == "BubbleObject" and v:FindFirstChild("Weld") then
                        v:FindFirstChild("Weld"):Destroy()
                    end
               end
task.wait()
end
	end    
})

AntiStun = Tab2:AddToggle({
	Name = "Анти стан",
	Default = false,
	Callback = function(Value)
		_G.AntiStun = Value
while _G.AntiStun do
if game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") and game.Workspace:FindFirstChild("Shockwave") and game.Players.LocalPlayer.Character.Ragdolled.Value == false then
game.Players.LocalPlayer.Character.Humanoid.PlatformStand = false
end
task.wait()
end
	end    
})

AntiCOD = Tab2:AddToggle({
	Name = "Анти куб смерти",
	Default = false,
	Callback = function(Value)
		if Value == true then
if game.Workspace:FindFirstChild("the cube of death(i heard it kills)", 1) and game.Workspace.Arena.CubeOfDeathArea["the cube of death(i heard it kills)"]:FindFirstChild("Part") then
game.Workspace.Arena.CubeOfDeathArea["the cube of death(i heard it kills)"].CanTouch = false
game.Workspace.Arena.CubeOfDeathArea["the cube of death(i heard it kills)"].Part.CanTouch = false
end
else
if game.Workspace:FindFirstChild("the cube of death(i heard it kills)", 1) and game.Workspace.Arena.CubeOfDeathArea["the cube of death(i heard it kills)"]:FindFirstChild("Part") then
game.Workspace.Arena.CubeOfDeathArea["the cube of death(i heard it kills)"].CanTouch = true
game.Workspace.Arena.CubeOfDeathArea["the cube of death(i heard it kills)"].Part.CanTouch = true
end
end
	end    
})

AntiDeath = Tab2:AddToggle({
	Name = "Анти барьер",
	Default = false,
	Callback = function(Value)
		if Value == true then
for i,v in pairs(game.Workspace.DEATHBARRIER:GetChildren()) do
                    if v.ClassName == "Part" and v.Name == "BLOCK" then
                        v.CanTouch = false
                    end
                end
workspace.DEATHBARRIER.CanTouch = false
workspace.DEATHBARRIER2.CanTouch = false
workspace.dedBarrier.CanTouch = false
workspace.ArenaBarrier.CanTouch = false
workspace.AntiDefaultArena.CanTouch = false
else
for i,v in pairs(game.Workspace.DEATHBARRIER:GetChildren()) do
                    if v.ClassName == "Part" and v.Name == "BLOCK" then
                        v.CanTouch = true
                    end
                end
workspace.DEATHBARRIER.CanTouch = true
workspace.DEATHBARRIER2.CanTouch = true
workspace.dedBarrier.CanTouch = true
workspace.ArenaBarrier.CanTouch = true
workspace.AntiDefaultArena.CanTouch = true
end
	end    
})

AntiRagdoll = Tab2:AddToggle({
	Name = "Анти Рагдолл",
	Default = false,
	Callback = function(Value)
        _G.AntiRagdoll = Value
while _G.AntiRagdoll do
if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and game.Players.LocalPlayer.Character:FindFirstChild("Torso") and game.Players.LocalPlayer.Character:FindFirstChild("Ragdolled") then
if game.Players.LocalPlayer.Character:FindFirstChild("Ragdolled") and game.Players.LocalPlayer.Character:WaitForChild("Ragdolled").Value == true then
repeat task.wait()
if game.Players.LocalPlayer.Character:FindFirstChild("Torso") then
game.Players.LocalPlayer.Character.Torso.Anchored = true
end
until game.Players.LocalPlayer.Character:FindFirstChild("Ragdolled") and game.Players.LocalPlayer.Character:WaitForChild("Ragdolled").Value == false
if game.Players.LocalPlayer.Character:FindFirstChild("Torso") then
game.Players.LocalPlayer.Character.Torso.Anchored = false
end
end
end
task.wait()
end
	end    
})

local Tab1 = Window:MakeTab({
	Name = "Перчи без бейджа",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local Section = Tab1:AddSection({
	Name = "Одиночные"
})
Tab1:AddTextbox({
    Name = "Перчатка: ",
    Default = "Glove",
    TextDisappear = false,
    Callback = function(Value)
        local targetAbbreviation = Value
        local GlovesDatabase = require(game.ReplicatedStorage.FRONTEND.Databases.Gloves) -- Загружаем базу данных перчаток
        foundGlove = nil

        for gloveName, gloveData in pairs(GlovesDatabase) do
            -- Проверяем, что AbilityType подходит и имя перчатки начинается с введённого текста
            if (gloveData.Type == "Badge") and
               string.sub(gloveName, 1, #targetAbbreviation):lower() == targetAbbreviation:lower() then
                foundGlove = gloveName
                break
            end
        end

        if foundGlove then
            OrionLib:MakeNotification({
                Name = "Успешно",
                Content = "Найдена перчатка: " .. foundGlove,
                Image = "rbxassetid://7733658504",
                Time = 5
            })
        else
            OrionLib:MakeNotification({
                Name = "Ошибка",
                Content = "Перчатка не найдена!",
                Image = "rbxassetid://7733658504",
                Time = 5
            })
        end
    end
})

Tab1:AddButton({
	Name = "Выдать перчатку",
	Callback = function()
      		EquipGlove(foundGlove)
  	end    
})
local Section1 = Tab1:AddSection({
	Name = "Все"
})
Tab1:AddButton({
	Name = "Выдать все бейдж перчатки",
	Callback = function()
      	local GlovesDatabase1 = require(game.ReplicatedStorage.FRONTEND.Databases.Gloves)
		for gloveName1, gloveData1 in pairs(GlovesDatabase1) do
            -- Проверяем, что AbilityType подходит и имя перчатки начинается с введённого текста
            if gloveData1.Type == "Badge" then
               EquipGlove(gloveName1)
            end
        end
  	end    
})



local TabFire = Window:MakeTab({
	Name = "Феерверк кик",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local Section2 = TabFire:AddSection({
	Name = "Одиночный кик"
})

TabFire:AddTextbox({
	Name = "Юзернейм: ",
	Default = "Username",
	TextDisappear = false,
	Callback = function(Value)
local targetAbbreviation = Value
local targetPlayer
for _, v in pairs(game.Players:GetPlayers()) do
if string.sub(v.Name, 1, #targetAbbreviation):lower() == targetAbbreviation:lower() then
targetPlayer = v
break
end
end
if targetPlayer then
PlayerKickFirework = targetPlayer.Name
OrionLib:MakeNotification({Name = "Успешно",Content = "Найден игрок [ "..PlayerKickFirework.." ]",Image = "rbxassetid://7733658504",Time = 5})
else
OrionLib:MakeNotification({Name = "Ошибка",Content = "Игрок не найден",Image = "rbxassetid://7733658504",Time = 5})
end
	end	  
})
local AlreadyKicking = false
TabFire:AddButton({
	Name = "Кикнуть игрока",
	Callback = function()
      	if game.Players.LocalPlayer.leaderstats.Glove.Value == "Firework" then
			if game.Players:FindFirstChild(PlayerKickFirework) ~= nil then
			if AlreadyKicking == false then
				AlreadyKicking = true
				local portal = workspace.Lobby.brazil.portal
				portal.CanTouch = false

				local character = game.Players.LocalPlayer.Character
				local targetcharacter = game.Players:FindFirstChild(PlayerKickFirework).Character
				local targethrp = targetcharacter:FindFirstChild("HumanoidRootPart")
				local hrp = character:FindFirstChild("HumanoidRootPart")
				local originalhrp = hrp.CFrame
				local originaltargethrp = targethrp.CFrame


				task.spawn(function()
					hrp.CFrame = CFrame.new(portal.Position + Vector3.new(-5, -5, 0)) * CFrame.Angles(0, math.rad(-86.581), 0)
					wait(0.1)
					hrp.Anchored = true
				end)
				task.spawn(function()
					targethrp.CFrame = CFrame.new(portal.Position + Vector3.new(3, -5, 0)) * CFrame.Angles(0, math.rad(-86.581), 0)
					wait(0.1)
					targethrp.Anchored = true
				end)
				task.wait(0.3)
                game.ReplicatedStorage.GeneralAbility:FireServer()
				wait(3)
				hrp.Anchored = false
				targethrp.Anchored = false
				hrp.CFrame = originalhrp
				targethrp.CFrame = originaltargethrp
				AlreadyKicking = false
			else
				OrionLib:MakeNotification({Name = "Ошибка",Content = "Вы уже в процессе кика",Image = "rbxassetid://7733658504",Time = 5})
			end  
		else
			OrionLib:MakeNotification({Name = "Ошибка",Content = "Игрока нет на сервере",Image = "rbxassetid://7733658504",Time = 5})
		end
		else
			OrionLib:MakeNotification({Name = "Ошибка",Content = "У вас должен быть экипирован феерверк",Image = "rbxassetid://7733658504",Time = 5})
		end
  	end    
})

local Section3 = TabFire:AddSection({
	Name = "Глобальный кик"
})

local Exclusions = {}
for i = 1, 3 do
    TabFire:AddTextbox({
        Name = "Исключение #" .. i,
        Default = "Username",
        TextDisappear = false,
        Callback = function(Value)
            local targetAbbreviation = Value
            local targetPlayer
            for _, v in pairs(game.Players:GetPlayers()) do
                if string.sub(v.Name, 1, #targetAbbreviation):lower() == targetAbbreviation:lower() then
                    targetPlayer = v
                    break
                end
            end
            if targetPlayer then
                Exclusions[i] = targetPlayer.Name -- Сохраняем в таблицу
                OrionLib:MakeNotification({
                    Name = "Успешно",
                    Content = "Найден игрок [ " .. targetPlayer.Name .. " ]",
                    Image = "rbxassetid://7733658504",
                    Time = 5
                })
            else
                OrionLib:MakeNotification({
                    Name = "Ошибка",
                    Content = "Игрок не найден",
                    Image = "rbxassetid://7733658504",
                    Time = 5
                })
            end
        end
    })
end
local KickAllFirework
local IsKicking = false
local CurrentTarget = nil
local ShouldStop = false

KickAllFirework = TabFire:AddToggle({
    Name = "Кик всего сервера",
    Default = false,
    Callback = function(Value)
        if not Value then
            ShouldStop = true -- Запрос на остановку
            return
        end

        if game.Players.LocalPlayer.leaderstats.Glove.Value ~= "Firework" then
            OrionLib:MakeNotification({
                Name = "Ошибка",
                Content = "У вас должен быть экипирован феерверк",
                Image = "rbxassetid://7733658504",
                Time = 5
            })
            KickAllFirework:Set(false)
            return
        end

        if IsKicking then
            OrionLib:MakeNotification({
                Name = "Ошибка",
                Content = "Уже идет процесс кика!",
                Image = "rbxassetid://7733658504",
                Time = 5
            })
            
            return
        end

        IsKicking = true
        ShouldStop = false

        local function KickPlayer(player)
            if ShouldStop then return end

            CurrentTarget = player
            local portal = workspace.Lobby.brazil.portal
            portal.CanTouch = false

            local character = game.Players.LocalPlayer.Character
            local targetcharacter = player.Character
            if not character or not targetcharacter then return end

            local targethrp = targetcharacter:FindFirstChild("HumanoidRootPart")
            local hrp = character:FindFirstChild("HumanoidRootPart")
            if not hrp or not targethrp then return end

            local originalhrp = hrp.CFrame
            local originaltargethrp = targethrp.CFrame

            -- Телепортация и фиксация
            hrp.CFrame = CFrame.new(portal.Position + Vector3.new(-5, -4, 0)) * CFrame.Angles(0, math.rad(-86.581), 0)
            targethrp.CFrame = CFrame.new(portal.Position + Vector3.new(3, -4, 0)) * CFrame.Angles(0, math.rad(-86.581), 0)
			wait(0.2)
            hrp.Anchored = true
            targethrp.Anchored = true
			wait(0.2)

            -- Активация способности
            game.ReplicatedStorage.GeneralAbility:FireServer()
            wait(3)

            -- Возврат на место
            hrp.Anchored = false
            targethrp.Anchored = false
            hrp.CFrame = originalhrp
            targethrp.CFrame = originaltargethrp
        end

        -- Асинхронный процесс кика
        task.spawn(function()
            for _, player in pairs(game.Players:GetPlayers()) do
                if ShouldStop then break end -- Выход, если запрошена остановка
                if player ~= game.Players.LocalPlayer and not table.find(Exclusions, player.Name) then
                    KickPlayer(player)
                    task.wait(0.5) -- Задержка между киками
                end
            end

            -- Завершение
            IsKicking = false
            CurrentTarget = nil
            if ShouldStop then
                OrionLib:MakeNotification({
                    Name = "Инфо",
                    Content = "Массовый кик остановлен!",
                    Image = "rbxassetid://7733658504",
                    Time = 3
                })
            end
            
        end)
    end
})

local Tab3 = Window:MakeTab({
	Name = "Точки телепорта",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local tps = {}
for i = 1, 3 do
	tps[i] = "NONE"
	Tab3:AddButton({
		Name = "Поставить точку #" .. i,
		Callback = function()
      		tps[i] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
			OrionLib:MakeNotification({Name = "Успешно",Content = "Точка установлена",Image = "rbxassetid://7733658504",Time = 5})
  		end    
})
end
for i = 1, 3 do
	Tab3:AddButton({
		Name = "Телепортироватся на точку #" .. i,
		Callback = function()
      		if tps[i] == "NONE" then
				OrionLib:MakeNotification({Name = "Ошибка",Content = "Точка не установлена",Image = "rbxassetid://7733658504",Time = 5})
			else
				game.Players.LocalPlayer.Character.HumanoidRootPart:PivotTo(tps[i])
			end
			
  		end    
})
end

local Tab4 = Window:MakeTab({
	Name = "Машина",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Section11 = Tab4:AddSection({
	Name = "Ваша машина"
})

Tab4:AddToggle({
	Name = "Отображение хит бокса машины",
	Default = false,
	Callback = function(Value)
		Sigma = Value
		Run.RenderStepped:Connect(function()
			if Sigma then
				if game.Players.LocalPlayer.Character:FindFirstChild("CarKeysCar") then
					
					if game.Players.LocalPlayer.Character.CarKeysCar:FindFirstChild("Hitbox") then
						game.Players.LocalPlayer.Character.CarKeysCar.Hitbox.Transparency = 0.5
					end
				end
			else
				if game.Players.LocalPlayer.Character:FindFirstChild("CarKeysCar") then
					if game.Players.LocalPlayer.Character.CarKeysCar:FindFirstChild("Hitbox") then
						game.Players.LocalPlayer.Character.CarKeysCar.Hitbox.Transparency = 1
					end
				end
			end
		end)
	end    
})

Tab4:AddSlider({
	Name = "Увеличить хит бокс машины",
	Min = 1,
	Max = 20,
	Default = 1,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "Имба",
	Callback = function(Value)
		Sigma1 = Value
		Run.RenderStepped:Connect(function()
				if game.Players.LocalPlayer.Character:FindFirstChild("CarKeysCar") then
					
					if game.Players.LocalPlayer.Character.CarKeysCar:FindFirstChild("Hitbox") then
						game.Players.LocalPlayer.Character.CarKeysCar:FindFirstChild("Hitbox").Size = Vector3.new(8, 5, 14) * Sigma1
					end
				end
		end)
	end    
})

end
