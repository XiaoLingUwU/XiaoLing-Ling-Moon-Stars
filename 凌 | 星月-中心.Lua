game:GetService("StarterGui"):SetCore("SendNotification",{ 
     Title = "挂机、动糊、进提、点击", 
     Text = "以上功能已全部为你打开", 
     Icon = "rbxassetid://16060333448", 
     Duration = 60, 
     Callback = bindable, 
     Button1 = "谢谢", 
     Button2 = "关闭" 
 }) 
  
 loadstring(game:HttpGet('https://pastes.io/raw/aek9i68ajk'))() 
  
 loadstring(game:HttpGet("https://raw.githubusercontent.com/boyscp/scriscriptsc/main/bbn.lua"))() 
  
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
 about:AddParagraph("小凌的新脚本为自制非缝合","") 
 
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
  