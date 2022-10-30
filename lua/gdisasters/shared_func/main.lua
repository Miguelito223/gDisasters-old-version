gDisasters = {}
gDisasters.CachedExists          = {}
gDisasters.DayNightSystem        = {}
gDisasters.DayNightSystem.InternalVars = {}
gDisasters.Game                  = {}

Break_Sounds = {


	Metal = {
		
	"streams/event/break/metal_break_a.mp3",
	"streams/event/break/metal_break_b.mp3",
	"streams/event/break/metal_break_c.mp3",
	"streams/event/break/metal_break_d.mp3",
	"streams/event/break/metal_break_e.mp3",
	"streams/event/break/metal_break_f.mp3",
	"streams/event/break/metal_break_g.mp3",
	"streams/event/break/metal_break_h.mp3",
	"streams/event/break/metal_break_i.mp3",
	"streams/event/break/metal_break_j.mp3",
	"streams/event/break/metal_break_k.mp3",
	"streams/event/break/metal_break_l.mp3",
	"streams/event/break/metal_break_m.mp3",
	"streams/event/break/metal_break_n.mp3",
	"streams/event/break/metal_break_o.mp3",
	"streams/event/break/metal_break_p.mp3",
	"streams/event/break/metal_break_q.mp3",
	"streams/event/break/metal_break_r.mp3",
	"streams/event/break/metal_break_s.mp3",
	"streams/event/break/metal_break_t.mp3",
	"streams/event/break/metal_break_u.mp3",
	"streams/event/break/metal_break_v.mp3",
	"streams/event/break/metal_break_w.mp3",
	"streams/event/break/metal_break_x.mp3",
	"streams/event/break/metal_break_y.mp3",
	"streams/event/break/metal_break_z.mp3",
	"streams/event/break/metal_break_za.mp3"
	
	},
	
	Plastic = {
	
	"streams/event/break/plastic_break_a.mp3",
	"streams/event/break/plastic_break_b.mp3",
	"streams/event/break/plastic_break_c.mp3",
	"streams/event/break/plastic_break_d.mp3",
	"streams/event/break/plastic_break_e.mp3",
	"streams/event/break/plastic_break_f.mp3"
	
	},
	
	Rock = {
	
	"streams/event/break/rock_break_a.mp3",
	"streams/event/break/rock_break_b.mp3",
	"streams/event/break/rock_break_c.mp3",
	"streams/event/break/rock_break_d.mp3"
	
	},
	
	Glass = {
	
	"streams/event/break/glass_break_a.mp3",
	"streams/event/break/glass_break_b.mp3",
	"streams/event/break/glass_break_c.mp3",
	"streams/event/break/glass_break_d.mp3",
	"streams/event/break/glass_break_e.mp3",
	"streams/event/break/glass_break_f.mp3"
	
	},
	

	Ice = {
	
	"streams/event/break/ice_break_a.mp3",
	"streams/event/break/ice_break_b.mp3",
	"streams/event/break/ice_break_c.mp3"

	},

	Wood = {
		
	"streams/event/break/wood_break_a.mp3",
	"streams/event/break/wood_break_b.mp3",
	"streams/event/break/wood_break_c.mp3",
	"streams/event/break/wood_break_d.mp3",
	"streams/event/break/wood_break_e.mp3",
	"streams/event/break/wood_break_f.mp3",
	"streams/event/break/wood_break_g.mp3",
	"streams/event/break/wood_break_h.mp3",
	"streams/event/break/wood_break_i.mp3",
	"streams/event/break/wood_break_j.mp3",
	"streams/event/break/wood_break_k.mp3",
	"streams/event/break/wood_break_l.mp3",
	"streams/event/break/wood_break_m.mp3",
	"streams/event/break/wood_break_n.mp3",

	},
	
	Plastic = {
	
	
	"physics/plastic/plastic_box_break1.wav",
	"physics/plastic/plastic_box_break2.wav",
	"physics/plastic/plastic_box_impact_bullet1.wav",
	"physics/plastic/plastic_box_impact_bullet2.wav",
	"physics/plastic/plastic_box_impact_bullet3.wav",
	"physics/plastic/plastic_box_impact_bullet4.wav",
	"physics/plastic/plastic_box_impact_bullet5.wav",
	
	},
	
	Generic = {
	
	"streams/event/break/generic_break_a.mp3",
	
	
	}




}


Material_Types = {

["default"] = "generic",
["default_silent"] = "generic",
["floatingstandable"] = "generic",
["item"] = "generic",
["ladder"] = "generic",
["no_decal"] = "generic",
["player"] = "generic",
["player_control_clip"] = "generic",

["baserock"] = "rock",
["boulder"] = "rock",
["brick"] = "rock",
["concrete"] = "rock",
["concrete_block"] = "rock",
["gravel"] = "rock",
["rock"] = "rock",

["canister"] = "metal",
["chain"]= "metal",
["chainlink"]= "metal",
["combine_metal"]= "metal",
["crowbar"]= "metal",
["floating_metal_barrel"]= "metal",
["grenade"]= "metal",
["gunship"]= "metal",
["metal"]= "metal",
["metal_barrel"]= "metal",
["metal_bouncy"]= "metal",
["Metal_Box"]= "metal",
["metal_seafloorcar"]= "metal",
["metalgrate"]= "metal",
["metalpanel"]= "metal",
["metalvent"]= "metal",
["metalvehicle"]= "metal",
["paintcan"]= "metal",
["popcan"]= "metal",
["roller"]= "metal",
["slipperymetal"]= "metal",
["solidmetal"]= "metal",
["strider"]= "metal",
["weapon"]= "metal",


["wood"] = "wood",
["wood_box"] = "wood",
["wood_crate"] = "wood",
["wood_furniture"] = "wood",
["wood_lowdensity"] = "wood",
["wood_plank"] = "wood",
["wood_panel"] = "wood",
["wood_solid"] = "wood",


["dirt"] = "generic",
["grass"] = "generic",
["gravel"] = "rock",
["mud"] = "generic",
["quicksand"] = "generic",
["sand"] = "generic",
["slipperyslime"] = "generic",
["antlionsand"] = "generic",

["slime"] = "generic",
["water"] = "generic",
["wade"] = "generic",
["Frozen"]  = "ice",
["ice"] = "ice",
["snow"] = "ice",
["Organic"] = "generic",
["alienflesh"] = "generic",
["antlion"] = "generic",
["armorflesh"] = "generic",
["bloodyflesh"] = "generic",
["flesh"] = "generic",
["foliage"] = "generic",
["watermelon"] = "generic",
["zombieflesh"] = "generic",
["Manufactured"] = "generic",
["asphalt"] = "rock",
["glass"] = "glass",
["glassbottle"] = "generic",
["combine_glass"] = "generic",
["tile"] = "rock",
["paper"] = "generic",
["papercup"] = "generic",
["cardboard"] = "generic",
["plaster"] = "plastic",
["plastic_barrel"] = "plastic",
["plastic_barrel_buoyant"] = "plastic",
["Plastic_Box"] = "plastic",
["plastic"] = "plastic",
["rubber"] = "generic",
["rubbertire"] = "generic",
["slidingrubbertire"] = "generic",
["slidingrubbertire_front"] = "generic",
["slidingrubbertire_rear"] = "generic",
["jeeptire"] = "generic",
["brakingrubbertire"] = "generic",
["Miscellaneous"] = "generic",
["carpet"] = "generic",
["ceiling_tile"] = "rock",
["computer"] = "metal",
["pottery"] = "rock"

}

if (SERVER) then


