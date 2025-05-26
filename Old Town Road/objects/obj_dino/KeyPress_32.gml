

if (grounded) {
    vspeed = -10; // Jump force
    grounded = false; // prevents multiple jumps
}
if (place_meeting(x, y + vspeed, obj_block)) {
    while (place_meeting(x, y + 1, obj_block)) {
        y -= 1; 
    }
    vspeed = 0;
    grounded = true;
} else {
    grounded = false;
}
