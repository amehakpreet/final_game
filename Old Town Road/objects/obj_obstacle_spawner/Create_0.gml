// Set the initial spawn interval (in steps) — 300 steps = 5 seconds at 60 FPS.
current_spawn_interval = 300;

// Timer to track when the next obstacle should spawn.
spawn_timer = current_spawn_interval;

// Remove the old difficulty_timer (we no longer change the spawn interval).
// Instead, set up a speed timer to increase obstacle speed every 7 seconds.
// 7 seconds at 60 FPS = 7 * 60 = 420 steps.
speed_timer = 420;

// Set the global obstacle speed. 
global.obstacle_speed = -3;
