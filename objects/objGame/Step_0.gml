/// @description 


//Respawn the player if lives > 0
if(!instance_exists(objPlayer)){
	if(global.gameLives > 0){
		var playerInst = instance_create_layer(room_width / 2, room_height / 2, "Instances", objPlayer)
		with(playerInst){
			playerInvincibility = true; 	
		}
		global.gameLives -= 1; 
	}else{
		//end the game
		//display score and highscore
		//and maybe some other things 
	}
}
