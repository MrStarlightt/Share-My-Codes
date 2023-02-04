extends Node2D

onready var animation = $AnimationPlayer


func _process(delta):
	animation.play("hiding")

func _on_Timer_timeout():
	get_tree().change_scene("res://scenes/main.tscn")
