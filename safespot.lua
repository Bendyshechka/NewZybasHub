if workspace:FindFirstChild("SafeBox") == nil then
local S = Instance.new("Part")
S.Name = "SafeBox"
S.Anchored = true
S.CanCollide = true
S.Transparency = .5
S.Position = Vector3.new(-5500, -5000, -5000)
S.Size = Vector3.new(21, 5, 21)
S.Parent = workspace

local S1 = Instance.new("Part")
S1.Name = "S1"
S1.Anchored = true
S1.CanCollide = true
S1.Transparency = .5
S1.Position = Vector3.new(-5499.91, -4991.5, -4989.09)
S1.Size = Vector3.new(20, 13, 2)
S1.Parent = workspace:FindFirstChild("SafeBox")

local S2 = Instance.new("Part")
S2.Name = "S2"
S2.Anchored = true
S2.CanCollide = true
S2.Transparency = .5
S2.Position = Vector3.new(-5510.27979, -4991.5, -5000.08984, -4.47034836e-07, 0, 0.999999881, 0, 1, 0, -0.999999881, 0, -3.69319451e-07)
S2.Size = Vector3.new(21, 14, 2)
S2.Rotation = Vector3.new(0, -90, 0)
S2.Parent = workspace:FindFirstChild("SafeBox")

local S3 = Instance.new("Part")
S3.Name = "S3"
S3.Anchored = true
S3.CanCollide = true
S3.Transparency = .5
S3.Position = Vector3.new(-5499.3, -4991.5, -5011.12)
S3.Size = Vector3.new(21, 13, 2)
S3.Parent = workspace:FindFirstChild("SafeBox")

local S4 = Instance.new("Part")
S4.Name = "S4"
S4.Anchored = true
S4.CanCollide = true
S4.Transparency = .5
S4.Position = Vector3.new(-5489.97559, -4991.5, -4999.52637, -4.37113883e-08, 0, 1, 0, 1, 0, -1, 0, -4.37113883e-08)
S4.Size = Vector3.new(22, 13, 2)
S4.Rotation = Vector3.new(0, -90, 0)
S4.Parent = workspace:FindFirstChild("SafeBox")

local S5 = Instance.new("Part")
S5.Name = "S5"
S5.Anchored = true
S5.CanCollide = true
S5.Transparency = .5
S5.Position = Vector3.new(-5499.39, -4984, -5000.07)
S5.Size = Vector3.new(24, 3, 24)
S5.Parent = workspace:FindFirstChild("SafeBox")
end

---Bed---

if workspace:FindFirstChild("Bed") == nil then
local Bed = Instance.new("Part")
Bed.Name = "Bed"
Bed.Anchored = true
Bed.Position = Vector3.new(-100019.5, 104, -1500)
Bed.Size = Vector3.new(0.01, 0.01, 10)
Bed.Parent = workspace

local B1 = Instance.new("Part")
B1.Name = "Bed1"
B1.Anchored = true
B1.Position = Vector3.new(-100025, 104, -1500)
B1.Size = Vector3.new(1, 6, 7)
B1.BrickColor = BrickColor.new("Burnt Sienna")
B1.Parent = workspace:FindFirstChild("Bed")

local B2 = Instance.new("Part")
B2.Name = "Bed2"
B2.Anchored = true
B2.Position = Vector3.new(-100023, 104.5, -1500)
B2.Size = Vector3.new(2, 1, 6)
B2.BrickColor = BrickColor.new("Mid gray")
B2.Parent = workspace:FindFirstChild("Bed")

local B3 = Instance.new("Part")
B3.Name = "Bed3"
B3.Anchored = true
B3.Position = Vector3.new(-100019, 104, -1500)
B3.Size = Vector3.new(11, 1, 7)
B3.BrickColor = BrickColor.new("Crimson")
B3.Parent = workspace:FindFirstChild("Bed")

local B4 = Instance.new("Part")
B4.Name = "Bed4"
B4.Anchored = true
B4.Position = Vector3.new(-100013, 104, -1500)
B4.Size = Vector3.new(1, 6, 7)
B4.BrickColor = BrickColor.new("Burnt Sienna")
B4.Parent = workspace:FindFirstChild("Bed")

