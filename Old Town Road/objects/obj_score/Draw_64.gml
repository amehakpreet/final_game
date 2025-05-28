// Set drawing to GUI coordinates (top-left is (0,0) of the screen)
// Define the dimensions and position for your black box.
// For example, a box 140 pixels wide and 40 pixels tall positioned snugly in the top-right.

var box_width  = 140;
var box_height = 40;
var margin     = 10; // margin from screen borders

// Compute the position so the box is at the top-right.
var x1 = display_get_gui_width() - box_width - margin;
var y1 = margin;
var x2 = display_get_gui_width() - margin;
var y2 = y1 + box_height;

// Draw the black box.
draw_set_color(c_black);
draw_rectangle(x1, y1, x2, y2, false);

// Set text color to white.
draw_set_color(c_white);

// Compose the score string.
var score_text = "Score: " + string(global.score);

// You can center the text horizontally and vertically within the box, for example:
var text_x = x1 + 10;
var text_y = y1 + 10;

// Draw the score text.
draw_text(text_x, text_y, score_text);




