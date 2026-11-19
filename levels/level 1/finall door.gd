extends Node2D


func _on_liver2_body_entered(body):
	if Input.is_action_pressed("ui_interaction"):
		$transforme/Area2D/CollisionShape2D.position.x = -8
		$liver2/wall.position.x = 30
		$liver2/AnimationPlayer.play("on")
	pass # Replace with function body.


func _on_Area2D_body_entered(body):
	if body.is_in_group("player"):
		get_tree().change_scene("res://levels/level 2/lvl2.tscn")
	pass # Replace with function body.
