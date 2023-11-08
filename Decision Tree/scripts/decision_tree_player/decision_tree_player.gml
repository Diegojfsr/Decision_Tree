// Script assets have changed for v3.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005377377 for more information
function NoBase3() constructor{
	
	tomar_decisao3 = function(){
	}	
}
//Nó utilizado para tomar a decisão lógica
function NoDecisao3() : NoBase3() constructor{
	
	//Definindo os nós filhos 
	no_sim3 = noone;
	no_nao3 = noone;
	
	avaliar3 = function(){
		return false;	
	}
	
	tomar_decisao3 = function(){
		if avaliar3(){
			return no_sim3;
		}
		else{
			return no_nao3;
		}
	}
}


function NoAcao3() : NoBase3() constructor{
	
	tomar_decisao3 = function(){
		
	}
	
}

