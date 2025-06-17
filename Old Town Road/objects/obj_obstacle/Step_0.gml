// Move the obstacle left by using the current global obstacle speed.
x += global.obstacle_speed;

// If the obstacle goes completely off-screen to the left, destroy it.
if (x < -sprite_get_width(sprite_index)) {
    instance_destroy();
}
