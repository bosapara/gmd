minetest.register_node("gmd:refined_diamond", {
	description = "Refined Diamond Block",
	tiles = {"refined_diamond.png"},
	is_ground_content = false,
	groups = {cracky = 1, level = 3},

})


minetest.register_node("gmd:purified_diamond", {
	description = "Purified Diamond Block",
	tiles = {"purified_diamond.png"},
	is_ground_content = false,
	groups = {cracky = 1, level = 3},
	
})


minetest.register_node("gmd:radiant_diamond", {
	description = "Radiant Diamond Block",
	tiles = {"radiant_diamond.png"},
	is_ground_content = false,
	groups = {cracky = 1, level = 3},

})

minetest.register_node("gmd:true_diamond", {
	description = "True Diamond Block",
	tiles = {"true_diamond.png"},
	is_ground_content = false,
	groups = {cracky = 1, level = 3},

})

minetest.register_node("gmd:legendary_diamond", {
	description = "Legendary Diamond Block",
	tiles = {"legendary_diamond.png"},
	is_ground_content = false,
	groups = {cracky = 1, level = 3},
	light_source = 10,
})






minetest.register_abm({
	nodenames = {"gmd:legendary_diamond"}, --makes small particles emanate from the beginning of a beam
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
			"cyanparticle.png" --texture
		)
	end,
})








minetest.register_craft({
	output = 'gmd:refined_diamond',
	recipe = {
		{'default:diamondblock', 'default:diamondblock', 'default:diamondblock'},
		{'default:diamondblock', 'default:diamondblock', 'default:diamondblock'},
		{'default:diamondblock', 'default:diamondblock', 'default:diamondblock'},
	}
})

minetest.register_craft({
	output = 'gmd:purified_diamond',
	recipe = {
		{'gmd:refined_diamond', 'gmd:refined_diamond', 'gmd:refined_diamond'},
		{'gmd:refined_diamond', 'gmd:refined_diamond', 'gmd:refined_diamond'},
		{'gmd:refined_diamond', 'gmd:refined_diamond', 'gmd:refined_diamond'},
	}
})


minetest.register_craft({
	output = 'gmd:radiant_diamond',
	recipe = {
		{'gmd:purified_diamond', 'gmd:purified_diamond', 'gmd:purified_diamond'},
		{'gmd:purified_diamond', 'gmd:purified_diamond', 'gmd:purified_diamond'},
		{'gmd:purified_diamond', 'gmd:purified_diamond', 'gmd:purified_diamond'},
	}
})


minetest.register_craft({
	output = 'gmd:true_diamond',
	recipe = {
		{'gmd:radiant_diamond', 'gmd:radiant_diamond', 'gmd:radiant_diamond'},
		{'gmd:radiant_diamond', 'gmd:radiant_diamond', 'gmd:radiant_diamond'},
		{'gmd:radiant_diamond', 'gmd:radiant_diamond', 'gmd:radiant_diamond'},
	}
})

minetest.register_craft({
	output = 'gmd:legendary_diamond',
	recipe = {
		{'gmd:true_diamond', 'gmd:true_diamond', 'gmd:true_diamond'},
		{'gmd:true_diamond', 'gmd:true_diamond', 'gmd:true_diamond'},
		{'gmd:true_diamond', 'gmd:true_diamond', 'gmd:true_diamond'},
	}
})





minetest.register_craft({
	output = 'default:diamondblock 9',
	recipe = {
		{'', '', ''},
		{'', 'gmd:refined_diamond', ''},
		{'', '', ''},
	}
})

minetest.register_craft({
	output = 'gmd:refined_diamond 9',
	recipe = {
		{'', '', ''},
		{'', 'gmd:purified_diamond', ''},
		{'', '', ''},
	}
})


minetest.register_craft({
	output = 'gmd:purified_diamond 9',
	recipe = {
		{'', '', ''},
		{'', 'gmd:radiant_diamond', ''},
		{'', '', ''},
	}
})


minetest.register_craft({
	output = 'gmd:radiant_diamond 9',
	recipe = {
		{'', '', ''},
		{'', 'gmd:true_diamond', ''},
		{'', '', ''},
	}
})

minetest.register_craft({
	output = 'gmd:true_diamond 9',
	recipe = {
		{'', '', ''},
		{'', 'gmd:legendary_diamond', ''},
		{'', '', ''},
	}
})




