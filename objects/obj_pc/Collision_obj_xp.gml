/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor


// dar XP ao jogador
xp_level += 1
if (prox_level == xp_level){
	level += 1
	prox_level = prox_level + 5
	xp_level = 0
	with (obj_upgrade) gerar_upgrades();
	global.estado = "LEVEL_UP"
}

// destruir o XP
with (other) {
    instance_destroy()
}