function scp_player_animation(){
	if (last_side == "right"){
		image_xscale = 1;	
	}
	else{
		image_xscale = -1;	
	}
	
	if (place_meeting(x, y + sprite_height/2, obj_collision_box)){
		sprite_index = spr_player_idle;
	}
	else{
		sprite_index = spr_player_jump;	
	}
}