/// @description UI do jogo
// Você pode escrever seu código neste editor

var pc = instance_find(obj_pc, 0);

if (instance_exists(pc))
{	
	// tempo total em segundos
    var total_segundos = floor(pc.tempo_vivo / room_speed);

    // minutos
    var minutos = total_segundos div 60;

    // segundos
    var segundos = total_segundos mod 60;

    // adiciona zero na frente
    var seg_txt = string_format(segundos, 2, 0);
	
    draw_set_color(c_white);

    draw_text(20, 20,
        "HP: " + string(pc.hp) + " / " + string(pc.hp_max)
    );
	
	draw_text(20, 40,
        "Nível: " + string(pc.level)
    );

	draw_text(20, 60,
        string(minutos) + ":" + seg_txt
    );
}
