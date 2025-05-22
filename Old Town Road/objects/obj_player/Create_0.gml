// obj_player Create Event

// Horizontal movement speed (endless runner constant speed)
hSpeed = 6;

// Vertical speed initialization
vSpeed = 0;

// Gravity and jump strength (tweak these as necessary)
gravity = 0.5;
jumpStrength = 10;

// State variables
onGround = false;
ducking  = false;
jumping  = false;

// Assign sprites (make sure these sprites exist in your project)
sprite_normal = spr_player;      // Running sprite
sprite_duck   = spr_player_duck; // Ducking sprite
sprite_jump   = spr_player_jump; // Jumping sprite

sprite_index = sprite_normal;

