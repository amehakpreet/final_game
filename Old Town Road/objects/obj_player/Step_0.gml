

// -- Horizontal Movement --
// The player is always moving to the right.
x += hSpeed;

// -- Vertical Movement & Gravity --
// Apply gravity to vertical speed.
vSpeed += gravity;
// Apply vertical movement.
y += vSpeed;

// -- Simple Ground Collision Check --
// Assumes there is an object 'obj_ground' representing the ground.
if (place_meeting(x, y + 1, obj_ground)) {
    onGround = true;
    // Snap to ground (basic resolution).
    while (!place_meeting(x, y + 1, obj_ground)) {
        y += 1;
    }
    vSpeed = 0;
} else {
    onGround = false;
}

// -- Player Controls --

// Check for ducking (Down key)
// Use keyboard_check so ducking remains active while the key is held.
if (keyboard_check(vk_down)) {
    ducking = true;
} else {
    ducking = false;
}

// Check for jump (Space key pressed only once per press)
// The player can jump only if on the ground and not ducking.
if (keyboard_check_pressed(vk_space)) {
    if (onGround && !ducking) {
        jumping = true;
        vSpeed = -jumpStrength; // Negative value moves the player upward.
        onGround = false;
    }
}

// -- Update Sprite Based on State --
// Switch sprite based on whether the player is ducking, jumping, or running.
if (ducking) {
    sprite_index = sprite_duck;
} else if (!onGround) {
    sprite_index = sprite_jump;
} else {
    sprite_index = sprite_normal;
}


