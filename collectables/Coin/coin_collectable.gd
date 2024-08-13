extends BaseCollectable

func _consume() -> void:
	global.score += 100
	print(global.score)
