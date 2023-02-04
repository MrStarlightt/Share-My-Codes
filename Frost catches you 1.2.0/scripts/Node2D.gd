extends Node2D

func _input(event):
	if event.is_action_pressed("back"):
		get_tree().change_scene("res://scenes/main menu.tscn")

func _on_Button1_pressed():
	get_tree().change_scene("res://scenes/main menu.tscn")

func _on_Button2_pressed():
	get_tree().change_scene("res://scenes/Hard Explained.tscn")

func _on_Button3_pressed():
	get_tree().change_scene("res://scenes/Medium Explained.tscn")

func _on_Button4_pressed():
	get_tree().change_scene("res://scenes/Easy Explained.tscn")
