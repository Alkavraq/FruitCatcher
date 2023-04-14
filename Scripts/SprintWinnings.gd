extends Sprite2D

var isReloading:bool = false

var SprintsToGet
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	global.sprintamon = self
	if global.sprints < global.maxSprints and $Timer.time_left == 0 and isReloading == false :
		SprintsToGet = global.maxSprints - global.sprints
		$Timer.start(1)
	if Input.is_action_just_pressed("space") and $Timer.time_left != 0:
		$Timer.stop()


func _on_timer_timeout():
	isReloading = true
	if SprintsToGet >= global.maxSprints - global.sprints:
		$Timer2.start(0.25)
	if Input.is_action_just_pressed("space") or SprintsToGet < global.maxSprints - global.sprints:
		$Timer2.stop()
		isReloading = false
 


func _on_timer_2_timeout():
	if global.sprints < global.maxSprints and isReloading == true:
		global.winSprint()
		if SprintsToGet >= global.maxSprints - global.sprints and isReloading == true:
			_on_timer_timeout()
		else:
			isReloading = false
	else :
		isReloading = false
