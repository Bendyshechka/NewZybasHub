local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "ZybasHub",
   Icon = "codesandbox", -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
   LoadingTitle = "Это наше всё!",
   LoadingSubtitle = "by Zybaskal",
   Theme = "Default", -- Check https://docs.sirius.menu/rayfield/configuration/themes

   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false, -- Prevents Rayfield from warning when the script has a version mismatch with the interface

   ConfigurationSaving = {
      Enabled = false,
      FolderName = "ZybasHub", -- Create a custom folder for your hub/game
      FileName = "Slap Battles"
   },

   Discord = {
      Enabled = false, -- Prompt the user to join your Discord server if their executor supports it
      Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },

   KeySystem = false, -- Set this to true to use our key system
   KeySettings = {
      Title = "Untitled",
      Subtitle = "Key System",
      Note = "No method of obtaining the key is provided", -- Use this to tell the user how to get a key
      FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"Hello"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})

local Tab52 = Window:CreateTab("Вспомогательное", "anchor")
local Button = Tab52:CreateButton({
   Name = "Невидимость",
   Callback = function()
    local player = game.Players.LocalPlayer
local leaderstats = player.leaderstats
local character = player.Character

-- Проверка всех условий
if leaderstats.Glove.Value == "Ghost" then
    if character.isInArena.Value == false then
        if leaderstats.Slaps.Value >= 666 then
            -- Всё совпало: Ghost, не в арене, >=666 шлепков
            game.ReplicatedStorage.Ghostinvisibilityactivated:FireServer()
            Rayfield:Notify({
                Title = "Активация невидимости",
                Content = "Способность Ghost активирована!",
                Duration = 6.5,
                Image = "check-circle",
            })
        else
            -- Ghost, не в арене, но <666 шлепков
            Rayfield:Notify({
                Title = "Ошибка!",
                Content = "Нужно минимум 666 шлепков для активации!",
                Duration = 6.5,
                Image = "circle-x",
            })
        end
    else
        -- Ghost, но в арене (независимо от шлепков)
        Rayfield:Notify({
            Title = "Ошибка!",
            Content = "Нельзя использовать способность Ghost в арене!",
            Duration = 6.5,
            Image = "circle-x",
        })
    end
else
    -- Перчатка НЕ Ghost
    if character.isInArena.Value == false then
        if leaderstats.Slaps.Value >= 666 then
            -- Не Ghost, не в арене, но >=666 шлепков
            Rayfield:Notify({
                Title = "Ошибка!",
                Content = "Требуется перчатка Ghost для активации!",
                Duration = 6.5,
                Image = "circle-x",
            })
        else
            -- Не Ghost, не в арене, <666 шлепков
            Rayfield:Notify({
                Title = "Ошибка!",
                Content = "Нужна перчатка Ghost и 666+ шлепков!",
                Duration = 6.5,
                Image = "circle-x",
            })
        end
    else
        -- В арене (и перчатка не Ghost)
        if leaderstats.Slaps.Value >= 666 then
            -- Не Ghost, в арене, >=666 шлепков
            Rayfield:Notify({
                Title = "Ошибка!",
                Content = "Нельзя использовать в арене + нужна перчатка Ghost!",
                Duration = 6.5,
                Image = "circle-x",
            })
        else
            -- Не Ghost, в арене, <666 шлепков
            Rayfield:Notify({
                Title = "Ошибка!",
                Content = "Нельзя использовать в арене, нужна Ghost и 666+ шлепков!",
                Duration = 6.5,
                Image = "circle-x",
            })
        end
    end
end
   end,
})

local Tab522 = Window:CreateTab("Инженер", "wrench")
local Section = Tab522:CreateSection("Выборочный слап инженером")
local usernameenginerspam1
local Input = Tab522:CreateInput({
    Name = "Юзернейм игрока",
    CurrentValue = "",
    PlaceholderText = "Сюда ник кого бомбить",
    RemoveTextAfterFocusLost = false,
    Flag = "usernameenginerspam1",
    Callback = function(Text)
        usernameenginerspam1 = Text
    end,
})

