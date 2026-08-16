function scp_is_under_view(){
	
	var _view_y = camera_get_view_y(view_camera[0]);
	var _view_h = camera_get_view_height(view_camera[0]);

	var _below_view = (y > _view_y + _view_h);

	return _below_view;
}