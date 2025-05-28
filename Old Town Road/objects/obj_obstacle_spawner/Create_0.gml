// Spawn interval (in steps) — 300 steps = 5 seconds at 60 FPS.
current_spawn_interval = 300;

// Timer to track when the next obstacle should spawn.
spawn_timer = current_spawn_interval;

// Set a speed timer to increase obstacle speed every 7 seconds.
// 7 seconds at 60 FPS = 7 * 60 = 420 steps.
speed_timer = 420;

// Set the global obstacle speed. 
// Negative because moving left; a speed of 5 is -5.
global.obstacle_speed = -5;
