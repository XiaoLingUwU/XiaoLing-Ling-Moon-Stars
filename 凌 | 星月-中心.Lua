game:GetService("StarterGui"):SetCore("SendNotification",{ 
     Title = "挂机、动糊", 
     Text = "已开启", 
     Icon = "rbxassetid://16060333448", 
     Duration = 60, 
     Callback = bindable, 
     Button1 = "谢谢", 
     Button2 = "关闭" 
 }) 
 
  
           local camera = workspace.CurrentCamera 
 local blurAmount = 10 
 local blurAmplifier = 5 
 local lastVector = camera.CFrame.LookVector 
  
 local motionBlur = Instance.new("BlurEffect", camera) 
  
 local runService = game:GetService("RunService") 
  
 workspace.Changed:Connect(function(property) 
  if property == "CurrentCamera" then 
   print("Changed") 
   local camera = workspace.CurrentCamera 
   if motionBlur and motionBlur.Parent then 
    motionBlur.Parent = camera 
   else 
    motionBlur = Instance.new("BlurEffect", camera) 
   end 
  end 
 end) 
  
 runService.Heartbeat:Connect(function() 
  if not motionBlur or motionBlur.Parent == nil then 
   motionBlur = Instance.new("BlurEffect", camera) 
  end 
  
  local magnitude = (camera.CFrame.LookVector - lastVector).magnitude 
  motionBlur.Size = math.abs(magnitude)*blurAmount*blurAmplifier/2 
  lastVector = camera.CFrame.LookVector 
 end) 
  
 print("反挂机已经为你开好了 喵~") 
                 local vu = game:GetService("VirtualUser") 
                 game:GetService("Players").LocalPlayer.Idled:connect(function() 
                    vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame) 
                    wait(1) 
                    vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame) 
                 end) 
  
   local OrionLib =   loadstring(game:HttpGet("https://raw.githubusercontent.com/XiaoLingUwU/Cloud-based-114514/main/%E6%B5%85%E7%BB%BF%E7%B2%89%E8%89%B2%E8%83%8C%E6%99%AF.lua"))() 
 local Window = OrionLib:MakeWindow({IntroText = "星月 | 万物生&凌月降.",Name = "凌 | 星月-中心[Beta]", HidePremium = false, SaveConfig = true, ConfigFolder = "无敌的脚本😱😱😱😱😱"}) 
 local about = Window:MakeTab({ 
     Name = "信息/介绍", 
     Icon = "rbxassetid://7743878358", 
     PremiumOnly = false 
 }) 
  
 about:AddParagraph("您的用户名:"," "..game.Players.LocalPlayer.Name.."") 
 about:AddParagraph("您的注入器:"," "..identifyexecutor().."") 
 about:AddParagraph("您当前服务器的ID"," "..game.GameId.."") 
 about:AddParagraph("琳琳&Evade!生日快乐.","") 
 about:AddParagraph("大家多多支持","") 
 about:AddParagraph("小凌的新脚本为半缝合","") 
 
  local Tab = Window:MakeTab({ 
   Name = "通用/玩家", 
   Icon = "rbxassetid://7733970494", 
   PremiumOnly = false 
   }) 
  
 local Section = Tab:AddSection({ 
  
         Name = "By：小凌.AEX" 
  
 }) 
 Tab:AddSlider({ 
  
         Name = "速度展示：", 
  
         Min = 16, 
  
         Max = 200, 
  
         Default = 16, 
  
         Color = Color3.fromRGB(127,251,111), 
  
         Increment = 1, 
  
         ValueName = "数值", 
  
         Callback = function(Value) 
  
                 game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value 
  
         end     
  
 }) 
 Tab:AddSlider({ 
  
         Name = "跳跃高度", 
  
         Min = 50, 
  
         Max = 200, 
  
         Default = 50, 
  
         Color = Color3.fromRGB(127,251,111), 
  
         Increment = 1, 
  
         ValueName = "数值", 
  
         Callback = function(Value) 
  
                 game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value 
  
         end     
  
 }) 
 
 Tab:AddButton({ 
         Name = "控制玩家(小凌汉化)谢谢", 
         Callback = function()        loadstring(game:HttpGet("https://raw.githubusercontent.com/flyspeed7/XiaoLing-CODE.tk3usj449llspw1/main/%E7%8E%A9%E5%AE%B6%E6%8E%A7%E5%88%B6%20%E6%B1%89%E5%8C%96.txt"))() 
           end 
 }) 
  
 Tab:AddTextbox({ 
         Name = "移动速度", 
         Default = "Speed", 
         TextDisappear = true, 
         Callback = function(Value) 
                 game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value 
         end          
 }) 
  
  Tab:AddTextbox({ 
         Name = "跳跃高度", 
         Default = "Jump", 
         TextDisappear = true, 
         Callback = function(Value) 
                 game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value 
         end          
 }) 
  
 Tab:AddTextbox({ 
         Name = "最大血量", 
         Default = "HP", 
         TextDisappear = true, 
         Callback = function(Value) 
                 game.Players.LocalPlayer.Character.Humanoid.MaxHealth = Value 
         end          
 }) 
  
 Tab:AddTextbox({ 
         Name = "当前血量", 
         Default = "U.HP", 
         TextDisappear = true, 
         Callback = function(Value) 
                 game.Players.LocalPlayer.Character.Humanoid.Health = Value 
         end          
 }) 
  
 Tab:AddTextbox({ 
         Name = "重力设置", 
         Default = "GR", 
         TextDisappear = true, 
         Callback = function(Value) 
                 game.Workspace.Gravity = Value 
         end 
 }) 
 
 Tab:AddButton({ 
         Name = "回满血", 
         Callback = function() 
 game.Players.LocalPlayer.Character.Humanoid.Health = game.Players.LocalPlayer.Character.Humanoid.MaxHealth  
 end 
 }) 
  
 Tab:AddButton({         
 Name = "工具包",         
 Callback = function()        loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/BTools.txt"))()                   
      end 
 }) 
 Tab:AddButton({ 
         Name = "透视", 
         Callback = function() 
      loadstring(game:HttpGet('https://pastebin.com/raw/MA8jhPWT'))() 
           end     
 }) 
 Tab:AddButton({ 
         Name = "飞车", 
         Callback = function() loadstring(game:HttpGet("https://pastebin.com/raw/MHE1cbWF"))() 
         end 
 }) 
 Tab:AddButton({ 
         Name = "甩飞", 
         Callback = function() loadstring(game:HttpGet("https://pastebin.com/raw/GnvPVBEi"))() 
         end 
 }) 
 Tab:AddButton({ 
         Name = "无限跳", 
         Callback = function() 
 loadstring(game:HttpGet("https://pastebin.com/raw/V5PQy3y0", true))() 
     end 
 }) 
  
 Tab:AddButton({ 
       Name = "阿尔宙斯V3.0 UI", 
       Callback = function() 
       loadstring(game:HttpGet("https://raw.githubusercontent.com/AZYsGithub/chillz-workshop/main/Arceus%20X%20V3"))() 
       end 
 }) 
  
 Tab:AddButton({ 
   Name = "光影_2", 
   Default = false, 
   Callback = function() 
     loadstring(game:HttpGet("https://raw.githubusercontent.com/MZEEN2424/Graphics/main/Graphics.xml"))() 
   end 
 }) 
  
 Tab:AddButton({ 
   Name = "美丽天空", 
   Callback = function() 
     -- Roblox Graphics Enhancher 
     local light = game.Lighting 
     for i, v in pairs(light:GetChildren()) do 
       v:Destroy() 
     end 
  
     local ter = workspace.Terrain 
     local color = Instance.new("ColorCorrectionEffect") 
     local bloom = Instance.new("BloomEffect") 
     local sun = Instance.new("SunRaysEffect") 
     local blur = Inst 
   end 
 }) 
  
 Tab:AddButton({ 
         Name = "超高画质", 
         Callback = function() 
 loadstring(game:HttpGet("https://pastebin.com/raw/jHBfJYmS"))() 
 end 
 })     
  
 Tab:AddButton({ 
         Name = "Acrylix（通用）", 
         Callback = function() 
 loadstring(game:HttpGet('https://raw.githubusercontent.com/3dsonsuce/acrylix/main/Acrylix'))() 
 end 
 }) 
 Tab:AddButton({ 
   Name = "全游戏通用范围", 
   Callback = function () 
     local ScreenGui = Instance.new("ScreenGui") 
 local main = Instance.new("Frame") 
 local label = Instance.new("TextLabel") 
 local Hitbox =  
 Instance.new("TextButton") 
  
 ScreenGui.Parent = game.CoreGui 
  
 main.Name = "main" 
 main.Parent = ScreenGui 
 main.BackgroundColor3 = Color3.fromRGB(255, 0, 0) 
 main.Position = UDim2.new(0.40427351, 0, 0.34591195, 0) 
 main.Size = UDim2.new(0, 100, 0, 100) 
 main.Active = true 
 main.Draggable = true 
  
 label.Name = "label" 
 label.Parent = main 
 label.BackgroundColor3 = Color3.fromRGB(139,0,0) 
 label.Size = UDim2.new(0, 100, 0, 20) 
 label.Font = Enum.Font.SourceSans 
 label.Text = "Hitbox Gui" 
 label.TextColor3 = Color3.fromRGB(0, 0, 0) 
 label.TextScaled = true 
 label.TextSize = 5.000 
 label.TextWrapped = true 
  
 Hitbox.Name = "Hitbox" 
 Hitbox.Parent = main 
 Hitbox.BackgroundColor3 = Color3.fromRGB(0, 0, 255) 
 Hitbox.Position = UDim2.new(0.114285722, 0, 0.372448981, 0) 
 Hitbox.Size = UDim2.new(0, 90, 0, 40) 
 Hitbox.Font = Enum.Font.SourceSans 
 Hitbox.Text = "Hitbox" 
 Hitbox.TextColor3 = Color3.fromRGB(0, 0, 0) 
 Hitbox.TextSize = 40.000 
 Hitbox.MouseButton1Down:connect(function() 
         _G.HeadSize = 20 
  
         _G.Disabled = true 
  
  
 game:GetService('RunService').RenderStepped:connect(function() 
                 if _G.Disabled then 
                         for i,v in next, game:GetService('Players'):GetPlayers() do 
                                 if v.Name ~= game:GetService('Players').LocalPlayer.Name then 
                                         pcall(function() 
                                                 v.Character.HumanoidRootPart.Size = Vector3.new(_G.HeadSize,_G.HeadSize,_G.HeadSize) 
                                                 v.Character.HumanoidRootPart.Transparency = 0.7 
                                                 v.Character.HumanoidRootPart.BrickColor = BrickColor.new("Really black") 
                                                 v.Character.HumanoidRootPart.Material = "Neon" 
                                                 v.Character.HumanoidRootPart.CanCollide = false 
                                         end) 
                                 end 
                         end 
                 end 
         end) 
 end) 
   end 
 }) 
  
 Tab:AddButton({ 
         Name = "空范围", 
         Callback = function() 
   loadstring(game:HttpGet("https://raw.githubusercontent.com/BINjiaobzx6/BINjiao/main/%E7%A9%BA%E9%80%8F%E8%A7%86.lua"))() 
 end 
 }) 
 Tab:AddButton({ 
   Name = "普通范围", 
   Callback = function () 
 loadstring(game:HttpGet("https://pastebin.com/raw/jiNwDbCN"))() 
   end 
 }) 
 Tab:AddButton({ 
   Name = "中等范围", 
   Callback = function () 
 loadstring(game:HttpGet("https://pastebin.com/raw/x13bwrFb"))() 
   end 
 }) 
 Tab:AddButton({ 
     Name="全图范围", 
     Callback=function() 
 loadstring(game:HttpGet("https://pastebin.com/raw/KKY9EpZU"))() 
     end 
 }) 
 Tab:AddButton({ 
     Name="终极范围", 
     Callback=function() 
 loadstring(game:HttpGet("https://pastebin.com/raw/CAQ9x4A7"))() 
     end 
 }) 
