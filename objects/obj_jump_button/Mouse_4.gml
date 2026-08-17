if (obj_player.can_jump && obj_player.current_jumps > 0){

	obj_player.y_spd = obj_player.jump_strength;
	obj_player.y_spd = -obj_player.jump_strength;
	obj_player.current_jumps -= 1;
}