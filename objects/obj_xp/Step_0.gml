/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

if (global.estado == "LEVEL_UP") {
    hspeed = 0;
    vspeed = 0;
    exit;
}

if (pego){
	move_towards_point(obj_pc.x, obj_pc.y, 4);
}