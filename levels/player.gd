extends KinematicBody2D

var motion = Vector2()
var move = 120
var gravity = 10
var jump = -220

var respawn_point = Vector2(0,0)

func _ready():
	respawn_point = global_position
	pass
func _process(delta):
	motion = move_and_slide(motion,Vector2.UP)
	pass

func _physics_process(delta):
	
	if Input.is_action_pressed("ui_right"):
		motion.x = move
		$Sprite.flip_h = false
		$Sprite.position.x = 0
		if is_on_floor():
			$AnimationPlayer.play("move")
			$movesound.playing =true
	elif Input.is_action_pressed("ui_left"):
		motion.x = -move
		$Sprite.flip_h = true
		$Sprite.position.x = 7
		if is_on_floor():
			$AnimationPlayer.play("move")
	else:
		motion.x = 0
		if is_on_floor():
			$movesound.playing =false
			$AnimationPlayer.play("idle")
		
	if is_on_floor() == false:
		motion.y += gravity
		if  motion.y > gravity :
			$jumpsound.playing = false
			$AnimationPlayer.play("fall")
	if is_on_floor() == true && Input.is_action_pressed("ui_up") == true:
		motion.y = jump
		
		if is_on_floor() :
			$AnimationPlayer.play("jump")
			$jumpsound.playing = true
	pass 
