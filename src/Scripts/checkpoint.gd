extends Area2D

var checkpoint_pos = Global.checkpoint_position

func _on_body_entered(body):
	if body.name == "PlayerCharacter":
		print(body.name)
		checkpoint_pos = Vector2(position.x, position.y)
		Global.checkpoint_position = checkpoint_pos
