// Initialize variables in the Create event
grounded = false;
on_ground = false;
ducking = false;
vspeed = 0;
 
// Initialize global score if needed
if (!variable_global_exists("global.score")) {
    global.score = 0;
}

// Initialize the step counter
step_count = 0;
