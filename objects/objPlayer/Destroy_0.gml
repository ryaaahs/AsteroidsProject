/// @description 
if(global.gameLives <= 0){
	show_debug_message("Test")
	with(instance_create_layer(x, y, "Particles", objPlayerDummy)){
		image_angle = objPlayer.angle; 	
	}
}else{
	repeat(irandom_range(8, 10)){
		var instParticle = choose(objSmallRed, objSmallOrange, objMedRed, objMedOrange); 
		with(instance_create_layer(x + random_range(-sprite_xoffset, sprite_xoffset), y + random_range(-sprite_yoffset, sprite_yoffset), "Particles", instParticle)){
			decay = 0.02; 	
		}
	}	
}