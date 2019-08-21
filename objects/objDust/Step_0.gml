/// @description 
image_alpha -= decay;
if(particleTimer >= particleTimerAmount){
	instance_destroy(); 	
}else if(image_alpha <= 0){
	instance_destroy(); 	
}else{
	particleTimer++;
}