-- --[[
function setMapLight(light)
	local light_env = ents.FindByClass("light_environment")[1]

	if GetConVar("gdisasters_atmosphere"):GetInt() <= 0 then return end

	if GetConVar("gdisasters_atmosphere"):GetInt() >= 1 then 

	
	if light_env != nil then 
		light_env:Fire( 'FadeToPattern' , light , 0 )
		
	else
		if light == "a" then
		
			engine.LightStyle( 0, "b" )
			net.Start("gd_maplight_cl")
			net.Broadcast()
		else
			engine.LightStyle( 0, light )
			net.Start("gd_maplight_cl")
			net.Broadcast()
			
			end
		end
	end
end

function GetLightLevel(player)

	if GetConVar("gdisasters_atmosphere"):GetInt() <= 0 then return end

	if GetConVar("gdisasters_atmosphere"):GetInt() >= 1 then 

	net.Start("gd_ambientlight")
	net.Send(player)
	return player.AmbientLight
	
	end
end
-- --]]
function paintSky_Fade(data_to, fraction) -- fade from one skypaint setting to another
	
	if GetConVar("gdisasters_atmosphere"):GetInt() <= 0 then return end
	
	if GetConVar("gdisasters_atmosphere"):GetInt() >= 1 then 
		
	local self          = ents.FindByClass("env_skypaint")[1]

	if self==nil  then 
	
		local ent = ents.Create("env_skypaint")
		ent:SetPos(Vector(0,0,0))
		ent:Spawn()
		ent:Activate()
		self = ent
		
	end
	
	local TopColor      = LerpVector( fraction, self:GetTopColor()      ,data_to["TopColor"]      or Vector(0.20,0.50,1.00))
	local BottomColor   = LerpVector( fraction, self:GetBottomColor()   ,data_to["BottomColor"]   or Vector(0.80,1.00,1.00))
	local FadeBias      = Lerp(       fraction, self:GetFadeBias()      ,data_to["FadeBias"]      or 1.00)
	local HDRScale      = Lerp(       fraction, self:GetHDRScale()      ,data_to["HDRScale"]      or 0.66)
	
	
	local DrawStars     = true
	local StarTexture   = "skybox/starfield"
	local StarScale     = Lerp(       fraction, self:GetStarScale()     ,data_to["StarScale"]     or 0.50)
	local StarFade      = Lerp(       fraction, self:GetStarFade()      ,data_to["StarFade"]      or 1.50)
	local StarSpeed     = Lerp(       fraction, self:GetStarSpeed()     ,data_to["StarSpeed"]     or 0.01)
	
	local DuskIntensity = Lerp(       fraction, self:GetDuskIntensity() ,data_to["DuskIntensity"] or 0.5)
	local DuskScale     = Lerp(       fraction, self:GetDuskScale()     ,data_to["DuskScale"]     or 1.00)
	local DuskColor     = LerpVector( fraction, self:GetDuskColor()     ,data_to["DuskColor"]     or Vector(1.00,0.20,0.00))
	
	local SunSize       = Lerp(       fraction, self:GetSunSize()       ,data_to["SunSize"]       or 2.00)
	local SunColor      = LerpVector( fraction, self:GetSunColor()      ,data_to["SunColor"]      or Vector(0.20,0.10,0.00))
	
	if( IsValid( self ) ) then
	
	self:SetTopColor( TopColor )
	self:SetBottomColor( BottomColor )
	self:SetFadeBias( FadeBias )

	self:SetDrawStars( DrawStars )
	self:SetStarTexture( StarTexture )	
	
	self:SetStarSpeed( StarSpeed )
	self:SetStarScale( StarScale )
	self:SetStarFade( StarFade )
			
	self:SetDuskColor( DuskColor )
	self:SetDuskScale( DuskScale )
	self:SetDuskIntensity( DuskIntensity )
	
	self:SetSunColor( SunColor )
	self:SetSunSize( SunSize )


	self:SetHDRScale( HDRScale )

		end
	
	end
	
end

function paintSky(data)

	if GetConVar("gdisasters_atmosphere"):GetInt() <= 0 then return end
	

	if GetConVar("gdisasters_atmosphere"):GetInt() >= 1 then 

	
	
	local self          = ents.FindByClass("env_skypaint")[1]
	
	local TopColor      = data["TopColor"]      or Vector(0.20,0.50,1.00)
	local BottomColor   = data["BottomColor"]   or Vector(0.80,1.00,1.00)
	local FadeBias      = data["FadeBias"]      or 1.00
	local HDRScale      = data["HDRScale"]      or 0.66
	
	local DrawStars     = data["DrawStars"]     or true
	local StarTexture   = data["StarTexture"]   or "skybox/starfield"
	local StarScale     = data["StarScale"]     or 0.50
	local StarFade      = data["StarFade"]      or 1.50
	local StarSpeed     = data["StarSpeed"]     or 0.01
	
	local DuskIntensity = data["DuskIntensity"] or 0.5
	local DuskScale     = data["DuskScale"]     or 1.00
	local DuskColor     = data["DuskColor"]     or Vector(1.00,0.20,0.00)
	
	local SunSize       = data["SunSize"]       or 2.00
	local SunColor      = data["SunColor"]      or Vector(0.20,0.10,0.00)
	local SunNormal     = data["SunNormal"]     or Vector( 0.0, 0.0, 0.00 )		
	
	
	self:SetTopColor( TopColor )
	self:SetBottomColor( BottomColor )
	self:SetFadeBias( FadeBias )
	
	self:SetDrawStars( DrawStars )
	self:SetStarSpeed( StarSpeed )
	self:SetStarScale( StarScale )
	self:SetStarFade( StarFade )
	
	self:SetStarTexture( StarTexture )		
	self:SetDuskColor( DuskColor )
	self:SetDuskScale( DuskScale )
	self:SetDuskIntensity( DuskIntensity )
	
	self:SetSunNormal( SunNormal )
	self:SetSunColor( SunColor )
	self:SetSunSize( SunSize )



	self:SetHDRScale( HDRScale )	

	
	end
	
end

function skyPaint_Reset()

	if GetConVar("gdisasters_atmosphere"):GetInt() <= 0 then return end

	if GetConVar("gdisasters_atmosphere"):GetInt() >= 1 then 
	
	local self          = ents.FindByClass("env_skypaint")[1]
	local TopColor      = Vector(0.20,0.50,1.00)
	local BottomColor   = Vector(0.80,1.00,1.00)
	local FadeBias      = 1.00
	local HDRScale      = 0.66
	
	local DrawStars     = true
	local StarTexture   = "skybox/starfield"
	local StarScale     = 0.50
	local StarFade      = 1.50
	local StarSpeed     = 0.01
	
	local DuskIntensity = 0.5
	local DuskScale     = 1.00
	local DuskColor     = Vector(1.00,0.20,0.00)
	
	local SunSize       = 2.00
	local SunColor      = Vector(0.20,0.10,0.00)
	local SunNormal     = Vector( 0.0, 0.0, 0.00 )
	
	self:SetTopColor( TopColor )
	self:SetBottomColor( BottomColor )
	self:SetFadeBias( FadeBias )
	
	self:SetDrawStars( DrawStars )
	self:SetStarSpeed( StarSpeed )
	self:SetStarScale( StarScale )
	self:SetStarFade( StarFade )
	
	self:SetStarTexture( StarTexture )		
	self:SetDuskColor( DuskColor )
	self:SetDuskScale( DuskScale )
	self:SetDuskIntensity( DuskIntensity )
	
	self:SetSunNormal( SunNormal )
	self:SetSunColor( SunColor )
	self:SetSunSize( SunSize )



	self:SetHDRScale( HDRScale )
	
	end
	
end
-- ]]--
function GetMaterialType(ent)

	local phys = ent:GetPhysicsObject()
	if phys:IsValid() then 
		return Material_Types[phys:GetMaterial()] or "generic"
	else
		return "generic"
	end
end



function CreateSoundWave(soundpath, epicenter, soundtype, speed, pitchrange, shakeduration) -- SPEED MUST BE IN MS^-1

	
	for k, v in pairs(player.GetAll()) do
		local distance = v:GetPos():Distance(epicenter) -- distance from player and epicenter
		local t        = distance / convert_MetoSU(speed)  -- speed of sound = 340.29 m/s
		timer.Simple(t, function()
			if v:IsValid() then
			
				net.Start("gd_soundwave")
				net.WriteString(soundpath)
				net.WriteString(soundtype)
				net.WriteVector(epicenter)
				net.WriteTable(pitchrange)
				net.Send(v)			
				
				if shakeduration > 0 then
					
					net.Start("gd_shakescreen")
					net.WriteFloat(shakeduration)
					net.Send(v)
			
				end
			end
		end)
	end
end
		
	

--[[

Function Name: 		 FindInCone
Function Purpose:    Find entities in a cone
Function parameters: 
					
					[1] Starting position
					[2] Max height gain      (          local to starting position             )
					[3] Min height gain      (          local to starting position              )
					[4] Radius at max height (       radius at max height will be this         )
					[5] Radius at min height (       radius at min height will be this         )
					[6] Physics ents only    ( filters out non-physics entities if true (bool) )

					
Function notes:
	Cone always is vertical 

--]]


    
  

