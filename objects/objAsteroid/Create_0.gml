/// @description Asteroid Variables 

 

//Pick a asteroid
//if(!objectDestoryed)
var spritePick = choose(sprAsteroidSmall, sprAsteroidSmall, sprAsteroidMedium, sprAsteroidLarge); 
sprite_index = spritePick; 

//Rock Rot and Direction
pickRotation = choose(1, 2); 
direction = random_range(0, 359); 


asteroidSpeed = choose(1, 1.5); 
