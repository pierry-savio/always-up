function scp_is_out_of_view(){
	
	var _view_x = camera_get_view_x(view_camera[0]);
	var _view_y = camera_get_view_y(view_camera[0]);
	var _view_w = camera_get_view_width(view_camera[0]);
	var _view_h = camera_get_view_height(view_camera[0]);

	var _out_of_view = (x < _view_x || x > _view_x + _view_w ||
	                    y < _view_y || y > _view_y + _view_h);

	return _out_of_view;
}