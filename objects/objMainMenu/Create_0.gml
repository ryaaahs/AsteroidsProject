/// @description 

//RES
window_set_size(1920,1080); 
surface_resize(application_surface, 1920, 1080);
window_set_fullscreen(true);

//Main menu Variables
menuTag[0] = "Play";
menuTag[1] = "Settings";
menuTag[2] = "Exit";

arrowPlacement = 1; 
arrowPlacementChange = false; 
arrowTimer = room_speed; 
arrowTimerTick = 0; 
arrowState = "Right";
arrowX = 160; 
arrowY = 90;
arrowMovement = 0.4; 