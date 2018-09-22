minetest.register_node("gmd:refined_gold", {
	description = "Refined Gold Block",
	tiles = {"refined_gold.png"},
	is_ground_content = false,
	groups = {cracky = 1, level = 3},

})


minetest.register_node("gmd:purified_gold", {
	description = "Purified Gold Block",
	tiles = {"purified_gold.png"},
	is_ground_content = false,
	groups = {cracky = 1, level = 3},
	
})


minetest.register_node("gmd:radiant_gold", {
	description = "Radiant Gold Block",
	tiles = {"radiant_gold.png"},
	is_ground_content = false,
	groups = {cracky = 1, level = 3},

})

minetest.register_node("gmd:true_gold", {
	description = "True Gold Block",
	tiles = {"true_gold.png"},
	is_ground_content = false,
	groups = {cracky = 1, level = 3},

})

minetest.register_node("gmd:legendary_gold", {
	description = "Legendary Gold Block",
	tiles = {"legendary_gold.png"},
	is_ground_content = false,
	groups = {cracky = 1, level = 3},
	light_source = 10,
})






minetest.register_abm({
	nodenames = {"gmd:legendary_gold"}, --makes small particles emanate from the beginning of a beam
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
			"purpleparticle.png" --texture
		)
	end,
})








minetest.register_craft({
	output = 'gmd:refined_gold',
	recipe = {
		{'default:goldblock', 'default:goldblock', 'default:goldblock'},
		{'default:goldblock', 'default:goldblock', 'default:goldblock'},
		{'default:goldblock', 'default:goldblock', 'default:goldblock'},
	}
})

minetest.register_craft({
	output = 'gmd:purified_gold',
	recipe = {
		{'gmd:refined_gold', 'gmd:refined_gold', 'gmd:refined_gold'},
		{'gmd:refined_gold', 'gmd:refined_gold', 'gmd:refined_gold'},
		{'gmd:refined_gold', 'gmd:refined_gold', 'gmd:refined_gold'},
	}
})


minetest.register_craft({
	output = 'gmd:radiant_gold',
	recipe = {
		{'gmd:purified_gold', 'gmd:purified_gold', 'gmd:purified_gold'},
		{'gmd:purified_gold', 'gmd:purified_gold', 'gmd:purified_gold'},
		{'gmd:purified_gold', 'gmd:purified_gold', 'gmd:purified_gold'},
	}
})


minetest.register_craft({
	output = 'gmd:true_gold',
	recipe = {
		{'gmd:radiant_gold', 'gmd:radiant_gold', 'gmd:radiant_gold'},
		{'gmd:radiant_gold', 'gmd:radiant_gold', 'gmd:radiant_gold'},
		{'gmd:radiant_gold', 'gmd:radiant_gold', 'gmd:radiant_gold'},
	}
})

minetest.register_craft({
	output = 'gmd:legendary_gold',
	recipe = {
		{'gmd:true_gold', 'gmd:true_gold', 'gmd:true_gold'},
		{'gmd:true_gold', 'gmd:true_gold', 'gmd:true_gold'},
		{'gmd:true_gold', 'gmd:true_gold', 'gmd:true_gold'},
	}
})





minetest.register_craft({
	output = 'default:goldblock 9',
	recipe = {
		{'', '', ''},
		{'', 'gmd:refined_gold', ''},
		{'', '', ''},
	}
})

minetest.register_craft({
	output = 'gmd:refined_gold 9',
	recipe = {
		{'', '', ''},
		{'', 'gmd:purified_gold', ''},
		{'', '', ''},
	}
})


minetest.register_craft({
	output = 'gmd:purified_gold 9',
	recipe = {
		{'', '', ''},
		{'', 'gmd:radiant_gold', ''},
		{'', '', ''},
	}
})


minetest.register_craft({
	output = 'gmd:radiant_gold 9',
	recipe = {
		{'', '', ''},
		{'', 'gmd:true_gold', ''},
		{'', '', ''},
	}
})

minetest.register_craft({
	output = 'gmd:true_gold 9',
	recipe = {
		{'', '', ''},
		{'', 'gmd:legendary_gold', ''},
		{'', '', ''},
	}
})




