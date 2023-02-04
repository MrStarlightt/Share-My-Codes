extends Node2D


func _ready():
	var button = get_node("Button")
	button.connect("pressed", self, "on_button_pressed")


func _on_Button_pressed():
	get_tree().change_scene("res://scenes/Difficulty.tscn")
