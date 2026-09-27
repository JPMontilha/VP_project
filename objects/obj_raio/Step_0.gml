/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

if (global.estado == "LEVEL_UP") instance_destroy();

x = alvo.x
y = alvo.y

var forca = alvo.raio_forca;

// direção sempre segue mouse
var dir = point_direction(x, y, mouse_x, mouse_y);

// ângulo muda com a força
var spread = lerp(360, 5, forca);

// dano muda com a força
var dano_final = alvo.arma2.dano * lerp(0.05, 1, forca);

// transparência
image_alpha = lerp(0.05, 1, forca);

// aplicar dano
with (obj_inimigo)
{
    var dist = point_distance(other.x, other.y, x, y);
    var raio = max(sprite_width, sprite_height) * 0.5;
    
    if (dist <= other.alvo.arma2.alcance + raio)
    {
        var ang = point_direction(other.x, other.y, x, y);
        var diff = angle_difference(dir, ang);
        
        var margem = 0;
        
        if (dist > raio)
        {
            margem = radtodeg(arcsin(raio / dist));
        } else{
            margem = 180;
        }
        
        if (abs(diff) < spread/2 + margem)
        {
            hp -= dano_final;
        }
    }
}