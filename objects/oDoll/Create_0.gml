// Herdando os eventos do objeto pai
// Condicional para conferir andamento de quest
// ativando script para levantar o brinquedo
// destroi o objeto ao ativar script
event_inherited();

if(global.howManyToys == 4) instance_destroy();
