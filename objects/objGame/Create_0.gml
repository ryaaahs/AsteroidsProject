////Create the game Objects // Global Variables 
instance_create_layer(x, y, "Game", objHUD);
randomize(); 

//TEMP
window_set_size(1920, 1080); 
window_set_fullscreen(true); 
surface_resize(application_surface, 960, 540);
alarm[0] = 1; 


//Global Variables 
global.gameScore = 0;
global.gameHighScore = 0; 
global.gameLives = 3;
global.playerArmor = false; 
global.playerDeath = false; 
//Data Variables(*Not used currently)
global.totalAsteroidsDestoryed = 0; 
global.totalShotsFired = 0;
global.totalLivesLost = 0; 


//Open the ini file and reads the highscore
ini_open("gameFiles.ini"); 
global.gameHighScore = ini_read_real("game", "highscore", 5);
ini_close(); 

//Spawn 2-3 Starting Asteroids 
/*
repeat(irandom_range(3, 4)){
	var _chooseX = choose(1, 2); 
	var _chooseY = choose(1, 2); 
	
	if(_chooseX == 1){
		var _placementX = random_range(0, 160);
	}else{
		var _placementX = random_range(320, room_width); 
	}
	
	if(_chooseY == 1){
		var _placementY = random_range(0, 64);
	}else{
		var _placementY = random_range(224, room_height); 
	}
	
	instance_create_layer(_placementX, _placementY, "Instances", objAsteroid); 
}*/


//Create an array to store the id of the spawn points
/*This system allows you to move the instance round to pick a spawn point
	and have any amount of spawn points, you may want 
*/ 
for(var i = 0; i < instance_number(objAsteroidSpawnerPoint); i++){
	spawn[i] = instance_id_get(i); 			
}



//Spawner Variables 
asteroidSpawnStageOne = room_speed * 4; 
asteroidSpawnStageTwo = room_speed  * 2;
asteroidSpawnStageThree = room_speed;
/*

asteroidSpawnStageFour = room_speed / 3;
asteroidSpawnStageFive = room_speed / 4;
*/
asteroidTimerTick = 0; 

