/// @description 
image_xscale -= decay;
image_yscale -= decay;

if(particleTimer >= particleTimerAmount){
	instance_destroy(); 	
}else if(image_xscale <= 0 && image_yscale <= 0){
	instance_destroy(); 	
}else{
	particleTimer++;
}