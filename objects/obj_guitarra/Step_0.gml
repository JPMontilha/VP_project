/// @description Segue o jogador e atinge inimigos aleatórios

if (!instance_exists(dono)) {
    dono = instance_find(obj_pc, 0);
    if (dono == noone) {
        instance_destroy();
        exit;
    }
}

x = dono.x + 32;
y = dono.y - 22;

if (global.estado == "LEVEL_UP") instance_destroy();

var raios_ativos = [];
for (var r = 0; r < array_length(raios_visuais); r++) {
    var raio_visual = raios_visuais[r];
    raio_visual.tempo--;
    if (raio_visual.tempo > 0) array_push(raios_ativos, raio_visual);
}
raios_visuais = raios_ativos;

timer--;

if (timer <= 0) {
    timer = cooldown;

    var candidatos = [];
    var total_inimigos = instance_number(obj_inimigo);

    for (var i = 0; i < total_inimigos; i++) {
        var inimigo = instance_find(obj_inimigo, i);
        if (instance_exists(inimigo)
        && point_distance(dono.x, dono.y, inimigo.x, inimigo.y) <= alcance) {
            array_push(candidatos, inimigo);
        }
    }

    var candidatos_restantes = array_length(candidatos);
    var total_alvos = min(alvos, candidatos_restantes);

    for (var a = 0; a < total_alvos; a++) {
        var indice_alvo = irandom(candidatos_restantes - 1);
        var alvo_raio = candidatos[indice_alvo];

        // Remover o alvo selecionado evita atingir o mesmo inimigo duas vezes.
        candidatos[indice_alvo] = candidatos[candidatos_restantes - 1];
        candidatos_restantes--;

        array_push(raios_visuais, {
            inicio_x: x + 16,
            inicio_y: y + 16,
            fim_x: alvo_raio.x,
            fim_y: alvo_raio.y,
            tempo: room_speed * 0.25
        });
        alvo_raio.hp -= dano;
    }
}
