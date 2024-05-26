extends Area2D

@onready var collision = $CollisionShape2D
@onready var sprite = $Sprite2D

# Called when the node enters the scene tree for the first time.
func _ready():
	pass
	#collision.shape.extents = sprite.get_rect().size / 2

func _on_body_entered(body):
	var respawn = Global.checkpoint_position
	if body.name == "PlayerCharacter":
		body.position = respawn
