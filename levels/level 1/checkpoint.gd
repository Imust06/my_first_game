extends Area2D




func _on_checkpoint_body_entered(body):
	if body.is_in_group("player"):
		body.respawn_point = global_position
	pass # Replace with function body.
