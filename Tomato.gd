extends KinematicBody2D

var run_speed = 70
var velocity = Vector2.ZERO
var player = null

func _process(delta):
	velocity = Vector2.ZERO
	if player:
		print("seguiu")
		velocity = position.direction_to(player.position) * run_speed
	velocity = move_and_slide(velocity)

func _on_DetectRadius_body_entered(body):
	player = body
	print("entrou")

func _on_DetectRadius_body_exited(body):
	player = null
	print("saiu")
