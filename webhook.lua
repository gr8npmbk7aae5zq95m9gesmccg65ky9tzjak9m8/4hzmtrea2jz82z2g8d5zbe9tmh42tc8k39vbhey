game.Players.PlayerAdded:Connect(function(plr)
    local character = plr.Character or plr.CharacterAdded:Wait()
        end)
       
        local webhookcheck =
        is_sirhurt_closure and "s" or pebc_execute and "p" or syn and "s" or
        secure_load and "s" or
        KRNL_LOADED and "k" or
        SONA_LOADED and "s" or
        "e"
 
     local url = webhook
 
     local data = {
        ["content"] = "",
             ["embeds"] = {{
                 ["title"] = "**Pet Simulator X Stat Tracker**",
                 ["description"] = "Sending first webhook in 60 seconds...", 
                 ["type"] = "rich",
                 ["color"] = tonumber(0x663399),
                },
            }
        
    }
local newdata = game:GetService("HttpService"):JSONEncode(data)

local headers = {
   ["content-type"] = "application/json"
}
request = http_request or request or HttpPost or syn.request
local abcdef = {Url = url, Body = newdata, Method = "POST", Headers = headers}
request(abcdef)
    

        _G.Tracking = 'Fantasy Coins' 
        _G.trackD = 'Diamonds'
        _G.trackC = 'Coins'
        _G.trackT = 'Tech Coins'
        _G.trackh = 'Halloween Candy'

        local waitTime = 60
        local currentTime = 0
        local startc; local endc; local coin; local difc; local tablec = {};
        local startd; local endd; local diamondc; local difd; local tabled = {};
        local startfc; local endfc; local fantasyc; local diffc; local tablefc = {};
        local startT; local endT; local tech; local dift; local tablet = {};
        local startH; local endh; local candy; local difh; local tableh = {};
        
        local function add(table)
            local value = 0
            for i, v in next, table do
                value = value + v
            end
            return value
        end
        local function comma_Value(amount)
            local formatted = amount
            while true do
                formatted, k = string.gsub(formatted, "^(-?%d+)(%d%d%d)", "%1,%2")
                if (k == 0) then
                    break
                end
            end
            return formatted
        end
        local username = game:GetService("Players").LocalPlayer.Name
        local egg1 = 120000
        local egg2 = 750000

 
        
        local function start()
            startfc = string.gsub(game.Players.LocalPlayer.PlayerGui.Main.Right[_G.Tracking].Amount.Text, ",", "")
            startd = string.gsub(game.Players.LocalPlayer.PlayerGui.Main.Right[_G.trackD].Amount.Text, ",", "")
            startc = string.gsub(game.Players.LocalPlayer.PlayerGui.Main.Right[_G.trackC].Amount.Text, ",", "")
            startT = string.gsub(game.Players.LocalPlayer.PlayerGui.Main.Right[_G.trackT].Amount.Text, ",", "")
            startH = string.gsub(game.Players.LocalPlayer.PlayerGui.Main.Right[_G.trackh].Amount.Text, ",", "")
        end
        local function ending()
            endfc = string.gsub(game.Players.LocalPlayer.PlayerGui.Main.Right[_G.Tracking].Amount.Text, ",", "")
            endd = string.gsub(game.Players.LocalPlayer.PlayerGui.Main.Right[_G.trackD].Amount.Text, ",", "")
            endc = string.gsub(game.Players.LocalPlayer.PlayerGui.Main.Right[_G.trackC].Amount.Text, ",", "")
            endT = string.gsub(game.Players.LocalPlayer.PlayerGui.Main.Right[_G.trackT].Amount.Text, ",", "")
            endh = string.gsub(game.Players.LocalPlayer.PlayerGui.Main.Right[_G.trackh].Amount.Text, ",", "") 
        end
        local function initialvalue()
            coin = string.gsub(game.Players.LocalPlayer.PlayerGui.Main.Right.Coins.Amount.Text, ",", "")
            diamondc = string.gsub(game.Players.LocalPlayer.PlayerGui.Main.Right.Diamonds.Amount.Text, ",", "")
            fantasyc = string.gsub(game.Players.LocalPlayer.PlayerGui.Main.Right["Fantasy Coins"].Amount.Text, ",", "")
            tech = string.gsub(game.Players.LocalPlayer.PlayerGui.Main.Right["Tech Coins"].Amount.Text, ",", "")
            candy = string.gsub(game.Players.LocalPlayer.PlayerGui.Main.Right["Halloween Candy"].Amount.Text, ",", "")
            costofegg2 = candy / egg1
            costofegg = candy / egg2
            enchants = diamondc / 10000
            rank = string.gsub(game.Players.LocalPlayer.PlayerGui.Main.Right.Rank.RankName.Text, ",", "")
        end
        local function dif()
            diffc = tonumber(endfc) - tonumber(startfc)
            difd = tonumber(endd) - tonumber(startd)
            difc = tonumber(endc) - tonumber(startc)
            dift = tonumber(endT) - tonumber(startT) 
            difh = tonumber(endh) - tonumber(startH)

            table.insert(tablec, difc)
            table.insert(tabled, difd)
            table.insert(tablefc, diffc)
            table.insert(tablet, dift)
            table.insert(tableh, difh)
        end

        while not _G.stop do
            

            initialvalue()
            start()
        print("Sending Webhook In 60 Seconds....")
            wait(60)
        
            currentTime = currentTime + waitTime
        
        ending()
        dif()
        print("Webhook Sent!!")
        local webhookcheck =
       is_sirhurt_closure and "s" or pebc_execute and "p" or syn and "s" or
       secure_load and "s" or
       KRNL_LOADED and "k" or
       SONA_LOADED and "s" or
       "e"

    local url = webhook

    local data = {
       ["content"] = "",
            ["embeds"] = {{
                ["title"] = "**Pet Simulator X Stat Tracker**",
                ["description"] = "Next webhook in 60 seconds...", 
                ["type"] = "rich",
                ["color"] = tonumber(0x663399),
                ["fields"] = {
                    {
                        ["name"] = "__Username__",
                        ["value"] = ("%s"):format(username),
                        ["inline"] = false
                    },
                    {
                        ["name"] = "__Halloween Candy__",
                        ["value"] = ("%s"):format(comma_Value(candy)),
                        ["inline"] = false
                    },
                    {
                        ["name"] = "__Tech Coins__",
                        ["value"] = ("%s"):format(comma_Value(endT)),
                        ["inline"] = false
                    },
                    {
                        ["name"] = "__Coins__",
                        ["value"] = ("%s"):format(comma_Value(endc)),
                        ["inline"] = false
                    },
                    {
                        ["name"] = "__Fantasy Coins__",
                        ["value"] = ("%s"):format(comma_Value(endfc)),
                        ["inline"] = false
                    },
                    {
                        ["name"] = "__Diamonds__",
                        ["value"] = ("%s"):format(comma_Value(endd)),
                        ["inline"] = false
                    },
                    {
                        ["name"] = "__Cursed Egg__",
                        ["value"] = ("%s"):format(comma_Value(math.round(costofegg))),
                        ["inline"] = false
                    }
                },
            },
            {
                ["title"] = "**Halloween Candy**",
                ["type"] = "rich",
                ["color"] = tonumber(0x663399),
                ["fields"] = {
                    {
                        ["name"] = "__Halloween Candy Earned In The Last Minute__",
                        ["value"] = comma_Value(difh),
                        ["inline"] = false
                    },
                    {
                        ["name"] = ("__Total Halloween Candy This %s Minute Session__"):format(math.round(currentTime/60)),
                        ["value"] = comma_Value(add(tableh)),
                        ["inline"] = false
                    },
                    {
                        ["name"] = "__Average Halloween Candy Per Minute__",
                        ["value"] = comma_Value(math.round(add(tableh) / math.round(currentTime/60))),
                        ["inline"] = false
                    }
                },
            }, 
        }
    }
    local newdata = game:GetService("HttpService"):JSONEncode(data)

    local headers = {
       ["content-type"] = "application/json"
    }
    request = http_request or request or HttpPost or syn.request
    local abcdef = {Url = url, Body = newdata, Method = "POST", Headers = headers}
    request(abcdef)
end
