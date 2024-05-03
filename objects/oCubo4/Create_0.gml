// Herdando os eventos do objeto pai
// Condicional para conferir andamento de quest
// ativando script para por objeto(oTrain) no lugar
event_inherited();

if(global.howManyToys >= 4){
	
	sprite_index = sTrain;
	entityActivateScript = PlayerStateLock;
}