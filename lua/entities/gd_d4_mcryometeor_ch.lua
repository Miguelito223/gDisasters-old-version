AddCSLuaFile()

DEFINE_BASECLASS( "base_anim" )

ENT.Spawnable		            	 = false        
ENT.AdminSpawnable		             = false 

ENT.PrintName		                 =  "Megacryometeor"
ENT.Author			                 =  "Hmm"
ENT.Contact		                     =  "Hmm"
ENT.Category                         =  "Hmm"

ENT.Model                            = "models/ramses/models/nature/megacryometeor.mdl"
ENT.Material                         = "nature/ice_clear"

function ENT:Initialize()	

	if (SERVER) then
		
		self:SetModel(self.Model)
		self:PhysicsInit( SOLID_VPHYSICS )
		self:SetSolid( SOLID_VPHYSICS )
		self:SetMoveType( MOVETYPE_VPHYSICS  )
		self:SetUseType( ONOFF_USE )

		local phys = self:GetPhysicsObject()
		phys:Wake()
		
		if (phys:IsValid()) then
			phys:SetMass(math.random(50,100))
		end 		
		
		phys:EnableDrag( false )
		
		self:SetMaterial(self.Material)
		
		timer.Simple(14, function()
			if !self:IsValid() then return end
			self:Remove()
		end)
		
	
		ParticleEffectAttach("megacryometeor_smoke_trail", PATTACH_POINT_FOLLOW, self, 0)

	end
end


function ENT:SpawnFunction( ply, tr )
	if ( !tr.Hit ) then return end

	self.OWNER = ply
	local ent = ents.Create( self.ClassName )
	ent:SetPhysicsAttacker(ply)
	ent:SetPos( tr.HitPos + tr.HitNormal * -0.7  ) 
	ent:Spawn()
	ent:Activate()
	return ent
	
end


function ENT:PhysicsCollide( data, physobj )

	local tr,trace = {},{}
	tr.start = self:GetPos() + self:GetForward() * -200
	tr.endpos = tr.start + self:GetForward() * 500
	tr.filter = { self, physobj }
	trace = util.TraceLine( tr )
	
	if( trace.HitSky ) then
	
		self:Remove()
		
		return
		
	end
	
	if (data.Speed > 200 ) then 

		
		self:Explode()
						 

	end

	
end

function ENT:Explode()

	if( !IsValid( self.Owner ) ) then
		
		self.Owner = self
		
	end
	
	local pos = self:GetPos()
	local mat = self.Material
	local vel = self.Move_vector 
	
	local sound = table.Random({"streams/event/explosion/explosion_light_k.mp3","streams/event/explosion/explosion_light_l.mp3","streams/event/explosion/explosion_light_a.mp3","streams/event/explosion/explosion_light_b.mp3","streams/event/explosion/explosion_light_m.mp3"})
	
	ParticleEffect("megacryometeor_explosion_main", self:GetPos(), Angle(0,0,0), nil)
	
	CreateSoundWave(sound, self:GetPos(), "stereo" ,340.29/2, {100,110}, 5)
	
	local pe = ents.Create( "env_physexplosion" );
	pe:SetPos( self:GetPos() );
	pe:SetKeyValue( "Magnitude", 150 );
	pe:SetKeyValue( "radius", 500 );
	pe:SetKeyValue( "spawnflags", 19 );
	pe:Spawn();
	pe:Activate();
	pe:Fire( "Explode", "", 0 );
	pe:Fire( "Kill", "", 0.5 );
	
	util.BlastDamage( self, self, self:GetPos()+Vector(0,0,12), 512, math.random( 10, 50 ) )		

		
	local models = { "models/ramses/models/nature/megacryometeor_01.mdl",
					 "models/ramses/models/nature/megacryometeor_02.mdl",
					 "models/ramses/models/nature/megacryometeor_03.mdl",
					 "models/ramses/models/nature/megacryometeor_04.mdl",
				 	 "models/ramses/models/nature/megacryometeor_05.mdl",
				  	 "models/ramses/models/nature/megacryometeor_06.mdl",
				 	 "models/ramses/models/nature/megacryometeor_07.mdl",
					 "models/ramses/models/nature/megacryometeor_08.mdl",
					 "models/ramses/models/nature/megacryometeor_09.mdl",
					 "models/ramses/models/nature/megacryometeor_10.mdl"}
					
	self:Remove()

	for i=1, 10 do 
		local mod_vector = Vector( math.random(-2000,2000), math.random(-2000,2000), 0)
		local piece = ents.Create("prop_physics") 
		piece:SetModel( models[i] )
		piece:SetPos(pos)
		piece:Spawn()
		piece:Activate()
		piece:SetMaterial(mat)
		piece:GetPhysicsObject():SetVelocity(mod_vector)

		
		ParticleEffectAttach("megacryometeor_piece_steam", PATTACH_POINT_FOLLOW, piece, 0)
		timer.Simple(i + 10, function() if piece:IsValid() then piece:Remove() end end)
		
	end
		

end

function ENT:Think()
	if (SERVER) then
		if !self:IsValid() then return end
		local t =  ( (1 / (engine.TickInterval())) ) / 66.666 * 0.1

		if self:WaterLevel() >= 1 then self:Remove() end
		
		self:NextThink(CurTime() + t)
		return true
	end
end


function ENT:OnRemove()

end

function ENT:Draw()



	self:DrawModel()
	
end




