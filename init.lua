local a = {

	{"legendary_diamond","Legendary Diamond Block", "cyanparticle"},
	{"legendary_gold", "Legendary Gold Block", "purpleparticle"},
	{"legendary_mese", "Legendary Mese Block", "pinkparticle"}	
	
}

for _, a in pairs(a) do

	minetest.register_node("gmd:"..a[1], {
		description = a[2],
		tiles = {a[1]..".png"},
		is_ground_content = false,
		groups = {cracky = 1, level = 3},
		light_source = 10,
		sounds = default.node_sound_metal_defaults(),
	})

	minetest.register_abm({
		nodenames = {"gmd:"..a[1]}, --makes small particles emanate from the beginning of a beam
		interval = 1,
		chance = 2,
		action = function(pos, node)
			minetest.add_particlespawner( --I actually borrowed this code from the nether mod
				8, --amount
				4, --time
				{x=pos.x-0.95, y=pos.y-0.95, z=pos.z-0.95}, --minpos
				{x=pos.x+0.95, y=pos.y+0.95, z=pos.z+0.95}, --maxpos
				{x=-1.2, y=-1.2, z=-1.2}, --minvel
				{x=1.2, y=1.2, z=1.2}, --maxvel
				{x=0,y=0,z=0}, --minacc
				{x=0,y=0,z=0}, --maxacc
				0.5, --minexptime
				1, --maxexptime
				0.25, --minsize
				0.5, --maxsize
				false, --collisiondetection
				a[3]..".png" --texture
			)
		end,
	})

end


local v = {

	{"refined_diamond","Refined Diamond Block"},
	{"purified_diamond", "Purified Diamond Block"},
	{"radiant_diamond", "Radiant Diamond Block"},
	{"true_diamond", "True Diamond Block"},


	{"refined_gold", "Refined Gold Block"},
	{"purified_gold", "Purified Gold Block"},
	{"radiant_gold", "Radiant Gold Block"},
	{"true_gold", "True Gold Block"},
	
	{"hard_mese", "Hard Mese"},
	{"hot_mese", "Hot Mese"},
	{"super_mese", "Super Mese"},
	{"extreme_mese", "Extreme Mese"},	
	
}

for _, v in pairs(v) do

	minetest.register_node("gmd:"..v[1], {
		description = v[2],
		tiles = {v[1]..".png"},
		is_ground_content = false,
		groups = {cracky = 1, level = 3},
		--light_source = 10,
		sounds = default.node_sound_metal_defaults(),
	})

end





local b = {

	{"default:diamondblock","gmd:refined_diamond"},
	{"gmd:refined_diamond", "gmd:purified_diamond"},
	{"gmd:purified_diamond", "gmd:radiant_diamond"},
	{"gmd:radiant_diamond", "gmd:true_diamond"},
	{"gmd:true_diamond", "gmd:legendary_diamond"},
	
	{"default:goldblock", "gmd:refined_gold"},
	{"gmd:refined_gold", "gmd:purified_gold"},
	{"gmd:purified_gold", "gmd:radiant_gold"},
	{"gmd:radiant_gold", "gmd:true_gold"},
	{"gmd:true_gold", "gmd:legendary_gold"},
	
	{"default:mese", "gmd:hard_mese"},
	{"gmd:hard_mese", "gmd:hot_mese"},
	{"gmd:hot_mese", "gmd:super_mese"},
	{"gmd:super_mese", "gmd:extreme_mese"},
	{"gmd:extreme_mese", "gmd:legendary_mese"},		
	
}


for _, b in pairs(b) do

	minetest.register_craft({
		output = b[2],
		recipe = {
			{b[1], b[1], b[1]},
			{b[1], b[1], b[1]},
			{b[1], b[1], b[1]},
		}
	})
	
	minetest.register_craft({
		output = b[1]..' 9',
		recipe = {
			{b[2]},
		}
	})	

end







