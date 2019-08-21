////Main menu Variables
menuTag[0] = "Play";
menuTag[1] = "Settings";
menuTag[2] = "Exit";


window_set_size(960, 540); 
surface_resize(application_surface, 960, 540);
alarm[0] = 1; 

arrowPlacement = 1; 
arrowPlacementChange = false; 
arrowTimer = room_speed; 
arrowTimerTick = 0; 
arrowState = "Right";
arrowX = 160; 
arrowY = 90;
arrowMovement = 0.4; 