/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

// Faixas de dano em ordem crescente: 2, 3, 4, 5, 6, 7, 8, 9, 10, J, Q, K, A.
// Edite dano_min e dano_max para ajustar o dano de cada carta.
var cartas = [
	{ sprite: spr_cartas_2, dano_min: 1, dano_max: 2 },
	{ sprite: spr_cartas_3, dano_min: 3, dano_max: 4 },
	{ sprite: spr_cartas_4, dano_min: 5, dano_max: 6 },
	{ sprite: spr_cartas_5, dano_min: 7, dano_max: 8 },
	{ sprite: spr_cartas_6, dano_min: 9, dano_max: 10 },
	{ sprite: spr_cartas_7, dano_min: 11, dano_max: 12 },
	{ sprite: spr_cartas_8, dano_min: 13, dano_max: 14 },
	{ sprite: spr_cartas_9, dano_min: 15, dano_max: 16 },
	{ sprite: spr_cartas_10, dano_min: 17, dano_max: 18 },
	{ sprite: spr_cartas_J, dano_min: 19, dano_max: 20 },
	{ sprite: spr_cartas_Q, dano_min: 21, dano_max: 22 },
	{ sprite: spr_cartas_K, dano_min: 23, dano_max: 24 },
	{ sprite: spr_cartas_A, dano_min: 25, dano_max: 26 }
];

var carta_escolhida = cartas[irandom(array_length(cartas) - 1)];
sprite_index = carta_escolhida.sprite;
dano = irandom_range(carta_escolhida.dano_min, carta_escolhida.dano_max);
show_debug_message("Dano da carta: " + string(dano))
show_debug_message("sprite da carta: " + string(sprite_index))

vel = 0

var inimigo = instance_nearest(x,y,obj_inimigo);

if (inimigo != noone)
{
    direction = point_direction(x,y,inimigo.x,inimigo.y);
	image_angle = direction - 90;
}