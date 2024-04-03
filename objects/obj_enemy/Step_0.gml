_timer++;
 
 if (_timer >= 30) {
	x += global.velocidade * global.direction;
	_timer = 0;
}

if (_descer) {
	y += 50;
	_descer = false; 
	x += global.velocidade * global.direction;
}
 
if random(5000) < 4 {
    instance_create_layer(x + 85, y + 100, "Instances", obj_enemy_bullet);
}


