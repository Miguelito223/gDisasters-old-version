AddCSLuaFile()

DEFINE_BASECLASS( "base_anim" )

ENT.Spawnable		            	 = false        
ENT.AdminSpawnable		             = false 

ENT.PrintName		                 =  "Tornado"
ENT.Author			                 =  "Hmm"
ENT.Contact		                     =  "Hmm"
ENT.Category                         =  "Hmm"
ENT.EnchancedFujitaScaleData         = {
	["EF0"] = { Speed = math.random(105,137) },
	["EF1"] = { Speed = math.random(138,177) },
	["EF2"] = { Speed = math.random(178,217) },
	["EF3"] = { Speed = math.random(218,266) },
	["EF4"] = { Speed = math.random(267,322) },
	["EF5"] = { Speed = math.random(322,323) }

}	



function ENT:Initialize()	

	
	if (SERVER) then
		
		self:SetModel("models/props_junk/PopCan01a.mdl")

		self:SetSolid( SOLID_VPHYSICS )
		self:SetMoveType( MOVETYPE_NONE  )
		self:SetUseType( ONOFF_USE )
		self:SetCollisionGroup(COLLISION_GROUP_IN_VEHICLE)
		
		local phys = self:GetPhysicsObject()
		
		if (phys:IsValid()) then
			phys:SetMass(100)
		end 		
		
		self:RepositionMyself()
		self:Decay()
		self:AttachParticleEffect()
		self:SetGroundSpeed()
		self:SetGroundSpeed()
		self:PreCalculateVolume()
		self:SetupMoveType()
		self:PlayFadeinSound()
		self:SetupNWVars()
		self.NextPhysicsTime = CurTime()
		
		
	end
	timer.Simple(1, function()
		if !self:IsValid() then return end
		self:CreateLoop()
	end)
end

function ENT:SetupNWVars()
	local category = self.Data.EnhancedFujitaScale

	self:SetNWString("Category", category)
	
end


function ENT:PlayFadeinSound()
	local category         = self.Data.EnhancedFujitaScale
	
	if category == "EF0" or category == "EF1" or category =="EF2" or category =="EF3" then
	
		CreateSoundWave("disasters/nature/tornado/ef03_fadein.mp3", self:GetPos(), "mono", 340/2, {80,120}, 10)
		
	elseif category == "EF4" then
	
		CreateSoundWave("disasters/nature/tornado/ef4_fadein.mp3", self:GetPos(), "mono", 340/2, {80,120}, 10)

	elseif category == "EF5" then
	
		CreateSoundWave("disasters/nature/tornado/ef5_fadein.mp3", self:GetPos(), "3d", 340/2, {80,120}, 10)

	end

end


function ENT:PlayFadeoutSound()
	local category         = self.Data.EnhancedFujitaScale
	
	if category == "EF0" or category == "EF1" or category =="EF2" or category =="EF3" then
	
		
	elseif category == "EF4" then
	
		CreateSoundWave("disasters/nature/tornado/ef4_fadeout.mp3", self:GetPos(), "3d", 340/2, {80,120}, 10)

	elseif category == "EF5" then
	
		CreateSoundWave("disasters/nature/tornado/ef5_fadeout.mp3", self:GetPos(), "3d", 340/2, {80,120}, 10)

	end

end




function ENT:SetGroundSpeed()
	self.GroundSpeed = math.random(self.Data.GroundSpeed.Min,self.Data.GroundSpeed.Max)
end

function ENT:PostShouldFollowPath()
	self.NextPathIndex = 2 
	
	local path = getMapPath()
	self:SetPos( path[1] + Vector(0,0,10) )
	
end

function ENT:PostRandomMovementType()
	self.MovementVector = Vector(0,0,0)
end

function ENT:SetupMoveType()
	
	if self.Data.ShouldFollowPath == true then
		self.MType = "follow_path" 
		self:PostShouldFollowPath()
	else
		self.MType = "random" 
		self:PostRandomMovementType()
	end
end

function ENT:PathedMove()
	if self.NextPathIndex > #getMapPath() then self:Remove() return end
	local next_point             = getMapPath()[self.NextPathIndex] + Vector(0,0,10)
	local dir                    = (next_point-self:GetPos()):GetNormalized()
	local distance_to_next_point = next_point:Distance(self:GetPos())
	

	local nextpos = self:GetPos() + (dir * self.GroundSpeed)

	self:SetPos(nextpos)
	
	
	if distance_to_next_point < 100 then self.NextPathIndex = self.NextPathIndex + 1 end 

end

