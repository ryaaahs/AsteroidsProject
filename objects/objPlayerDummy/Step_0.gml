/// @description 
if(playerDeathTick >= playerDeathAmount){
	var instParticle = choose(objSmallRed, objSmallOrange, objMedRed, objMedOrange); 
	with(instance_create_layer(x + random_range(-sprite_xoffset, sprite_xoffset), y + random_range(-sprite_yoffset, sprite_yoffset), "Player", instParticle)){
		decay = 0.01; 	
	}
	playerDeathTotal++;
	playerDeathTick = 0; 
}else{
	playerDeathTick++	
}
	
if(playerDeathTotal == 30){
	global.playerDeath = true; 
	instance_destroy(); 
}
