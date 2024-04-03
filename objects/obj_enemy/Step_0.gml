x += global.velocidade * global.direction;

if random(5000) < 4 {
    instance_create_layer(x + 85, y + 100, "Instances", obj_enemy_bullet);
}