extends Area2D


func _on_saw_body_entered(body):
	if body.is_in_group("player"):
		body.global_position = body.respawn_point
	pass # Replace with function body.
