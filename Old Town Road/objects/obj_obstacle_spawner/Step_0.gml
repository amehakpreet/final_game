//----------------------------------------
// Spawn Timer Logic
//----------------------------------------

// Decrement the spawn timer.
spawn_timer--;

// When the timer is up, spawn an obstacle.
if (spawn_timer <= 0) {
    // Spawn the obstacle at the fixed coordinates (1463, 512) on the "Instances" layer.
    instance_create_layer(1463, 512, "Instances", obj_obstacle);
    
    // Reset the spawn timer to the current interval.
    spawn_timer = current_spawn_interval;
}

//----------------------------------------
// Speed Timer Logic
//----------------------------------------

// Decrement the speed timer.
speed_timer--;

// Every 7 seconds (420 steps), increase the obstacle's speed.
if (speed_timer <= 0) {
    // Increase speed by making the global.obstacle_speed more negative by 0.2.
    // (This makes obstacles move faster to the left.)
    global.obstacle_speed -= 0.2;
    
    // Reset the speed timer to 7 seconds.
    speed_timer = 420;
}

