// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function NoBase2() constructor{
	
	tomar_decisao2 = function(){
	}	
}
//Nó utilizado para tomar a decisão lógica
function NoDecisao2() : NoBase2() constructor{
	
	//Definindo os nós filhos 
	no_sim2 = noone;
	no_nao2 = noone;
	
	avaliar2 = function(){
		return false;	
	}
	
	tomar_decisao2 = function(){
		if avaliar2(){
			return no_sim2;
		}
		else{
			return no_nao2;
		}
	}
}


function NoAcao2() : NoBase2() constructor{
	
	tomar_decisao2 = function(){
		
	}
	
}

