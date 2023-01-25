extends Node2D


const ROTATION_SPEED = 1

func _ready():
	pass



func _process(delta):
	rotation += ROTATION_SPEED * delta
