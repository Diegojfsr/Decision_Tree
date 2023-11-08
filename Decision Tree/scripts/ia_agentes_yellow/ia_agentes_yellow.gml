// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function ia_atacar2(){

	// Codigo que gera os tiros 
	if municao >= 10{
		
			municao -= 10;//controla a municao
			alarm[0] = 180;
			destinox   = random_range(64, room_width-64);
			destinoy   = random_range(64, room_height-64);
		    instance_create_layer(x, y, "Instances", obj_yellow_powerball);
			velocidade = 2;


		    cooldown = 10;
		
		// Subtrai 1 da variável "cooldown" de cada quadro do jogo,
		cooldown = cooldown - 1;
		
		escrever_estado = "ATACANDO";
	}

	// Controla a municao
	if alarm[0] <= 0{
		municao += 1;
	}
	municao = clamp(municao, 0, max_municao);
}





 
 


function ia_patrulhar2(){
	var dist = point_distance(x, y, destinox2, destinoy2);

	if dist >= 200
		move_towards_point(destinox2, destinoy2, velocidade2)
	else{
		randomize()
		destinox2   = random_range(64, room_width-64);
		destinoy2   = random_range(64, room_height-64);		
	}
	escrever_estado = "PATRULHANDO";
}


function ia_perseguir2(){
	
velocidade2 =1
//var dis = point_distance(x, y, obj_ponto.x, obj_ponto.y);
move_towards_point( player.x, player.y, velocidade2)

escrever_estado = "PERSEGUINDO";



}

	
