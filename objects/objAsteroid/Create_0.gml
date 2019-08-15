////Asteroid Variables 

 

//Pick a asteroid
//if(!objectDestoryed)
var spritePick = choose(sprAsteroidMedium, sprAsteroidMedium, sprAsteroidLarge); 
image_speed = 0; 
var indexPick = choose(0, 1, 2, 3);
sprite_index = spritePick; 
image_index = indexPick

//Rock Rot and Direction
pickRotation = choose(1, 2); 
direction = random_range(0, 359); 

if(sprite_index = sprAsteroidSmall){
	asteroidSpeed = 2.5;  
}else{
	asteroidSpeed = choose(1, 1.5); 
}