function FindInCone(pos, max_z_gain, min_z_loss, radius_at_max_z, radius_at_min_z, phys_only )
	


	local function RadiusAtHeight(current_height, max_height, min_height, max_radius, min_radius)

		local diff_radius = max_radius - min_radius
		local diff_height = max_height - min_height
		
		local current_height_ratio = (max_height - current_height) / diff_height 
		
		local radius = 0
		
		
		if max_radius > min_radius then
			
			radius = min_radius + (  (1 - current_height_ratio) * diff_radius) 

		else
			radius = max_radius - (   current_height_ratio * diff_radius )
		end
		
		return radius
	end



	local entities   = {}
	local pos_self   = pos
	local pos_self2d = Vector(pos.x, pos.y, 0)
	

			
	for k, v in pairs(ents.GetAll()) do
		local is_physics = v:GetPhysicsObject():IsValid() and (v:GetClass()!= "phys_constraintsystem" and v:GetClass()!= "phys_constraint"  and v:GetClass()!= "logic_collision_pair" and v:GetClass()!= "entityflame")
	
		if phys_only and is_physics then
			
			local pos_v   = v:GetPos()
			local pos_v2d = Vector(pos_v.x, pos_v.y, 0)
			local dist    = pos_v2d:Distance(pos_self2d)
			
			local height_v = pos_v.z - pos_self.z 
		
			local radius = RadiusAtHeight(height_v, max_z_gain, min_z_loss, radius_at_max_z, radius_at_min_z)
		
				
			if dist <= radius and (height_v <= max_z_gain and height_v >= min_z_loss) then
		
				table.insert(entities, {v, radius})
			end

			
		elseif phys_only == false then
		
		
			local pos_v   = v:GetPos()
			local pos_v2d = Vector(pos_v.x, pos_v.y, 0)
			local dist    = pos_v2d:Distance(pos_self2d)
			
			local height_v = pos_v.z - pos_self.z 
			
			local radius = RadiusAtHeight(height_v, max_z_gain, min_z_loss, radius_at_max_z, radius_at_min_z)
		
			if dist <= radius and (height_v <= max_z_gain and height_v >= min_z_loss)  then
				table.insert(entities,  {v, radius})
			end
	
		
		end
			

	
	end
	return entities
end


--[[

Function Name: 		 FindInCylinder
Function Purpose:    Find entities in a vertical cylinder
Function parameters: 
					
					[1] Starting position
					[2] Radius of the cylinder (                 constant                        )
					[3] Max height gain        (         local to starting position              )
					[4] Min height gain        (         local to starting position              )
					[5] Physics ents only      ( filters out non-physics entities if true (bool) )

					
Function notes:
	Cylinder always is vertical 

--]]


function FindInCylinder(pos, radius, top, bottom, physonly)

	local entities = {}
	local selfpos_normalized = Vector(pos.x, pos.y, 0)
	
	local z_max, z_min = pos.z + top, pos.z + bottom 
	
	for k, v in pairs(ents.GetAll()) do
		local is_physics = v:GetPhysicsObject():IsValid() and (v:GetClass()!= "phys_constraintsystem" and v:GetClass()!= "phys_constraint"  and v:GetClass()!= "logic_collision_pair" and v:GetClass()!= "entityflame")

		local vpos            = v:GetPos() 
		local vpos_normalized = Vector(vpos.x, vpos.y, 0)
		
		local dist            = vpos_normalized:Distance(selfpos_normalized)
		local zdiff           = vpos.z - pos.z 
		
		if phys_only then 
			if is_physics then
				
				if dist <= radius then 
						
					if zdiff > 0 then -- v is higher than me 
						if zdiff <= top then
							table.insert(entities, v)
						end
						
					elseif zdiff == 0 then -- same position
						table.insert(entities, v)
						
					elseif zdiff < 0 then -- v is below us
					
						if zdiff >= bottom then
							table.insert(entities, v)
						end
					
					end
					
				
				end
			end
		else
		
			if dist <= radius then 
					
				if zdiff > 0 then -- v is higher than me 
					if zdiff <= top then
						table.insert(entities, v)
					end
					
				elseif zdiff == 0 then -- same position
					table.insert(entities, v)
					
				elseif zdiff < 0 then -- v is below us
				
					if zdiff >= bottom then
						table.insert(entities, v)
					end
				
				end
				
			
			end
				
				
		end
	
	end
	
	return entities 
end


function clShakeScreen(ply, duration)


	net.Start("gd_shakescreen")
	net.WriteFloat(duration)
	net.Send(ply)

end


function clPlaySound(ply, sound, pitch, volume)

	net.Start("gd_sendsound")
	net.WriteString(sound or "")
	net.WriteFloat(pitch or 100)
	net.WriteFloat(volume or 1)
	net.Send(ply)
end

function SetOffsetAngles(player, offset)
	net.Start("gd_seteyeangles_cl")
	net.WriteAngle(offset)
	net.Send(player)

end



function FindNearestEntity(self, class)
	
	if ents.FindByClass(class)[1] == nil then return nil end
	
	local current_target          = ents.FindByClass(class)[1]
	
		
	for k, v in pairs(ents.FindByClass(class)) do
		
		local dis   = current_target:GetPos():Distance(self:GetPos()) -- from current target to self
		local dis2  = v:GetPos():Distance(self:GetPos()) -- from new target to self 
		
		
		if dis2 <= dis then
			current_target = v
			
			
		end
	
	end
		
	return current_target, self:GetPos():Distance(current_target:GetPos())
	
end

function FindEntitiesByModels(models)
	local filtered = {}
	for k, v in pairs(ents.GetAll()) do
		if models[v:GetModel()]==true then
			
			table.insert(filtered, v)
		end
	end
	
	return filtered
end

function FindNearestEntityByModels(self, models)
	

	if FindEntitiesByModels(models)[1] == nil then return nil end
	
	local current_target          = FindEntitiesByModels(models)[1]
	
		
	for k, v in pairs(FindEntitiesByModels(models)) do
		
		local dis   = current_target:GetPos():Distance(self:GetPos()) -- from current target to self
		local dis2  = v:GetPos():Distance(self:GetPos()) -- from new target to self 
		
		
		if dis2 <= dis then
			current_target = v
			
			
		end
	
	end
		
	return current_target, self:GetPos():Distance(current_target:GetPos())
	
end

function isOutdoor(ply, isprop)
	
	
	
	local function performTrace(ply, direction)

		local tr = util.TraceLine( {
			start = ply:GetPos(),
			endpos = ply:GetPos() + direction * 1000,
			filter = function( ent ) if ( ent:GetClass() == "prop_physics" ) then return true end end
		} )
	

		
		return tr.HitWorld
	end

	local function isBelowSky(ply)

		local tr, trace={},{}
		
		tr.start = ply:GetPos()
		tr.endpos = tr.start + Vector(0,0,48000)
		tr.filter = { ply }
		tr.mask = MASK_SOLID_BRUSHONLY
		trace = util.TraceLine( tr )
		return trace.HitSky
		
	end

	
	--[[
	local hitLeft    = performTrace(ply, Vector(1,0,0))
	local hitRight   = performTrace(ply, Vector(-1,0,0))
	
	local hitForward = performTrace(ply, Vector(0,1,0))
	local hitBehind  = performTrace(ply, Vector(0,-1,0))
	
	local hitBelow   = performTrace(ply, Vector(0,0,-1))
	local inTunnel = ((hitLeft and hitRight) and ( (hitForward and hitBehind) == false)) or (((hitLeft and hitRight)==false) and ( (hitForward and hitBehind) == true))
	--]]

	local hitSky     = isBelowSky(ply)
	
	if isprop == nil then
		net.Start("gd_isOutdoor")
		net.WriteBool(hitSky)
		net.Send(ply)
		ply.gDisasters.Area.IsOutdoor = hitSky
	else
		ply.IsOutdoor = hitSky
	end
	
	return hitSky
end

function windPressure(windspeed)
	return (windspeed*windspeed)*0.00256
end

