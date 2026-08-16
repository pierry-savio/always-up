if (place_meeting(collision.x, collision.y, obj_player) && !alarm[0]){
	fading_out = true;	
}

if (fading_out){
	image_alpha -= 0.1;	
	
	if (image_alpha <= 0){
		instance_destroy(collision);
		instance_destroy();	
	}
}