function ENT:RandomMove()

	local vector = self.MovementVector + ((Vector((math.random(-10,10)/100) * math.sin(CurTime()),(math.random(-10,10)/100) * math.sin(CurTime()), 0) ))
	self.MovementVector = Vector(math.Clamp(vector.x,-1,1), math.Clamp(vector.y,-1,1), 0) * self.GroundSpeed

	if math.random(1,1500)==1500  then  self.MovementVector = ((Vector((math.random(-10,10)/100) * math.sin(CurTime()),(math.random(-10,10)/100) * math.sin(CurTime()), 0) )) end
	
	local tr = util.TraceLine( {
		start = self:GetPos(),
		endpos = self:GetPos() - Vector(0,0,1000),
		mask   = MASK_WATER + MASK_SOLID_BRUSHONLY 
	} )
	
	self:SetPos( tr.HitPos + Vector(0,0,10) + vector ) 
	
	if self:IsInWorld()==false then self:Remove() end
end

function ENT:Move()
	if self.Data.ShouldFollowPath == true then
		self:PathedMove()
	else
		self:RandomMove()
	end
end

function ENT:PreCalculateVolume()
	local vol = ((math.pi * (self.Data.MaxFunnel.Height - self.Data.MinFunnel.Height)) /  3 ) * ( (self.Data.MaxFunnel.Radius*self.Data.MinFunnel.Radius) + (self.Data.MaxFunnel.Radius^2) + (self.Data.MinFunnel.Radius^2))
	
	self.Volume = vol
	
end


function ENT:CalculateVolumeOfTornado()
	return self.Volume
end

function ENT:CalculateMass()
	local mass = self.Volume * 1.225 
end

	
function ENT:Physics()
	if !(CurTime() >= self.NextPhysicsTime) then return end
	local phys_scalar = GetConVar( "gdisasters_envtornado_simquality" ):GetFloat() / 0.01
	
	self:FunnelPhysics(phys_scalar)
	self:GroundFunnelPhysics(phys_scalar)
	self:ApplyShaking()


	
	self.NextPhysicsTime = CurTime() + GetConVar( "gdisasters_envtornado_simquality" ):GetFloat()
end

function ENT:CreateLoop()
	
	local category = self:GetNWString("Category")
	
	local spath    = ""
	
	if category == "EF0" or category == "EF1" or category =="EF2" or category =="EF3" then
			
		spath      = "disasters/nature/tornado/ef03_loop.wav"
		
	elseif category == "EF4" then
	
		spath      = "disasters/nature/tornado/ef4_loop.wav"

	elseif category == "EF5" then
	
		spath      = "disasters/nature/tornado/ef5_loop.wav"

	end

	
	
	local sound = Sound(spath)

	CSPatch = CreateSound(self, sound)
	CSPatch:SetSoundLevel( 120 )
	CSPatch:Play()
	CSPatch:ChangeVolume( 1 )

	self.Sound = CSPatch
	
end

function ENT:CanBeSeenByTheWind(ent)
	
	local isOutside = nil

	
	local wind_dir  = self:GetPos():Cross(ent:GetPos()):GetNormalized() 
	local hwind_dir = wind_dir * -1
	local safespot_dir = hwind_dir * 300
	
	
	local tr_wind = util.TraceLine( {
		start = ent:GetPos() + Vector(0,0,10),
		endpos = ent:GetPos() + Vector(0,0,10) + safespot_dir,
		filter = ent
			
	} )
	
	local can_be_seen_by_wind  = tr_wind.Hit == false
	local can_be_directly_seen = ent:Visible( self )
	
	if ent:IsPlayer() or ent:IsNPC() then
		isOutside = isOutdoor(ent)


		if (can_be_seen_by_wind or can_be_directly_seen) and isOutside then 
			return true
		else
			return false
		end
			
		
	else
		isOutside = isOutdoor(ent, true) 
		
		return (can_be_seen_by_wind or can_be_directly_seen) and isOutside
	end
	
	


end

function ENT:ApplyPhysics(ent, vel)
	
	if ent:IsPlayer() or ent:IsNPC() then
		local vec = (8 * 25) * Vector(0,0,math.random(0,10)/10) + (Vector(10,10,0)*math.sin(CurTime()*4))

		ent:SetVelocity( vel + vec)
		if ent:IsPlayer() then ent:SetVelocity( vec * 2 ) end
		
	else
		ent:GetPhysicsObject():AddVelocity( vel )
		self:TryRemoveConstraints(ent)
	end
end

function ENT:ApplyShaking(ent)
	
	for k, v in pairs(player.GetAll()) do
		local d = v:GetPos():Distance(self:GetPos()) 
		local d_ratio = 1 - (math.Clamp(d,0,8000)/8000)
		
		if HitChance(50) then
			net.Start("gd_shakescreen")
			net.WriteFloat(1)
			net.WriteFloat( 25 * d_ratio )
			net.WriteFloat(25 * d_ratio)
			net.Send(v)
		end
	
	end



