// If can walk is true...
if (obj_player.can_walk) {
		
	if (obj_player.x_spd < obj_player.walk_max_spd) {
		obj_player.x_spd += obj_player.walk_spd;
		obj_player.last_side = "right";
	}
}