function windLoad(entity, windSpeed) -- entity and wp = wind pressure
	local bounding_radius = entity:BoundingRadius()
	local area            = (2*math.pi)*(bounding_radius*bounding_radius)
	local F               = area * windPressure(windSpeed) * 0.0035
	return F
end

function Area(entity) -- entity and wp = wind pressure
	if entity.boundingRadiusArea == nil then
	
		local bounding_radius = entity:BoundingRadius()
		local area            = (2*math.pi)*(bounding_radius*bounding_radius)

		entity.boundingRadiusArea = area
		return area
	else
		return entity.boundingRadiusArea 
	end
	
end


function IsSomethingBlockingWind(entity)

	
	local tr = util.TraceLine( {
		start = entity:GetPos() + Vector(0,0,10),
		endpos = entity:GetPos() + Vector(0,0,10) + (GLOBAL_SYSTEM["Atmosphere"]["Wind"]["Direction"] * 300),
		filter = entity
			
	} )
		
		

	return tr.Hit
end


--[[	
local dnc_length		= CreateConVar( "dnc_length", "3600", bit.bor( FCVAR_ARCHIVE, FCVAR_GAMEDLL ), "The duration of one day in seconds." );

local TIME_NOON			= 12;		-- 12:00pm
local TIME_MIDNIGHT		= 0;		-- 12:00am
local TIME_DAWN_START	= 4;		-- 4:00am
local TIME_DAWN_END		= 6.5;		-- 6:30am
local TIME_DUSK_START	= 17;		-- 5:00pm;
local TIME_DUSK_END		= 19.5;		-- 7:30pm;

local STYLE_LOW			= string.byte( 'b' );		-- style for night time
local STYLE_HIGH		= string.byte( 'm' );		-- style for day time

local NIGHT				= 0;
local DAWN				= 1;
local DAY				= 2;
local DUSK				= 3;

local SKYPAINT =
{
	[DAWN] =
	{
		TopColor		= Vector( 0.2, 0.5, 1 ),
		BottomColor		= Vector( 1, 0.71, 0 ),
		FadeBias		= 1,
		HDRScale		= 0.26,
		StarScale		= 0.66,
		StarFade		= 0.0,	-- Do not change!
		DuskScale		= 1,
		DuskIntensity	= 1,
		DuskColor		= Vector( 1, 0.2, 0 ),
		SunColor		= Vector( 0.2, 0.1, 0 ),
		SunSize			= 0.34,
	},
	[DAY] =
	{
		TopColor		= Vector( 0.2, 0.49, 1 ),
		BottomColor		= Vector( 0.01, 0.96, 1 ),
		FadeBias		= 1,
		HDRScale		= 0.26,
		StarScale		= 0.66,
		StarFade		= 1.5,	-- Do not change!
		DuskScale		= 1,
		DuskIntensity	= 1,
		DuskColor		= Vector( 1, 0.2, 0 ),
		SunColor		= Vector( 0.83, 0.45, 0.11 ),
		SunSize			= 0.34,
	},
	[DUSK] =
	{
		TopColor		= Vector( 0.09, 0.32, 0.32 ),
		BottomColor		= Vector( 1, 0.48, 0 ),
		FadeBias		= 1,
		HDRScale		= 0.36,
		StarScale		= 0.66,
		StarFade		= 0.0,	-- Do not change!
		DuskScale		= 1,
		DuskIntensity	= 5.31,
		DuskColor		= Vector( 1, 0.36, 0 ),
		SunColor		= Vector( 0.83, 0.45, 0.11 ),
		SunSize			= 0.34,
	},
	[NIGHT] =
	{
		TopColor		= Vector( 0.00, 0.00, 0.00 ),
		BottomColor		= Vector( 0.10, 0.05, 0.11 ),
		FadeBias		= 0.27,
		HDRScale		= 0.19,
		StarScale		= 0.66,
		StarFade		= 5.0,	-- Do not change!
		DuskScale		= 0,
		DuskIntensity	= 0,
		DuskColor		= Vector( 1, 0.36, 0 ),
		SunColor		= Vector( 0.83, 0.45, 0.11 ),
		SunSize			= 0.0,
	}
};

local DNC =
{
	m_InitEntities = false,
	m_Time = 6.5,
	m_LastPeriod = NIGHT,
	m_LastStyle = '.',
	m_Paused = false,

	Hook = function( this, name )

		local func = this[name];
		local function Wrapper( ... )
			func( this, ... );
		end

		hook.Add( name, string.format( "atmos.%s", tostring( this ), name ), Wrapper );

	end,

	
	Initialize = function( self )

	 self:Hook( "Think" );

	end,

	InitEntities = function( self )

		self.m_LightEnvironment = ents.FindByClass( "light_environment" )[1];
		self.m_EnvSun = ents.FindByClass( "env_sun" )[1];
		self.m_EnvSkyPaint = ents.FindByClass( "env_skypaint" )[1];
		self.m_RelayDawn = ents.FindByName( "dawn" )[1];
		self.m_RelayDusk = ents.FindByName( "dusk" )[1];

		-- put the sun on the horizon initially
		if( IsValid( self.m_EnvSun ) ) then
			self.m_EnvSun:SetKeyValue( "sun_dir", "1 0 0" );
		end

		-- HACK: Fixes prop lighting since the first pattern change fails to update it.
		if( IsValid( self.m_LightEnvironment ) ) then
			self.m_LightEnvironment:Fire( "FadeToPattern", 'a' );
		end

		self.m_InitEntities = true;

	end,

	Think = function( self )

	
		if( not self.m_InitEntities ) then self:InitEntities(); end

		if( not self.m_Paused ) or #ents.FindByClass("gd_w*") == 0 then
			self.m_Time = self.m_Time + ( 24 / dnc_length:GetInt() ) * FrameTime();
			if( self.m_Time > 24 ) then
				self.m_Time = 0;
			end
		end

		-- since our dawn/dusk periods last several hours find the mid point of them
		local dawnMidPoint = ( TIME_DAWN_END + TIME_DAWN_START ) / 2;
		local duskMidPoint = ( TIME_DUSK_END + TIME_DUSK_START ) / 2;

		-- dawn/dusk/night events
		if( self.m_Time >= TIME_DUSK_END ) then
			if( self.m_LastPeriod ~= NIGHT ) then
				self.m_EnvSun:Fire( "TurnOff", "", 0 );
				
				self.m_LastPeriod = NIGHT;
			end

		elseif( self.m_Time >= duskMidPoint ) then
			if( self.m_LastPeriod ~= DUSK ) then
				if( IsValid( self.m_RelayDusk ) ) then
					self.m_RelayDusk:Fire( "Trigger", "" );
				end


				-- at dawn select if we should display clouds for night or not (50% chance)
				if( IsValid( self.m_EnvSkyPaint ) ) then	
					self.m_EnvSkyPaint:SetStarTexture( "skybox/starfield" );
				end

				self.m_LastPeriod = DUSK;
			end

		elseif( self.m_Time >= dawnMidPoint ) then
			if( self.m_LastPeriod ~= DAWN ) then
				if( IsValid( self.m_RelayDawn ) ) then
					self.m_RelayDawn:Fire( "Trigger", "" );
				end


				-- at dawn select if we should display clouds for day or not (50% chance)
				if( IsValid( self.m_EnvSkyPaint ) ) then					
						SKYPAINT[DAY].StarFade = 0;
				end

				self.m_LastPeriod = DAWN;
			end

		elseif( self.m_Time >= TIME_DAWN_START ) then
			if( self.m_LastPeriod ~= DAY ) then
				self.m_EnvSun:Fire( "TurnOn", "", 0 );

				self.m_LastPeriod = DAY;
			end

		end

		-- light_environment
		if( IsValid( self.m_LightEnvironment ) ) then
			local frac = 0;

			if( self.m_Time >= dawnMidPoint and self.m_Time < TIME_NOON ) then
				frac = math.EaseInOut( ( self.m_Time - dawnMidPoint ) / ( TIME_NOON - dawnMidPoint ), 0, 1 );
			elseif( self.m_Time >= TIME_NOON and self.m_Time < duskMidPoint ) then
				frac = 1 - math.EaseInOut( ( self.m_Time - TIME_NOON ) / ( duskMidPoint - TIME_NOON ), 1, 0 );
			end

			local style = string.char( math.floor( Lerp( frac, STYLE_LOW, STYLE_HIGH ) + 0.5 ) );

			if( self.m_LastStyle ~= style ) then
				self.m_LightEnvironment:Fire( "FadeToPattern", style );
				self.m_LastStyle = style;
			end
		end

		-- env_sun
		if( IsValid( self.m_EnvSun ) ) then
			if( self.m_Time >= TIME_DAWN_START and self.m_Time <= TIME_DUSK_END ) then
				local frac = 1 - ( ( self.m_Time - TIME_DAWN_START ) / ( TIME_DUSK_END - TIME_DAWN_START ) );
				local angle = Angle( -180 * frac, 15, 0 );

				self.m_EnvSun:SetKeyValue( "sun_dir", tostring( angle:Forward() ) );
			end
		end

		-- env_skypaint
		if( IsValid( self.m_EnvSkyPaint ) ) then
			-- env_skypaint doesn't update fast enough.
			if( IsValid( self.m_EnvSun ) ) then
				self.m_EnvSkyPaint:SetSunNormal( self.m_EnvSun:GetInternalVariable( "m_vDirection" ) );
			end

			
			local cur = NIGHT;
			local next = NIGHT;
			local frac = 0;

			if( self.m_Time >= TIME_DAWN_START and self.m_Time < dawnMidPoint ) then
				cur = NIGHT;
				next = DAWN;
				frac = math.EaseInOut( ( self.m_Time - TIME_DAWN_START ) / ( dawnMidPoint - TIME_DAWN_START ), 0.5, 0.5 );
			elseif( self.m_Time >= dawnMidPoint and self.m_Time < TIME_DAWN_END ) then
				cur = DAWN;
				next = DAY;
				frac = math.EaseInOut( ( self.m_Time - dawnMidPoint ) / ( TIME_DAWN_END - dawnMidPoint ), 0.5, 0.5 );
			elseif( self.m_Time >= TIME_DUSK_START and self.m_Time < duskMidPoint ) then
				cur = DAY;
				next = DUSK;
				frac = math.EaseInOut( ( self.m_Time - TIME_DUSK_START ) / ( duskMidPoint - TIME_DUSK_START ), 0.5, 0.5 );
			elseif( self.m_Time >= duskMidPoint and self.m_Time < TIME_DUSK_END ) then
				cur = DUSK;
				next = NIGHT;
				frac = math.EaseInOut( ( self.m_Time - duskMidPoint ) / ( TIME_DUSK_END - duskMidPoint ), 0.5, 0.5 );
			elseif( self.m_Time >= TIME_DAWN_END and self.m_Time <= TIME_DUSK_END ) then
				cur = DAY;
				next = DAY;
			end

			self.m_EnvSkyPaint:SetTopColor( LerpVector( frac, SKYPAINT[cur].TopColor, SKYPAINT[next].TopColor ) );
			self.m_EnvSkyPaint:SetBottomColor( LerpVector( frac, SKYPAINT[cur].BottomColor, SKYPAINT[next].BottomColor ) );
			self.m_EnvSkyPaint:SetSunColor( LerpVector( frac, SKYPAINT[cur].SunColor, SKYPAINT[next].SunColor ) );
			self.m_EnvSkyPaint:SetDuskColor( LerpVector( frac, SKYPAINT[cur].DuskColor, SKYPAINT[next].DuskColor ) );
			self.m_EnvSkyPaint:SetFadeBias( Lerp( frac, SKYPAINT[cur].FadeBias, SKYPAINT[next].FadeBias ) );
			self.m_EnvSkyPaint:SetHDRScale( Lerp( frac, SKYPAINT[cur].HDRScale, SKYPAINT[next].HDRScale ) );
			self.m_EnvSkyPaint:SetDuskScale( Lerp( frac, SKYPAINT[cur].DuskScale, SKYPAINT[next].DuskScale ) );
			self.m_EnvSkyPaint:SetDuskIntensity( Lerp( frac, SKYPAINT[cur].DuskIntensity, SKYPAINT[next].DuskIntensity ) );
			self.m_EnvSkyPaint:SetSunSize( Lerp( frac, SKYPAINT[cur].SunSize, SKYPAINT[next].SunSize ) );
			self.m_EnvSkyPaint:SetStarFade( Lerp( frac, SKYPAINT[cur].StarFade, SKYPAINT[next].StarFade ) );
			self.m_EnvSkyPaint:SetStarScale( Lerp( frac, SKYPAINT[cur].StarScale, SKYPAINT[next].StarScale ) );
			self.m_EnvSkyPaint:SetDrawStars( true );
			self.m_EnvSkyPaint:SetStarTexture( "skybox/starfield" );
		end

	end,

	TogglePause = function( self )

		self.m_Paused = not self.m_Paused;

	end,

	SetTime = function( self, time )

		self.m_Time = math.Clamp( time, 0, 24 );

		-- FIXME: we're bypassing the sun code
		if( IsValid( self.m_EnvSun ) ) then
			self.m_EnvSun:SetKeyValue( "sun_dir", "1 0 0" );
		end

		-- FIXME: we're bypassing the dusk/dawn events
		if( IsValid( self.m_EnvSkyPaint ) ) then
			SKYPAINT[DAY].StarFade = 0;
		end

	end,

	GetTime = function( self )

		return self.m_Time;

	end,
};

	DNC:Initialize();

concommand.Add( "dnc_pause", function( pl, cmd, args )

	if( not pl:IsSuperAdmin() ) then return; end
	
	
	DNC:TogglePause();

	pl:PrintMessage( HUD_PRINTCONSOLE, "DNC is " .. ( DNC.m_Paused and "paused" or "no longer paused" ) );

end );

concommand.Add( "dnc_settime", function( pl, cmd, args )

	if( not pl:IsSuperAdmin() ) then return; end

	DNC:SetTime( tonumber( args[1] or "0" ) );

end );

concommand.Add( "dnc_gettime", function( pl, cmd, args )

	local time = DNC:GetTime();
	local hours = math.floor( time );
	local minutes = ( time - hours ) * 60;

	pl:PrintMessage( HUD_PRINTCONSOLE, string.format( "The current time is %s", string.format( "%02i:%02i", hours, minutes ) ) );

end );

--]]

	


