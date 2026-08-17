

if (obj_player.can_walk) {
		
	//Left
	if (obj_player.x_spd > -obj_player.walk_max_spd) {
		obj_player.x_spd -= obj_player.walk_spd;
		obj_player.last_side = "left";
	}
		
	
}