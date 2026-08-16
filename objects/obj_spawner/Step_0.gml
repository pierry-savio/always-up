// gera plataformas enquanto o topo gerado estiver mais baixo que o topo da view
var _view_top = camera_get_view_y(view_camera[0]);

//Fading platforms
while (spawn_y > _view_top - 200) {  // -200 = margem de segurança acima da view
    spawn_y -= irandom_range(spawn_gap_min, spawn_gap_max);
    var _x = irandom_range(32, room_width - 32);
    instance_create_layer(_x, spawn_y, "Solids", obj_fading_platform_1);
}

//Super jumps
while (super_jump_spawn_y > _view_top - 200) {  // -200 = margem de segurança acima da view
    super_jump_spawn_y -= irandom_range(super_jump_spawn_gap_min, super_jump_spawn_gap_max);
    var _x = irandom_range(32, room_width - 32);
    instance_create_layer(_x, super_jump_spawn_y, "Power_Ups", obj_super_jump);
}

//Enemies 1
while (enemie_1_spawn_y > _view_top - 200) {  // -200 = margem de segurança acima da view
    enemie_1_spawn_y -= irandom_range(enemie_1_spawn_gap_min, enemie_1_spawn_gap_max);
    var _x = irandom_range(32, room_width - 32);
    instance_create_layer(_x, enemie_1_spawn_y, "Enemies", obj_enemy);
}



/*

//Enemie 1
enemie_1_spawn_y = room_height - 1200; 
enemie_1_spawn_gap_min = 1000;
enemie_1_spawn_gap_max = 2000;

*/