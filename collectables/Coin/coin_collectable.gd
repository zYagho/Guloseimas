extends BaseCollectable

func _on_body_entered(_body) -> void:
	if _body is BaseCharacter:
		_consume(_body)
		queue_free()

func _consume(_body) -> void:
	global.score += 100
	print(global.score)
	
	#pensar em colocar efeito após a coleta.
