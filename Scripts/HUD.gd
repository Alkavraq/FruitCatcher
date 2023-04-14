extends CanvasLayer

func _ready():
	load_hearts()
	loadGhearts()
	loadSprints()
	global.hud = self

func load_hearts():
	$HeartsFull.size.x = global.lives * 16
func loadGhearts():
	if global.currentWins <= 7:
		$GoldenHeartsFull.size.x = (global.currentWins+1) * 16
func loadSprints():
	$SprintFull.size.y = global.sprints * 16
	if global.sprints <= 0:
		$SprintFull.visible = false
	else :
		$SprintFull.visible = true 
		$SprintFull.position.y = 519 - (((global.sprints-1) * 16)*6)

	
