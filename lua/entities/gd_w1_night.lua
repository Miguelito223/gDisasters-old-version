AddCSLuaFile()

DEFINE_BASECLASS( "base_anim" )

ENT.Spawnable		            	 = false        
ENT.AdminSpawnable		             = false 

ENT.PrintName		                 =  "Night"
ENT.Author			                 =  "Hmm"
ENT.Contact		                     =  "Hmm"
ENT.Category                         =  "Hmm"

ENT.Model                            =  "models/ramses/models/space/skysphere.mdl"                      
ENT.Mass                             =  100

function ENT:Initialize()	

	if (SERVER) then
	
	
		GLOBAL_SYSTEM_TARGET =  {["Atmosphere"] 	= {["Wind"]        = {["Speed"]=math.random(0,0),["Direction"]=Vector(0,0,0)}, ["Pressure"]    = 103000, ["Temperature"] = math.random(6,15), ["Humidity"]    = math.random(10,25), ["BRadiation"]  = 0.1}}

			
		self:SetModel(self.Model)
		self:PhysicsInit( SOLID_VPHYSICS )
		self:SetSolid( SOLID_VPHYSICS )
		self:SetMoveType( MOVETYPE_NONE  )
		self:SetUseType( ONOFF_USE )
		self:SetCollisionGroup(COLLISION_GROUP_IN_VEHICLE)
		
		self:SetModelScale(2.5, 0)		
		
		
		for k, v in pairs( ents.FindByClass( "env_sun" ) ) do
		v:Fire( "TurnOff", "", 0 )
		
		end
		
		local phys = self:GetPhysicsObject()
		
		
		if (phys:IsValid()) then
			phys:SetMass(self.Mass)
		end 
		
		self:SetNoDraw(true)
		
		self.Original_SkyData = {}
			self.Original_SkyData["TopColor"]    = Vector(0,0,0)
			self.Original_SkyData["BottomColor"] = Vector(0,0,0)
			self.Original_SkyData["SunSize"]     = 0.00
			self.Original_SkyData["DuskScale"]      = 0.00
			self.Original_SkyData["DuskIntensity"]   = 0.00
			self.Original_SkyData["SunColor"]       = Vector(0,0,0)
			self.Original_SkyData["StarScale"]       = 1
			self.Original_SkyData["StarFade"]        = 2

			
			
			
		self.Reset_SkyData    = {}
			self.Reset_SkyData["TopColor"]       = Vector(0.20,0.50,1.00)
			self.Reset_SkyData["BottomColor"]    = Vector(0.80,1.00,1.00)
			self.Reset_SkyData["SunSize"]     	 = 2
			self.Reset_SkyData["DuskScale"]      = 1
			self.Reset_SkyData["DuskIntensity"]  = 1
			self.Reset_SkyData["SunColor"]       = Vector(0.20,0.10,0.00)
			self.Reset_SkyData["StarScale"]      = 0.5
			self.Reset_SkyData["StarFade"]       = 1.5
			
			
			setMapLight("d")		
			
		gDisasters_CreateGlobalGFX("night", self)
		

		
		for i=0, 100 do
			timer.Simple(i/100, function()
				if !self:IsValid() then return  end
				paintSky_Fade(self.Original_SkyData, 0.05)
			end)
		end

		local data = {}
			data.Color = Color(0,0,0)
			data.DensityCurrent = 0.7
			data.DensityMax     = 0.7
			data.DensityMin     = 0.7
			data.EndMax         = 2000
			data.EndMin         = 2000
			data.EndMinCurrent  = 0
			data.EndMaxCurrent  = 0       

		gDisasters_CreateGlobalFog(self, data, true)	
		
		--self.Night = {}
		
		--self:FogSpawn()
		
	end
end

--[[function ENT:FogSpawn()

	local ent = ents.Create("edit_fog")
		ent:SetPos(Vector(0,0,-100000))
		local FogColor = Vector(0.0,0.0,0.0)	
		ent:SetFogColor( FogColor )
		ent:Spawn()
		ent:Activate()
		ent:SetNoDraw(true)
		table.insert(self.Night, ent)

end--]]

function ENT:SpawnFunction( ply, tr )
	if ( !tr.Hit ) then return end
	if GetConVar("gdisasters_atmosphere"):GetInt() <= 0 then return end
	
	if #ents.FindByClass("gd_w*") >= 1 then return end
	
	self.OWNER = ply
	local ent = ents.Create( self.ClassName )
	ent:SetPhysicsAttacker(ply)
	ent:SetPos( tr.HitPos + tr.HitNormal * 16 ) 
	ent:Spawn()
	ent:Activate()
	return ent
end

function ENT:Think()

	if (CLIENT) then
		
	end
	
	if (SERVER) then
		local t =  ( (1 / (engine.TickInterval())) ) / 66.666 * 0.1
		if !self:IsValid() then return end
	
		self:NextThink(CurTime() + t)
		return true
	end
end

function ENT:OnRemove()

	if (SERVER) then		
		local resetdata = self.Reset_SkyData
		GLOBAL_SYSTEM_TARGET=GLOBAL_SYSTEM_ORIGINAL

		for i=0, 40 do
			timer.Simple(i/100, function()
				paintSky_Fade(resetdata,0.05)
			end)
		end
		setMapLight("t")	
		
		for k, v in pairs( ents.FindByClass( "env_sun" ) ) do
		v:Fire( "TurnOn", "", 0 )
		
		end
		
		--[[for k, v in pairs(self.Night) do
		if v:IsValid() then v:Remove() end 
	
		end--]]

		
	end
	
	
	
end

function ENT:UpdateTransmitState()

	return TRANSMIT_ALWAYS

end






