

//VERIFICA SE ESTA LONGE >200PX
function NoEstaLonge2() : NoDecisao2() constructor{
	
	m_agente2 = noone;
	
	avaliar2 = function(){
		var _dist = 0;
		with(m_agente2){
			_dist = point_distance(x, y, player.x, player.y);		
		}
		return (_dist > 200);
	}	
}

//NO DE DECISÃO >200PX AÇÃO PATRULHAR

function NoAcaoPatrulhar2() : NoAcao2() constructor{
	
	m_agente2 = noone;
	
	tomar_decisao2 = function(){
		with(m_agente2){
			ia_patrulhar2();
		}
		return m_agente2.no_raiz2;
	}
	
}




//VERIFICA SE ESTA PERTO <100PX

function NoEstaPerto2() : NoDecisao2() constructor{
	
	m_agente2 = noone;
	
	avaliar2 = function(){
		var _dist = 0;
		with(m_agente2){
			_dist = point_distance(x, y, player.x, player.y);		
		}
		return (_dist < 100);
	}	
}


//NO DE DECISÃO <100PX AÇÃO ATACAR
function NoAcaoAtacar2() : NoAcao2() constructor{
	
	m_agente2 = noone;
	
	tomar_decisao2 = function(){
		with(m_agente2){
			//if (!esta_invertido){
				//esta_invertido =false
			ia_atacar2();
			//}
		}
		return m_agente2.no_raiz2;
	}
	
}


//VERIFICA SE ESTA ENTRE 100PX E 200PX

function NoEstaEntre2() : NoDecisao2() constructor{
	
	m_agente2 = noone;
	
	avaliar2 = function(){
		var _dist = 0;
		with(m_agente2){
			_dist = point_distance(x, y, player.x, player.y);		
		}
		return (_dist > 100 and _dist < 200);
	}	
}

//NO DE DECISÃO ESTA ENTRE 100PX E 200PX AÇÃO PERSEGUIR
function NoAcaoPerseguir2() : NoAcao2() constructor{
	
	m_agente2 = noone;
	
	tomar_decisao2 = function(){
		with(m_agente2){
			
			ia_perseguir2();
		
		}
		return m_agente2.no_raiz2;
	}
	
}


