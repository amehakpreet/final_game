/// --- Step Event for obj_dino ---

// 1. Update Ducking State --------------------------------
if (keyboard_check(vk_down)) {
    ducking = true;
    sprite_index = spr_dino_duck;
    mask_index = spr_dino_duck; // Use a smaller collision mask when ducking
} else {
    ducking = false;
    sprite_index = spr_dino_run;
    mask_index = spr_dino; // Regular collision mask
}

// 2. Ground Check -----------------------------------------
// Determine if the dino is standing on a block
if (place_meeting(x, y + 1, obj_block)) {
    on_ground = true;
} else {
    on_ground = false;
}
  
// (Optional) Display on_ground status for debugging
draw_text(x, y - 20, string(on_ground));

// 3. Jump Logic -------------------------------------------
// Use a lower jump impulse (which means a slower upward movement) while still achieving the needed height.
// Adjust jump_strength and gravity to tune the arc.
var jump_strength = -16;  // Lower impulse for slower upward motion (absolute value 16).
if (keyboard_check_pressed(vk_space) && on_ground && !ducking) {
    vspeed = jump_strength;
    on_ground = false;  // Prevent multiple jumps
}

// 4. Apply Gravity ----------------------------------------
// Use a constant gravity so that the ascent is smooth and not too steep.
vspeed += 0.4;  // Lower gravity compared to before gives a more gradual upward rate

// 5. Apply Vertical Movement ------------------------------
// Update the dino's vertical position based on vspeed.
y += vspeed;

// 6. Collision Resolution ---------------------------------
// If the dino ends up inside a block after moving, push it upward until it no longer collides.
if (place_meeting(x, y, obj_block)) {
    while (place_meeting(x, y, obj_block)) {
        y -= 1;
    }
    vspeed = 0;
    on_ground = true; // Reset on_ground as we are now at the block’s surface.
}
// Increase step count each step (each frame)
step_count += 1;

// Every 15 steps, add 10 to the score and reset the counter
if (step_count >= 15) {
    global.score += 10;
    step_count = 0;
}
