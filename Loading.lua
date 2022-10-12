   local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/naypramx/Ui__Project/Script/XeNonUi", true))()
local GUNNA = library:CreateWindow("Killer Hub - Check Item Blox Fruits",Enum.KeyCode.RightControl)
local Tab1 = GUNNA:CreateTab("Status")
local Page1 = Tab1:CreateSector("Main","left")


local placeId = game.PlaceId
if placeId == 2753915549 then
 World1 = true
elseif placeId == 4442272183 then
 World2 = true
elseif placeId == 7449423635 then
 World3 = true
end

Page1:AddLabel("Name : "..game.Players.LocalPlayer.Name)

if world1 then
Page1:AddLabel("World : 1")
end

if world2 then
Page1:AddLabel("World : 2")
end

if world2 then
Page1:AddLabel("World : 3")
end

Page1:AddLabel("Race : "..game:GetService("Players").LocalPlayer.Data.Race.Value)

Page1:AddLabel("Fruit : "..game.Players.LocalPlayer.Data.DevilFruit.Value)

Page1:AddLabel("Level : "..game.Players.localPlayer.Data.Level.Value)

Page1:AddLabel("Bounty : "..game:GetService("Players").LocalPlayer.leaderstats["Bounty/Honor"].Value)

local Page2 = Tab1:CreateSector("Sword","Right")

local Saber = Page2:AddLabel("❌ : Saber")
local Rengoku = Page2:AddLabel("❌ : Rengoku")
local Midnight_Blade = Page2:AddLabel("❌ : Midnight Blade")
local Dragon_Trident = Page2:AddLabel("❌ : Dragon Trident")
local Yama = Page2:AddLabel("❌ : Yama")
local Buddy_Sword = Page2:AddLabel("❌ : Buddy Sword")
local Canvander = Page2:AddLabel("❌ : Canvander")
local Twin_Hooks = Page2:AddLabel("❌ : Twin Hooks")
local Spikey_Trident = Page2:AddLabel("❌ : Spikey Trident")
local Hallow_Scythe = Page2:AddLabel("❌ : Hallow Scythe")
local Dark_Dagger = Page2:AddLabel("❌ : Dark Dagger")
local Tushita = Page2:AddLabel("❌ : Tushita")
local Cursed_Dual_Katana = Page2:AddLabel("❌ : Cursed Dual Katana")

spawn(function()
    while task.wait() do
        pcall(function()
            for i,v in pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventoryWeapons")) do
                if v.Name == "Saber" then
                    Saber:Set("✅ : Saber")
                end
                if v.Name == "Rengoku" then
                    Rengoku:Set("✅ : Rengoku")
                end
                if v.Name == "Midnight Blade" then
                    Midnight_Blade:Set("✅ : Midnight Blade")
                end
                if v.Name == "Dragon Trident" then
                    Dragon_Trident:Set("✅ : Dragon Trident")
                end
                if v.Name == "Yama" then
                    Yama:Set("✅ : Yama")
                end
                if v.Name == "Buddy Sword" then
                    Buddy_Sword:Set("✅ : Buddy Sword")
                end
                if v.Name == "Canvander" then
                    Canvander:Set("✅ : Canvander")
                end
                if v.Name == "Twin Hooks" then
                    Twin_Hooks:Set("✅ : Twin Hooks")
                end
                if v.Name == "Spikey Trident" then
                    Spikey_Trident:Set("✅ : Spikey Trident")
                end
                if v.Name == "Hallow Scythe" then
                    Hallow_Scythe:Set("✅ : Hallow Scythe")
                end
                if v.Name == "Dark Dagger" then
                    Dark_Dagger:Set("✅ : Dark Dagger")
                end
                if v.Name == "Tushita" then
                    Tushita:Set("✅ : Tushita")
                 end
                 if v.Name == "Cursed Dual Katana" then
                     Cursed_Dual_Katana.Set("✅ : Cursed Dual Katana")
                  end
                end
            end)
        end
    end)



local Page3 = Tab1:CreateSector("Quest","Left")

local Bartilo_Quest = Page3:AddLabel("❌ : Bartilo Quest")
local Don_Swan_Quest = Page3:AddLabel("❌ : Don Swan Quest")
local Kill_Don_Swan = Page3:AddLabel("❌ : Kill Don Swan")