local B5 = Instance.new("Part")
B5.Name = "Bed5"
B5.Anchored = true
B5.Position = Vector3.new(-100019, 103, -1500)
B5.Size = Vector3.new(11, 1, 7)
B5.BrickColor = BrickColor.new("Dark orange")
B5.Parent = workspace:FindFirstChild("Bed")
end

---SafeSpot---

if workspace:FindFirstChild("Safespot") == nil then
local Safespot = Instance.new("Part",workspace)
Safespot.Name = "Safespot"
Safespot.Position = Vector3.new(10000,-50,10000)
Safespot.Size = Vector3.new(500,10,500)
Safespot.Anchored = true
Safespot.CanCollide = true
Safespot.Transparency = .5

local Safespot1 = Instance.new("Part",workspace)
Safespot1.Name = "DefendPart"
Safespot1.Position = Vector3.new(10000.2, 13, 9752.45)
Safespot1.Size = Vector3.new(500, 117, 5)
Safespot1.Anchored = true
Safespot1.CanCollide = true
Safespot1.Transparency = .5
Safespot1.Parent = game.workspace.Safespot

local Safespot2 = Instance.new("Part",workspace)
Safespot2.Name = "DefendPart1"
Safespot2.Position = Vector3.new(10248.2, 13, 10002.4)
Safespot2.Size = Vector3.new(5, 117, 496)
Safespot2.Anchored = true
Safespot2.CanCollide = true
Safespot2.Transparency = .5
Safespot2.Parent = game.workspace.Safespot

local Safespot3 = Instance.new("Part",workspace)
Safespot3.Name = "DefendPart2"
Safespot3.Position = Vector3.new(9998.13, 13, 10247.2)
Safespot3.Size = Vector3.new(497, 117, 6)
Safespot3.Anchored = true
Safespot3.CanCollide = true
Safespot3.Transparency = .5
Safespot3.Parent = game.workspace.Safespot

local Safespot4 = Instance.new("Part",workspace)
Safespot4.Name = "DefendPart3"
Safespot4.Position = Vector3.new(9752.71, 13, 9999.28)
Safespot4.Size = Vector3.new(7, 117, 490)
Safespot4.Anchored = true
Safespot4.CanCollide = true
Safespot4.Transparency = .5
Safespot4.Parent = game.workspace.Safespot

local Safespot5 = Instance.new("Part",workspace)
Safespot5.Name = "DefendPart4"
Safespot5.Position = Vector3.new(10001.1, 76, 9999.66)
Safespot5.Size = Vector3.new(491, 10, 491)
Safespot5.Anchored = true
Safespot5.CanCollide = true
Safespot5.Transparency = .5
Safespot5.Parent = game.workspace.Safespot
end

---AntiVoidBadge---

if workspace:FindFirstChild("Psycho") == nil then
local Psycho = Instance.new("Part", workspace)
Psycho.Position = Vector3.new(17800.9082, 2947, -226.017517, -0.248515129, 0.00487846136, -0.968615651, 0.966844261, -0.0594091415, -0.248359889, -0.0587562323, -0.998221755, 0.0100474358)
Psycho.Name = "Psycho"
Psycho.Size = Vector3.new(2000, 1, 2000)
Psycho.Material = "ForceField"
Psycho.Anchored = true
Psycho.Transparency = 1
Psycho.CanCollide = false

local Kraken = Instance.new("Part", Psycho)
Kraken.Position = Vector3.new(221, 29, -12632)
Kraken.Name = "Kraken"
Kraken.Size = Vector3.new(2000, 1, 2000)
Kraken.Material = "ForceField"
Kraken.Anchored = true
Kraken.Transparency = 1
Kraken.CanCollide = false

local Retro1 = Instance.new("Part", Psycho)
Retro1.Position = Vector3.new(-16643.62890625, 770.0464477539062, 4707.8193359375)
Retro1.Name = "Retro1"
Retro1.Size = Vector3.new(2000, 1, 2000)
Retro1.Material = "ForceField"
Retro1.Anchored = true
Retro1.Transparency = 1
Retro1.CanCollide = false

local Retro2 = Instance.new("Part", Retro1)
Retro2.Position = Vector3.new(-16862.791015625, -7.879573822021484, 4791.55517578125)
Retro2.Name = "Retro2"
Retro2.Size = Vector3.new(2000, 1, 2000)
Retro2.Material = "ForceField"
Retro2.Anchored = true
Retro2.Transparency = 1
Retro2.CanCollide = false

