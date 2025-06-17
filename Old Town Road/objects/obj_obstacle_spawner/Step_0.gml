////////////////////////////////////////////
// Spawn Timer Logic
////////////////////////////////////////////

// Decrement the spawn timer.
spawn_timer--;

// When the timer is up, spawn an obstacle.
if (spawn_timer <= 0) {
    // Spawn the obstacle at the fixed coordinates (1463, 512) on the "Instances" layer.
    instance_create_layer(1463, 512, "Instances", obj_obstacle);
    
    // Reset the spawn timer to the current interval.
    spawn_timer = current_spawn_interval;
}

////////////////////////////////////////////
// Speed Timer Logic
////////////////////////////////////////////

// Decrement the speed timer.
speed_timer--;

// Every 7 seconds (i.e. when speed_timer reaches 0), increase the speed.
if (speed_timer <= 0) {
    // Increase speed by decreasing global.obstacle_speed by 0.4,
    // but only if it hasn't reached the maximum speed of -12.
    if (global.obstacle_speed > -12) {
        global.obstacle_speed -= 0.4;
        
        // Clamp the speed to -12 if we've gone too far.
        if (global.obstacle_speed < -12) {
            global.obstacle_speed = -12;
        }
    }
    
    // Reset the speed timer to 420 steps (7 seconds).
    speed_timer = 420;
}
