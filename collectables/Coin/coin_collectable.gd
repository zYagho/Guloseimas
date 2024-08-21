extends BaseCollectable

func _on_body_entered(_body) -> void:
	if _body is BaseCharacter:
		_consume(_body)
		
func _consume(_body) -> void:
	_texture.play("collect")
	_song.play()
	global.score += 100

func _on_texture_animation_finished():
	if _texture.animation == "collect":
		queue_free()
