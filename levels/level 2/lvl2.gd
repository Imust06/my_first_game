extends Node2D


func _on_rester_body_entered(body):
	if body.is_in_group("player") && Input.is_action_pressed("ui_restert"):
		body.global_position = body.respawn_point
	pass # Replace with function body.
