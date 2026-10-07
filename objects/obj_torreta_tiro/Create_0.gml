vel = 7

var inimigo = instance_nearest(x,y,obj_inimigo);

if (inimigo != noone)
{
    direction = point_direction(x,y,inimigo.x,inimigo.y);
	image_angle = direction - 90;
}

dano = 5