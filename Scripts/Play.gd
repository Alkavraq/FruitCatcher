extends Button

func _process(_delta):
	if Input.is_action_just_pressed("space"):
		_on_button_down()

func _on_button_down():
	print("playing")
	global.currentWins = 0
	global.lives = global.maxLives
	global.score = 0
	global.sprints = global.maxSprints
	get_tree().change_scene_to_file("res://Scenes/Main.tscn")
