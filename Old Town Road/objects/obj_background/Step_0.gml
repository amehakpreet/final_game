// Move the background to the left over time.
x_offset -= bg_speed; 

// When offset goes beyond the sprite's width, wrap it around.
if (x_offset <= -sprite_get_width(spr_desert)) {
    x_offset += sprite_get_width(spr_desert);
}