local Retro3 = Instance.new("Part", Retro1)
Retro3.Position = Vector3.new(-28023.3046875, -219.92381286621094, 4906.6015625)
Retro3.Name = "Retro3"
Retro3.Size = Vector3.new(2000, 1, 2000)
Retro3.Material = "ForceField"
Retro3.Anchored = true
Retro3.Transparency = 1
Retro3.CanCollide = false
end

---Anti Void---

if workspace:FindFirstChild("BobWalk1") == nil then
local BobWalk1 = Instance.new("Part", workspace)
BobWalk1.CanCollide = false
BobWalk1.Anchored = true
BobWalk1.CFrame = CFrame.new(23.2798462, -19.8447475, 1.83554196, -1, 0, 0, 0, -1, 0, 0, 0, 1)
BobWalk1.Size = Vector3.new(1139.2593994140625, 1.5, 2048)
BobWalk1.Name = "BobWalk1"
BobWalk1.Transparency = 1

local BobWalk2 = Instance.new("Part", BobWalk1)
BobWalk2.CanCollide = false
BobWalk2.Anchored = true
BobWalk2.CFrame = CFrame.new(-458.458344, -9.25, 1.83554196, -1, 0, 0, 0, -1, 0, 0, 0, 1)
BobWalk2.Size = Vector3.new(1139.2593994140625, 1.5, 2048)
BobWalk2.Name = "BobWalk2"
BobWalk2.Transparency = 1

local BobWalk3 = Instance.new("Part", BobWalk1)
BobWalk3.CanCollide = false
BobWalk3.Anchored = true
BobWalk3.CFrame = CFrame.new(-690.65979, 47.25, 1.83554196, -1, 0, 0, 0, -1, 0, 0, 0, 1)
BobWalk3.Size = Vector3.new(674.8563232421875, 0.6048492789268494, 2048)
BobWalk3.Name = "BobWalk3"
BobWalk3.Transparency = 1

local BobWalk4 = Instance.new("Part", BobWalk1)
BobWalk4.CanCollide = false
BobWalk4.Anchored = true
BobWalk4.CFrame = CFrame.new(402.964996, 29.25, 222.310089, -1, 0, 0, 0, -1, 0, 0, 0, 1)
BobWalk4.Size = Vector3.new(379.88922119140625, 1.5, 160.8837127685547)
BobWalk4.Name = "BobWalk4"
BobWalk4.Transparency = 1

local BobWalk5 = Instance.new("Part", BobWalk1)
BobWalk5.CanCollide = false
BobWalk5.Anchored = true
BobWalk5.Orientation = Vector3.new(0, 0, 171.728)
BobWalk5.CFrame = CFrame.new(178.719162, -18.9417267, 1.83554196, -0.989596844, -0.143868446, 0, 0.143868446, -0.989596844, 0, 0, 0, 1)
BobWalk5.Size = Vector3.new(143.94830322265625, 1.5, 2048)
BobWalk5.Name = "BobWalk5"
BobWalk5.Transparency= 1

local BobWalk6 = Instance.new("Part", BobWalk1)
BobWalk6.CanCollide = false
BobWalk6.Anchored = true
BobWalk6.Orientation = Vector3.new(0, 0, 144.782)
BobWalk6.CFrame = CFrame.new(-309.152832, 15.4761791, 1.83554196, -0.816968799, -0.576681912, 0, 0.576681912, -0.816968799, 0, 0, 0, 1)
BobWalk6.Size = Vector3.new(110.13511657714844, 2.740000009536743, 2048)
BobWalk6.Name = "BobWalk6"
BobWalk6.Transparency = 1

local BobWalk7 = Instance.new("Part", BobWalk1)
BobWalk7.CanCollide = false
BobWalk7.Anchored = true
BobWalk7.Orientation = Vector3.new(0, 0, -147.002)
BobWalk7.CFrame = CFrame.new(174.971924, 5.34897423, 222.310089, -0.838688731, 0.544611216, 0, -0.544611216, -0.838688731, 0, 0, 0, 1)
BobWalk7.Size = Vector3.new(89.76103210449219, 1.5, 160.8837127685547)
BobWalk7.Name = "BobWalk7"
BobWalk7.Transparency = 1