end


if (CLIENT) then 

function createLoopedSound(client, sound)
	local sound = Sound(sound)

	CSPatch = CreateSound(client, sound)
	CSPatch:Play()
	return CSPatch
	
end



function gfx_screenParticles()
	if LocalPlayer().ScreenParticles==nil then return end

	
	


	
	for k, v in pairs(LocalPlayer().ScreenParticles) do
	
		local t    = v["Life"]
		local size = v["Size"]
		local tex  = v["Texture"]
		local mat  = v["Material"]
		local isref = v["Refracting"]
		local pos   = v["Pos"]
		local pvel  = v["Velocity"]
		
		local vel   = LocalPlayer():GetVelocity()/50
		local velnrl= LocalPlayer():GetVelocity():GetNormalized()
		local dot   = (LocalPlayer():GetAimVector():Dot(LocalPlayer():GetVelocity())/10) -- dot product between aim vec and vel
		
		
		
		local fdir = (Vector(ScrW()/2, ScrH()/2, 0) - LocalPlayer().ScreenParticles[k]["Pos"]):GetNormalized() * (dot/25)

		if CurTime()<=t then 
			mat:SetFloat( "$refractamount", 0.4 )
			render.UpdateScreenEffectTexture()

			surface.SetTexture(tex)
			surface.SetDrawColor( 255, 255, 255, math.Clamp( (t - CurTime()), 0, 1 )*255 )
			surface.DrawTexturedRect( pos.x, pos.y,size, size )
			LocalPlayer().ScreenParticles[k]["Pos"] = LocalPlayer().ScreenParticles[k]["Pos"] - fdir + pvel + Vector(0,velnrl.z*8,0) 
			

	
			
		else
			LocalPlayer().ScreenParticles[k] = nil 
		end
		
		
	end
	

	
end



function FindNearestEntity(self, class)
	
	if ents.FindByClass(class)[1] == nil then return nil end
	
	local current_target          = ents.FindByClass(class)[1]
	
		
	for k, v in pairs(ents.FindByClass(class)) do
		
		local dis   = current_target:GetPos():Distance(self:GetPos()) -- from current target to self
		local dis2  = v:GetPos():Distance(self:GetPos()) -- from new target to self 
		
		
		if dis2 <= dis then
			current_target = v
			
			
		end
	
	end
		
	return current_target, self:GetPos():Distance(current_target:GetPos())
	
