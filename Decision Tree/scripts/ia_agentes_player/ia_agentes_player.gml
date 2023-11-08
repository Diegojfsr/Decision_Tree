// Script assets have changed for v3.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005377377 for more information




function ia_atacar3(){


	// Codigo que gera os tiros 
	if municao >= 10{
		if (mouse_check_button(mb_left)) && (cooldown < 1){
			municao -= 10;//controla a municao
			alarm[0] = 180;
		    instance_create_layer(x, y, "Instances", obj_blue_superball);
		    cooldown = 10;
		}
		// Subtrai 1 da variável "cooldown" de cada quadro do jogo,
		cooldown = cooldown - 1;
	}


	// Controla a municao
	if alarm[0] <= 0{
		municao += 1;
	}
	municao = clamp(municao, 0, max_municao);
}
 
 






function ia_patrulhar3(){
	var dist = point_distance(x, y, destinox3, destinoy3);

	if dist >= 300
		move_towards_point(destinox3, destinoy3, velocidade3)
	else{
		randomize()
		destinox3   = random_range(64, room_width-64);
		destinoy3   = random_range(64, room_height-64);		
	}
}


function ia_perseguir3(){
	
velocidade3 =1
//var dis = point_distance(x, y, obj_ponto.x, obj_ponto.y);
move_towards_point( player.x, player.y, velocidade3)

	


//direction = point_direction(x, y, obj_ponto.x, obj_ponto.y);
//direction = direction + random_range(-4, 4);


}

	
