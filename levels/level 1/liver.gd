extends Area2D



func _on_liver_body_entered(body):
	if body.is_in_group("player") && Input.is_action_pressed("ui_interaction"):
		$AnimationPlayer.play("on")
		$door.position.x = -463
	pass # Replace with function body.
