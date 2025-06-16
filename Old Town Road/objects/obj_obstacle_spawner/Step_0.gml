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

// Every 8 seconds (i.e. when speed_timer reaches 0), increase the speed.
if (speed_timer <= 0) {
    // Increase speed by making global.obstacle_speed more negative by 0.4,
    // but only if it hasn't reached the maximum speed of -8 already.
    if (global.obstacle_speed > -8) {
        global.obstacle_speed -= 0.4;

        // Clamp the speed to -8 if we overshoot.
        if (global.obstacle_speed < -8) {
            global.obstacle_speed = -8;
        }
    }
    
    // Reset the speed timer to 480 steps (8 seconds).
    speed_timer = 480;
}
