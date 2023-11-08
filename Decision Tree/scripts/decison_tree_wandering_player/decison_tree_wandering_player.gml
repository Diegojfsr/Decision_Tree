

//VERIFICA SE ESTA LONGE >300PX
function NoEstaLonge3() : NoDecisao3() constructor{
	
	m_agente3 = noone;
	
	avaliar3 = function(){
		var _dist = 0;
		with(m_agente3){
			_dist = point_distance(x, y, player.x, player.y);		
		}
		return (_dist > 300);
	}	
}

//NO DE DECISÃO >300PX AÇÃO PATRULHAR

function NoAcaoPatrulhar3() : NoAcao3() constructor{
	
	m_agente3 = noone;
	
	tomar_decisao3 = function(){
		with(m_agente3){
			ia_patrulhar3();
		}
		return m_agente3.no_raiz3;
	}
	
}




//VERIFICA SE ESTA PERTO <100PX

function NoEstaPerto3() : NoDecisao3() constructor{
	
	m_agente3 = noone;
	
	avaliar3 = function(){
		var _dist = 0;
		with(m_agente3){
			_dist = point_distance(x, y, player.x, player.y);		
		}
		return (_dist < 100);
	}	
}


//NO DE DECISÃO <100PX AÇÃO ATACAR
function NoAcaoAtacar3() : NoAcao3() constructor{
	
	m_agente3 = noone;
	
	tomar_decisao3 = function(){
		with(m_agente3){
			//if (!esta_invertido){
				//esta_invertido =false
			ia_atacar3();
			//}
		}
		return m_agente3.no_raiz3;
	}
	
}


//VERIFICA SE ESTA ENTRE 100PX E 300PX

function NoEstaEntre3() : NoDecisao3() constructor{
	
	m_agente3 = noone;
	
	avaliar3 = function(){
		var _dist = 0;
		with(m_agente3){
			_dist = point_distance(x, y, player.x, player.y);		
		}
		return (_dist > 100 and _dist < 300);
	}	
}

//NO DE DECISÃO ESTA ENTRE 100PX E 300PX AÇÃO PERSEGUIR
function NoAcaoPerseguir3() : NoAcao3() constructor{
	
	m_agente3 = noone;
	
	tomar_decisao3 = function(){
		with(m_agente3){
			
			ia_perseguir3();
		
		}
		return m_agente3.no_raiz3;
	}
	
}


