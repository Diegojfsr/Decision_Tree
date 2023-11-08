
//-------------------------------Esta Longe--------------------------------------------------------

//VERIFICA SE ESTA LONGE >500PX
function NoEstaLonge() : NoDecisao() constructor{
	
	m_agente = noone;
	
	avaliar = function(){
		var _dist = 0;
		with(m_agente){
			_dist = point_distance(x, y, player.x, player.y);		
		}
		return (_dist > 500);
	}	
}

//NO DE DECISÃO >200PX AÇÃO PATRULHAR

function NoAcaoPatrulhar() : NoAcao() constructor{
	
	m_agente = noone;
	
	tomar_decisao = function(){
		with(m_agente){
			ia_patrulhar();
		}
		return m_agente.no_raiz;
	}
}
//------------------------------------------------------------------------------------



//-------------------------------Esta Entre--------------------------------------------------------

//VERIFICA SE ESTA ENTRE 300PX E 100PX

function NoEstaEntre() : NoDecisao() constructor{
	
	m_agente = noone;
	
	avaliar = function(){
		var _dist = 0;
		with(m_agente){
			_dist = point_distance(x, y, player.x, player.y);		
		}
		return (_dist > 100 and _dist < 300);
	}	
}

//NO DE DECISÃO ESTA ENTRE 300PX E 100PX AÇÃO PERSEGUIR
function NoAcaoPerseguir() : NoAcao() constructor{
	
	m_agente = noone;
	
	tomar_decisao = function(){
		with(m_agente){
			
			ia_perseguir();
		
		}
		return m_agente.no_raiz;
	}
}
// -----------------------------------------------------------------------


//-------------------------------Esta Entre2--------------------------------------------------------

//VERIFICA SE ESTA ENTRE 300PX E 500PX

function NoEstaEntre4() : NoDecisao() constructor{
	
	m_agente = noone;
	
	avaliar = function(){
		var _dist = 0;
		with(m_agente){
			_dist = point_distance(x, y, player.x, player.y);		
		}
		return (_dist > 300 and _dist < 500);
	}	
}

//NO DE DECISÃO ESTA ENTRE 300PX E 500PX AÇÃO EXPLODIR
function NoAcaoExplodir() : NoAcao() constructor{
	
	m_agente = noone;
	
	tomar_decisao = function(){
		with(m_agente){
			
			ia_explodir();
		
		}
		return m_agente.no_raiz;
	}
}
//-------------------------------------------------------------------------------------


// ----------------------------Esta Perto-----------------------------------------------

//VERIFICA SE ESTA PERTO <100PX

function NoEstaPerto() : NoDecisao() constructor{
	
	m_agente = noone;
	
	avaliar = function(){
		var _dist = 0;
		with(m_agente){
			_dist = point_distance(x, y, player.x, player.y);		
		}
		return (_dist < 100);
	}	
}


//NO DE DECISÃO <100PX AÇÃO ATACAR
function NoAcaoAtacar() : NoAcao() constructor{
	
	m_agente = noone;
	
	tomar_decisao = function(){
		with(m_agente){
			//if (!esta_invertido){
				//esta_invertido =false
			ia_atacar();
			//}
		}
		return m_agente.no_raiz;
	}
	
}