extends Node2D

var hpu = false

func _on_Area2D_body_entered(body):
	hpu = true
