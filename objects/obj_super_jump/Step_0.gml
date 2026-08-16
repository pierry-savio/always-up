if (object_exists(obj_player)){
	if (place_meeting(x, y, obj_player)){
		obj_player.y_spd = -30;	
		fading_out = true;
	}
}

if (fading_out){
	image_xscale += 0.1;
	image_yscale += 0.1;
	image_alpha -= 0.1;
	if (image_alpha <= 0){
		instance_destroy();	
	}
}