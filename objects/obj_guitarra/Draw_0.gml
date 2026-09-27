/// @description Desenha a guitarra e o raio invocado

draw_self();

for (var r = 0; r < array_length(raios_visuais); r++) {
    var raio_visual = raios_visuais[r];
    var distancia = point_distance(raio_visual.inicio_x, raio_visual.inicio_y, raio_visual.fim_x, raio_visual.fim_y);

    if (distancia > 0) {
        var metade_largura = 32;
        var normal_x = -(raio_visual.fim_y - raio_visual.inicio_y) / distancia * metade_largura;
        var normal_y = (raio_visual.fim_x - raio_visual.inicio_x) / distancia * metade_largura;

        draw_sprite_pos(
            spr_raio,
            0,
            raio_visual.inicio_x - normal_x, raio_visual.inicio_y - normal_y,
            raio_visual.inicio_x + normal_x, raio_visual.inicio_y + normal_y,
            raio_visual.fim_x + normal_x, raio_visual.fim_y + normal_y,
            raio_visual.fim_x - normal_x, raio_visual.fim_y - normal_y,
            1
        );
    }
}