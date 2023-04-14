extends Sprite2D

@export var TEXTURE_VARIATIONS_ARRAY: Array = [
	preload("res://Assets/Fruits/banana.png"),
	preload("res://Assets/Fruits/apple.png"),
	preload("res://Assets/Fruits/fraise.png")
	]

# Called when the node enters the scene tree for the first time.
func _ready():
	variate_texture()

func variate_texture():
	texture = TEXTURE_VARIATIONS_ARRAY.pick_random()
	if texture == TEXTURE_VARIATIONS_ARRAY[0]:
		$FruitArea.position.x = 0
		$FruitArea.position.y = -18.182
		$FruitArea.skew = 0
		$FruitArea.rotation = 35.4
		$FruitArea.scale.x = 1.526
		$FruitArea.scale.y = 1.139
		
	elif texture == TEXTURE_VARIATIONS_ARRAY[1]:
		$FruitArea.position.x = 25
		$FruitArea.position.y = -13.636
		$FruitArea.skew = 0
		$FruitArea.rotation = 0
		$FruitArea.scale.x = 0.818
		$FruitArea.scale.y = 0.818
		
	elif texture == TEXTURE_VARIATIONS_ARRAY[2]:
		$FruitArea.position.x = 0
		$FruitArea.position.y = 15.909
		$FruitArea.skew = 0
		$FruitArea.rotation = 53.7
		$FruitArea.scale.x = 0.744
		$FruitArea.scale.y = 1.005
		
