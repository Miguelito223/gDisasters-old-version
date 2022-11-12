
AddCSLuaFile("autorun/server/world_init.lua") -- REMOVE THIS FILE AND YOU WILL DIE A HORRIBLE DEATH

GLOBAL_SYSTEM = {
				["Atmosphere"] 	= {
						["Wind"]        = {
											["Speed"]=0,
											["Direction"]=Vector(1,0,0),
											["NextThink"]=CurTime()
										   },
										
					
						["Pressure"]    = 100000,
						
						["Temperature"] = 23,
						
						["Humidity"]    = 25,
					
						["BRadiation"]  = 0.1
				}
				}
				
GLOBAL_SYSTEM_TARGET = {
				["Atmosphere"] 	= {
						["Wind"]        = {
											["Speed"]=0,
											["Direction"]=Vector(1,0,0)
										   },
					
						["Pressure"]    = 100000,
						
						["Temperature"] = 23,
						
						["Humidity"]    = 25,
					
						["BRadiation"]  = 0.1
				}
				}
				
GLOBAL_SYSTEM_ORIGINAL = {
				["Atmosphere"] 	= {
						["Wind"]        = {
											["Speed"]=0,
											["Direction"]=Vector(1,0,0)
										   },
					
						["Pressure"]    = 100000,
						
						["Temperature"] = 23,
						
						["Humidity"]    = 25,
					
						["BRadiation"]  = 0.1
				}
				}

concommand.Add("setlight", function(ply, cmd, args)
	setMapLight(args[1])
end)

concommand.Add("setposme", function(ply, cmd, args)
	ply:SetPos(ply:GetEyeTrace().HitPos)
end)

concommand.Add("unfreeze", function()

	for k, v in pairs(ents.GetAll()) do
		if v:GetPhysicsObject():IsValid() then v:GetPhysicsObject():EnableMotion(true) v:GetPhysicsObject():Wake() end 
	end
end)

concommand.Add("getpropnum", function()

	print(#ents.FindByClass("prop_physics"))
end)

concommand.Add("ent_getinfo", function(ply)

	local ent = ply:GetEyeTrace().Entity
	PrintTable(ent:GetTable())
end)

concommand.Add("freeze", function()

	for k, v in pairs(ents.GetAll()) do
		if v:GetPhysicsObject():IsValid() then v:GetPhysicsObject():EnableMotion(false)  end 
	end
end)

concommand.Add("getmap", function(test, test2, test3)
	print(game.GetMap())
end)

hook.Add( "Initialize", "GdisastersSkyFix", function()

if GetConVar("gdisasters_atmosphere"):GetInt() <= 0 then return end
	
if GetConVar("gdisasters_atmosphere"):GetInt() <= 1 then 


	if #ents.FindByClass("env_skypaint")<1 then
		local ent = ents.Create("env_skypaint")
		ent:SetPos(Vector(0,0,0))
		ent:Spawn()
	end

	RunConsoleCommand( "sv_skyname", "painted" )

	if ( game.ConsoleCommand ) then

		game.ConsoleCommand( "sv_skyname", "painted\n" )

	end

	end
	
end )

hook.Add( "InitPostEntity", "gDisastersInitPostEvo", function()

if GetConVar("gdisasters_atmosphere"):GetInt() <= 0 then return end
	
if GetConVar("gdisasters_atmosphere"):GetInt() <= 1 then 


	local oldCleanUpMap = game.CleanUpMap
	
	game.CleanUpMap = function(dontSendToClients, ExtraFilters)
		dontSendToClients = (dontSendToClients != nil and dontSendToClients or false)

		if ( ExtraFilters != nil ) then
			table.insert(ExtraFilters, "env_skypaint")
			table.insert(ExtraFilters, "light_environment")
		else
			ExtraFilters = { "env_skypaint", "light_environment" }
		end

		oldCleanUpMap(dontSendToClients, ExtraFilters)
	end

 end

end )






















