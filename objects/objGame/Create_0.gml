/// @description Create the game Objects
// Also state the global variables
instance_create_layer(x, y, "Game", objHUD);
randomize(); 
alarm[0] = 1; 

global.gameScore = 0;
global.gameHighScore = 0; 
global.gameLives = 3;
global.totalAsteroidsDestoryed = 0; 
global.totalShotsFired = 0;
global.totalLivesLost = 0; 