local BobWalk8 = Instance.new("Part", BobWalk1)
BobWalk8.CanCollide = false
BobWalk8.Anchored = true
BobWalk8.Orientation = Vector3.new(0.001, -90.002, -138.076)
BobWalk8.CFrame = CFrame.new(402.965027, 5.49165154, 74.8157959, 2.98023224e-05, -1.14142895e-05, -1, -0.668144584, -0.744031429, -1.14142895e-05, -0.744031489, 0.668144584, -2.98023224e-05)
BobWalk8.Size = Vector3.new(74.23055267333984, 1, 379.88922119140625)
BobWalk8.Name = "BobWalk8"
BobWalk8.Transparency = 1

local BobWalk9 = Instance.new("Part", BobWalk1)
BobWalk9.CanCollide = false
BobWalk9.Anchored = true
BobWalk9.CFrame = CFrame.new(402.964996, 29.9136467, 121.981705, -1, 0, 0, 0, -1, 0, 0, 0, 1)
BobWalk9.Size = Vector3.new(379.88922119140625, 1.5, 39.77305603027344)
BobWalk9.Name = "BobWalk9"
BobWalk9.Transparency = 1

local BobWalk10 = Instance.new("WedgePart", BobWalk1)
BobWalk10.CanCollide = false
BobWalk10.Anchored = true
BobWalk10.Orientation = Vector3.new(-30.453, 117.775, -102.906)
BobWalk10.CFrame = CFrame.new(134.084229, -17.8583984, 94.3953705, 0.541196942, -0.354067981, 0.762719929, -0.840263784, -0.192543149, 0.506837189, -0.0325982571, -0.915184677, -0.401714325)
BobWalk10.Size = Vector3.new(1, 88.66793823242188, 34.42972946166992)
BobWalk10.Name = "BobWalk10"
BobWalk10.Transparency = 1

local BobWalk11 = Instance.new("WedgePart", BobWalk1)
BobWalk11.CanCollide = false
BobWalk11.Anchored = true
BobWalk11.Orientation = Vector3.new(-29.779, 117.596, -13.193)
BobWalk11.CFrame = CFrame.new(168.441879, 2.46393585, 125.815231, -0.350553155, -0.534268022, 0.769201458, -0.198098332, 0.845035911, 0.496660322, -0.915352523, 0.0217281878, -0.402067661)
BobWalk11.Size = Vector3.new(1, 0.9999924302101135, 82.1865463256836)
BobWalk11.Name = "BobWalk11"
BobWalk11.Transparency = 1

local BobWalk12 = Instance.new("WedgePart", BobWalk1)
BobWalk12.CanCollide = false
BobWalk12.Anchored = true
BobWalk12.Orientation = Vector3.new(26.893, -124.388, -108.64)
BobWalk12.CFrame = CFrame.new(206.315063, 26.9295502, 105.471031, 0.534210563, -0.415855825, -0.73599112, -0.845072925, -0.285055399, -0.452321947, -0.021697551, 0.863601387, -0.503708005)
BobWalk12.Size = Vector3.new(1, 13.53612232208252, 9.847718238830566)
BobWalk12.Name = "BobWalk12"
BobWalk12.Transparency = 1

local BobWalk13 = Instance.new("WedgePart", BobWalk1)
BobWalk13.CanCollide = false
BobWalk13.Anchored = true
BobWalk13.Orientation = Vector3.new(-26.893, 55.613, 108.64)
BobWalk13.CFrame = CFrame.new(165.965088, 2.12955856, 77.8575592, -0.53421092, -0.415855944, 0.735991359, 0.845073164, -0.285055757, 0.452322066, 0.0216975808, 0.863601625, 0.503708005)
BobWalk13.Size = Vector3.new(1, 13.53612232208252, 99.8001480102539)
BobWalk13.Name = "BobWalk13"
BobWalk13.Transparency = 1

