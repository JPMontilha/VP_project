/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor


global.estado = "NORMAL"

opcoes = [];

array_push(opcoes, "cartas");
array_push(opcoes, "espadas");
array_push(opcoes, "upgrade_hp");
array_push(opcoes, "luz");
array_push(opcoes, "canhao orbital");

opcoes_mostradas = [];

function aplicar_upgrade(op) {
	with(obj_pc) {
	    switch (op) {
	        case "cartas":
				if (arma1.level == 0){
					array_push(armas, arma1)
					arma1.level = 1
				} else{
		            arma1.level += 1
					arma1.cooldown = arma1.cooldown/2
				}
	            break;
			
			 case "luz":
				if (arma2.level == 0){
					array_push(armas, arma2)
					arma2.level = 1
				} else{
		            arma2.level += 1
					arma2.dano = arma2.dano + 5/12
					arma2.alcance = arma2.alcance + 100
				}
	            break;

	        case "espadas":
				if (arma3.level == 0){
					array_push(armas, arma3)
					arma3.level = 1
				} else{
					arma3.level += 1
		            arma3.dano += 1
					arma3.quantidade += 1
				}
	            break;
			
			case "upgrade_hp":
				hp_max += 1
				hp = hp_max
				break
			
			case "canhao orbital":
				if (arma4.level == 0) {
				    array_push(armas, arma4)
				    arma4.level = 1
				} else{
				    arma4.level += 1
				    arma4.cooldown -= room_speed * 5

				    // limite mínimo (recomendado)
				    if (arma4.cooldown < room_speed * 5)
				    {
				        arma4.cooldown = room_speed * 5
				    }
				}
				break
	    }
	}
}

function gerar_upgrades()
{
    opcoes_mostradas = [];

    for (var i = 0; i < 3; i++) {
        var indice = irandom(array_length(opcoes) - 1);
        array_push(opcoes_mostradas, opcoes[indice]);
    }
}