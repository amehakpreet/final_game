// Determine how many copies are needed to fill the room's width.
// Adding 2 ensures that there’s no gap even if the room is a bit wider.
var copiesNeeded = ceil(display_get_width() / sprite_get_width(spr_desert)) + 2;

for (var i = 0; i < copiesNeeded; i++) {
    // Draw each copy at the appropriate position.
    // x_offset is negative so adding copies effectively places them side by side.
    draw_sprite(spr_desert, 0, x_offset + i * sprite_get_width(spr_desert), 0);
}
