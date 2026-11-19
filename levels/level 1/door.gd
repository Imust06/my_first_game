extends StaticBody2D



func _on_Area2D_body_entered(body):
	if body.is_in_group("player"):
		get_tree().change_scene("res://levels/level 2/lvl2.tscn")
	pass # Replace with function body.
