--Admin Commands
--By Sam_Lord and Sparksammy

admin = "Sam_Lord" --Change this to the person who is admin (one per script)

game.Players.ChildAdded:connect(function(player)
	player.Chatted:connect(function(message)
		if player.Character.Name == admin then
			if string.match(message, "$punish") then
				game.Players[string.gsub(message, "$punish ", "")].TeamColor = game.Teams["Punished"].TeamColor
				game.Workspace[string.gsub(message, "$punish ", "")].Humanoid.Health = 0	
			end
		end
	end)
end)
game.Players.ChildAdded:connect(function(player)
	player.Chatted:connect(function(message)
		if player.Character.Name == admin then
			if string.match(message, "$unpunish") then
				game.Players[string.gsub(message, "$unpunish ", "")].TeamColor = game.Teams["Builders"].TeamColor
				game.Workspace[string.gsub(message, "$unpunish ", "")].Humanoid.Health = 0				
			end
		end
	end)
end)

game.Players.ChildAdded:connect(function(player)
	player.Chatted:connect(function(message)
		if player.Character.Name == admin then
			if string.match(message, "$ff") then
				char = game.Players[string.gsub(message, "$ff ", "")].Character
				Instance.new("ForceField", char)			
			end
		end
	end)
end)

game.Players.ChildAdded:connect(function(player)
	player.Chatted:connect(function(message)
		if player.Character.Name == admin then
			if string.match(message, "$unff") then
				char = game.Players[string.gsub(message, "$unff ", "")].Character
				char.ForceField:Destroy();		
			end
		end
	end)
end)

game.Players.ChildAdded:connect(function(player)
	player.Chatted:connect(function(message)
		if player.Character.Name == admin then
			if string.match(message, "$kick") then
				char = game.Players[string.gsub(message, "$kick ", "")].Character
				game.Workspace[char.Name].Parent = game.Lighting;				
			end
		end
	end)
end)

game.Players.ChildAdded:connect(function(player)
	player.Chatted:connect(function(message)
		if player.Character.Name == admin then
			if string.match(message, "$unkick") then
				char = game.Players[string.gsub(message, "$unkick ", "")].Character
				game.Lighting[char.Name].Parent = game.Workspace;				
			end
		end
	end)
end)

game.Players.ChildAdded:connect(function(player)
	player.Chatted:connect(function(message)
		if player.Character.Name == admin then
			if string.match(message, "$god") then
				char = game.Players[string.gsub(message, "$god ", "")].Character
				char.Humanoid.MaxHealth = 999999
				char.Humanoid.Health = 999999			
			end
		end
	end)
end)

game.Players.ChildAdded:connect(function(player)
	player.Chatted:connect(function(message)
		if player.Character.Name == admin then
			if string.match(message, "$ungod") then
				char = game.Players[string.gsub(message, "$normalhealth ", "")].Character
				char.Humanoid.MaxHealth = 100
				char.Humanoid.Health = 100			
			end
		end
	end)
end)

game.Players.ChildAdded:connect(function(player)
	player.Chatted:connect(function(message)
		if player.Character.Name == admin then
			if string.match(message, "$kill") then
				char = game.Players[string.gsub(message, "$kill ", "")].Character
				char.Humanoid.Health = 0			
			end
		end
	end)
end)

game.Players.ChildAdded:connect(function(player)
	player.Chatted:connect(function(message)
		if player.Character.Name == admin then
			if string.match(message, "$ban") then
				char = game.Players[string.gsub(message, "$ban ", "")].Character
				while wait(1) do
				game.Workspace[char.Name].Parent = game.Lighting;				
				end
			end
		end
	end)
end)

game.Players.ChildAdded:connect(function(player)
	player.Chatted:connect(function(message)
		if player.Character.Name == admin then
			if string.match(message, "$unban") then
				char = game.Players[string.gsub(message, "$unban ", "")].Character
				while wait(1) do
				game.Lighting[char.Name].Parent = game.Workspace;				
				end
			end
		end
	end)
end)

game.Players.ChildAdded:connect(function(player)
	player.Chatted:connect(function(message)
		if player.Character.Name == admin then
			if string.match(message, "$run") then
				char = game.Players[string.gsub(message, "$run ", "")].Character
				char.Humanoid.WalkSpeed = 50			
			end
		end
	end)
end)

