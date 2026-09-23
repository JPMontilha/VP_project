/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor


if (global.estado == "LEVEL_UP") instance_destroy();

angulo += vel;

x = obj_pc.x + lengthdir_x(40, angulo);
y = obj_pc.y + lengthdir_y(40, angulo);

image_angle = point_direction(x, y, obj_pc.x, obj_pc.y) + 90;