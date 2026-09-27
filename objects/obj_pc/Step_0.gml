/// @description
// Você pode escrever seu código neste editor


if (global.estado == "LEVEL_UP") {
    hspeed = 0;
    vspeed = 0;
    exit;
}

if (global.estado == "NORMAL") {
	tempo_vivo ++
}

if (hp == 0) {
	room_goto(rm_game_over)
}

#region Movimentação

if (keyboard_check(ord("W")) || keyboard_check(vk_up)){
	if !(y - 32 <= 0){
		vel_y = -3
	}
}else if(keyboard_check(ord("S")) || keyboard_check(vk_down)){
	if !(y + 32 >= 10000){
		vel_y = 3
	}
}else{
	vel_y = 0
}

if(keyboard_check(ord("A")) || keyboard_check(vk_left)){
	if !(x - 32 <= 0){
		vel_x = -3
	}
}else if(keyboard_check(ord("D")) || keyboard_check(vk_right)){
	if !(x + 32 >= 10000){
		vel_x = 3
	}
} else{
	vel_x = 0
}

x += vel_x
y += vel_y

var movendo = (vel_x != 0 || vel_y != 0);

if (movendo) {
    raio_forca -= 1 / raio_transicao;
} else {
    raio_forca += 1 / raio_transicao;
}

raio_forca = clamp(raio_forca, 0, 1);

x = clamp(x, 32, 10000 - 32)
y = clamp(y, 32, 10000 - 32)

#endregion

#region Ataque
for (var i = 0; i < array_length(armas); i++)
{
    var w = armas[i];
    
    w.timer--;

    if (w.timer <= 0)
    {
        atacar(w);
        w.timer = w.cooldown;
    }

    armas[i] = w;
}
#endregion

#region XP

with (obj_xp){
	if (point_distance(x, y, other.x, other.y) < other.xp_area + 32)
    {
        pego = true
    }
}

#endregion