end






sound.Add( {
	name = "Underwater",
	channel = CHAN_STATIC,
	volume = 1.0,
	level = 80,
	pitch = { 20, 49 },
	sound = "ambient/water/underwater.wav"
} )


function gfx_Underwater()

	if LocalPlayer():GetNWBool("IsUnderwater", false)==true then
		if LocalPlayer().LastIsUnderwater==false and LocalPlayer():GetNWBool("IsUnderwater", false)==true then
			LocalPlayer():EmitSound("Underwater", 100, 100)
			LocalPlayer().LastIsUnderwater=true

		end
		
		local flood  = ents.FindByClass("env_dynamicwater")[1] or  ents.FindByClass("env_dynamicwater_b")[1]
		
		if flood==nil then return end 
		
		if flood:IsValid() then 
		
		

			local z_diff = math.abs(LocalPlayer():GetNWInt("ZWaterDepth", 0))
			local alpha  =  math.Clamp( z_diff,0,800) / 800
			
			
		
			local tab = {}
				tab[ "$pp_colour_addr" ] = 0
				tab[ "$pp_colour_addg" ] = 0
				tab[ "$pp_colour_addb" ] = 0
				tab[ "$pp_colour_brightness" ] = 0 - ( alpha * 0.7 )
				tab[ "$pp_colour_contrast" ] = 1 - ( alpha * 0.25 )
				tab[ "$pp_colour_colour" ] = 1 - ( alpha * 0.25 )
				tab[ "$pp_colour_mulr" ] = 0
				tab[ "$pp_colour_mulg" ] = -1 * alpha
				tab[ "$pp_colour_mulb" ] = -1 * alpha
			
			DrawColorModify( tab )

			
			local mat_Overlay = Material("effects/water_warp01")
			render.UpdateScreenEffectTexture()

			mat_Overlay:SetFloat( "$envmap", 0 )
			mat_Overlay:SetFloat( "$envmaptint", 0 )
			mat_Overlay:SetFloat( "$refractamount", 0.1 )
			mat_Overlay:SetInt( "$ignorez", 1 )

			render.SetMaterial( mat_Overlay )
			render.DrawScreenQuad()
		end
	end
	
	if  LocalPlayer():GetNWBool("IsUnderwater", false)==false then -- FIX NULL ERROR
		LocalPlayer():StopSound("Underwater")

	end
	LocalPlayer().LastIsUnderwater = LocalPlayer():GetNWBool("IsUnderwater")

end
hook.Add("RenderScreenspaceEffects", "gfx_Underwater", gfx_Underwater )

	
	
function gfx_Underlava()
	
	if LocalPlayer().LavaIntensity == nil then LocalPlayer().LavaIntensity = 0 end
	LocalPlayer().LavaIntensity = math.Clamp(LocalPlayer().LavaIntensity - (FrameTime()/4), 0, 1)
	local intensity = LocalPlayer().LavaIntensity 
	
	local function DrawLava()
			
		local tab = {}
			tab[ "$pp_colour_addr" ] = intensity * 4
			tab[ "$pp_colour_addg" ] = intensity * 2
			tab[ "$pp_colour_addb" ] = -intensity
			tab[ "$pp_colour_brightness" ] = 0
			tab[ "$pp_colour_contrast" ] = 1
			tab[ "$pp_colour_colour" ] = 1
			tab[ "$pp_colour_mulr" ] = intensity
			tab[ "$pp_colour_mulg" ] = -intensity
			tab[ "$pp_colour_mulb" ] = -intensity
		
		DrawColorModify( tab )
		if intensity > 0 then
			
			local mat_Overlay = Material("effects/water_warp01")
			render.UpdateScreenEffectTexture()

			mat_Overlay:SetFloat( "$envmap", 0 )
			mat_Overlay:SetFloat( "$envmaptint", 0 )
			mat_Overlay:SetFloat( "$refractamount", intensity )
			mat_Overlay:SetInt( "$ignorez", 1 )

			render.SetMaterial( mat_Overlay )
			render.DrawScreenQuad()
		end
		
	end
	DrawLava()
end
hook.Add("RenderScreenspaceEffects", "gfx_Underlava", gfx_Underlava )
	
	
	
	
	
	
	
	
	
	
	
	
	
	
--[[

Function Name: 		 FindInCylinder
Function Purpose:    Find entities in a vertical cylinder
Function parameters: 
					
					[1] Starting position
					[2] Radius of the cylinder (                 constant                        )
					[3] Max height gain        (         local to starting position              )
					[4] Min height gain        (         local to starting position              )
					[5] Physics ents only      ( filters out non-physics entities if true (bool) )

					
Function notes:
	Cylinder always is vertical 

--]]


function FindInCylinder(pos, radius, top, bottom)

	local entities = {}
	local selfpos_normalized = Vector(pos.x, pos.y, 0)
	
	local z_max, z_min = pos.z + top, pos.z + bottom 
	
	for k, v in pairs(ents.GetAll()) do

		local vpos            = v:GetPos() 
		local vpos_normalized = Vector(vpos.x, vpos.y, 0)
		
		local dist            = vpos_normalized:Distance(selfpos_normalized)
		local zdiff           = vpos.z - pos.z 
		
		
		
		if dist <= radius then 
				
			if zdiff > 0 then -- v is higher than me 
				if zdiff <= top then
					table.insert(entities, v)
				end
				
			elseif zdiff == 0 then -- same position
				table.insert(entities, v)
				
			elseif zdiff < 0 then -- v is below us
			
				if zdiff >= bottom then
					table.insert(entities, v)
				end
			
			end
			
		
		end
			
				
	
	
	end
	
	return entities 
end







function CreateSoundWave(soundpath, epicenter, soundtype, speed, pitchrange, shakeduration) -- SPEED MUST BE IN MS^-1


	local distance = LocalPlayer():GetPos():Distance(epicenter) -- distance from player and epicenter
	local t        = distance / convert_MetoSU(speed)  -- speed of sound = 340.29 m/s

	timer.Simple(t, function()
		if LocalPlayer():IsValid() then
			
			if shakeduration > 0 then
				
				util.ScreenShake( LocalPlayer():GetPos(), 1, 15, 1, 10000 )
		
			end
			
			if soundtype == "mono" then
				
				surface.PlaySound( soundpath )

			elseif soundtype == "stereo" then
				LocalPlayer():EmitSound( soundpath, 100, math.random(pitchrange[1], pitchrange[2]), 1 )

			elseif soundtype == "3d" then
				sound.Play( soundpath,  epicenter, 170, math.random(pitchrange[1], pitchrange[2]), 1 )
			else
				print("WHAT THE FUCK ARE WE DOING HERE???? GO AND REPORT THIS TO THE CREATOR!")
			end		
							
		end
	end)

end
		








function AddCeilingWaterDrops(effect_nm, ieffect_nm, delay, offset_range, angle)
	if (SERVER) then return end 
	if GetConVar("gdisasters_graphics_draw_ceiling_effects"):GetInt() <= 0 then return end 
	
	local offset = Vector(math.random(-1 * offset_range,1  * offset_range),math.random(-1 * offset_range,1  * offset_range),0, 0)
	local fallback_angle = Angle(0,0,0)	

	
	local fromGroundToCeiling_TR = util.TraceLine( {
			start  = LocalPlayer():GetPos() + offset,
			endpos = LocalPlayer():GetPos() + offset + Vector(0,0,8000) ,
			filter = LocalPlayer()
	} )
	
	local fromCeilingToGround_TR = util.TraceLine( {
			start  = fromGroundToCeiling_TR.HitPos,
			endpos = fromGroundToCeiling_TR.HitPos - Vector(0,0,8000),
			filter = LocalPlayer()
	} )
	
	local d = fromGroundToCeiling_TR.HitPos:Distance(fromCeilingToGround_TR.HitPos)
	local t = d / 500 
	 
	if not(fromGroundToCeiling_TR.Hit or fromCeilingToGround_TR.Hit) then return end 

	
	ParticleEffect(effect_nm or "nil", fromGroundToCeiling_TR.HitPos, angle or fallback_angle ,nil)

	timer.Simple(delay + t, function()
		
		ParticleEffect(ieffect_nm or "nil", fromCeilingToGround_TR.HitPos, angle or fallback_angle ,nil)
		
	end)

	



