extends Node2D

@onready var area_2d = $Area2D

const lines : Array[String] = [
	"O que é derivada?",
	"Alternativa 1, Alternativa 2 e Alternativa 3"
]

func _ready():
	pass

func _on_door_body_entered(body):
	if body.name == "PlayerCharacter":
		print("Mensagem")
		Menager.start_message(global_position, lines)
