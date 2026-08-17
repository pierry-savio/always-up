x = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])  - 200;
y = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0])  - 150;

for (var i = 0; i < 10; i++)
{
    if (device_mouse_check_button_pressed(i, mb_left))
    {
        var touch_x = device_mouse_x(i);
        var touch_y = device_mouse_y(i);

        if (point_in_rectangle(
            touch_x,
            touch_y,
            bbox_left,
            bbox_top,
            bbox_right,
            bbox_bottom
        ))
        {
            if (obj_player.can_jump && obj_player.current_jumps > 0)
            {
                obj_player.y_spd = -obj_player.jump_strength;
                obj_player.current_jumps -= 1;
            }
        }
    }
}