end
	

end

function GetUnweldChanceFromEFCategory(category)

	if category == "undetermined" then 
		return 0 
	elseif category == "EF0" then 
		return 0 
	elseif category == "EF1" then
		return 2
	elseif category == "EF2" then
		return 5 
	elseif category == "EF3" then
		return 17.5
	elseif category == "EF4" then
		return 25
	elseif category == "EF5" then
		return 25
	end
	

end

function GetEFCategory(windspeed)

	if windspeed >= 0 and windspeed < 105 then 
		return "undetermined";
	elseif windspeed >= 105 and windspeed < 137 then 
		return "EF0";
	elseif windspeed >= 137 and windspeed < 177 then 
		return "EF1";
	elseif windspeed >= 177 and windspeed < 217 then 
		return "EF2";
	elseif windspeed >= 217 and windspeed < 266 then 
		return "EF3";
	elseif windspeed >= 266 and windspeed < 322 then 
		return "EF4";
	elseif windspeed >= 322 and windspeed < 512 then 
		return "EF5"
	else
		return "incalculable" 
		
	end
end

function QuadraticCurve(t)
	
	t = math.Clamp(t,0,1) * 20 
	return ((t-10)^2)/100
	
	
end

function InverseQuadraticCurve(t)
	return 1 - QuadraticCurve(t)
end


function GetPhysicsMultiplier()

	return (200/3) / ( 1 / ( engine.TickInterval() ) )
end

function GetFrameMultiplier()
	if FrameTime() == 0 then return 0 end 
	
	return 60 / ( 1 / FrameTime())
end


function HitChance(chance)
	if (SERVER) then 
	
		return math.random() < ( math.Clamp(chance * GetPhysicsMultiplier(),0,100)/100)
	elseif (CLIENT) then 
	
		return math.random() < ( math.Clamp(chance * GetFrameMultiplier(),0,100)/100)

	
	end
end

function convert_SUtoMe(units)
	return (units * 0.75) / 39.37
end
	
function convert_MetoSU(metres)
	return (metres * 39.37) / 0.75
end
	
	
function convert_KMPHtoMe(kmph)
	return (kmph*1000)/3600
end

function convert_MetoKMPH(me)
	return (me*3600 / 1000)
end

function FixedSortedPairsByMemberValue( pTable, pValueName, Desc )

	pTable = table.Copy( pTable )
	Desc = Desc or false

	local pSortedTable = table.ClearKeys( pTable, true )

	table.SortByMember( pSortedTable, pValueName, !Desc )

	local SortedIndex = {}
	for k, v in ipairs( pSortedTable ) do
		table.insert( SortedIndex, v.__key )
	end

	pTable.__SortedIndex = SortedIndex

	return fnPairsSorted, pTable, nil

end

function RotateVectorOnAxisGivenAngle(v, k, ang)
	local theta    = math.rad(ang)
	local ctheta   = math.cos(theta)
	local stheta   = math.sin(theta)
	
	local vrot = v * ctheta + ( k:Cross(v)*stheta) + (k * v) * ( 1 - stheta)
	
	return vrot 

end

function BlendValues(i1,i2,mode)

	if mode == "Darken Only" then 
		return math.min(i1, i2)
	elseif mode == "Lighten Only" then 
		return math.max(i1, i2)
	elseif mode == "Add" then 
		return math.Clamp(i1 + i2, 0,1)
	elseif mode == "Divide" then 
		return math.Clamp(i1/i2,0,1)
	elseif mode == "Subtract" then 
		return math.max(i1,i2)-math.min(i1,i2) 
	elseif mode == "Average" then 
		return (i1+i2) * 0.5
	else
		return 0
	end
end


function Vec2D(vector)

return Vector(vector.x, vector.y, 0 )

end

function InitializeTable(num) 

	local tbl = {}
	
	for i=0, num do 
		table.insert(tbl, 0)
		
	end
	return tbl 
	
end

Noise = {}
Noise.Grad3 = {Vector(1,1,0),Vector(-1,1,0),Vector(1,-1,0),Vector(-1,-1,0),
               Vector(1,0,1),Vector(-1,0,1),Vector(1,0,-1),Vector(-1,0,-1),
               Vector(0,1,1),Vector(0,-1,1),Vector(0,1,-1),Vector(0,-1,-1)			 
}

Noise.p_temp = {

			  151,160,137,91,90,15,
			  131,13,201,95,96,53,194,233,7,225,140,36,103,30,69,142,8,99,37,240,21,10,23,
			  190, 6,148,247,120,234,75,0,26,197,62,94,252,219,203,117,35,11,32,57,177,33,
			  88,237,149,56,87,174,20,125,136,171,168, 68,175,74,165,71,134,139,48,27,166,
			  77,146,158,231,83,111,229,122,60,211,133,230,220,105,92,41,55,46,245,40,244,
			  102,143,54, 65,25,63,161, 1,216,80,73,209,76,132,187,208, 89,18,169,200,196,
			  135,130,116,188,159,86,164,100,109,198,173,186, 3,64,52,217,226,250,124,123,
			  5,202,38,147,118,126,255,82,85,212,207,206,59,227,47,16,58,17,182,189,28,42,
			  223,183,170,213,119,248,152, 2,44,154,163, 70,221,153,101,155,167, 43,172,9,
			  129,22,39,253, 19,98,108,110,79,113,224,232,178,185, 112,104,218,246,97,228,
			  251,34,242,193,238,210,144,12,191,179,162,241, 81,51,145,235,249,14,239,107,
			  49,192,214, 31,181,199,106,157,184, 84,204,176,115,121,50,45,127, 4,150,254,
			  138,236,205,93,222,114,67,29,24,72,243,141,128,195,78,66,215,61,156,180
}

	
Noise.p         = InitializeTable(255)
Noise.perm      = InitializeTable(511)
Noise.permMod12 = InitializeTable(511)
Noise.perlin    = nil


Noise.F2        = 0.5 * (math.sqrt(3)-1) -- 0.366025404
Noise.G2        = (3 - math.sqrt(3))/6 -- 0.211324865  
Noise.F3        = 1/3
Noise.G3        = 1/6

Noise.PERLIN_YWRAPB = 4
Noise.PERLIN_YWRAP = bit.lshift(1,Noise.PERLIN_YWRAPB)
Noise.PERLIN_ZWRAPB = 8
Noise.PERLIN_ZWRAP = bit.lshift(1,Noise.PERLIN_ZWRAPB)
Noise.PERLIN_SIZE = 4095

Noise.perlin_octaves = 4
Noise.perlin_amp_falloff = 0.5

Noise.dot2D = function(g, x, y)
	
	return g.x*x + g.y*y

end

Noise.dot3D        = function(g, x, y, z)

	return g.x*x + g.y*y + g.z

end

Noise.fade         = function(t) 
	return t*t*t*(t*(t*6-15)+10);
			
end

Noise.erp         = function(a, b, t)
	return (1-t)*a + t*b
end

Noise.scaled_cosine = function(i) 

	return 0.5*(1-math.cos(i*math.pi))
end

Noise.simplex2DAdvanced = function(xin, yin, crdscale_x, crdscale_y, xoff, yoff, threshold_min,threshold_max)
	return math.Clamp(Noise.simplex2D( (xin+xoff)*crdscale_x,(yin+yoff)*crdscale_y), threshold_min, threshold_max)

end




