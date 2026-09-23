/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

if (global.estado == "LEVEL_UP") {
    draw_set_color(c_black);
    draw_set_alpha(0.7);
    draw_rectangle(0, 0, display_get_width(), display_get_height(), false);
    
    draw_set_alpha(1);
    draw_set_color(c_white);

    draw_text(400, 100, "Escolha um upgrade");

    for (var i = 0; i < array_length(opcoes_mostradas); i++)
    {
		draw_set_color(c_white);
		draw_rectangle(300, 200 + i*80, 700, 260 + i*80, false);

		draw_set_color(c_black);
		draw_text(320, 210 + i*80, string(opcoes_mostradas[i]));
    }
}
