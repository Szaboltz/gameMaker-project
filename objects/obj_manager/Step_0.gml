// Evento Step de obj_controlador

// Assume que todos os inimigos são do mesmo tamanho e começam a mover-se para a direita
var _leftMost = room_width;
var _rightMost = 0;

// Encontra os inimigos mais à esquerda e mais à direita
with (obj_enemy) {
    if (x  < _leftMost) {
        _leftMost = x;
    }
    if (x + sprite_width > _rightMost) {
        _rightMost = x + sprite_width;
    }
}

// Checa se precisa mudar a direção
if (_rightMost >= room_width || _leftMost <= 0) {
    global.direction *= -1; // Muda a direção
    // Opcional: Mova todos os inimigos para baixo quando mudarem de direção
    with (obj_enemy) {
        y += 10; // Ajuste conforme necessário
    }
}
