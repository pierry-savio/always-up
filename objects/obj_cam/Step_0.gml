if (object_exists(obj_player)) {
    x = lerp(x, obj_player.x, 0.25);
    y = lerp(y, obj_player.y, 0.25);

    var cam = view_camera[0];
    var view_h = camera_get_view_height(cam);

    var target_y = y - room_height/4;

    // Só limita o lado de baixo da room
    target_y = min(target_y, room_height - view_h);

    camera_set_view_pos(view_camera[0], 0, target_y);
}