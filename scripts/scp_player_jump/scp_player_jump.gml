function scp_player_jump(){
	
	//Cheking if jump key(s) is being pressed
	if
	(
		(
			keyboard_check_pressed(global.jump_key)   ||
			keyboard_check_pressed(global.jump_key_2) ||
			keyboard_check_pressed(global.jump_key_3)
		)
		&&
		(
			can_jump &&
			current_jumps > 0
		)
	)
	{
		//Applying the jump
		y_spd = -jump_strength;
		current_jumps -= 1;
	}
}