extends Area2D

@onready var press_e = $"../UI/PressE"

func _ready():
	press_e.hide()

func _on_body_entered(body):
	if body.name == "Player":
		press_e.show()

func _on_body_exited(body):
	if body.name == "Player":
		press_e.hide()
