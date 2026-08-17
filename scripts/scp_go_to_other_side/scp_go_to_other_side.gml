function scp_go_to_other_side(){

	var _view_w = camera_get_view_width(view_camera[0]);
	
	if (x < 0 + sprite_width/2 && x_spd < 0){
		x = _view_w - sprite_width/2;
	}
	else if (x > _view_w + sprite_width/2 && x_spd > 0){
		x = 0 - sprite_width/2;	
	}
}