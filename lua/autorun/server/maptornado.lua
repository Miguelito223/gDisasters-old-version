local map = game.GetMap()

local function TornadoMap()
	if map:lower() == "gm_sc_tornadocounty" then return true end   
	if map:lower() == "gm_sc_tornadoplains"   then return true end          
	if map:lower() == "gm_tornadohighway_final"  then return true end    
	if map:lower() == "gm_tornadohighway_night"  then return true end    
	if map:lower() == "gm_tornadohighway_mp"  then return true end    	  	
	if map:lower() == "gm_tornadohighway"   then return true end    
	if map:lower() == "gm_tornadohighway_night"   then return true end   
	if map:lower() == "gm_tornadohighway_v2_mp" then return true end    	
	if map:lower() == "gm_tornadohighway_2014"  then return true end    
	if map:lower() == "gm_tornadohighway_2014_night" then return true end    
	if map:lower() == "gm_tornadonightfall"  then return true end    		
	if map:lower() == "gm_tornadovillage_final"  then return true end    	 
	if map:lower() == "gm_tornado_village_beta1" then return true end    
	if map:lower() == "gm_tornado_village_beta1a"  then return true end    
	if map:lower() == "gm_tornadoflatgrass" then return true end    
	if map:lower() == "gm_tornadoflatgrass_night" then return true end    
	if map:lower() == "gm_tornadonightfall_v2" then return true end  
	if map:lower() == "gm_tornadovalley_v1" then return true end  
	if map:lower() == "gm_tornadoalley_final" then return true end  
end

local function RemoveMapTornados()

	if TornadoMap() == true then

	for k, v in pairs(ents.FindByClass("func_tracktrain", "func_tanktrain")) do
		v:Remove()
		end
	end
end


hook.Add("InitPostEntity","RemoveMapTornados",function()
	if GetConVar("gdisasters_getridmaptor"):GetInt() !=0 then
	RemoveMapTornados()
	end
end)


hook.Add("PostCleanupMap","ReRemovemaptornados",function()
	if GetConVar("gdisasters_getridmaptor"):GetInt() !=0 then
	RemoveMapTornados()
	end
end)

local function SpawnWT()

	local tornado = table.Random({ "gd_d3_ef0", "gd_d4_ef1", "gd_d5_ef2" })

	Twister = ents.Create( tornado )
	Twister:SetPos( Vector(math.random(-10000,10000),math.random(-10000,10000),4500) )
	Twister:Spawn()
	
end


local function SpawnST()


	local tornado = table.Random({ "gd_d6_ef3", "gd_d7_ef4", "gd_d8_ef5" })
	
	Twister = ents.Create( tornado )
	Twister:SetPos( Vector(math.random(-10000,10000),math.random(-10000,10000),4500) )
	Twister:Spawn()
	
end

local tornadotime = math.Clamp( GetConVar("gdisasters_autospawn_timer"):GetInt(), 30, 1000 )

timer.Create( "gdisasters_tornado_spawner", tornadotime, 0, function()
if GetConVar("gdisasters_autospawn"):GetInt() !=0 then
	if math.random(0,GetConVar("gdisasters_autospawn_chance"):GetInt()) == GetConVar("gdisasters_autospawn_chance"):GetInt() then

	if math.random(0,2) == 1 then
		SpawnST() else SpawnWT() end
		end
	end
end)
