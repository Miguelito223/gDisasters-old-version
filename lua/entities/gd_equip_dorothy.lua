AddCSLuaFile()

DEFINE_BASECLASS( "base_anim" )

ENT.Spawnable		            	 = false        
ENT.AdminSpawnable		             = false 

ENT.PrintName		                 =  "Dorothy IV"
ENT.Author			                 =  "Hmm"
ENT.Contact		                     =  "Hmm"
ENT.Category                         =  "Hmm"
ENT.Mass                             =  1000

ENT.AutomaticFrameAdvance            = true 

sound.Add( {
	name = "doro",
	channel = CHAN_STATIC,
	volume = 1.0,
	level = 70,
	pitch = 100,
	sound = "streams/dorothy_a.wav"
} )

function ENT:Initialize()	

	
	if (SERVER) then
		
		self:SetModel("models/ramses/models/equipment/dorothy.mdl")
		self:PhysicsInit( SOLID_VPHYSICS )
		self:SetSolid( SOLID_VPHYSICS )
		self:SetMoveType( MOVETYPE_VPHYSICS  )
		self:SetUseType( ONOFF_USE )
		self:SetCollisionGroup(COLLISION_GROUP_NONE)
		self:SetModelScale(0.9, 0)

		local phys = self:GetPhysicsObject()
	
		
		if (phys:IsValid()) then
			phys:SetMass(self.Mass)
			phys:Wake()
			phys:EnableMotion(true)
		end 		


		self:ResetSequence(self:LookupSequence("idle"))
		self.Roll = 0
	
		self.NextUseTime            = CurTime()
		self.IsOn                  = false
		
	end
end

function ENT:Fix()
	self:SetMDScale(Vector(0.9,0.9,1))
	
end

function ENT:UpdateTransmitState()

	return TRANSMIT_ALWAYS

end

function ENT:SetMDScale(scale)
	local mat = Matrix()
	mat:Scale(scale)
	self:EnableMatrix("RenderMultiply", mat)
end


function ENT:Use()
	if CurTime() >= self.NextUseTime then 
		self.IsOn = !self.IsOn 
		self:SetNWBool("IsOn", self.IsOn)
		
		if self.IsOn == false then 
			self:StopSound("doro")
			self:EmitSound("buttons/button5.wav", 60, 100, 1)
			
		
		
		elseif self.IsOn == true then 
			self:EmitSound("buttons/button9.wav", 60, 100, 1)
			self:EmitSound("doro")
		
		end
		self.NextUseTime = CurTime() + 2
	end

end

function ENT:IsThisOn()

	return self:GetNWBool("IsOn", false)
	
end

function ENT:ShouldNotRender()	
	return not(self:IsThisOn()) or (self:GetPos():Distance(LocalPlayer():GetPos()) >= GetConVar("gdisasters_graphics_dr_maxrenderdistance"):GetInt())
end

function ENT:OnRemove()

self:StopSound("doro")

end

function ENT:SpawnFunction( ply, tr )
	if ( !tr.Hit ) then return end

	self.OWNER = ply
	local ent = ents.Create( self.ClassName )
	ent:SetPhysicsAttacker(ply)
	ent:SetPos( tr.HitPos + tr.HitNormal * 100   ) 
	ent:Spawn()
	ent:Activate()
	return ent
end

function ENT:TurnProp()
	local rate = engine.TickInterval()
	local bone = self:LookupBone("prop")
	local pos, ang = self:GetBonePosition( bone )
	
	local ms_windspeed = convert_SUtoMe(self:GetVelocity():Length())
	local radius       = 0.1 -- radius of prop
	local circum       = math.pi * radius 
	local t            = circum / ms_windspeed 
	
	local ang_vel      = (math.deg((math.pi * 2) / t ) * rate) * 0.05 
	
	self.Roll = self.Roll + ang_vel
	
	self:ManipulateBoneAngles( bone, Angle(self.Roll, 0,0))
	
end

function ENT:Think()
	if (CLIENT) then
	
	self:Fix()
	
	end
	
	if (SERVER) then
		if !self:IsValid() then return end
	

		self:TurnProp()
		self:NextThink( CurTime() + 0.01 )
		return true
	end
end

if (SERVER) then 


	concommand.Add("grass", function(ply)
	

		
		local pos = ply:GetPos()
		
		local models = {"models/props_foliage/grass_02_detailmodel.mdl", "models/props_foliage/grass_02_cluster01.mdl", "models/props_foliage/grass_02_cluster01.mdl"}
		for x=-25, 25 do
			for y=-25, 25 do
				local prop = ents.Create("prop_dynamic")
				prop:SetModel(table.Random(models) )
				prop:SetPos( Vector(x * 150, y * 150, 0) + pos + ( Vector(VectorRand().x, VectorRand().y, 0) * math.random(1,300)) )
				prop:Spawn()
				prop:SetModelScale( prop:GetModelScale() * (math.random(10,20)/10))
				prop:DrawShadow( false )
				prop:SetAngles( Angle(0,math.random(0,360),0))
			end
		end
	end)
end

function ENT:Draw()
	self:DrawModel()
end