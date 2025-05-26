y = 0;
vspd = 0;// Set y before checking for collision
if (place_meeting(x, y + vspd, obj_block)) {

    while (!place_meeting(x, y + sign(vspd), obj_block)) {
        y += sign(vspd);
    }
{
	vspd = 0;
}
y += vspd;
}
