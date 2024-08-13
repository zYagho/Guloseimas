extends Area2D
class_name BaseCollectable

func _on_body_entered(_body) -> void:
	
	if _body is BaseCharacter:
		_consume()
		queue_free()
		
func _consume() -> void:
	pass
