--Admin Commands
--By Sparksammy
_G.sAdmins = {"SparksammyOfficial"}  --Change this to the people who are admin

admin = unpack(_G.sAdmins)

game.Players.ChildAdded:connect(function(player) --When the player is added
	player.Chatted:connect(function(message) --and when he has chatted
		if player.Character.Name == admin then --if he is admin
			if string.match(message, "$punish") then --and says something that starts with $punish
				game.Players[string.gsub(message, "$punish ", "")].TeamColor = game.Teams["Punished"].TeamColor --Put on the punished team
				game.Workspace[string.gsub(message, "$punish ", "")].Humanoid.Health = 0	--Reset to take good measure
			end
		end
	end)
end)
game.Players.ChildAdded:connect(function(player)
	player.Chatted:connect(function(message)
		if player.Character.Name == admin then
			if string.match(message, "$unpunish") then --On $unpunish *
				game.Players[string.gsub(message, "$unpunish ", "")].TeamColor = game.Teams["Builders"].TeamColor --undo the action
				game.Workspace[string.gsub(message, "$unpunish ", "")].Humanoid.Health = 0 --Reset
			end
		end
	end)
end)

game.Players.ChildAdded:connect(function(player)
	player.Chatted:connect(function(message)
		if player.Character.Name == admin then
			if string.match(message, "$ff") then --Basic forcefield command
				char = game.Players[string.gsub(message, "$ff ", "")].Character --Notice the string.sub? that's pretty important, it gets the player's name.
				Instance.new("ForceField", char) --So we can forcefield him, where char is the parent!			
			end
		end
	end)
end)

game.Players.ChildAdded:connect(function(player)
	player.Chatted:connect(function(message)
		if player.Character.Name == admin then
			if string.match(message, "$unff") then
				char = game.Players[string.gsub(message, "$unff ", "")].Character
				char.ForceField:Destroy();	--Destroy the forcefield. (Same as deleting it in studio if done in regular script. If it were in a LocalScript, then it would only be on the client's side.)	
			end
		end
	end)
end)

game.Players.ChildAdded:connect(function(player)
	player.Chatted:connect(function(message)
		if player.Character.Name == admin then
			if string.match(message, "$kick") then
				char = game.Players[string.gsub(message, "$kick ", "")].Character
				game.Workspace[char.Name].Humanoid.Health = 0; --Kill
				wait(6) --Wait until character respawns
				game.Workspace[char.Name].Parent = game.Lighting; --Change parent to lighting so that we can recover the player later.				
			end
		end
	end)
end)

game.Players.ChildAdded:connect(function(player)
	player.Chatted:connect(function(message)
		if player.Character.Name == admin then
			if string.match(message, "$unkick") then
				char = game.Players[string.gsub(message, "$unkick ", "")].Character
				game.Lighting[char.Name].Parent = game.Workspace;				--Get the player back in the game. Note that theres no dot before [char.Name]. That's just the way it is
			end
		end
	end)
end)

game.Players.ChildAdded:connect(function(player)
	player.Chatted:connect(function(message)
		if player.Character.Name == admin then
			if string.match(message, "$god") then
				char = game.Players[string.gsub(message, "$god ", "")].Character
				char.Humanoid.MaxHealth = 999999 --math.Huge kills the player for some reason
				char.Humanoid.Health = 999999 --Can be up to max health, that's why we need to set that up first.			
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
				char.Humanoid.Health = 100			--Just resets health
			end
		end
	end)
end)

game.Players.ChildAdded:connect(function(player)
	player.Chatted:connect(function(message)
		if player.Character.Name == admin then
			if string.match(message, "$kill") then
				char = game.Players[string.gsub(message, "$kill ", "")].Character
				char.Humanoid.Health = 0			--A classic
			end
		end
	end)
end)

game.Players.ChildAdded:connect(function(player)
	player.Chatted:connect(function(message)
		if player.Character.Name == admin then
			if string.match(message, "$ban") then
				char = game.Players[string.gsub(message, "$ban ", "")].Character
				while wait(1) do --Safer than 'while true do', basically a loop of code
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
				char.Humanoid.WalkSpeed = 50			--Make it so the character is faster at walking.
			end
		end
	end)
end)

game.Players.ChildAdded:connect(function(player)
	player.Chatted:connect(function(message)
		if player.Character.Name == admin then
			if string.match(message, "$walk") then
				char = game.Players[string.gsub(message, "$walk ", "")].Character
				char.Humanoid.WalkSpeed = 16			--Default speed.
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
  				AnimationId = "248263260" --The ID for the DAB animation
  				local Anim = Instance.new("Animation")
  				Anim.AnimationId = "rbxassetid://"..AnimationId --Note: this is how you combine strings!
				local k = game.Players[Players].Character.Humanoid:LoadAnimation(Anim)
 				k:Play() --Makes players dab!
 				k:AdjustSpeed(1)
				wait(15) --Wait 15 seconds
				k:Stop() --Stop
			end
			end
		end
	end)
end)

game.Players.ChildAdded:connect(function(player)
	player.Chatted:connect(function(message)
		if player.Character.Name == admin then
			if string.match(message, "$explode") then --Like nuke, except less violent!
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
			if string.match(message, "$sfling") then --Super fling!
				char = game.Players[string.gsub(message, "$sfling ", "")].Character
				local b = Instance.new("BodyPosition", char.HumanoidRootPart) --Create a 'BodyPosition' changer. Fancy talk for fling object.
				b.position = Vector3.new(math.huge, math.huge, math.huge) --Position to kill, sir?
				b.maxForce = Vector3.new(500000000, 500000000, 500000000) --Let's make the force even stronger (because it's super fling.)
			end
		end
	end)
end)

