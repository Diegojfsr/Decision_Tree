/// @description Insert description here
// You can write your code in this editor
randomize()
velocidade2 = 2;

// Municao
// Codigo para controlar a municao do player
max_municao = 10;
municao = max_municao;

// Diminuir um pouco a cadência de tiro
cooldown = 0;

// Vida
// Codigo para controlar a vida do red
max_vida= 5;
vida = max_vida;

// Escreve o estado do obj na tela 
estado = ia_patrulhar;
escrever_estado = estado;


//esta_invertido = false;

destinox2   = random_range(64, room_width-64);
destinoy2   = random_range(64, room_height-64);

//Criando o no de ação perseguir
no_acao_perseguir2 = new NoAcaoPerseguir2(); 
no_acao_perseguir2.m_agente2 = self;

//Criando o nó de decisão EstaEntre
no_esta_entre2 = new NoEstaEntre2();
no_esta_entre2.m_agente2 = self;
no_esta_entre2.no_sim2 = no_acao_perseguir2;
//no_esta_entre.no_nao = no_acao_patrulhar;

//Criando o no de ação patrulhar
no_acao_patrulhar2 = new NoAcaoPatrulhar2(); 
no_acao_patrulhar2.m_agente2 = self;

//Criando o nó de ação Atacar 
no_acao_atacar2 = new NoAcaoAtacar2();
no_acao_atacar2.m_agente2 = self;

//Criando o nó de decisão EstaPerto
no_esta_perto2 = new NoEstaPerto2();
no_esta_perto2.m_agente2 = self;
no_esta_perto2.no_sim2 = no_acao_atacar2;
no_esta_perto2.no_nao2 = no_acao_perseguir2;

//Criando o Nó Raiz
no_raiz2 = new NoEstaLonge2();
//Referenciando o objeto atual que esta sendo
//criado na cena
no_raiz2.m_agente2  = self; 

//Vinculando os nós(Ação ou Decisão) a raiz
no_raiz2.no_sim2 = no_acao_patrulhar2
//Vinculando o nó de decisão
no_raiz2.no_nao2 = no_esta_perto2;
//no_raiz.no_nao = no_esta_entre;
//Inicialmente definimos o no raiz como atual
no_atual2 = no_raiz2