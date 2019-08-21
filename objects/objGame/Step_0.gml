//Respawn the player if lives > 0

if(global.gameScore > global.gameHighScore){
	global.gameHighScore = global.gameScore		
}

if(!instance_exists(objPlayer)){
	global.gameLives -= 1; 
	if(global.gameLives > 0){
		var playerInst = instance_create_layer(room_width / 2, room_height / 2, "Player", objPlayer)
		with(playerInst){
			playerInvincibility = true; 	
		}
	}else{
		//Save the highscore when the player dies 
		ini_open("gameFiles.ini"); 
		ini_write_real("game", "highscore", global.gameHighScore);
		ini_close(); 
	}
}


// Create the Asteroid Spawn 


/*Check the score 
	
	- Spawn in the right amount of Asteroids for said score
	- Keep in check on how many instances are in play for said score
	- and or other instances also (Items / Enemies / etc ) 
	If no asteroids are in play, spawn 2 - 3 more

*/
/*
if(!instance_exists(objAsteroid)){
	repeat(choose(3, 4, 5)){
		var _spawn = irandom_range(0, 3); 
		instance_create_layer(spawn[_spawn].x, spawn[_spawn].y, "Asteroids", objAsteroid);	
	}
}*/
/*
if(global.gameScore <= 1000){
	if(asteroidTimerTick >= asteroidSpawnStageOne){
		//Pick a spawner 
		var _spawn = irandom_range(0, 3); 
		instance_create_layer(spawn[_spawn].x, spawn[_spawn].y, "Asteroids", objAsteroid);
		asteroidTimerTick = 0; 
	}else{
		asteroidTimerTick++; 	
	}
}else if(global.gameScore <= 2500){
	if(asteroidTimerTick >= asteroidSpawnStageTwo){
		//Pick a spawner 
		var _spawn = irandom_range(0, 3); 
		instance_create_layer(spawn[_spawn].x, spawn[_spawn].y, "Asteroids", objAsteroid);
		asteroidTimerTick = 0; 
	}else{
		asteroidTimerTick++; 	
	}
}else if(global.gameScore <= 4000){
	if(asteroidTimerTick >= asteroidSpawnStageThree){
		//Pick a spawner 
		var _spawn = irandom_range(0, 3); 
		instance_create_layer(spawn[_spawn].x, spawn[_spawn].y, "Asteroids", objAsteroid);
		asteroidTimerTick = 0; 
	}else{
		asteroidTimerTick++; 	
	}
}
*/