if (y >= room_height - sprite_height) {
    grounded = true;
} else {
    grounded = false;
}
draw_text(x, y - 20, string(grounded));
// Apply gravity
vspeed += 0.5; // 




// Apply gravity
vspeed += 0.5; //  gravity 

// Check if obj_dino is on obj_block
if (place_meeting(x, y + 1, obj_block)) {
    y = y - vspeed; 
    vspeed = 0; 
    grounded = true; 
} else {
    grounded = false;
}

if (keyboard_check(vk_down)) {
    ducking = true;
    sprite_index = spr_dino_duck;
} else {
    ducking = false;
    sprite_index = spr_dino_run;
}

if (keyboard_check_pressed(vk_space) && !ducking) { 
    // Ensure jumping takes priority over ducking
    vspeed = -10; // Adjust jump strength
}


if (ducking) {
    mask_index = spr_dino_duck; //set to a smaller collision mask
} else {
    mask_index = spr_dino;
}



// Check if dino is on the ground
if (place_meeting(x, y + 1, obj_block)) {
    on_ground = true;
} else {
    on_ground = false;
}

// Jump logic - Only allow jumping if dino is on the ground
if (keyboard_check_pressed(vk_space) && on_ground && !ducking) { 
    vspeed = -10; // Adjust jump strength
}



