function scp_player_walk(){
	
	// If can walk is true...
	if (can_walk) {
		
		//Left
		if
		(
			(
				keyboard_check(global.walk_left_key) ||
				keyboard_check(global.walk_left_key2)
			)
		)
		{
			if (x_spd > -walk_max_spd) {
				x_spd -= walk_spd;
				last_side = "left";
			}
		}
		
		//Right
		if
		(
			(
				keyboard_check(global.walk_right_key) ||
				keyboard_check(global.walk_right_key_2)
			)
		)
		{
			if (x_spd < walk_max_spd) {
				x_spd += walk_spd;
				last_side = "right";
			}
		}
	}
	
	//Desacelation
	if
	(
		!(
			keyboard_check(global.walk_left_key)    ||
			keyboard_check(global.walk_left_key2)   ||
			keyboard_check(global.walk_right_key)   ||
			keyboard_check(global.walk_right_key_2) ||
			mouse_check_button(mb_left)
		)
	)
	{
		if (x_spd > 0){
			x_spd -= walk_desacelation;	
		}
		else if (x_spd < 0){
			x_spd += walk_desacelation;	
		}
	}
	
}