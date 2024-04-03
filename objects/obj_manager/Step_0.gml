// Assume que todos os inimigos são do mesmo tamanho e começam a mover-se para a direita
var _left_most = room_width;
var _right_most = 0; 

// Encontra os inimigos mais à esquerda  e mais à direita
with (obj_enemy) { 
	// Verifica o inimigo mais a esquerda
	// Compara todos os  inimigos da fileira
    if (x  < _left_most) {
        _left_most = x;
    }
	//Verifica o inimigo mais a direita
	//Compara todos os inimigos da fileira
    if (x + sprite_width > _right_most) {
        _right_most = x + sprite_width;
    }
}

// Checa se precisa mudar a direção
if (_right_most >= room_width || _left_most <= 0) {
	// Muda a direção
    global.direction *= -1; 
    //Move todos os inimigos para baixo quando chegar no fim da tela 
	with (enemy_sprite) {
		enemy_sprite. _descer = true;
	}
}
