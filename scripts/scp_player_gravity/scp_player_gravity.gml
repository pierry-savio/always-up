//Gravity + y collision
function scp_player_gravity(){
	
	var collision = instance_place(x, y + y_spd, obj_collision_box);

	if (!collision){
		y_spd += gravity_strength;
	}
	else if (collisions && collision.y > y + sprite_height/2){
		y_spd = 0;	
		current_jumps = jumps;
	}
	
	if (place_meeting(x, y-1, obj_collision_box)){
		y_spd -= 0.5;
	}
}