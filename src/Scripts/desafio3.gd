extends CanvasLayer

@onready var question = %Desafio3 # Substitua pelo caminho correto para a sua questão
@onready var bomb_collision = %Third_Bomb/%CollisionShape2D # Substitua pelo caminho correto para o CollisionShape2D
@onready var second_bomb = %Third_Bomb

var player_body = null
func _on_res_1_pressed():
	question.visible = false
	second_bomb.free()
	get_tree().change_scene_to_file("res://src/scenes/main_menu.tscn")
	
func _on_res_2_pressed():
	explode_bomb(player_body)

func _on_res_3_pressed():
	explode_bomb(player_body)

func explode_bomb(player_body):
	# Aumenta o tamanho da colisão para preencher todo o ambiente
	bomb_collision.shape.radius = 100 # Substitua pelo valor que deseja
	player_body.position = Global.checkpoint_position
	question.visible = false
	# Adicione aqui o código para fazer a bomba "explodir"

func _on_desafio_3_area_body_entered(body):
	if body.name == "PlayerCharacter":
		player_body = body
		question.visible = true
