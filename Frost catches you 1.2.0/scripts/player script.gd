extends KinematicBody2D

#Player Speed
var acc = 25
var max_speed = 100
var friction = 80

var motion = Vector2()

var is_running = null
var walk_speed = 100
var run_speed = 170
var using_stamina = false
var recovering = false
var steps = 0

#Player Movement 
func _physics_process(delta):
	var input = Vector2()
	input.x = Input.get_action_strength("right") - Input.get_action_strength("left")
	input.y = Input.get_action_strength("down") - Input.get_action_strength("up")
	input = input.normalized()

	if steps > 10:
		print("Recover time start")
		steps = 0
		recovering = true
		$RecoverTime.start()
	
	if input != Vector2.ZERO:
		if is_running == true and steps < 10 and not recovering:
			max_speed = run_speed
			steps += delta
			print(steps)
		else:
			max_speed = walk_speed
		motion += input * acc * delta
		motion = motion.clamped(max_speed * delta)
	else:
		 motion = motion.move_toward(Vector2.ZERO, friction * delta)
		
	move_and_collide(motion)

var input

func _ready():
	# Alustetaan viitteet komponentteihin
	input = get_node("input")

func _input(event):
	# Tarkistetaan onko nappia painettu
	if event.is_action_pressed("sprint") and not using_stamina:
		is_running = true
		using_stamina = true
	elif event.is_action_released("sprint") and using_stamina:
		is_running = false
		using_stamina = false


func _on_RecoverTime_timeout():
	print("recovering")
	steps = 0
	using_stamina = false
	recovering = false
	$RecoverTime.stop()