Tab:AddButton({ 
         Name = "墙行走", 
         Callback = function() 
 loadstring(game:HttpGet("https://pastebin.com/raw/zXk4Rq2r"))() 
 end 
 }) 
  
 Tab:AddToggle({ 
         Name = "夜视", 
         Default = false, 
         Callback = function(Value) 
                 if Value then 
                     game.Lighting.Ambient = Color3.new(1, 1, 1) 
                 else 
                     game.Lighting.Ambient = Color3.new(0, 0, 0) 
                 end 
         end 
 }) 
  
 Tab:AddButton({ 
         Name = "通用ESP", 
         Callback = function() 
         loadstring(game:HttpGet('https://raw.githubusercontent.com/Lucasfin000/SpaceHub/main/UESP'))() 
         end 
 }) 
  
 Tab:AddButton({ 
         Name = "电脑键盘", 
         Callback = function() 
      loadstring(game:HttpGet("https://raw.githubusercontent.com/advxzivhsjjdhxhsidifvsh/mobkeyboard/main/main.txt", true))() 
           end     
 }) 
  
 Tab:AddToggle({ 
         Name = "穿墙", 
         Default = false, 
         Callback = function(Value) 
                 if Value then 
                     Noclip = true 
                     Stepped = game.RunService.Stepped:Connect(function() 
                             if Noclip == true then 
                                     for a, b in pairs(game.Workspace:GetChildren()) do 
                         if b.Name == game.Players.LocalPlayer.Name then 
                             for i, v in pairs(game.Workspace[game.Players.LocalPlayer.Name]:GetChildren()) do 
                                 if v:IsA("BasePart") then 
                                     v.CanCollide = false 
                                 end 
                             end 
                         end 
                     end 
                             else 
                                     Stepped:Disconnect() 
                             end 
                     end) 
             else 
                     Noclip = false 
             end 
         end 
 }) 
  
 Tab:AddButton({ 
         Name = "甩飞别人", 
         Callback = function() 
      loadstring(game:HttpGet("https://pastebin.com/raw/GnvPVBEi"))() 
           end     
 }) 
  
 Tab:AddButton({ 
         Name = "转圈fling GUI", 
         Callback = function() 
 loadstring(game:HttpGet('https://pastebin.com/raw/r97d7dS0', true))() 
 end 
 }) 
  
 Tab:AddButton({ 
   Name = "稳定穿墙", 
   Callback = function() 
     local Workspace = game:GetService("Workspace") 
 local Players = game:GetService("Players") 
 local Clipon = true 
  
 Stepped = game:GetService("RunService").Stepped:Connect(function() 
         if not Clipon == false then 
                 for a, b in pairs(Workspace:GetChildren()) do 
         if b.Name == Players.LocalPlayer.Name then 
         for i, v in pairs(Workspace[Players.LocalPlayer.Name]:GetChildren()) do 
         if v:IsA("BasePart") then 
         v.CanCollide = false 
         end end end end 
         else 
                 Stepped:Disconnect() 
         end 
 end) 
   end 
 }) 
  
 Tab:AddButton({ 
     Name="我要紫砂", 
     Callback=function() 
         game.Players.LocalPlayer.Character.Humanoid.Health=0 
 HumanDied = true 
     end 
 }) 
  
 Tab:AddButton({ 
         Name = "不死但不完全不死（点紫砂去除）", 
         Callback = function() 
 HumanDied = false 
 end 
 }) 
  
 Tab:AddButton({ 
         Name = "跟踪玩家", 
         Callback = function() 
               loadstring(game:HttpGet("https://pastebin.com/raw/F9PNLcXk"))() 
           end 
 }) 
  
 Tab:AddButton({ 
         Name = "伪名说话", 
         Callback = function() 
 loadstring(game:HttpGet(('https://pastefy.ga/zCFEwaYq/raw'),true))() 
         end  
 }) 
  
 Tab:AddButton({ 
         Name = "人物无敌", 
         Callback = function() 
      loadstring(game:HttpGet('https://pastebin.com/raw/H3RLCWWZ'))() 
         end     
 }) 
  
 Tab:AddButton({ 
         Name = "无敌", 
         Callback = function() 
 local lp = game:GetService "Players".LocalPlayer 
 if lp.Character:FindFirstChild "Head" then 
     local char = lp.Character 
     char.Archivable = true 
     local new = char:Clone() 
     new.Parent = workspace 
     lp.Character = new 
     wait(2) 
     local oldhum = char:FindFirstChildWhichIsA "Humanoid" 
     local newhum = oldhum:Clone() 
     newhum.Parent = char 
     newhum.RequiresNeck = false 
     oldhum.Parent = nil 
     wait(2) 
     lp.Character = char 
     new:Destroy() 
     wait(1) 
     newhum:GetPropertyChangedSignal("Health"):Connect( 
         function() 
             if newhum.Health <= 0 then 
                 oldhum.Parent = lp.Character 
                 wait(1) 
                 oldhum:Destroy() 
             end 
         end) 
     workspace.CurrentCamera.CameraSubject = char 
     if char:FindFirstChild "Animate" then 
         char.Animate.Disabled = true 
         wait(.1) 
         char.Animate.Disabled = false 
     end 
     lp.Character:FindFirstChild "Head":Destroy() 
 end 
 end 
 }) 
  
 Tab:AddButton({ 
         Name = "点击传送工具", 
         Callback = function() 
 mouse = game.Players.LocalPlayer:GetMouse() tool = Instance.new("Tool") tool.RequiresHandle = false tool.Name = "小凌NB" tool.Activated:connect(function() local pos = mouse.Hit+Vector3.new(0,2.5,0) pos = CFrame.new(pos.X,pos.Y,pos.Z) game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos end) tool.Parent = game.Players.LocalPlayer.Backpack 
         end 
 }) 
  
 Tab:AddButton({ 
         Name = "Dex", 
         Callback = function() 
 loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/Dex%20Explorer.txt"))() 
 end 
 }) 
  
