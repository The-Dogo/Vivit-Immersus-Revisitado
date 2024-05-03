// Herdando os eventos do objeto pai
// Condicional para conferir andamento de quest
// ativando script para por objeto(oDoll) no lugar
event_inherited();

if(global.howManyToys >= 4){
	
	sprite_index = sDoll;
	entityActivateScript = PlayerStateLock;
}