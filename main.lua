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