local Button = Tab522:CreateButton({
   Name = "Бомбануть игрока",
   Callback = function()
    for _, obj in pairs(game.Workspace:GetChildren()) do
                        if obj.Name == "Turret" then
                            obj.HingePart.CanCollide = false
                            obj.HingePart.Glove.CanCollide = false
                            obj.HingePart.Glove.CFrame = game.Players:FindFirstChild(usernameenginerspam1).Character.HumanoidRootPart.CFrame
                        elseif obj.Name == "MasteryTurret" then
                            obj.HingePart.CanCollide = false
                            obj.HingePart.Glove.CanCollide = false
                            obj.HingePart.Glove.CFrame = game.Players:FindFirstChild(usernameenginerspam1).Character.HumanoidRootPart.CFrame
                            obj.HingePart2.CanCollide = false
                            obj.HingePart2.Glove.CanCollide = false
                            obj.HingePart2.Glove.CFrame = game.Players:FindFirstChild(usernameenginerspam1).Character.HumanoidRootPart.CFrame
                        end
                    end
   end,
})
local Section = Tab522:CreateSection("Автоматический")
local Button = Tab522:CreateButton({
    Name = "Слапнуть всех игроков по очереди",
    Callback = function()
        -- Получаем всех игроков, кроме себя
        local players = {}
        for _, player in pairs(game.Players:GetPlayers()) do
            if player ~= game.Players.LocalPlayer then
                table.insert(players, player)
            end
        end

        -- Перебираем все объекты в Workspace
        for _, obj in pairs(game.Workspace:GetChildren()) do
            if obj.Name == "Turret" then
                -- Телепортируем каждого игрока к Turret
                for _, player in pairs(players) do
                    if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
                        obj.HingePart.CanCollide = false
                        obj.HingePart.Glove.CanCollide = false
                        obj.HingePart.Glove.CFrame = player.Character.HumanoidRootPart.CFrame
                        wait(1) -- Задержка между телепортациями
                    end
                end
            elseif obj.Name == "MasteryTurret" then
                -- Телепортируем каждого игрока к MasteryTurret (две части)
                for _, player in pairs(players) do
                    if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
                        obj.HingePart.CanCollide = false
                        obj.HingePart.Glove.CanCollide = false
                        obj.HingePart.Glove.CFrame = player.Character.HumanoidRootPart.CFrame
                        
                        obj.HingePart2.CanCollide = false
                        obj.HingePart2.Glove.CanCollide = false
                        obj.HingePart2.Glove.CFrame = player.Character.HumanoidRootPart.CFrame
                        wait(1) -- Задержка между телепортациями
                    end
                end
            end
        end
    end
})
local Tab = Window:CreateTab("Мастерство", "gem")
local Section = Tab:CreateSection("Флеш")
local Button = Tab:CreateButton({
   Name = "Получить 1 и 3 челлендж(может зависнуть)",
   Callback = function()
    if game.Players.LocalPlayer.leaderstats.Glove.Value == "Flash" then
        for i = 1, 1000000 do
            game:GetService("ReplicatedStorage").FlashTeleport:FireServer()
        end
    else
        Rayfield:Notify({
            Title = "Ошибка",
            Content = "У вас должен быть экипирован Flash!",
            Duration = 6.5,
            Image = "circle-x",
        })
    end
   end,
})

local Toggle = Tab:CreateToggle({
   Name = "Фарм 2 челленджа",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
    if game.Players.LocalPlayer.leaderstats.Glove.Value == "Flash" then
        local Already = false
        local def = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
        while Value do
        
            for _, obj in pairs(game.Players:GetPlayers()) do
                if obj.Name ~= game.Players.LocalPlayer.Name then
                    game:GetService("ReplicatedStorage").FlashTeleport:FireServer()
                    wait(0.8)
                    game.Players.LocalPlayer.Character.HumanoidRootPart:PivotTo(obj.Character.HumanoidRootPart.CFrame)
                    wait(0.5)
                    game:GetService("ReplicatedStorage").FlashHit:FireServer(obj.Character["Left Arm"])
                    wait(0.5)
                    game.Players.LocalPlayer.Character.HumanoidRootPart:PivotTo(def)
                    task.wait(3)
                end
            end
        end
    end
   end,
})
