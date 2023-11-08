/// @description Lógica da chama das ações da árvore
no_atual2 = no_atual2.tomar_decisao2();


// Desaparece a nave de um lado e aparece no outro
move_wrap(true, true, 0); 
if(vida <0) instance_destroy()