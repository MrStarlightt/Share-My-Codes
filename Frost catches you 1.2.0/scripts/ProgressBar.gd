extends ProgressBar





func _ready():
	pass

func _process(delta):
	if Input.action_press("cooldown"):
		$ProgressBar.value -= 1*delta
	if Input.action_release("cooldown"):
		$ProgressBar.value += 2*delta
