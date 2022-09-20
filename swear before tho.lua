--sacred isnt here

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