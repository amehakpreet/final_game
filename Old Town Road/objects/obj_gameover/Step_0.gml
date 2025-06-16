// --- obj_gameover: Step Event ---

// Recalculate common dimensions for GUI elements.
var gui_w = display_get_gui_width();
var gui_h = display_get_gui_height();

// Score Box boundaries.
var score_box_width  = 300;
var score_box_height = 100;
var score_box_x = (gui_w - score_box_width) * 0.5;
var score_box_y = (gui_h - score_box_height) * 0.5;
var score_box_y2 = score_box_y + score_box_height;

// Restart Button boundaries.
var restart_box_width  = 150;
var restart_box_height = 50;
var restart_margin_top = 20;
var restart_box_x = (gui_w - restart_box_width) * 0.5;
var restart_box_y = score_box_y2 + restart_margin_top;
var restart_box_x2 = restart_box_x + restart_box_width;
var restart_box_y2 = restart_box_y + restart_box_height;

// --- Right-Click Detection on Restart Button --- 
if (mouse_check_button_pressed(mb_right)) {
    var mx = device_mouse_x(0);
    var my = device_mouse_y(0);
    
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
        room_goto(room1);
    }
}

// --- Left-Click Detection on Help Text ---
if (mouse_check_button_pressed(mb_left)) {
    var mx = device_mouse_x(0);
    var my = device_mouse_y(0);
    
    // Calculate the help text's clickable area (same as drawn below)
    var help_text = "Click here for help!";
    var help_text_w = string_width(help_text);
    var help_text_h = string_height(help_text);
    var help_text_x = restart_box_x + (restart_box_width - help_text_w) * 0.5;
    var help_text_y = restart_box_y2 + 10; // gap below restart button
    
    if (mx >= help_text_x && mx <= (help_text_x + help_text_w) &&
        my >= help_text_y && my <= (help_text_y + help_text_h)) {
        
        // When help text is clicked, go to rm_start.
        room_goto(rm_start);
    }
}

