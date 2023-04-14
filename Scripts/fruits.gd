extends CharacterBody2D

@export var SPEED:int

func _ready():
	SPEED = randi_range(200, 400)
	
func _physics_process(delta):
	position.y += SPEED * delta
	
	

func _on_area_2d_area_entered(area):
	var areaName = str(area)
	
	if areaName.begins_with("P"):
		queue_free()
		global.score += 1 
		global.winwin()
	elif areaName.begins_with("G"):
		queue_free()
		global.loseLife()
		
	