end

function ENT:TryRemoveConstraints(ent)
	
	local chance = 0 
	
	if self.Data.EnhancedFujitaScale == "EF3" then
		chance = 0.5
	elseif self.Data.EnhancedFujitaScale == "EF4" then
		chance = 3
	elseif self.Data.EnhancedFujitaScale == "EF5" then
		chance = 50
	end
	
	if chance == 0 then return end
	
	
	if HitChance(chance) then
		local can_play_sound = false
		
		
		if #constraint.GetTable( ent ) != 0 then
			can_play_sound = true 
		elseif ent:GetPhysicsObject():IsMotionEnabled()==false then
			can_play_sound = true 
		end	
		
		if can_play_sound then
			
			sound.Play("disasters/nature/wind_constraint_remove.wav", ent:GetPos(), 80, math.random(90,110), 1)
			constraint.RemoveAll( ent )
			ent:GetPhysicsObject():EnableMotion( true )
		end
	end
end

function ENT:GroundFunnelPhysics(physics_scalar)
	local pos         = self:GetPos() - Vector(0,0,18)
	local funnel_ents = FindInCone(pos, self.Data.MaxGroundFunnel.Height, self.Data.MinGroundFunnel.Height, self.Data.MaxGroundFunnel.Radius, self.Data.MinGroundFunnel.Radius, true )
	
	local category         = self.Data.EnhancedFujitaScale
	local wind_speed       = self.EnchancedFujitaScaleData[category].Speed

	for k, v in pairs(funnel_ents) do
		
		local radius =         v[2]
		local ent              = v[1] 
		local entpos 		   = ent:GetPos()
		
		if ent:IsValid() and self:CanBeSeenByTheWind(ent) then 
			
			local phys = ent:GetPhysicsObject()
			local mass = phys:GetMass()
						
			local suctional_vec       = (Vector(pos.x, pos.y, entpos.z) - entpos):GetNormalized()
		
			local main_force          = (suctional_vec * 10) 
			
			if category == "EF0" then
				
				if mass <= 500 then	
				
					self:ApplyPhysics(ent, main_force * physics_scalar )
	
				else
					if mass > 500 and mass < 1000 then
						self:ApplyPhysics(ent, main_force * math.random(0,500)/1000 * physics_scalar)
					end
				end
			elseif category == "EF1" then
				if mass <= 1000 then	
					self:ApplyPhysics(ent, main_force * physics_scalar )

				else
					if mass > 1000 and mass < 2000 then
						self:ApplyPhysics(ent,main_force * math.random(0,500)/1000 * physics_scalar)
					end
				end			
			elseif category == "EF2" then
				if mass <= 2000 then	
					self:ApplyPhysics(ent, main_force * physics_scalar )

				else
					if mass > 2000 and mass < 4000 then
						self:ApplyPhysics(ent,(main_force * 2) * math.random(0,500)/1000 * physics_scalar)
					end
				end			
			elseif category == "EF3" then
				if mass <= 4000 then	
					self:ApplyPhysics(ent, (main_force * 4) * physics_scalar )

				else
					if mass > 4000 and mass < 6000 then
						self:ApplyPhysics(ent, main_force * math.random(0,500)/1000 * physics_scalar)
					end
				end									
			elseif category == "EF4" then
				if mass <= 6000 then	
					self:ApplyPhysics(ent,(main_force * 6) * physics_scalar )

				else
					if mass > 6000 and mass < 10000 then
						self:ApplyPhysics(ent, main_force * math.random(0,500)/1000 * physics_scalar)
					end
				end		
			elseif category == "EF5" then
				if mass <= 10000 then	
					self:ApplyPhysics(ent, (main_force * 8) * physics_scalar )

				else
					if mass > 10000 then
						self:ApplyPhysics(ent, main_force * math.random(0,500)/1000 * physics_scalar)
					end
				end
			end
			
		

		end
	end
	
	
end



