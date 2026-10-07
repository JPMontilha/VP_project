/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

alvo = obj_pc

cam = view_camera[0];

cam_x = camera_get_view_x(cam)
cam_y = camera_get_view_y(cam)

largura = camera_get_view_width(cam)
altura = camera_get_view_height(cam)

margem = 100

tempo = 1

alarm[0] = room_speed / 3