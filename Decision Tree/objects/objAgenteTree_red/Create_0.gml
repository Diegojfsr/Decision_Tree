
randomize()
velocidade = 2;

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

destinox   = random_range(64, room_width-64);
destinoy   = random_range(64, room_height-64);




// ---------------Esta Longe ------------------
//Criando o no de ação patrulhar
no_acao_patrulhar = new NoAcaoPatrulhar(); 
no_acao_patrulhar.m_agente = self;

//Criando o Nó Raiz (Esta Longe)
no_raiz = new NoEstaLonge();
//Referenciando o objeto atual que esta sendo
//criado na cena
no_raiz.m_agente  = self; 



//----------------- Esta Entre-------------------
//Criando o no de ação perseguir
no_acao_perseguir = new NoAcaoPerseguir(); 
no_acao_perseguir.m_agente = self;// Devolve a pergunta para o no inicial PATRULHA

//Criando o nó de decisão perseguir
no_esta_entre = new NoEstaEntre();
no_esta_entre.m_agente = self;
no_esta_entre.no_sim = no_acao_perseguir;
//no_esta_entre.no_nao = no_acao_patrulhar;

// ------------------------------------------------


//----------------- Esta Entre2-------------------
//Criando o no de ação explodir
no_acao_explodir = new NoAcaoExplodir();
no_acao_explodir.m_agente = self;// Devolve a pergunta para o no inicial PATRULHA

//Criando o nó de decisão Explodir
no_esta_entre4 = new NoEstaEntre4();
no_esta_entre4.m_agente = self;
no_esta_entre4.no_sim = no_acao_explodir;
//no_esta_entre.no_nao = no_acao_patrulhar;

// ------------------------------------------------







// ---------------Esta Perto -----------------
//Criando o nó de ação Atacar 
no_acao_atacar = new NoAcaoAtacar();
no_acao_atacar.m_agente = self;

//Criando o nó de decisão EstaPerto
no_esta_perto = new NoEstaPerto();
no_esta_perto.m_agente = self;
no_esta_perto.no_sim = no_acao_atacar;
no_esta_perto.no_nao = no_acao_perseguir;
// --------------------------------------------------





//Vinculando os nós(Ação ou Decisão) a raiz
no_raiz.no_sim = no_acao_patrulhar
//Vinculando o nó de decisão
no_raiz.no_nao = no_esta_perto;
//no_raiz.no_nao = no_esta_entre;
//Inicialmente definimos o no raiz como atual
no_atual = no_raiz