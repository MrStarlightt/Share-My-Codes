extends KinematicBody2D


#Player Speed
var acc = 25
var max_speed = 100
var friction = 80

var motion = Vector2()

var is_running = null
var walk_speed = 100
var run_speed = 150


#Player Movement 
func _physics_process(delta):
	var input = Vector2()
	input.x = Input.get_action_strength("right") - Input.get_action_strength("left")
	input.y = Input.get_action_strength("down") - Input.get_action_strength("up")
	input = input.normalized()
	
	
	if input != Vector2.ZERO:
		if is_running == true:
			max_speed = run_speed
		else:
			max_speed = walk_speed
			
			
	
		
		motion += input * acc * delta
		motion = motion.clamped(max_speed * delta)
	else:
		 motion = motion.move_toward(Vector2.ZERO, friction * delta)
		
	move_and_collide(motion)
	


# Ajastimen aika jäljellä sekunteina
var time_left = 10


# Onko ajastin aktiivinen (laskee alaspäin)
var timer_active = false

# Timer-komponentin viite
var timer

# Input-komponentin viite
var input

func _ready():
	# Alustetaan viitteet komponentteihin
	timer = get_node("timer")
	input = get_node("input")

func _process(delta):
	# Tarkistetaan onko ajastin aktiivinen
	if timer_active:
		# Vähennetään aikaa jäljellä ajan mukaan
		time_left -= delta

		# Tarkistetaan onko aika loppunut
		if time_left <= 0:
			# Pysäytetään ajastin
			timer_active = false
			timer.stop()
			print ("kakka")
			is_running = false
			




func _input(event):
	# Tarkistetaan onko nappia painettu
	if event.is_action_pressed("sprint"):
		# Aloitetaan ajastin jos se ei ole aktiivinen
		if not timer_active:
			time_left >= 0
			timer_active = true
			timer.start()
			is_running = true



	# Tarkistetaan onko nappia vapautettu
	elif event.is_action_released("sprint"):
		#Pysäytetään ajastin jos se on aktiivinen
		if timer_active:
			timer_active = false
			timer.start()
			is_running = false


