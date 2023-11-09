

//---------------------------------------------------
//--------------- PATRULHAR----------------------------

function NoEstaLonge() : NoDecisao() constructor{
	m_agente = noone;
	avaliar = function(){
		var _dist = 0;
		with(m_agente){
			 instance_create_layer(x, y, "Instances", obj_ponto);
			_dist = point_distance(x, y, obj_ponto.x, obj_ponto.y);		
		}
		return (_dist > 300);
	}	
}

function NoAcaoPatrulhar() : NoAcao() constructor{
	m_agente = noone;
	tomar_decisao = function(){
		with(m_agente){				
			ia_patrulhar();
		}
		return m_agente.no_raiz;
	}
}


//---------------------------------------------------
//--------------- ATACAR----------------------------

function NoEstaPerto() : NoDecisao() constructor{
	m_agente = noone;
	avaliar = function(){
		var _dist = 0;
		with(m_agente){
			 instance_create_layer(x, y, "Instances", obj_ponto2);
			_dist = point_distance(x, y, obj_ponto.x, obj_ponto.y);		
		}
		return (_dist < 300);
	}	
}

function NoAcaoAtacar() : NoAcao() constructor{
	m_agente = noone;
	tomar_decisao = function(){
		with(m_agente){				
			ia_atacar();
		}
		return m_agente.no_raiz;
	}
}




