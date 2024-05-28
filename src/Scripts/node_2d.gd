extends Node2D

@onready var door1 = $FirstLevel_elements/PortaEntrada
@onready var door2 = $SecondLevel_elements/PortaEntrada2
@onready var door3 = $ThirdLevel_elements/PortaEntrada3

func reload():
	door1._ready()
	door2._ready()
	door3._ready()
	
