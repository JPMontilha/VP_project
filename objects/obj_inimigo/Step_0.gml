/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor


if (global.estado == "LEVEL_UP") {
    hspeed = 0;
    vspeed = 0;
    exit;
}

move_towards_point(obj_pc.x, obj_pc.y, vel);

if (hp <= 0){ 
	instance_destroy()
	
	var xp = irandom(4)
	if (xp < 9){  instance_create_layer(x, y, "Instances", obj_xp)  }
}