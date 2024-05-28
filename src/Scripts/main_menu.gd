extends CanvasLayer

func _on_play_pressed():
	get_tree().change_scene_to_file("res://src/scenes/node_2d.tscn")

func _on_quit_pressed():
	get_tree().quit()
