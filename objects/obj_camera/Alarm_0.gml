/// @description Spawn de inimigos
// Você pode escrever seu código neste editor

var lado = irandom(3);
var spawn_x, spawn_y;

switch (lado)
{
    case 0: // esquerda
        spawn_x = cam_x - margem;
        spawn_y = random_range(cam_y - margem, cam_y + altura + margem);
        break;

    case 1: // direita
        spawn_x = cam_x + largura + margem;
        spawn_y = random_range(cam_y - margem, cam_y + altura + margem);
        break;

    case 2: // cima
        spawn_x = random_range(cam_x - margem, cam_x + largura + margem);
        spawn_y = cam_y - margem;
        break;

    case 3: // baixo
        spawn_x = random_range(cam_x - margem, cam_x + largura + margem);
        spawn_y = cam_y + altura + margem;
        break;
}


instance_create_layer(spawn_x, spawn_y, "Instances", obj_inimigo);
alarm[0] = room_speed / tempo
alarm[1] = room_speed