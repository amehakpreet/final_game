/// obj_gameover: Draw GUI Event

// (Optional) Draw a background so you see the full GUI area.
draw_set_color(c_gray);
draw_rectangle(0, 0, display_get_gui_width(), display_get_gui_height(), false);

// Get GUI dimensions.
var gui_w = display_get_gui_width();
var gui_h = display_get_gui_height();

// ----------------------------------------
// Draw Final Score Box
// ----------------------------------------
var score_box_width  = 300;
var score_box_height = 100;
var score_box_x = (gui_w - score_box_width) * 0.5;
var score_box_y = (gui_h - score_box_height) * 0.5;
var score_box_x2 = score_box_x + score_box_width;
var score_box_y2 = score_box_y + score_box_height;

// Draw the filled black score box.
draw_set_color(c_black);
draw_rectangle(score_box_x, score_box_y, score_box_x2, score_box_y2, false);

// Draw a white border around the score box.
draw_set_color(c_white);
draw_rectangle(score_box_x, score_box_y, score_box_x2, score_box_y2, true);

// Prepare and center the final score text.
var score_text = "Final Score: " + string(global.score);
var score_text_w = string_width(score_text);
var score_text_h = string_height(score_text);
var score_text_x = score_box_x + (score_box_width - score_text_w) * 0.5;
var score_text_y = score_box_y + (score_box_height - score_text_h) * 0.5;
draw_set_color(c_white);
draw_text(score_text_x, score_text_y, score_text);

// ----------------------------------------
// Draw Restart Button Box
// ----------------------------------------
var restart_box_width  = 150;
var restart_box_height = 50;
var restart_margin_top = 20; // gap between boxes

// Position the restart button centered below the score box.
var restart_box_x = (gui_w - restart_box_width) * 0.5;
var restart_box_y = score_box_y2 + restart_margin_top;
var restart_box_x2 = restart_box_x + restart_box_width;
var restart_box_y2 = restart_box_y + restart_box_height;

// Draw the filled black restart button.
draw_set_color(c_black);
draw_rectangle(restart_box_x, restart_box_y, restart_box_x2, restart_box_y2, false);

// Draw a white border around the restart button.
draw_set_color(c_white);
draw_rectangle(restart_box_x, restart_box_y, restart_box_x2, restart_box_y2, true);

// Prepare and center the "Restart" text.
var restart_text = "Restart";
var restart_text_w = string_width(restart_text);
var restart_text_h = string_height(restart_text);
var restart_text_x = restart_box_x + (restart_box_width - restart_text_w) * 0.5;
var restart_text_y = restart_box_y + (restart_box_height - restart_text_h) * 0.5;
draw_set_color(c_white);
draw_text(restart_text_x, restart_text_y, restart_text);

