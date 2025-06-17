spawn_timer += 1;

if (spawn_timer >= spawn_interval)
{
    var b = instance_create_depth(1277, 406, 0, obj_bird);
    b.spd = irandom_range(2, 7);          // give this bird its speed
    spawn_timer = 0;                      // restart the 10-second clock
}
