extends Node2D

func _input(event):
	if event.is_action_pressed("enter"):
		get_tree().change_scene("res://scenes/difficulties/medium.tscn")

func _ready():
	var button = get_node("Button")
	button.connect("pressed", self, "on_button_pressed")


func _on_Button_pressed():
	get_tree().change_scene("res://scenes/difficulties/medium.tscn")
