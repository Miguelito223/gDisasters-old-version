AddCSLuaFile()

DEFINE_BASECLASS( "gd_building_base" )

ENT.Spawnable		            	 = false        
ENT.AdminSpawnable		             = false 

ENT.PrintName		                 =  "House 01"
ENT.Author			                 =  "Hmm"
ENT.Contact		                     =  "Hmm"
ENT.Category                         =  "Hmm"

ENT.Model                            =  "models/ramses/models/buildings/house_01/house_01.mdl"
ENT.Mass                             =  4000


function ENT:SpawnFunction( ply, tr )
	if ( !tr.Hit ) then return end

	self.OWNER = ply
	local ent = ents.Create( self.ClassName )
	ent:SetPhysicsAttacker(ply)
	ent:SetPos( tr.HitPos + tr.HitNormal * 70    ) 
	ent:Spawn()
	ent:Activate()
	return ent
	
end




