/// scrWrapping();

//x
if(x > room_width + sprite_xoffset){
	x = 0 - sprite_xoffset	
}else if(x < 0 - sprite_xoffset){
	x = room_width + sprite_xoffset; 
}

//y
if(y > room_height + sprite_yoffset){
	y = 0 - sprite_yoffset	
}else if(y < 0 - sprite_yoffset){
	y = room_height + sprite_yoffset; 
}

