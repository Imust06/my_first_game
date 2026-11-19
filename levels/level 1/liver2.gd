extends Area2D


func _on_liver2_body_entered(body):
	if Input.is_action_pressed("ui_interaction"):
		$wall.position.x = 36
		$AnimationPlayer.play("on")
	pass # Replace with function body.
