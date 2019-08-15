//// Destory other object on collision ++ 
//Applys Armor to the player, if the user has one, give score


if(!global.playerArmor){
	global.playerArmor = !global.playerArmor;
	sprite_index = sprPlayerArmor; 
}else{
	global.gameScore += 50; 	
}

instance_destroy(other); 