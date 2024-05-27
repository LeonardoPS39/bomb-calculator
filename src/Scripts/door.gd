extends Area2D

var isVisible = false
@onready var sprite_2d = $Sprite2D
@onready var static_body_2d = $StaticBody2D
@export var teste = "saida"

# Called when the node enters the scene tree for the first time.
func _ready():
	sprite_2d.visible = false
	static_body_2d.collision_layer = 0

func _on_body_entered(body):
	if body.name == "PlayerCharacter" and not isVisible:
		isVisible = true

func _on_body_exited(body):
	if body.name == "PlayerCharacter":
		sprite_2d.visible = true
		static_body_2d.collision_layer = 1
	if teste == "entrada":
		print("AIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII")
