extends Node

var maxLives:int = 10 
var lives:int = maxLives
var winsForLife:int = 7 
var currentWins:int = 0
var score:int = 0
var maxSprints:int = 5
var sprints:int = maxSprints
var DefSpeed:int = 350
var speed:int = DefSpeed

var hud 
var longtimer
var shorttimer

var audio_player = AudioStreamPlayer.new()

var sprintamon
var playerScript

func _unhandled_input(_event: InputEvent):
	if Input.is_action_just_pressed("ui_cancel"):
		get_tree().quit()
		
func _process(delta):
	if global.lives == 0:
		get_tree().change_scene_to_file("res://Scenes/End.tscn")
	if currentWins >= winsForLife and maxLives > lives:
		currentWins = 0 
		hud.loadGhearts()
		winLife()
		

func sprint():
	sprintamon.isReloading = false
	speed = 900
	playerScript.callP2Timer()
	sprints -= 1
	hud.loadSprints()

func play_sound(sound: AudioStream):
	add_child(audio_player)
	audio_player.stream = sound
	audio_player.playing = true
	audio_player.play()

func winwin():
	if currentWins < 7:
		play_sound(ResourceLoader.load("res://Assets/Sounds/Win.wav"))
	global.currentWins += 1
	hud.loadGhearts()

func loseLife():
	play_sound(ResourceLoader.load("res://Assets/Sounds/Loss.wav"))
	lives -= 1
	hud.load_hearts()
	
func winLife():
	play_sound(ResourceLoader.load("res://Assets/Sounds/WinLife.wav"))
	lives += 1
	hud.load_hearts()

func winSprint():
	sprintamon.SprintsToGet = UsefulFunctions.makeZeroIfNeg(sprintamon.SprintsToGet - 1)
	sprints += 1
	hud.loadSprints()

