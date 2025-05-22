// ----- Movement Variables -----
vSpeed       = 0;         // Vertical speed for jumping/falling
gravity      = 0.5;       // Gravity strength (tweak as needed)
jumpStrength = 10;        // Jump force (adjust to get the desired jump height)

// ----- State Variables -----
ducking    = false;       // TRUE when the Down key is held
onGround   = true;        // Starts on the ground

// ----- Ground Setting -----
ground_y = 400;           // Y coordinate of the flat ground

// ----- Sprite Setup -----
// Using your sprite names exactly:
sprite_stand = spr_player;          // Normal (standing) sprite
sprite_jump  = spr_player_jump;     // Jumping sprite
sprite_duck  = spr_player_duck;     // Ducking sprite

// ----- Collision Heights -----
// Calculate and store the heights (assuming top-left origin)
standingHeight = sprite_get_height(spr_player);  
duckHeight     = sprite_get_height(spr_player_duck);

// Set the current collision height to the standing height initially.
colHeight = standingHeight;

// ----- Initial Position -----
// Fix the horizontal position so the character doesn't move sideways.
x = 100;
// Position vertically so that the bottom is exactly on the ground.
y = ground_y - colHeight;

// Set the starting sprite.
sprite_index = spr_player;