game.Players.ChildAdded:connect(function(player)
	player.Chatted:connect(function(message)
		if player.Character.Name == admin then
			if string.match(message, "$walk") then
				char = game.Players[string.gsub(message, "$walk ", "")].Character
				char.Humanoid.WalkSpeed = 16			
			end
		end
	end)
end)


game.Players.PlayerAdded:connect(function(player)
	player.Chatted:connect(function(message)
		if player.Character.Name == admin then
		if string.match(message:lower(), "$daball") then
			for i,v in pairs(game:GetService('Players'):GetChildren()) do
   				Players = v.Name
  				AnimationId = "248263260"
  				local Anim = Instance.new("Animation")
  				Anim.AnimationId = "rbxassetid://"..AnimationId
				local k = game.Players[Players].Character.Humanoid:LoadAnimation(Anim)
 				k:Play()
 				k:AdjustSpeed(1)
				wait(15)
				k:Stop()
			end
			end
		end
	end)
end)

game.Players.ChildAdded:connect(function(player)
	player.Chatted:connect(function(message)
		if player.Character.Name == admin then
			if string.match(message, "$explode") then
				char = game.Players[string.gsub(message, "$explode ", "")].Character
				Instance.new("Explosion", char.Torso)	
				char.Humanoid.Health = 0
				a.BlastRadius = 10
				a.BlastRadius = 7
				a.BlastPressure = 10
				a.Position = char.HumanoidRootPart.Position
			end
		end
	end)
end)

game.Players.ChildAdded:connect(function(player)
	player.Chatted:connect(function(message)
		if player.Character.Name == admin then
			if string.match(message, "$fling") then
				char = game.Players[string.gsub(message, "$fling ", "")].Character
				local b = Instance.new("BodyPosition", char.HumanoidRootPart)
				b.position = Vector3.new(math.huge, math.huge, math.huge)
				b.maxForce = Vector3.new(500000000, 500000000, 500000000)
			end
		end
	end)
end)

game.Players.ChildAdded:connect(function(player)
	player.Chatted:connect(function(message)
		if player.Character.Name == admin then
			if string.match(message, "$respawn") then
				char = game.Players[string.gsub(message, "$respawn ", "")].Character
				player = game.Players[string.gsub(message, "$respawn ", "")]
				player:LoadCharacter()			
			end
		end
	end)
end)

game.Players.ChildAdded:connect(function(player)
	player.Chatted:connect(function(message)
		if player.Character.Name == admin then
			if string.match(message, "$msg") then
				txt = string.gsub(message, "$msg ", "")
				msg = Instance.new("Message", game.Workspace)
				msg.Text = txt	
				wait(7)
				msg:Destroy()
			end
		end
	end)
end)

game.Players.ChildAdded:connect(function(player)
	player.Chatted:connect(function(message)
		if player.Character.Name == admin then
			if string.match(message, "$hint") then
				txt = string.gsub(message, "$hint ", "")
				msg = Instance.new("Hint", game.Workspace)
				msg.Text = txt	
				wait(7)
				msg:Destroy()
			end
		end
	end)
end)

game.Players.ChildAdded:connect(function(player)
	player.Chatted:connect(function(message)
		if player.Character.Name == admin then
			if string.match(message, "$unmsg") then
				txt = string.gsub(message, "$unmsg ", "")
				game.Workspace.Message:Destroy()
				game.Workspace.Hint:Destroy()
			end
		end
	end)
end)

game.Players.ChildAdded:connect(function(player)
	player.Chatted:connect(function(message)
		if player.Character.Name == admin then
			if string.match(message, "$cmds") then
				msg = Instance.new("Message", game.Workspace)
				msg.Text = "Commands: $(un)punish, $(un)ff, $(un)kick, $(un)god, $kill, $(un)ban, $run, $walk, $daball"
				wait(9)
				msg.Text = "$explode, $fling, $respawn, $msg, $hint, $unmsg."
				wait(6)
				msg:Destroy()
			end
		end
	end)
end)

print("Admin Commands by Sparksammy Team has loaded. This admin is: " .. admin);