local Tab= Window:MakeTab({
	Name = "速度传奇",
	Icon = "rbxassetid://7733956134",
	PremiumOnly = false
})
Tab:AddButton({	
Name = "The Lgondbs-Hub",	
Callback = function()	
  	loadstring(game:HttpGet("https://pastebin.com/raw/mqGPg69N"))()
     end
})
Tab:AddButton({	
Name = "Legends-Of-hub",	
Callback = function()	
  	loadstring(game:HttpGet("https://raw.githubusercontent.com/SkoterScripts/Legends-Of-Speed-Script/main/Script%20For%20Legends%20Of%20Speed.txt"))() 
     end
})
Tab:AddButton({	
Name = "Data-Ez-Hub",	
Callback = function()	
  	loadstring(game:HttpGet(('https://raw.githubusercontent.com/debug42O/Ez-Industries-Launcher-Data/master/Launcher.lua'),true))()
     end
})
Tab:AddButton({	
Name = "NewIce-Hub",	
Callback = function()	
  	loadstring(game:HttpGet("https://raw.githubusercontent.com/IceMae17/NewIceHub/main/Brookhaven"))()
     end
})
Tab:AddButton({	
Name = "Tbao-Hub",	
Callback = function()	
  	loadstring(game:HttpGet("https://raw.githubusercontent.com/tbao143/thaibao/main/TbaoHublegendsofspeed"))() 
     end
})
Tab:AddButton({	
Name = "NewIce-电脑可用",	
Callback = function()	
  	loadstring(game:HttpGet("https://raw.githubusercontent.com/IceMae17/NewIceHub/main/Brookhaven"))()
     end
})
local Tab= Window:MakeTab({
	Name = "忍者传奇",
	Icon = "rbxassetid://7733798901",
	PremiumOnly = false
})
local Section = Tab:AddSection({ 
  
         Name = "以下不是内置" 
  
 }) 
