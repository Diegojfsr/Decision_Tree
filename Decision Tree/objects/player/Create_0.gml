/// @description Insert description here
// You can write your code in this editor

randomize()
velocidade3 = 3;

// Municao
// Codigo para controlar a municao do player
max_municao = 100;
municao = max_municao;

// Diminuir um pouco a cadência de tiro
cooldown = 0;

// Vida
// Codigo para controlar a vida do red
max_vida2= 5;
vida2 = max_vida2;


//esta_invertido = false;

destinox3   = random_range(64, room_width-64);
destinoy3   = random_range(64, room_height-64);

//Criando o no de ação perseguir
no_acao_perseguir3 = new NoAcaoPerseguir3(); 
no_acao_perseguir3.m_agente3 = self;

//Criando o nó de decisão EstaEntre
no_esta_entre3 = new NoEstaEntre3();
no_esta_entre3.m_agente3 = self;
no_esta_entre3.no_sim3 = no_acao_perseguir3;
//no_esta_entre.no_nao = no_acao_patrulhar;

//Criando o no de ação patrulhar
no_acao_patrulhar3 = new NoAcaoPatrulhar3(); 
no_acao_patrulhar3.m_agente3 = self;

//Criando o nó de ação Atacar 
no_acao_atacar3 = new NoAcaoAtacar3();
no_acao_atacar3.m_agente3 = self;

//Criando o nó de decisão EstaPerto
no_esta_perto3 = new NoEstaPerto3();
no_esta_perto3.m_agente3 = self;
no_esta_perto3.no_sim3 = no_acao_atacar3;
no_esta_perto3.no_nao3 = no_acao_perseguir3;

//Criando o Nó Raiz
no_raiz3 = new NoEstaLonge3();
//Referenciando o objeto atual que esta sendo
//criado na cena
no_raiz3.m_agente3  = self; 

//Vinculando os nós(Ação ou Decisão) a raiz
no_raiz3.no_sim3 = no_acao_patrulhar3
//Vinculando o nó de decisão
no_raiz3.no_nao3 = no_esta_perto3;
//no_raiz.no_nao = no_esta_entre;
//Inicialmente definimos o no raiz como atual
no_atual3 = no_raiz3






