extends Node

var speedrun_time = 200
const map_spawn = Vector2(73, 512)
# Fazer função para alterar checkpoint position sempre que iniciar a fase novamente
# para evitar que o player morra e vá para o final do mapa no ultimo checkpoint, ou
# fazer isso no script que defini o final do jogo.
var checkpoint_position = map_spawn
var lifes = 3
