/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

vel = 0
dano = 0

var inimigo = instance_nearest(x,y,obj_inimigo);

if (inimigo != noone)
{
    direction = point_direction(x,y,inimigo.x,inimigo.y);
}