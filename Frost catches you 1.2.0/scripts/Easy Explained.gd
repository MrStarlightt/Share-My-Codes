extends Node2D

func _input(event):
	if event.is_action_pressed("back"):
		get_tree().change_scene("res://scenes/Difficulty.tscn")
	if event.is_action_pressed("enter"):
		get_tree().change_scene("res://scenes/story1.tscn")
func _on_Button1_pressed():
	get_tree().change_scene("res://scenes/Difficulty.tscn")
func _on_Button_pressed():
	get_tree().change_scene("res://scenes/story1.tscn")
