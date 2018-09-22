minetest.register_node("gmd:hard_mese", {
	description = "Hard Mese",
	tiles = {"hard_mese.png"},
	is_ground_content = false,
	groups = {cracky = 1, level = 3},

})


minetest.register_node("gmd:hot_mese", {
	description = "Hot Mese",
	tiles = {"hot_mese.png"},
	is_ground_content = false,
	groups = {cracky = 1, level = 3},
	
})


minetest.register_node("gmd:super_mese", {
	description = "Super Mese",
	tiles = {"super_mese.png"},
	is_ground_content = false,
	groups = {cracky = 1, level = 3},

})

minetest.register_node("gmd:extreme_mese", {
	description = "Extreme Mese",
	tiles = {"extreme_mese.png"},
	is_ground_content = false,
	groups = {cracky = 1, level = 3},

})

minetest.register_node("gmd:legendary_mese", {
	description = "Legendary Mese",
	tiles = {"legendary_mese.png"},
	is_ground_content = false,
	groups = {cracky = 1, level = 3},
	light_source = 10,
})








minetest.register_abm({
	nodenames = {"gmd:legendary_mese"}, --makes small particles emanate from the beginning of a beam
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
			"pinkparticle.png" --texture
		)
	end,
})





minetest.register_craft({
	output = 'gmd:hard_mese',
	recipe = {
		{'default:mese', 'default:mese', 'default:mese'},
		{'default:mese', 'default:mese', 'default:mese'},
		{'default:mese', 'default:mese', 'default:mese'},
	}
})

minetest.register_craft({
	output = 'gmd:hot_mese',
	recipe = {
		{'gmd:hard_mese', 'gmd:hard_mese', 'gmd:hard_mese'},
		{'gmd:hard_mese', 'gmd:hard_mese', 'gmd:hard_mese'},
		{'gmd:hard_mese', 'gmd:hard_mese', 'gmd:hard_mese'},
	}
})


minetest.register_craft({
	output = 'gmd:super_mese',
	recipe = {
		{'gmd:hot_mese', 'gmd:hot_mese', 'gmd:hot_mese'},
		{'gmd:hot_mese', 'gmd:hot_mese', 'gmd:hot_mese'},
		{'gmd:hot_mese', 'gmd:hot_mese', 'gmd:hot_mese'},
	}
})


minetest.register_craft({
	output = 'gmd:extreme_mese',
	recipe = {
		{'gmd:super_mese', 'gmd:super_mese', 'gmd:super_mese'},
		{'gmd:super_mese', 'gmd:super_mese', 'gmd:super_mese'},
		{'gmd:super_mese', 'gmd:super_mese', 'gmd:super_mese'},
	}
})

minetest.register_craft({
	output = 'gmd:legendary_mese',
	recipe = {
		{'gmd:extreme_mese', 'gmd:extreme_mese', 'gmd:extreme_mese'},
		{'gmd:extreme_mese', 'gmd:extreme_mese', 'gmd:extreme_mese'},
		{'gmd:extreme_mese', 'gmd:extreme_mese', 'gmd:extreme_mese'},
	}
})





minetest.register_craft({
	output = 'default:mese 9',
	recipe = {
		{'', '', ''},
		{'', 'gmd:hard_mese', ''},
		{'', '', ''},
	}
})

minetest.register_craft({
	output = 'gmd:hard_mese 9',
	recipe = {
		{'', '', ''},
		{'', 'gmd:hot_mese', ''},
		{'', '', ''},
	}
})


minetest.register_craft({
	output = 'gmd:hot_mese 9',
	recipe = {
		{'', '', ''},
		{'', 'gmd:super_mese', ''},
		{'', '', ''},
	}
})


minetest.register_craft({
	output = 'gmd:super_mese 9',
	recipe = {
		{'', '', ''},
		{'', 'gmd:extreme_mese', ''},
		{'', '', ''},
	}
})

minetest.register_craft({
	output = 'gmd:extreme_mese 9',
	recipe = {
		{'', '', ''},
		{'', 'gmd:legendary_mese', ''},
		{'', '', ''},
	}
})
