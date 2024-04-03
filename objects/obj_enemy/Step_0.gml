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
 
