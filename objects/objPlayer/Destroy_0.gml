/// @description 
if(global.gameLives <= 0){
	draw_sprite_ext(sprPlayer, 0, x, y, 1, 1, image_angle, c_white, 1); 
	while(!global.playerDeath){
		
	}
}
repeat(irandom_range(8, 10)){
	var instParticle = choose(objSmallRed, objSmallOrange, objMedRed, objMedOrange); 
	with(instance_create_layer(x + random_range(-sprite_xoffset, sprite_xoffset), y + random_range(-sprite_yoffset, sprite_yoffset), "Particles", instParticle)){
		decay = 0.02; 	
	}
}	