if (!place_meeting(x, y+y_spd, obj_collision_box)){
	y_spd += 0.5;	
}
else{
	y_spd = 0;	
}

if (object_exists(obj_player)){
	if (place_meeting(x, y, obj_player)){
		obj_player.x_spd = (side == 0) ? push_power : -push_power;	
	}
}

y += y_spd;
x += x_spd;