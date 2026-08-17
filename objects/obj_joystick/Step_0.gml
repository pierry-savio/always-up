var touch_found = false;

// Procura entre os possíveis dedos/toques
for (var i = 0; i < 10; i++)
{
    if (device_mouse_check_button(i, mb_left))
    {
        var touch_x = device_mouse_x(i);
        var touch_y = device_mouse_y(i);

        // O toque está no lado esquerdo da tela
        if (touch_x < room_width / 2)
        {
            touch_id = i;
            touch_found = true;

            // Move o joystick para o dedo
            x = lerp(x, touch_x, 0.5);
            y = lerp(y, touch_y, 0.5);

            // Movimento para a direita
            if (x > obj_joystick_container.x)
            {
                if (obj_player.can_walk)
                {
                    if (obj_player.x_spd < obj_player.walk_max_spd)
                    {
                        obj_player.x_spd += obj_player.walk_spd;
                        obj_player.last_side = "right";
                    }
                }
            }

            // Movimento para a esquerda
            if (x < obj_joystick_container.x)
            {
                if (obj_player.can_walk)
                {
                    if (obj_player.x_spd > -obj_player.walk_max_spd)
                    {
                        obj_player.x_spd -= obj_player.walk_spd;
                        obj_player.last_side = "left";
                    }
                }
            }

            // Já encontramos o dedo do joystick
            break;
        }
    }
}


// Nenhum dedo está controlando o joystick
if (!touch_found)
{
    touch_id = -1;

    x = lerp(x, obj_joystick_container.x, 0.5);
    y = lerp(y, obj_joystick_container.y, 0.5);
}