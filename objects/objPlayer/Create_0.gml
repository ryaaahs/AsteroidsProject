////Player Variables

//Invincibility 
playerInvincibility = false; 
playerInvincibilityTimer = room_speed * 2;  
playerInvincibilityTick = 0;

//Player Animations
playerInvincibilityAnimationTimer = room_speed/4;  
playerInvincibilityAnimationTick = 0;
animationFrame = 0; 

//Player Vars
playerMaxAccel = 4; 
playerMovement = 0; 
playerDrag = 0.05; 
playerAccel = 0.2;

shootTimer = 0; 
shootTimerAmount = room_speed / 4; 

trailTimer = 0;
trailTimerAmount = room_speed / 8; 

angle = 0; 
vspd = 0;
hspd = 0; 

//Not used currently
playerDeathAmount = room_speed * 2; 
playerDeathTick = 0; 
playerDeathTotal = 0;