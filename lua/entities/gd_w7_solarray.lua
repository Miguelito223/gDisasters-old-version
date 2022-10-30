AddCSLuaFile()

DEFINE_BASECLASS( "base_anim" )

ENT.Spawnable		            	 = false        
ENT.AdminSpawnable		             = false 

ENT.PrintName		                 =  "Solar Ray"
ENT.Author			                 =  "Hmm"
ENT.Contact		                     =  "Hmm"
ENT.Category                         =  "Hmm"

ENT.Model                            =  "models/props_junk/PopCan01a.mdl"                      
ENT.Mass                             =  100

function ENT:Initialize()		
	
	
	if (SERVER) then
	
		GLOBAL_SYSTEM_TARGET =  {["Atmosphere"] 	= {["Wind"]        = {["Speed"]=math.random(60,80),["Direction"]=Vector(0,0,0)}, ["Pressure"]    = 101000, ["Temperature"] =300 , ["Humidity"]    = math.random(0,0), ["BRadiation"]  = 0.1}}

			
		self:SetModel(self.Model)
		self:PhysicsInit( SOLID_VPHYSICS )
		self:SetSolid( SOLID_VPHYSICS )
		self:SetMoveType( MOVETYPE_NONE  )
		self:SetUseType( ONOFF_USE )
		self:SetCollisionGroup(COLLISION_GROUP_IN_VEHICLE)
		
		local phys = self:GetPhysicsObject()
		if (phys:IsValid()) then
			phys:SetMass(self.Mass)
		end 
		
		self.StartTime = CurTime()
		
		self.Original_SkyData = {}
			self.Original_SkyData["TopColor"]    = Vector(0.20,0.50,1.00)
			self.Original_SkyData["BottomColor"] = Vector(0.80,1.00,1.00)
			self.Original_SkyData["DuskScale"]   = 0
			self.Original_SkyData["SunSize"]     = 30
			
		self.Reset_SkyData    = {}
			self.Reset_SkyData["TopColor"]       = Vector(0.20,0.50,1.00)
			self.Reset_SkyData["BottomColor"]    = Vector(0.80,1.00,1.00)
			self.Reset_SkyData["DuskScale"]      = 1
			self.Reset_SkyData["SunColor"]       = Vector(0.20,0.10,0.00)
		
		for i=0, 100 do
			timer.Simple(i/100, function()
				if !self:IsValid() then return  end
				paintSky_Fade(self.Original_SkyData, 0.05)
			end)
		end
		
		setMapLight("z")	

		self:SetNoDraw(true)
		
		gDisasters_CreateGlobalGFX("heatwave", self)

	end
end

function ENT:GetTimeElapsed()

	return CurTime() - self.StartTime
end

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

function ENT:SetFire()

	for k, v in pairs(ents.GetAll()) do

		
		if (v:GetClass() == "prop_physics") then
					v:Ignite()
		
		end
			

	end
		
end
	
	
function ENT:AffectPlayers()

	for k, v in pairs(player.GetAll()) do

		if v.gDisasters.Area.IsOutdoor and v:IsOnGround() then
			
		
			if HitChance(25) then
		
				net.Start("gd_clParticles")
				net.WriteString("heatwave_ripple_01_main", Angle(0,math.random(1,40),0))
				net.Send(v)
			
			end
			
			
		end
		
		if v.gDisasters.Area.IsOutdoor then
		
		local t_elapsed = self:GetTimeElapsed()
		
		if math.random(1,20) == 1 then
			
				InflictDamage(v, self, "heat", t_elapsed * math.random(10,20))
			
			end
		
		end
	end
end


function ENT:Think()

	if (CLIENT) then
		
	end
	
	if (SERVER) then
		if !self:IsValid() then return end
		self:AffectPlayers()
		self:SetFire()
		self:NextThink(CurTime() + 0.01)
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
	end
	
	
	
end

function ENT:UpdateTransmitState()

	return TRANSMIT_ALWAYS

end





