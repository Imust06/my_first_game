extends Area2D


func _on_hitbox_body_entered(body):
	if body.is_in_group("player"):
		get_tree().change_scene("res://levels/level 1/lvl1.tscn")
	pass # Replace with function body.
