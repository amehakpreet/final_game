// --- obj_gameover: Step Event ---
if (mouse_check_button_pressed(mb_right)) {
    // Get the mouse position using device coordinates.
    var mx = device_mouse_x(0);
    var my = device_mouse_y(0);
    
    // Get GUI dimensions.
    var gui_w = display_get_gui_width();
    var gui_h = display_get_gui_height();
    
    // Recalculate the score box boundaries.
    var score_box_width  = 300;
    var score_box_height = 100;
    var score_box_x = (gui_w - score_box_width) * 0.5;
    var score_box_y = (gui_h - score_box_height) * 0.5;
    var score_box_y2 = score_box_y + score_box_height;
    
    // Recalculate the Restart button boundaries.
    var restart_box_width  = 150;
    var restart_box_height = 50;
    var restart_margin_top = 20;
    var restart_box_x = (gui_w - restart_box_width) * 0.5;
    var restart_box_y = score_box_y2 + restart_margin_top;
    var restart_box_x2 = restart_box_x + restart_box_width;
    var restart_box_y2 = restart_box_y + restart_box_height;
    
    // Check if the mouse click is inside the Restart button box.
    if (mx >= restart_box_x && mx <= restart_box_x2 &&
        my >= restart_box_y && my <= restart_box_y2) {
            
        show_debug_message("Restart button right-clicked!");
        
        // Reset global variables.
        global.score = 0;
        global.obstacle_speed = -5;
        
        // Destroy any existing obstacles.
        with (obj_obstacle) {
            instance_destroy();
        }
        
        show_debug_message("Attempting to go to room1 now...");
        
        // Send the player back to the main gameplay room.
        // Make sure "room1" is the correct name of your gameplay room.
        room_goto(room1);
        // Alternatively, try:
        // room_goto(rm_room1);
    }
}
