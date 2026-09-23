/// @description Criação de variaveis
// Você pode escrever seu código neste editor

randomize()

tempo_vivo = 0

vel_y = 0
vel_x = 0

hp = 3
hp_max = 3
inv = false

level = 0
prox_level = 1
xp_area = 120
xp_level = 0

armas = []

raio_forca = 0 // 0 = fraco (movendo), 1 = forte (parado)
raio_transicao = 10 * room_speed // 10 segundos

#region Armas

arma1 = {
	nome: "cartas",
	cooldown: room_speed / 2,
	timer: 0,
	level: 0,
	dano: 5,
	vel: 4
}

arma2 = {
	nome: "luz",
	cooldown: 0,
	timer: 0,
	level: 0,
	dano: 5/12,
	alcance: 100
}

arma3 = {
	nome: "espadas",
	cooldown: 0,
	timer: 0,
	level: 0,
	dano: 1,
	vel: 4,
	quantidade: 3
}

arma4 = {
	nome: "canhao orbital",
	cooldown: room_speed * 30,
	timer: 0,
	level: 0,
	dano: 9999999999
	
}

#endregion

#region Passivas
#endregion

lista_armas = [arma1, arma2, arma3]
var escolhida = lista_armas[irandom(array_length(lista_armas) - 1)];
array_push(armas, escolhida)

function atacar(w)
{
    switch(w.nome)
    {
        case "cartas":
            proj = instance_create_layer(x-32, y-32, "Instances", obj_cartas)
			proj.dano = arma1.dano;
			proj.vel = arma1.vel;
            break
		
		case "luz":
			if (!instance_exists(obj_raio)){
				proj = instance_create_layer(x-32, y-32, "Instances", obj_raio)
				proj.dano = arma2.dano;
			}
			break
		
		case "espadas":
			while (arma3.quantidade > instance_number(obj_espadas)){
				var total = arma3.quantidade;
			    var index = instance_number(obj_espadas);

			    var ang = (index / total) * 360;

			    var proj = instance_create_layer(x, y, "Instances", obj_espadas);
				proj.angulo = ang
				proj.dano = arma3.dano;
				proj.vel = arma3.vel;
			}
			break
		
		case "canhao orbital":
			with (obj_inimigo)
			    {
			        hp = 0;
			    }
			break
    }
}