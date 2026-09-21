extends Area2D

@export var starting_position = Vector2(133, 102)

func _on_body_entered(body):
	if body == get_node("../Player"):
		body.global_position = starting_position
		body.velocity = Vector2.ZERO
