game:GetService("StarterGui"):SetCore("SendNotification", { 
	Title = "Notification";
	Text = "Executed! Thanks for using FlawedWare! This is a Anti-ban.";
	Icon = "rbxthumb://type=Asset&id=5107182114&w=150&h=150"})
Duration = 16;
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

game:GetService("StarterGui"):SetCore("SendNotification", { 
	Title = "Notification";
	Text = "Executed! Thanks for using FlawedWare! This Is a Swear Bypass.";
	Icon = "rbxthumb://type=Asset&id=5107182114&w=150&h=150"})
Duration = 16;
local Bypasses = {
    ["ass"] = "as{{aieixzvzx:s}}",
    ["asshole"] = "as{{aieixzvzx:shole}}",
    ["bitch"] = "bit{{aieixzvzx:ch}}",
	["boobs"] = "boo{{aieixzvzx:bs}}",
	["booba"] = "boo{{aieixzvzx:ba}}",
	["lmao"] = "lma{{aieixzvzx:o}}",
    ["cock"] = "co{{aieixzvzx:ck}}",
    ["cunt"] = "cu{{aieixzvzx:nt}}",
    ["dick"] = "di{{zczxczvz:ck}}",
    ["dyke"] = "dy{{aieixzvzx:ke}}",
    ["faggot"] = "fa{{aieixzvzx:ggot}}",
    ["fuck"] = "fu{{aieixzvzx:ck}}",
    ["gaylord"] = "gayl{{aieixzvzx:ord}}",
    ["cum"] = "cu{{aieixzvzx:m}}",
    ["sex"] = "se{{aieixzvzx:x}}",
    ["hitler"] = "hit{{aieixzvzx:ler}}",
    ["cum"] = "cu{{aieixzvzx:m}}",
    ["kike"] = "ki{{aieixzvzx:ke}}",
    ["motherfucker"] = "motherf{{aieixzvzx:ucker}}",
    ["nigga"] = "ni{{aieixzvzx:gga}}",
    ["nigger"] = "ni{{aieixzvzx:gger}}",
    ["piss"] = "p{{aieixzvzx:iss}}",
    ["penis"] = "pe{{aieixzvzx:nis}}",
    ["pussy"] = "pu{{aieixzvzx:ssy}}",
    ["shit"] = "sh{{aieixzvzx:it}}",
    ["slut"] = "sl{{aieixzvzx:ut}}",
    ["whore"] = "who{{aieixzvzx:re}}",
    ["discord"] = "disco{{aieixzvzx:rd}}",
    ["kys"] = "k{{aieixzvzx:ys}}",
    ["slave"] = "sla{{aieixzvzx:ve}}",
    ["niggers"] = "ni{{aieixzvzx:ggers}}",
    ["kill"] = "ki{{aieixzvzx:ll}}",
    ["date"] = "da{{aieixzvzx:te}}",
    ["raped"] = "ra{{aieixzvzx:ped}}",
    ["rape"] = "ra{{aieixzvzx:pe}}",
    ["hentai"] = "hen{{aieixzvzx:tai}}",
    ["pornhub"] = "po{{aieixzvzx:rnhub}}",
    ["childporn"] = "childpo{{aieixzvzx:rn}}",
    ["fucking"] = "fuc{{aieixzvzx:king}}",
    ["tits"] = "ti{{aieixzvzx:ts}}",
    ["discord.com"] = "disco{{aieixzvzx:rd.com}}",
    ["wtf"] = "wt{{aieixzvzx:f}}",
    ["will"] = "wi{{aieixzvzx:ll}}",
    ["porn"] = "po{{aieixzvzx:rn}}",
    ["gay"] = "g{{aieixzvzx:ay}}",
    ["1"] = "on{{aieixzvzx:e}}",
    ["2"] = "t{{aieixzvzx:wo}}",
    ["3"] = "th{{aieixzvzx:ree}}",
    ["4"] = "fo{{aieixzvzx:ur}}",
    ["5"] = "fi{{aieixzvzx:ve}}",
    ["6"] = "s{{aieixzvzx:ix}}",
    ["7"] = "se{{aieixzvzx:ven}}",
    ["8"] = "ei{{aieixzvzx:ght}}",
    ["9"] = "ni{{aieixzvzx:ne}}",
    ["10"] = "te{{aieixzvzx:n}}",
    ["daddy"] = "da{{aieixzvzx:ddy}}",
    ["mommy"] = "mo{{aieixzvzx:mmy}}",
    ["kkk"] = "k{{aieixzvzx:kk}}",
    ["suck"] = "suc{{aieixzvzx:k}}",
    ["sucking"] = "suc{{aieixzvzx:king}}",
    ["ㅤ"] = "ㅤ{{aieixzvzx:ㅤ}}",
    ["marry"] = "mar{{aieixzvzx:ry}}",
    ["kiss"] = "kis{{aieixzvzx:s}}",
    ["blow"] = "bl{{aieixzvzx:ow}}",
    ["athiest"] = "athi{{aieixzvzx:est}}",
    ["jewish"] = "je{{aieixzvzx:wish}}",
    ["christian"] = "chri{{aieixzvzx:stian}}",
    ["muslim"] = "mu{{aieixzvzx:slim}}",
    ["jurdism"] = "jur{{aieixzvzx:dism}}",
    ["islam"] = "isl{{aieixzvzx:am}}",
    ["christianity"] = "chri{{aieixzvzx:stianity}}",
    ["bomb"] = "bom{{aieixzvzx:b}}",
    ["dick"] = "d{{aieixzvzx:icc}}",
    ["you"] = "yo{{aieixzvzx:u}}",
    ["child"] = "chi{{aieixzvzx:ld}}",
    ["my"] = "m{{aieixzvzx:y}}",
    ["racism"] = "raci{{aieixzvzx:sm}}",
    ["hoe"] = "h{{aieixzvzx:oe}}",
    ["sucide"] = "suc{{aieixzvzx:ide}}",
    ["your"] = "yo{{aieixzvzx:ur}}",
    ["sugar"] = "sug{{aieixzvzx:ar}}",
    ["on"] = "o{{aieixzvzx:n}}",
    ["riding"] = "rid{{aieixzvzx:ing}}",
    ["he"] = "h{{aieixzvzx:e}}",
    ["she"] = "sh{{aieixzvzx:e}}",
    ["is"] = "i{{aieixzvzx:s}}",
    ["all"] = "al{{aieixzvzx:l}}",
    ["nazi"] = "naz{{aieixzvzx:i}}",
    ["gore"] = "gor{{aieixzvzx:e}}",
    ["black"] = "bla{{aieixzvzx:ck}}",
    ["last"] = "la{{aieixzvzx:st}}",
    ["night"] = "n{{aieixzvzx:ight}}",
    ["fucked"] = "fu{{aieixzvzx:cked}}",
    ["peg"] = "pe{{aieixzvzx:g}}",
    ["pegged"] = "pe{{aieixzvzx:gged}}",
    ["finger"] = "fin{{aieixzvzx:ger}}",
    ["fingered"] = "fin{{aieixzvzx:gered}}",
    ["because"] = "beca{{aieixzvzx:use}}",
    ["eat"] = "ea{{aieixzvzx:t}}",
    ["am"] = "a{{aieixzvzx:m}}",
    ["gonna"] = "go{{aieixzvzx:nna}}",
    ["have"] = "hav{{aieixzvzx:e}}",
    ["cuddle"] = "cud{{aieixzvzx:dle}}",
    ["lick"] = "lic{{aieixzvzx:k}}",
    ["balls"] = "ba{{aieixzvzx:lls}}",
    ["wanna"] = "wa{{aieixzvzx:nna}}",
    ["bend"] = "ben{{aieixzvzx:d}}",
    ["over"] = "ov{{aieixzvzx:er}}",
    ["baby"] = "ba{{aieixzvzx:by}}",
    ["babe"] = "ba{{aieixzvzx:be}}",
    ["sexy"] = "se{{aieixzvzx:xy}}",
    ["this"] = "th{{aieixzvzx:is}}",
    ["attractive"] = "attr{{aieixzvzx:active}}"

    


}

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Remote = ReplicatedStorage:FindFirstChild("SayMessageRequest", true)

local ChatBypass; ChatBypass = hookmetamethod(Remote, "__namecall", function(self, ...)
    local Method = getnamecallmethod()
    local Arguments = {...}
    
    if self == Remote and Method == "FireServer" then
        local Message = Arguments[1]
        local Split = Message:split(" ")
        local FinalMessage = ""

        for _, x in next, Split do
            for _, Bypass in next, Bypasses do
                if x:lower() == _ then
                    if x:upper() ~= x then
                        Message = Message:gsub(x, Bypass)
                        FinalMessage = Message .. " ng"
                    else
                        Message = Message:gsub(x, Bypass):upper()
                        FinalMessage = Message:gsub(x, Bypass):upper() .. " ng"
                    end
                end
            end
        end
        
        if FinalMessage ~= "" then
            Arguments[1] = FinalMessage
        end
        
        return ChatBypass(self, unpack(Arguments))
    end
    
    return ChatBypass(self, ...)
end)
