// Número de inimigos por fileira
var num_inimigos = 5;

// Espaço vertical entre as fileiras
var espaco_vertical = 10;

// Altura inicial da primeira fileira
var altura_inicial = 10;

var largura_inimigo = 160;

var espaco_horizontal = (room_width - (num_inimigos * largura_inimigo)) / (num_inimigos + 1);

for (var fileira = 0; fileira < 3; fileira++) {
    for (var i = 0; i < num_inimigos; i++) {
        // Calcula a posição x do inimigo com base no índice e no espaçamento
         x = (i + 1) * espaco_horizontal + (i * largura_inimigo);
        
        // Calcula a posição y do inimigo baseando-se na fileira
         y = altura_inicial + (fileira * (sprite_get_height(enemy_sprite) + espaco_vertical));
        
        // Cria o inimigo
        instance_create_layer(x, y, "Instances", obj_enemy);
    }
}
