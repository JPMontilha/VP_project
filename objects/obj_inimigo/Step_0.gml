/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor


if (global.estado == "LEVEL_UP") {
    hspeed = 0;
    vspeed = 0;
    exit;
}

move_towards_point(obj_pc.x, obj_pc.y, vel);

if (hp <= 0){ 
	var chance = irandom(100)
	if (chance < 75){  instance_create_layer(x, y, "Instances", obj_xp)  }
	else if (chance < 80) {  instance_create_layer(x, y, "Instances", obj_cura)  }
	else if (chance < 85) {  instance_create_layer(x, y, "Instances", obj_atrai_xp)  }
	
	instance_destroy()
}