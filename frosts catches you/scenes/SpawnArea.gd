extends ReferenceRect


onready var frostScene = load("res://scenes/frost.tscn")

var number_of_spawns = 20

func _ready():
	#Randomly spawning frosts
	for i in range(number_of_spawns):
		var frost = frostScene.instance()
		add_child(frost)
		var x = rand_range(-500, 500)
		var y = rand_range(0,400)
		frost.position.x = x
		frost.position.y = y


