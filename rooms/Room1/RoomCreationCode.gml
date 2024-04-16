// Número de inimigos por fileira
var _num_inimigos = 5;

// Altura inicial da primeira fileira
var _altura_inicial = 30;

// Pega o tamanho do objeto do inimigo
var _largura_inimigo = sprite_get_width(spr_enemy); 

// Calcula o espeço da tela onde não haverá inimigos
var _espaco_sem_inimigo = room_width - (_num_inimigos * _largura_inimigo);

// Calcula a quantidade de espaços entre inimigos
var _quantidade_espaco = (_num_inimigos + 1)

// Calcula o tamanho do espaço entre cada inimigo
var _espaco_horizontal = (_espaco_sem_inimigo / _quantidade_espaco);

    for (var _i = 0; _i < _num_inimigos; _i++) {
        // Calcula a posição x do inimigo com base no índice e no espaçamento
         x = (_i + 1) * _espaco_horizontal + (_i * _largura_inimigo);
        
        // Calcula a posição y do inimigo baseando-se na fileira
         y = _altura_inicial;
        
        // Cria o inimigo
        instance_create_layer(x, y, "Instances", obj_enemy);
    }
