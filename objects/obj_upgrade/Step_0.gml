/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor


if (global.estado == "LEVEL_UP" && mouse_check_button_pressed(mb_left))
{
    var mx = device_mouse_x_to_gui(0);
    var my = device_mouse_y_to_gui(0);

    for (var i = 0; i < array_length(opcoes_mostradas); i++)
    {
        var x1 = 300;
        var y1 = 200 + i*80;
        var x2 = 700;
        var y2 = 260 + i*80;

        if (point_in_rectangle(mx, my, x1, y1, x2, y2))
        {
            aplicar_upgrade(opcoes_mostradas[i]);
            global.estado = "NORMAL";
        }
    }
}