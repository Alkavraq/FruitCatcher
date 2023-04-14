extends Node2D

const window_size = Vector2(1152, 648)
var location = Vector2()

var packed_scene = [
	preload("res://Scenes/fruits.tscn")
	]
	
func _process(_delta):
	if randi_range(1, 100) > 99: 
		randomize()
		var x = randi() % packed_scene.size()
		location.x = randi_range(1, window_size.x)
		location.y = -150
		
		var scene = packed_scene[x].instantiate()
		
		scene.position = location
		
		add_child(scene)
		

