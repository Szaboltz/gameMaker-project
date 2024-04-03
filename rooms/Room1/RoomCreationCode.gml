var teste = 0;
var teste02 = 3213123

// Número de inimigos por fileira
var _num_inimigos = 5;

// Espaço vertical entre as fileiras
var _espaco_vertical = 10;

// Altura inicial da primeira fileira
var _altura_inicial = 0;

var _largura_inimigo = sprite_get_width(enemy_sprite); // Variavel com largura do sprite

var _espaco_horizontal = (room_width - (_num_inimigos * _largura_inimigo)) / (_num_inimigos + 1);

    for (var _i = 0; _i < _num_inimigos; _i++) {
        // Calcula a posição x do inimigo com base no índice e no espaçamento
         x = (_i + 1) * _espaco_horizontal + (_i * _largura_inimigo);
        
        // Calcula a posição y do inimigo baseando-se na fileira
         y = _altura_inicial;
        
        // Cria o inimigo
        instance_create_layer(x, y, "Instances", obj_enemy);
    }
	
instance_create_layer(room_width / 2, room_height - 50, "Instances", obj_player);
