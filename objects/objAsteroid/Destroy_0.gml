////Rock breaking functionality 

// Create the Rock breaking functionality 
var ranVal = choose(1, 2); 

if(sprite_index == sprAsteroidLarge){
	
	//Pick one of the options 
	var shieldSpawn = irandom_range(1, 100); 
	global.gameScore += 50; 
	
	if(ranVal == 1){
		repeat(irandom_range(2, 3)){
			// Pick a random coord within the mask to spawn
			var ranX = random_range(x - sprite_xoffset, x + sprite_xoffset);
			var ranY = random_range(y - sprite_yoffset, y + sprite_yoffset);
			
			with(instance_create_layer(x, y, "Instances", objAsteroid)){
				sprite_index = sprAsteroidMedium;
				spritePick = sprAsteroidMedium;
				indexPick = choose(0, 1, 2, 3);
			}
		}
	}else{
		global.gameScore += 50; 
		repeat(irandom_range(1, 2)){
			var ranX = random_range(x - sprite_xoffset, x + sprite_xoffset);
			var ranY = random_range(y - sprite_yoffset, y + sprite_yoffset);
			with(instance_create_layer(x, y, "Instances", objAsteroid)){
				sprite_index = sprAsteroidMedium;
				spritePick = sprAsteroidMedium; 
				indexPick = choose(0, 1, 2, 3);
			}
		}	
	}
	
	//TEMP
	if(shieldSpawn <= 10){
		instance_create_layer(x, y, "Instances", objArmor); 	
	}
	
}else if(sprite_index == sprAsteroidMedium){
	var shieldSpawn = irandom_range(1, 100); 
	
	if(ranVal == 1){
		global.gameScore += 25; 
		repeat(irandom_range(3, 4)){
			// Pick a random coord within the mask to spawn
			var ranX = random_range(x - sprite_xoffset, x + sprite_xoffset);
			var ranY = random_range(y - sprite_yoffset, y + sprite_yoffset);
			
			with(instance_create_layer(x, y, "Instances", objAsteroid)){
				sprite_index = sprAsteroidSmall;
				spritePick = sprAsteroidSmall;
				indexPick = choose(0, 1, 2, 3);
			}
		}
	}else{
		global.gameScore += 25;
		repeat(irandom_range(2, 3)){
			var ranX = random_range(x - sprite_xoffset, x + sprite_xoffset);
			var ranY = random_range(y - sprite_yoffset, y + sprite_yoffset);
			with(instance_create_layer(x, y, "Instances", objAsteroid)){
				sprite_index = sprAsteroidSmall;
				spritePick = sprAsteroidSmall;
				indexPick = choose(0, 1, 2, 3);
			}
		}	
	}
	
	if(shieldSpawn <= 5){
		instance_create_layer(x, y, "Instances", objArmor); 	
	}
}else if(sprite_index == sprAsteroidSmall){
	global.gameScore += 5;
	instance_destroy(); 
}
