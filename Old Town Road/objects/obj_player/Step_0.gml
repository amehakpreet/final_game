// ----- 1. Handle Ducking Input -----
// Check if the Down key is held.
if (keyboard_check(vk_down)) {
    ducking = true;
} else {
    ducking = false;
}

// Adjust collision height when switching between ducking and standing so that the bottom remains fixed.
// When ducking, if the current collision height isn't set to duckHeight, adjust y downward.
if (ducking && (colHeight != duckHeight)) {
    y += (colHeight - duckHeight);
    colHeight = duckHeight;
}
// When not ducking, if the collision height isn't at the standing height, adjust y upward.
if (!ducking && (colHeight != standingHeight)) {
    y -= (standingHeight - colHeight);
    colHeight = standingHeight;
}

// ----- 2. Handle Jumping -----
// If Space is pressed, the character is on the ground, and not ducking, then jump.
if (keyboard_check_pressed(vk_space) && onGround && !ducking) {
    vSpeed = -jumpStrength;  // A negative value moves the character upward.
    onGround = false;
}

// ----- 3. Apply Gravity -----
// Add gravity to the vertical speed if not grounded.
if (!onGround) {
    vSpeed += gravity;
}

// Clamp the fall speed so gravity doesn’t become too high. (Adjust maxFallSpeed as needed.)
maxFallSpeed = 12;
if (vSpeed > maxFallSpeed) {
    vSpeed = maxFallSpeed;
}

// ----- 4. Vertical Movement -----
// Update vertical position by adding the vertical speed.
y += vSpeed;

// ----- 5. Ground Collision & Clamping -----
// If the bottom of the collision box goes below ground_y...
if (y + colHeight >= ground_y) {
    // Snap the character so that its bottom exactly touches the ground.
    y = ground_y - colHeight;
    vSpeed = 0;
    onGround = true;
} else {
    onGround = false;
}

// ----- 6. Update Sprite Based on State -----
// Show the jump sprite if in the air.
if (!onGround) {
    sprite_index = spr_player_jump;
// Else if on the ground and ducking, show the duck sprite.
} else if (ducking) {
    sprite_index = spr_player_duck;
// Otherwise, use the standing sprite.
} else {
    sprite_index = spr_player;
}



