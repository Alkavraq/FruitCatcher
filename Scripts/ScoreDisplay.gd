extends Label

func _ready():
	set_text("Score: " + str(global.score))

func _process(_delta):
	if Input.is_action_just_pressed("space"):
		_on_play_again_button_down()

func _on_play_again_button_down():
	print("playing again")
	global.currentWins = 0
	global.lives = global.maxLives
	global.score = 0
	global.sprints = global.maxSprints
	get_tree().change_scene_to_file("res://Scenes/Main.tscn")