Tab:AddButton({	
Name = "ALLHACK-Hub",	
Callback = function()	
  	loadstring(game:HttpGet("https://raw.githubusercontent.com/NukeVsCity/TheALLHACKLoader/main/NukeLoader"))()
     end
})
Tab:AddButton({	
Name = "Proxima-Hub",	
Callback = function()	
  	loadstring(game:HttpGet("https://raw.githubusercontent.com/TrixAde/Proxima-Hub/main/Main.lua"))()
     end
})
Tab:AddButton({	
Name = "Space-Hub",	
Callback = function()	
  	loadstring(game:HttpGet("https://raw.githubusercontent.com/Lucasfin000/SpaceHub/main/spacvehubloader"))()
     end
})
Tab:AddButton({	
Name = "ExtremeAntonis-Hub",	
Callback = function()	
  	loadstring(game:HttpGet("https://raw.githubusercontent.com/ExtremeAntonis/loader/main/loader.lua"))()
     end
})
local Section = Tab:AddSection({ 
  
         Name = "内置脚本[/TP 各种岛屿]" 
  
 }) 
Tab:AddButton ({
	Name = "附魔岛",
	Callback = function ()
	 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(83.028564453125, 766.3915405273438, -128.62686157226562)
	end
})
Tab:AddButton ({
	Name = "星界岛",
	Callback = function ()
	 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(144.43006896972656, 2014.091064453125, 247.5571746826172)
	end
})
Tab:AddButton ({
	Name = "神秘岛",
	Callback = function ()
	 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(162.7420654296875, 4047.7841796875, 13.378257751464844)
	end
})
Tab:AddButton ({
	Name = "太空岛",
	Callback = function ()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(184.0364227294922, 5657.091796875, 161.54000854492188)
	end
})
Tab:AddButton ({
	Name = "冻土岛",
	Callback = function ()
	 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(186.7508544921875, 9285.08984375, 158.16287231445312)
	end
})
Tab:AddButton ({
	Name = "沙暴",
	Callback = function ()
	 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(183.7511749267578, 17686.236328125, 147.5008087158203)
	end
})
Tab:AddButton ({
	Name = "雷暴",
	Callback = function ()
	 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(186.87640380859375, 24069.9296875, 158.25582885742188)
	end
})
Tab:AddButton ({
	Name = "远古炼狱岛",
	Callback = function ()
	 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(166.48052978515625, 28256.201171875, 160.25828552246094)
	end
})
Tab:AddButton ({
	Name = "午夜暗影岛",
	Callback = function ()
	 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(182.76388549804688, 33206.88671875, 136.66305541992188)
	end
})
Tab:AddButton ({
	Name = "神秘灵魂岛",
	Callback = function ()
	 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(157.39967346191406, 39317.4765625, 146.05630493164062)
	end
			
})
	Tab:AddButton ({
	Name = "冬季奇迹岛",
	Callback = function ()
	 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(168.73797607421875, 46010.4609375, 158.589599609375)
	end
})
	Tab:AddButton ({
	Name = "黄金大师岛",
	Callback = function ()
	 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(184.56202697753906, 52607.671875, 166.47279357910156)
	end
})
	Tab:AddButton ({
	Name = "龙传奇岛",
	Callback = function ()
	 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(166.83065795898438, 59594.58984375, 150.16586303710938)
	end
})
	Tab:AddButton ({
	Name = "赛博传奇岛",
	Callback = function ()
	 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(167.66766357421875, 66669.0703125, 142.27223205566406)
	end
})
	Tab:AddButton ({
	Name = "天岚超能岛",
	Callback = function ()
	 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(182.09237670898438, 70271.0625, 157.14857482910156)
	end
})
	Tab:AddButton ({
	Name = "混沌传奇岛",
	Callback = function ()
	 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(177.88784790039062, 74442.7578125, 143.346435546875)
	end
})
	Tab:AddButton ({
	Name = "灵魂融合岛",
	Callback = function ()
	 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(183.39129638671875, 79746.890625, 163.01148986816406)
	end
})
	Tab:AddButton ({
	Name = "黑暗元素岛",
	Callback = function ()
	 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(169.4972381591797, 83198.890625, 170.53890991210938)
	end
})
	Tab:AddButton ({
	Name = "禅心岛",
	Callback = function ()
	 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(173.4744873046875, 87050.9765625, 141.89602661132812)
	end
})
Tab:AddButton ({
	Name = "炽热漩涡之岛",
	Callback = function ()
	 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(178.33023071289062, 91245.96875, 152.53775024414062)
	end
})
local Tab= Window:MakeTab({
	Name = "力量传奇",
	Icon = "rbxassetid://7733788742",
	PremiumOnly = false
})
Tab:AddButton({	
Name = "Speed-Hub_X",	
Callback = function()	
  	loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/Speed%20Hub%20X.lua"))()
     end
})
local Section = Tab:AddSection({ 
  
         Name = "以下为内置脚本" 
  
 }) 
