/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor


/// DRAW - obj_raio
var forca = alvo.raio_forca;

// direção base (mouse)
var dir = point_direction(x, y, mouse_x, mouse_y);

// abertura do cone
var spread = lerp(360, 5, forca);

// alcance do raio
var length = alvo.arma2.alcance;

// quantidade de segmentos (suavidade)
var steps = max(20, spread / 4);

// =====================
// 🔺 CONE PRINCIPAL
// =====================
var cone_alpha = lerp(0.05, 0.9, forca);

draw_set_alpha(cone_alpha);
draw_set_color(c_white);

// caso especial: círculo completo
if (spread > 359)
{
    draw_circle(x, y, length, false);
}
else
{
    draw_primitive_begin(pr_trianglefan);

    // centro
    draw_vertex(x, y);

    for (var i = 0; i <= steps; i++)
    {
        var ang = dir - spread/2 + (spread * i / steps);

        var px = x + lengthdir_x(length, ang);
        var py = y + lengthdir_y(length, ang);

        draw_vertex(px, py);
    }

    draw_primitive_end();
}

// =====================
// ✨ BORDA SUAVE
// =====================
draw_set_alpha(lerp(0.2, 1, forca));
draw_set_color(c_white);

for (var i = 0; i <= steps; i++)
{
    var ang = dir - spread/2 + (spread * i / steps);

    var px = x + lengthdir_x(length, ang);
    var py = y + lengthdir_y(length, ang);

    draw_circle(px, py, 2, false);
}

// =====================
// 🔄 RESET
// =====================
draw_set_alpha(1);