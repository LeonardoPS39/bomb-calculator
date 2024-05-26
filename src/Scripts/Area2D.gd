extends Node2D

const lines : Array[String] = [
	"O que e derivada",
	"Alternativa 1, Alternativa 2 e Alternativa 3",
]

func _ready():
	pass


func _on_body_entered(body):
	if body.name == "PlayerCharacter":
		Menager.start_message(Vector2(4671, 380), lines)