Tab:AddToggle({ 
         Name = "自动举重[不传送]", 
         Default = false, 
         Callback = function(Value) 
                 local part = Instance.new('Part', workspace)
part.Size = Vector3.new(500, 20, 530.1)
part.Position = Vector3.new(0, 1000, 133.15)
part.CanCollide = true
part.Anchored = true

game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = part.CFrame + Vector3.new(0, 15, 0)

local a = true
local rs = game:GetService("RunService").RenderStepped
if a == true then
while rs:wait() do
for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
if v.ClassName == "Tool" and v.Name == "Weight" then
v.Parent = game.Players.LocalPlayer.Character
end
end
game:GetService("Players").LocalPlayer.muscleEvent:FireServer("rep")
end
end

         end 
 }) 
  
  local Tab= Window:MakeTab({ 
         Name = "刀刃球", 
         Icon = "rbxassetid://7733675107", 
         PremiumOnly = false 
 }) 
local Section = Tab:AddSection({ 
  
         Name = "以下脚本目前可用" 
  
 }) 
 Tab:AddButton({ 
   Name = "BDOLL-HUB", 
   Callback = function () 
     _G.UI_Size = 200 -- config ui size 
 loadstring(game:HttpGet("https://raw.githubusercontent.com/3345-c-a-t-s-u-s/-beta-/main/AutoParry.lua"))() 
   end 
 }) 
 Tab:AddButton({ 
   Name = "红圈格挡V3", 
   Callback = function () 
 loadstring(game:HttpGet("https://raw.githubusercontent.com/1f0yt/community/main/RedCircleBlock"))() 
   end 
 }) 
