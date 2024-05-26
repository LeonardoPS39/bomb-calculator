extends CanvasLayer

var time = Global.speedrun_time

func _physics_process(delta):
	time = float(time) - delta

	update_ui()

func update_ui():
 
	var formatted_time = str(time)
	var decimal_index = formatted_time.find(".")
 
	if decimal_index > 0:
		formatted_time = formatted_time.left(decimal_index + 1)
		formatted_time = formatted_time.replace(".", " ")
 
	Global.speedrun_time = formatted_time

	%Label.text = "Tempo restante: " + formatted_time
