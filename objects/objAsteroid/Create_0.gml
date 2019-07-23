/// @description Asteroid Variables 

 

//Pick a asteroid
//if(!objectDestoryed)
var spritePick = choose(sprAsteroidMedium, sprAsteroidMedium, sprAsteroidLarge); 
sprite_index = spritePick; 

//Rock Rot and Direction
pickRotation = choose(1, 2); 
direction = random_range(0, 359); 

if(sprite_index = sprAsteroidSmall){
	//Temp 
	asteroidSpeed = 2.5;  
}else{
	asteroidSpeed = choose(1, 1.5); 
}

