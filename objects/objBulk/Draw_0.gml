/// Draw Ourself with a shader

draw_self(); 

if(flash > 0){
	
	flash -= 0.05; 
	
	shader_set(shFlash);
	shAlpha = shader_get_uniform(shFlash, "colourAlpha");
	shader_set_uniform_f(shAlpha, flash);

	draw_self(); 

	shader_reset(); 
}