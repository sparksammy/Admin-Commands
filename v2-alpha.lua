-- Made by Sparksammy(Official)
-- Licensed in the MIT license.
local admins = {"SparksammyOfficial", "BlocksWatcher11"}
local children = game.Players:GetChildren()
local admin = nil --Default admin is nothing
local player = nil --Default Player is nothing
print("Admin script begin")

if table.find(script.Parent.Name) ~= nil then
	print("Admin found! Name: " .. script.Parent.Name)
	admin = script.Parent.Name
	player = game.Players:FindFirstChild(admin)
	wait(.1)
	player.Chatted:connect(function(message)
		if player.Character.Name == admin then
			if string.match(message, "$ff") then --Basic forcefield command
				char = game.Players[string.gsub(message, "$ff ", "")].Character
				Instance.new("ForceField", char) --So we can forcefield him, where char is the parent!			
			elseif string.match(message, "$unff") then
				char = game.Players[string.gsub(message, "$unff ", "")].Character
				char.ForceField:Destroy();
			elseif string.match(message, "$kill") then
				char = game.Players[string.gsub(message, "$kill ", "")].Character
				char.Humanoid.Health = 0
			else
				print("Command not found!")
			end
		end
	end)
end

print("Admin script end")
