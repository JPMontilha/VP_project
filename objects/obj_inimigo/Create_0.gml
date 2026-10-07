/// @description Definição de variável
// Você pode escrever seu código neste editor

vel = 2

var jogador = instance_find(obj_pc, 0);
var intervalos = floor(jogador.tempo_vivo / (room_speed * 30));

hp = 10 + (intervalos * 10);
show_debug_message("HP do inimigo: " + string(hp))