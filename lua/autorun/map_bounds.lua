if (SERVER) then
	AddCSLuaFile("autorun/map_bounds.lua") -- this file
end





MAP_BOUNDS = {}
MAP_BOUNDS["gm_atomic"]    				  = { Vector(-14533, -14630, -12790),	Vector(14533, 14630, 700),          Vector(0,0,-12750)	    }
MAP_BOUNDS["gm_bigcity_d"] 				  = { Vector(13172, 13171, -11393), 	Vector(-13033, -13164, 2448),       Vector(64,-2,-11471)    }
MAP_BOUNDS["gm_bigcity"] 				  = { Vector(13172, 13171, -11393),     Vector(-13033, -13164, 2448),       Vector(64,-2,-11471)    }
MAP_BOUNDS["gm_construct"]				  = { Vector(1814, -3696, -555),        Vector(-5247, 6371, 9436),          Vector(0,0,-555)		}
MAP_BOUNDS["gm_flatgrass"] 				  = { Vector(15343,15343,-12735),       Vector(-14299,-15146,14464), 	    Vector(0,0,-12806)		}
MAP_BOUNDS["gm_fork"]     				  = { Vector(-15357, 15357, -9300),     Vector(15241,-15316, -2475),        Vector(0,0,-11178)		}
MAP_BOUNDS["gm_fork_night"]     		  = { Vector(-15357, 15357, -9300),     Vector(15241,-15316, -2475),        Vector(0,0,-11178)		}
MAP_BOUNDS["gm_freespace_13"]    	      = { Vector(15855,15855,-14783),       Vector(-15501,-15761, 10583), 		Vector(0,0,-15775)		}
MAP_BOUNDS["gm_genesis_b24"]    	      = { Vector(15087,-15087,-8127),       Vector(-15121,15021,12250), 		Vector(0,0,-15263)		}
MAP_BOUNDS["gm_construct_flatgrass_v6-2"] = { Vector(-14303,14303,64),          Vector(14302,-14288,10230), 		Vector(0,0,-1127)		}
MAP_BOUNDS["gm_freespace_09_extended"]    = { Vector(15343,15343,-14271),       Vector(-15255,-15242, 8832), 	    Vector(0,0,-15124)		}
MAP_BOUNDS["gm_ddustbowl2"]               = { Vector(-15358, -15358, -4395),    Vector(15322, 15348, 5737), 	    Vector(0,0,-8805)		}
MAP_BOUNDS["gm_ddustbowl2_night"]         = { Vector(-15358, -15358, -4395),    Vector(15322, 15348, 5737), 	    Vector(0,0,-8805)		}
MAP_BOUNDS["gm_calamitycoast"]            = { Vector(-16240,16239,-15975),      Vector(16239,-16240,8149), 	        Vector(0,0,-15975)		}
MAP_BOUNDS["gm_secretconstruct_v3"]       = { Vector(16240, 16240, 128),        Vector(-16240,-16240,16253), 	    Vector(0,0,61)          }



MAP_PATHS = {}
MAP_PATHS["gm_flatgrass"]    			  = { Vector(-13466,9319,-12795),
											  Vector(-5885,4476,-12795),
											  Vector(-2944,-2859,-12795),
											  Vector(-880,-3783,-12795),
											  Vector(5372,-604,-12795), 
											  Vector(4080,3599,-12795),
											  Vector(1283,4951,-12795),
											  Vector(1225,5206,-12795),
											  Vector(5955,15091,-12795)
											}


												





function getMapPath()
	local map = game.GetMap()
	if IsMapRegistered()==false then return nil end 
	return MAP_PATHS[map]
end


function getMapCeiling()
	local map = game.GetMap()
	if IsMapRegistered()==false then return nil end 
	
	return MAP_BOUNDS[map][2].z
end

function getMapSkyBox()
	if IsMapRegistered()==false then return nil end 
	local bounds = getMapBounds()
	local min    = bounds[1]
	local max    = bounds[2]
	
	return { Vector(min.x, min.y, max.z), Vector(max.x, max.y, max.z) }
end


function getMapCenterPos()
	local map        = game.GetMap()
	if IsMapRegistered()==false then return nil end 
	
	local av         = (MAP_BOUNDS[map][1] + MAP_BOUNDS[map][2])  / 2 
	return ((MAP_BOUNDS[map][1] + MAP_BOUNDS[map][2])  / 2)
end


function getMapCenterFloorPos()
	local map = game.GetMap()
	if IsMapRegistered()==false then return nil end 
	
	return MAP_BOUNDS[map][3]
end

function getMapBounds()
	local map = game.GetMap()
	if IsMapRegistered()==false then return nil end 
	
	return {MAP_BOUNDS[map][1],MAP_BOUNDS[map][2]}
end

function IsMapRegistered()
	local map = game.GetMap()
	if MAP_BOUNDS[map]==nil then return false else return true end 
end

if (SERVER) then
	concommand.Add("GPS", function(ply, cmd, args)
		local pos = ply:GetPos()
		pos.x  = math.floor(pos.x)
		pos.y  = math.floor(pos.y)
		pos.z  = math.floor(pos.z)
		
		ply:ChatPrint( "Vector("..pos.x..","..pos.y..","..pos.z..")")
		
	end)
	

end