local BobWalk14 = Instance.new("WedgePart", BobWalk1)
BobWalk14.CanCollide = false
BobWalk14.Anchored = true
BobWalk14.Orientation = Vector3.new(-0.001, 90.003, 48.072)
BobWalk14.CFrame = CFrame.new(172.67041, 5.49164963, 74.8157959, -4.58955765e-05, 2.05039978e-05, 1, 0.743987858, 0.668193102, 2.05039978e-05, -0.668193102, 0.743987858, -4.58955765e-05)
BobWalk14.Size = Vector3.new(1, 74.23055267333984, 80.699951171875)
BobWalk14.Name = "BobWalk14"
BobWalk14.Transparency = 1

local BobWalk15 = Instance.new("WedgePart", BobWalk1)
BobWalk15.CanCollide = false
BobWalk15.Anchored = true
BobWalk15.Orientation = Vector3.new(0, 0, 106.498)
BobWalk15.CFrame = CFrame.new(212.753906, 30.0632439, 121.981705, -0.283976078, -0.95883137, 0, 0.95883137, -0.283976078, 0, 0, 0, 1)
BobWalk15.Size = Vector3.new(1, 0.8520558476448059, 39.773048400878906)
BobWalk15.Name = "BobWalk15"
BobWalk15.Transparency = 1

local BobWalk16 = Instance.new("WedgePart", BobWalk1)
BobWalk16.CanCollide = false
BobWalk16.Anchored = true
BobWalk16.Orientation = Vector3.new(29.777, -62.406, -75.066)
BobWalk16.CFrame = CFrame.new(212.884216, 30.1233234, 121.984734, 0.544644356, 0.33412537, -0.769235253, -0.838644743, 0.223680317, -0.496630788, 0.00612583756, 0.915602207, 0.402038693)
BobWalk16.Size = Vector3.new(1, 36.08900451660156, 16.739320755004883)
BobWalk16.Name = "BobWalk16"
BobWalk16.Transparency = 1

local BobWalk17 = Instance.new("WedgePart", BobWalk1)
BobWalk17.CanCollide = false
BobWalk17.Anchored = true
BobWalk17.Orientation = Vector3.new(-29.777, 117.594, 75.066)
BobWalk17.CFrame = CFrame.new(174.83577, 5.55865097, 141.871262, -0.544644356, 0.33412537, 0.769235253, 0.838644743, 0.223680317, 0.496630788, -0.00612583756, 0.915602207, -0.402038693)
BobWalk17.Size = Vector3.new(1, 36.08900451660156, 82.1865463256836)
BobWalk17.Name = "BobWalk17"
BobWalk17.Transparency = 1

local BobWalk18 = Instance.new("WedgePart", BobWalk1)
BobWalk18.CanCollide = false
BobWalk18.Anchored = true
BobWalk18.Orientation = Vector3.new(30.453, -62.225, 102.906)
BobWalk18.CFrame = CFrame.new(165.427338, 2.97219658, 77.884697, -0.541196942, -0.354067981, -0.762719929, 0.840263784, -0.192543149, -0.506837189, 0.0325982571, -0.915184677, 0.401714325)
BobWalk18.Size = Vector3.new(1, 88.66793823242188, 47.76289749145508)
BobWalk18.Name = "BobWalk18"
BobWalk18.Transparency = 1
end

if workspace:FindFirstChild("VoidPart") == nil then
local VoidPart = Instance.new("Part", workspace)
VoidPart.Position = Vector3.new(-80.5, -10.005, -246.5)
VoidPart.Name = "VoidPart"
VoidPart.Size = Vector3.new(2048, 1, 2048)
VoidPart.Material = "ForceField"
VoidPart.Anchored = true
VoidPart.Transparency = 1
VoidPart.CanCollide = false

local VoidPart1 = Instance.new("Part", VoidPart)
VoidPart1.Position = Vector3.new(0,-50026.5,0)
VoidPart1.Name = "VoidPart1"
VoidPart1.Size = Vector3.new(2048,70,2048)
VoidPart1.Anchored = true
VoidPart1.Transparency = 1
VoidPart1.CanCollide = false

local TournamentAntiVoid = Instance.new("Part", VoidPart)
TournamentAntiVoid.Name = "TAntiVoid"
TournamentAntiVoid.Size = Vector3.new(2048, 15, 2048)
TournamentAntiVoid.Position = Vector3.new(3450, 59.009, 68)
TournamentAntiVoid.Anchored = true
TournamentAntiVoid.Transparency = 1
TournamentAntiVoid.CanCollide = false
end
