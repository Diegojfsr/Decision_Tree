/// @description Lógica da chama das ações da árvore
no_atual = no_atual.tomar_decisao();


// Desaparece a nave de um lado e aparece no outro
move_wrap(true, true, 0); 
if(vida <0) instance_destroy()