game.Players.ChildAdded:connect(function(player)
	player.Chatted:connect(function(message)
		if player.Character.Name == admin then
			if string.match(message, "$respawn") then --Respawn.
				char = game.Players[string.gsub(message, "$respawn ", "")].Character
				player = game.Players[string.gsub(message, "$respawn ", "")]
				player:LoadCharacter()			--Reload player
			end
		end
	end)
end)

game.Players.ChildAdded:connect(function(player)
	player.Chatted:connect(function(message)
		if player.Character.Name == admin then
			if string.match(message, "$msg") then
				txt = string.gsub(message, "$msg ", "") --create message
				msg = Instance.new("Message", game.Workspace) --change it's parent to be 'in game'
				msg.Text = txt --change text	
				wait(7) --wait 7 seconds
				msg:Destroy() --destroy
			end
		end
	end)
end)

game.Players.ChildAdded:connect(function(player)
	player.Chatted:connect(function(message)
		if player.Character.Name == admin then
			if string.match(message, "$hint") then --Same thing as message, but with hints!
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
			if string.match(message, "$unmsg") then --Clears a message!
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
			if string.match(message, "$cmds") then --List commands
				msg = Instance.new("Message", game.Workspace)
				msg.Text = "Commands: $(un)punish, $(un)ff, $(un)kick, $(un)god, $kill, $(un)ban, $run, $walk, $daball"
				wait(9) --wait 9 seconds, then change text
				msg.Text = "$explode, $fling, $respawn, $msg, $hint, $unmsg, $sfling."
				wait(8) --wait 8 seconds
				msg:Destroy() --destroy.
			end
		end
	end)
end)

game.Players.ChildAdded:connect(function(player)
	player.Chatted:connect(function(message)
		if player.Character.Name == admin then
			if string.match(message, "$fling") then --Regular fling.
				char = game.Players[string.gsub(message, "$fling ", "")].Character
				local b = Instance.new("BodyPosition", char.HumanoidRootPart)
				b.position = Vector3.new(math.huge, math.huge, math.huge)
				b.maxForce = Vector3.new(50000, 55000, 65000) --Lower force.
			end
		end
	end)
end)

print("Admin Commands by Sparksammy Team (Sparksammy/Sam_Lord) has loaded. This admin is: " .. admin);
