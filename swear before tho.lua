game:GetService("StarterGui"):SetCore("SendNotification", { 
	Title = "Notification";
	Text = "Executed! Thanks for using FlawedWare! This is a Anti-ban.";
	Icon = "rbxthumb://type=Asset&id=5107182114&w=150&h=150"})
Duration = 16;
--sacred isnt here
--flaws1337 reuploaded this.
local logs = true --Enables logs or not
local ChatMain = require(game:GetService("Players").LocalPlayer.PlayerScripts.ChatScript.ChatMain)
local blacklistedFirstCharacter = {"a","b","c","d","e","f","g","h","i","j","k","m","n","l","o","p","q","r","s","t","u","v","w","x","y","z","A","B","C","D","E","F","G","H","I","J","K","M","N","L","O","P","Q","R","S","T","U","V","W","X","Y","Z","1","2","3","4","5","6","7","8","9","0","/","@","?",}

local fakeMessagePosted = Instance.new("BindableEvent")
fakeMessagePosted.Name = "MessagePosted"

local oldMessagePosted = ChatMain.MessagePosted
ChatMain.MessagePosted = fakeMessagePosted

function IsBlacklisted(char)
   if table.find(blacklistedFirstCharacter, char) ~= nil then
       return true
   end
   return false
end

fakeMessagePosted.Event:Connect(function(msg)
   if IsBlacklisted(string.sub(msg, 1, 1)) == true then
       if logs == true then
           printconsole("[LOGS]: Prevented "..tostring(msg).." to be in Chatted!")
       end
   elseif IsBlacklisted(string.sub(msg, 1, 1)) == false then
       oldMessagePosted:fire(msg)
       if logs == true then
           printconsole("[LOGS]: Sent command "..tostring(msg).." to be in Chatted!")
       end
   end
end)
--execute before using the bypasser
