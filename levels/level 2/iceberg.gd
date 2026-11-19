extends KinematicBody2D
var motion = Vector2()
var gravit = 10
var time = 0

func _process(delta):
	motion = move_and_slide(motion,Vector2.UP)
	pass
func _physics_process(delta):
	if is_on_floor() == false && time == 1:
		motion.y += gravit
	pass
func _on_hitbox_body_entered(body):
	if body.is_in_group("player"):
		body.global_position = body.respawn_point
		
	pass # Replace with function body.


func _on_Area2D_body_entered(body):
	if body.is_in_group("player"):
		time = 1
	pass # Replace with function body.