Noise.simplex2D = function(xin, yin )


	local n0, n1, n2 = nil, nil, nil 
	
	local s = (xin+yin)*Noise.F2 
	local i = math.floor(xin+s)
	local j = math.floor(yin+s)
	
	local t = (i+j)*Noise.G2 
	local X0, Y0 = i-t, j-t
	local x0, y0 = xin-X0, yin-Y0
	
	-- determine which simplex we are in 
	
	local i1, i2 = nil, nil 
	if x0>y0 then i1=1; j1=0 else i1=0;j1=1 end
	
	local x1 = x0 - i1 + Noise.G2 
	local y1 = y0 - j1 + Noise.G2 
	local x2 = x0 - 1 + 2 * Noise.G2 
	local y2 = y0 - 1 + 2 * Noise.G2 
	
	
	local ii = bit.band( i , 255) 
	local jj = bit.band( j , 255) 
	
	
	local gi0 = Noise.permMod12[1 + ii+(Noise.perm[jj + 1] )] + 1 
	local gi1 = Noise.permMod12[1 +ii+i1+(Noise.perm[jj+j1 + 1] )] + 1
	local gi2 = Noise.permMod12[1 +ii+1+(Noise.perm[jj+2])] + 1
	
	
	
	local t0 = 0.5 - x0*x0-y0*y0 
	
	if (t0<0) then n0 = 0; else t0 = t0 * t0; n0 = t0 * t0 * Noise.dot2D(Noise.Grad3[gi0 ],x0,y0); end 
	
	
	local t1 = 0.5 - x1*x1-y1*y1
	
	if(t1<0) then n1 = 0.0 else t1 = t1 * t1; n1 = t1 * t1 * Noise.dot2D(Noise.Grad3[gi1], x1, y1); end 

	local t2 = 0.5 - x2*x2-y2*y2
	
	if(t2<0) then n2 = 0.0; else t2 = t2 * t2; n2 = t2 * t2 * Noise.dot2D(Noise.Grad3[gi2], x2, y2); end 
	
	return 70.0 * (n0 + n1 + n2);
	


end
	
Noise.simplex3DAdvanced = function(xin, yin, zin, crdscale_x, crdscale_y, crdscale_z, xoff, yoff, zoff, threshold_min,threshold_max)
	return math.Clamp(Noise.simplex3D( (xin+xoff)*crdscale_x,(yin+yoff)*crdscale_y,(zin+zoff)*crdscale_z), threshold_min, threshold_max)

end

Noise.perlin3D = function(x, y, z )

	y = y || 0
	z = z || 0 
	
	rand = math.random
	
	if (Noise.perlin == nil) then 
		Noise.perlin = {}
		for x=0, Noise.PERLIN_SIZE  do
			table.insert(Noise.perlin, rand())
		end
		print("rebuild")
	end
	
	if (x<0) then x = -x end
	if (y<0) then y = -y end 
	if (z<0) then z = -z end 
	
	local xi, yi, zi = math.floor(x), math.floor(y), math.floor(z)
	local xf, yf, zf = x - xi, y - yi, z - zi 
	local rxf, ryf = nil, nil 
	
	local r=0 
	local ampl = 0.5 
	
	local n1, n2, n3 = nil, nil, nil 
	
	for o=0, Noise.perlin_octaves -1 do 
		local of = xi + bit.lshift(yi, Noise.PERLIN_YWRAPB) + bit.lshift(zi,Noise.PERLIN_ZWRAPB)
		
		rxf = Noise.scaled_cosine(xf)
		ryf = Noise.scaled_cosine(yf)
		
		n1 = Noise.perlin[ 1 + bit.band(of,Noise.PERLIN_SIZE)]
		n1 = n1 + ( rxf * (Noise.perlin[1+ bit.band(of+1,Noise.PERLIN_SIZE)]-n1))		
		n2 = Noise.perlin[1+bit.band(of+Noise.PERLIN_YWRAP,Noise.PERLIN_SIZE)]
		n2 = n2 + ( rxf * (Noise.perlin[1+ bit.band(of+1+Noise.PERLIN_YWRAP,Noise.PERLIN_SIZE)]-n2))
		n1 = n1 + ryf*(n2-n1)
		
		of = of + Noise.PERLIN_ZWRAP
		n2 = Noise.perlin[1 + bit.band(of,Noise.PERLIN_SIZE)]
		n2 = n2 + rxf*(Noise.perlin[1 + bit.band(of+1,Noise.PERLIN_SIZE)]-n2)
		n3 = Noise.perlin[1 + (bit.band(of+Noise.PERLIN_YWRAP,Noise.PERLIN_SIZE))]
		n3 = n3 + (rxf*(Noise.perlin[1 + bit.band(of+Noise.PERLIN_YWRAP+1,Noise.PERLIN_SIZE)]-n3))
		n2 = n2 + ryf*(n3-n2)
		
		n1 = n1 + Noise.scaled_cosine(zf)*(n2-n1)
		
		r = r + n1*ampl 
		ampl = ampl * Noise.perlin_amp_falloff
		
		xi = bit.lshift(xi,1)
		xf = xf * 2 
		yi = bit.lshift(yi,1)
		yf = yf * 2 
		zi = bit.lshift(zi,1)
		zf = zf * 2 
		
		if (xf>=1) then xi=xi+1;xf=xf-1; end 
		if (yf>=1) then yi=yi+1;yf=yf-1; end 
		if (zf>=1) then zi=zi+1;zf=zf-1; end 
	end
	return r
end

Noise.perlinDetail = function(lod, falloff)
	if (lod>0) then Noise.perlin_octaves=lod end 
	if (falloff) then Noise.perlin_amp_falloff=falloff end 

end


local precomputed_color = {

    {1.000,0.007,0.000, 0.0},
    {1.000,0.126,0.000, 0.1},
    {1.000,0.234,0.010, 0.2},
    {1.000,0.349,0.067, 0.3},
    {1.000,0.454,0.151, 0.4},
    {1.000,0.549,0.254, 0.5},
    {1.000,0.635,0.370,0.6},
    {1.000,0.710,0.493, 0.7},
    {1.000,0.778,0.620, 0.8},
    {1.000,0.837,0.746, 0.9},
    {1.000,0.890,0.869, 1},
    {1.000,0.937,0.988, 1},
    {0.907,0.888,1.000, 1},
    {0.827,0.839,1.000, 1},
    {0.762,0.800,1.000, 1},
    {0.711,0.766,1.000, 1},
    {0.668,0.738,1.000, 1},
    {0.632,0.714,1.000, 1},
    {0.602,0.693,1.000, 1}
	
}


function EvaluateRayleighAtT(T)
	T = math.Clamp(T,0,10000) / 10000 
	
	local spl_length = #precomputed_color-1
    
    local ipl_from_index = math.floor(T*spl_length)+1
    local ipl_to_index   = math.ceil(T*spl_length)+1
  
    local ipl_from_clr   = precomputed_color[ipl_from_index]
    local ipl_to_clr     = precomputed_color[ipl_to_index]
    
    
    local diff             = (ipl_from_index+T)/ipl_to_index
	
	
	
    local r = ipl_from_clr[1] + ( (ipl_to_clr[1]-ipl_from_clr[1])*diff)
    local g = ipl_from_clr[2] + ( (ipl_to_clr[2]-ipl_from_clr[2])*diff)
    local b = ipl_from_clr[3] + ( (ipl_to_clr[3]-ipl_from_clr[3])*diff)
    local gamma = ipl_from_clr[4] + ( (ipl_to_clr[4]-ipl_from_clr[4])*diff)
  
    return Vector( r*gamma,g*gamma,b*gamma)    
	
	
end

function gDisasters_GetMoonAngleInRadians()

	return math.acos(vector_up:Dot(gDisasters_GetSunDir()))
end

function gDisasters_GetMoonAngleInDegs()

	return math.deg(gDisasters_GetMoonAngleInRadians())
end

function gDisasters_GetSunAngleInRadians()
	return math.acos((vector_up*-1):Dot(gDisasters_GetSunDir()))
end

function gDisasters_GetSunAngleInDegs()
	return math.deg(gDisasters_GetSunAngleInRadians)
end

function gDisasters_GetMoonDir()

	return GetGlobalVector("gdSunDir")*-1
end


function gDisasters_GetSunDir()

	return GetGlobalVector("gdSunDir")
end


function gDisasters_EntityExists(entname)
	
	if not(gDisasters.CachedExists[entname]) then 
	
		net.Start("gd_entity_exists_on_server")
			net.WriteString("sky_camera")
		net.SendToServer()
	else
		return true 
	end
	

end




function gDisasters_Is3DSkybox()


	if (SERVER) then 
	
		if not(gDisasters.Cached.SkyCamera) then gDisasters.Cached.SkyCamera = ents.FindByClass("sky_camera") end 
		if #gDisasters.Cached.SkyCamera > 0 then return true else return IsValid(gDisasters.Cached.SkyCamera[1]) end 
		
	elseif (CLIENT) then
		
		return gDisasters_EntityExists("sky_camera")
		
		
	end
	 
	
end