Tab:AddButton({	
Name = "ScouT-Hub",	
Callback = function()	
  	loadstring(game:HttpGet(("https://raw.githubusercontent.com/Kozukiremboukk/Aqui-mesml/main/blades")))()
     end
})
Tab:AddButton({	
Name = "Pitbull-Hub",	
Callback = function()	
  	loadstring(game:HttpGet("https://raw.githubusercontent.com/SoyAdriYT/PitbullHub/main/Scripting", true))() 
     end
})
local Tab= Window:MakeTab({
	Name = "死亡球",
	Icon = "rbxassetid://7733779668",
	PremiumOnly = false
})
Tab:AddButton({	
Name = "Op脚本_已绕过反作弊",	
Callback = function()	
  	loadstring(game:HttpGet("https://raw.githubusercontent.com/sirapobsriumang/Death-Bal/main/Op-Script-by-me"))() 
     end
})
Tab:AddButton({	
Name = "LOLking-Hub",	
Callback = function()	
  	loadstring(game:HttpGet("https://raw.githubusercontent.com/LOLking123456/Death/main/Ball"))()
     end
})
local Tab= Window:MakeTab({
	Name = "枪球",
	Icon = "rbxassetid://7734068495",
	PremiumOnly = false
})
Tab:AddButton({	
Name = "自动打击",	
Callback = function()	
  	loadstring(game:HttpGet("https://raw.githubusercontent.com/Turtle-Secure/Gun-Ball/main/.lua"))()
     end
})