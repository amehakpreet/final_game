// --- In the Draw GUI Event of your restart button or game-over controller ---

// Define the Restart button text and position.
var restart_text = "Restart";
// Calculate centered position.
var restart_x = display_get_gui_width() / 2 - string_width(restart_text) / 2;
var restart_y = display_get_gui_height() / 2 - string_height(restart_text) / 2;

// Draw the restart text.
draw_set_color(c_white);
draw_text(restart_x, restart_y, restart_text);

// Check for a right mouse button press.
if (mouse_check_button_pressed(mb_right)) {
    // Get the mouse position in GUI coordinates.
    var mx = get_gui_mouse_x();
    var my = get_gui_mouse_y();
    
    // Check if the click is within the restart button bounds.
    if (mx >= restart_x && mx <= restart_x + string_width(restart_text) &&
        my >= restart_y && my <= restart_y + string_height(restart_text)) {
            
        // Reset global variables.
        global.score = 0;
        global.obstacle_speed = -5;  // Reset to default speed.
        
        // Destroy existing obstacles.
        with (obj_obstacle) {
            instance_destroy();
        }
        
        // Optionally, reset any other persistent data or objects.
        
        // Finally, restart the room.
        room_restart();
    }
}
