extends KinematicBody2D

var speed = 130
var motion = Vector2.ZERO
var player = null

func _physics_process(delta):
	motion = Vector2.ZERO
	if player:
		motion = position.direction_to(player.position)   * speed
	motion = move_and_slide(motion)

func _on_Area2D_body_entered(body):
	print("entered")
	player = body
	
func _on_Area2D_body_exited(body):
	print("exit")
	player = null



func _on_Player_Death_body_entered(body):
	print("kuolit LMAO")
	get_tree().change_scene("res://scenes/Frosty got ya.tscn")
