if (duckKey)
{
	ducking = true;
	jumping = false;
	falling = true;
	}

if (place_meeting(x, y + 1, obj_block))
{
  // player touching the ground	
  vspd = 0; // vertical speed
  jumping = false;
  falling = false;
  
  if (duckKey)
  ducking = false;
  // if player wanting to jump
  if ((jumpKey || jumpKeyAlt && !duckKey)
}

{
	  jumping = true;
	  vspd = -jspd;
}

else
{
	if (ducking)
	{
		vspd += grav * 4;
	} 
	else
	{ if (vspd , termVelocity)
		vspd += grav;
		if (sign(vspd == 1)
		falling = true;
	}
	
	
	
	
	
	
	
	