spawn(function()
    while task.wait() do
        if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 3 then
            Bartilo_Quest:Set("✅ : Bartilo Quest")
        end

        if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetUnlockables").FlamingoAccess == nil then
            --Nothing
        else
            Don_Swan_Quest:Set("✅ : Don Swan Quest")
        end

        if game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("ZQuestProgress", "Check") == 1 then
            Kill_Don_Swan:Set("✅ : Kill Don Swan")
        end
    end
end)

local Page4 = Tab1:CreateSector("Sword Legendary","Right")

local Shisui = Page4:AddLabel("❌ : Shisui")
local Saddi = Page4:AddLabel("❌ : Saddi")
local Wando = Page4:AddLabel("❌ : Wando")
local True_Triple_Katana = Page4:AddLabel("❌ : True Triple Katana")

spawn(function()
    while task.wait() do
        pcall(function()
            for i,v in pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventoryWeapons")) do
                if v.Name == "Shisui" then
                    Shisui:Set("✅ : Shisui")
                end
                if v.Name == "Saddi" then
                    Saddi:Set("✅ : Saddi")
                end
                if v.Name == "Wando" then
                    Wando:Set("✅ : Wando")
                end
                if v.Name == "True Triple Katana" then
                    True_Triple_Katana:Set("✅ : True Triple Katana")
                end
            end
        end)
    end
end)

local Page5 = Tab1:CreateSector("Melee","Left")

local Superhuman = Page5:AddLabel("❌ : Superhuman")
local Death_Step = Page5:AddLabel("❌ : Death Step")
local Sharkman_Karate = Page5:AddLabel("❌ : Sharkman Karate")
local Electric_Claw = Page5:AddLabel("❌ : Electric Claw")
local Dragon_Talon = Page5:AddLabel("❌ : Dragon Talon")
local God Human = Page5:AddLabel("❌ : God Human")

spawn(function()
    while task.wait() do
        if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman",true) == 1 then
            Superhuman:Set("✅ : Superhuman")
        end
        if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep",true) == 1 then
            Death_Step:Set("✅ : Death Step")
        end
        if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate",true) == 1 then
            Sharkman_Karate:Set("✅ : Sharkman Karate")
        end
        if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw",true) == 1 then
            Electric_Claw:Set("✅ : Electric Claw")
        end
        if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon",true) == 1 then
            Dragon_Talon:Set("✅ : Dragon Talon")
        end
        if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodHuman",true) == 1 then
        end
    end
end)

local Page3 = Tab1:CreateSector("Gun","Right")

local Kabu_cha = Page3:AddLabel("❌ : Kabucha")
local Acidum_Rifle = Page3:AddLabel("❌ : Acidum Rifle")
local Bizarre_Rifle = Page3:AddLabel("❌ : Bizarre Rifle")

spawn(function()
    while task.wait() do
        pcall(function()
            for i,v in pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventoryWeapons")) do
                if v.Name == "Kabucha" then
                    Kabu_cha:Set("✅ : Kabucha")
                end
                if v.Name == "Acidum Rifle" then
                    Acidum_Rifle:Set("✅ : Acidum Rifle")
                end
                if v.Name == "Bizarre Rifle" then
                    Bizarre_Rifle:Set("✅ : Bizarre Rifle")
                end
            end
        end)
    end
end)



local Page4 = Tab1:CreateSector("Accessory","Left")

local Dark_Coat = Page4:AddLabel("❌ : Dark Coat")
local Ghoul_Mask = Page4:AddLabel("❌ : Ghoul Mask")
local Swan_Glass = Page4:AddLabel("❌ : Swan Glass")
local Pale_Scarf = Page4:AddLabel("❌ : Pale Scarf")
local Valkyrie_Helm = Page4:AddLabel("❌ : Valkyrie Helm")


spawn(function()
    while task.wait() do
        pcall(function()
            for i,v in pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventoryWeapons")) do
                if v.Name == "Saber" then
                    Dark_Coat:Set("✅ : Dark Coat")
                end
                if v.Name == "Ghoul Mask" then
                    Ghoul_Mask:Set("✅ : Ghoul Mask")
                end
                if v.Name == "Swan Glasses" then
                    Swan_Glass:Set("✅ : Swan Glass")
                end
                if v.Name == "Pale Scarf" then
                    Pale_Scarf:Set("✅ : Pale Scarf")
                end
                if v.Name == "Valkyrie Helmet" then
                    Valkyrie_Helm:Set("✅ : Valkyrie Helmet")
                end
            end
        end)
    end
end)