function ENT:FunnelPhysics(physics_scalar)
	local pos         = self:GetPos() - Vector(0,0,18)
	local funnel_ents = FindInCone(pos, self.Data.MaxFunnel.Height, self.Data.MinFunnel.Height, self.Data.MaxFunnel.Radius, self.Data.MinFunnel.Radius, true )
	
	local category         = self.Data.EnhancedFujitaScale
	local wind_speed       = self.EnchancedFujitaScaleData[category].Speed

	for k, v in pairs(funnel_ents) do
		
		local radius =         v[2]
		local ent              = v[1] 
		local entpos 		   = ent:GetPos()
		local angular_speed    = ((math.pi * 2) / (radius / convert_MetoSU(convert_KMPHtoMe(wind_speed)) )) 
		
		local height              =  self.Data.MaxFunnel.Height - ((self:GetPos().z + self.Data.MaxFunnel.Height) - ent:GetPos().z)
		
		local vomit   = math.Clamp((height / self.Data.MaxFunnel.Height ),0,1)>=0.9


		if ent:IsValid() and self:CanBeSeenByTheWind(ent) then 
			
			local phys = ent:GetPhysicsObject()
			local mass = phys:GetMass()
			
			local mass_balancer = 1 - (mass / 10000)
			
			local upwards_vec         = Vector(0,0,1)
			local tangential_vec      = pos:Cross(entpos):GetNormalized()
			local suctional_vec       = (Vector(pos.x, pos.y, entpos.z) - entpos):GetNormalized()
			
			local upwards_force 	  = (upwards_vec * 15) 
			local tangential_force    = (tangential_vec * - math.Clamp(angular_speed,-43 ,43 )) 
			local suctional_force     = (suctional_vec * 20)
			local main_force          = (tangential_force + suctional_force + upwards_force) 
			
			if vomit == true then 
				main_force            = suctional_vec * -1000

			end 
			
			if category == "EF0" then
				
				if mass <= 500 then	
				
					self:ApplyPhysics(ent, main_force * physics_scalar )
	
				else
					if mass > 500 and mass < 1000 then
						self:ApplyPhysics(ent, main_force * math.random(-500,500)/1000 * physics_scalar)
					end
				end
			elseif category == "EF1" then
				if mass <= 1000 then	
					self:ApplyPhysics(ent, main_force * physics_scalar )

				else
					if mass > 1000 and mass < 2000 then
						self:ApplyPhysics(ent, main_force * math.random(-500,500)/1000 * physics_scalar)
					end
				end			
			elseif category == "EF2" then
				if mass <= 2000 then	
					self:ApplyPhysics(ent, main_force * physics_scalar )

				else
					if mass > 2000 and mass < 4000 then
						self:ApplyPhysics(ent,main_force * math.random(-500,500)/1000 * physics_scalar)
					end
				end			
			elseif category == "EF3" then
				if mass <= 4000 then	
					self:ApplyPhysics(ent,main_force * physics_scalar )

				else
					if mass > 4000 and mass < 6000 then
						self:ApplyPhysics(ent, main_force * math.random(-500,500)/1000 * physics_scalar)
					end
				end									
			elseif category == "EF4" then
				if mass <= 6000 then	
					self:ApplyPhysics(ent, main_force * physics_scalar )

				else
					if mass > 6000 and mass < 10000 then
						self:ApplyPhysics(ent, main_force * math.random(-500,500)/1000 * physics_scalar)
					end
				end		
			elseif category == "EF5" then
				if mass <= 10000 then	
					self:ApplyPhysics(ent, main_force * physics_scalar )

				else
					if mass > 10000 then
						self:ApplyPhysics(ent, main_force * math.random(-500,500)/1000 * physics_scalar)
					end
				end
			end
			
		

		end
	end
	
	
end




function ENT:EFire(pointer, arg) 
	
	
end



function ENT:Think()
	if (SERVER) then
		if !self:IsValid() then return end
		
		self:Move()
		self:Physics()
		self:IsParentValid()
		self:NextThink(CurTime() + 0.01)
		return true
	end
	
end



function createTornado(data)
	

	
	local tornado = ents.Create("env_tornado")
	tornado.Data  = data
	tornado:Spawn()
	tornado:Activate()
	
	tornado:EFire("Enable", true)
	
	return tornado

end

function ENT:RepositionMyself()
	self:SetPos(self.Data.Parent:GetPos())
end


function ENT:AttachParticleEffect()
	self.Data.Effect = table.Random(self.Data.Effect)

	ParticleEffectAttach(self.Data.Effect, PATTACH_POINT_FOLLOW, self, 0)
	
end

function ENT:Decay()
	timer.Simple(math.random(self.Data.Life.Min, self.Data.Life.Min), function()
		if !self:IsValid() then return end
		self:Remove()
	end)
end



function ENT:IsParentValid()

	if self.Data.Parent:IsValid()==false or self.Data.Parent==nil then self:Remove() end
	
end


function ENT:OnRemove()
	if (SERVER) then
		self:PlayFadeoutSound()
		if self.Data.Parent:IsValid() then 
			self.Data.Parent:Remove()
		end
	end
	self:StopParticles()
	if self.Sound==nil then return end
	self.Sound:Stop()
end


	
function ENT:Draw()	

	self:DrawModel()
end

function ENT:UpdateTransmitState()
	return TRANSMIT_ALWAYS
end


