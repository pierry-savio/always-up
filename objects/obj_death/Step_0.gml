if (instance_exists(obj_player)){
	if (obj_player.y_spd > 50){
		room_restart();	
	}
	
	if (started && obj_player.y >= 984){
		room_restart();	
	}
}

if (obj_player.y_spd < 0){
	started = true;
}

