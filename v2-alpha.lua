local admins = {"SparksammyOfficial", "BlocksWatcher11"}
local children = game.Players:GetChildren()
local admin = nil --Default admin is nothing
local player = nil --Default Player is nothing
print("Admin script begin")

if table.find(admins, script.Parent.Name) ~= nil then
	print("Admin found! Name: " .. script.Parent.Name)
	admin = script.Parent.Name
	player = game.Players:FindFirstChild(admin)
	wait(.1)
	--BEGIN COMMANDS
	player.Chatted:connect(function(message)
		if player.Character.Name == admin then
			if string.match(message, "$ff") then --Basic forcefield command
				local char = game.Players[string.gsub(message, "$ff ", "")].Character
				Instance.new("ForceField", char) --So we can forcefield him, where char is the parent!			
			elseif string.match(message, "$unff") then
				local char = game.Players[string.gsub(message, "$unff ", "")].Character
				char.ForceField:Destroy();
			elseif string.match(message, "$kill") then
				local char = game.Players[string.gsub(message, "$kill ", "")].Character
				char.Humanoid.Health = 0
			else
				print("Command not found!")
			end
		end
	end)
	--END COMMANDS
end

print("Admin script end")
