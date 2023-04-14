extends CharacterBody2D

func _ready():
	global.playerScript = self

func _unhandled_input(_event: InputEvent):
	if Input.is_action_just_pressed("space") and global.sprints > 0 :
		global.sprint()

func _process(_delta):
	position.y = 560
	

func _physics_process(_delta):
	var direction = Input.get_axis("left", "right")
	if direction:
		velocity.x = direction * global.speed
	else:
		velocity.x = move_toward(velocity.x, 0, global.speed)

	move_and_slide()

func callP2Timer():
	$Timer.start()

func _on_timer_timeout():
	global.speed = global.DefSpeed
