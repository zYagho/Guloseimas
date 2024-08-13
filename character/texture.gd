extends AnimatedSprite2D
class_name CharacterTexture

var _is_action: bool = false

func animate(_velocity: Vector2) -> void:
	if _is_action:
		return
	
	#Flipando
	_direction(_velocity.x)
	
	if _velocity.y != 0:
		if _velocity.y < 0:
			play("jump")
		if _velocity.y > 0:
			play("jump")		#Se posteriormente tiver a animação de fall
		return
		
	if _velocity.x != 0 and _velocity.y == 0:
		play("run")
		return
		
	if _velocity.x == 0 and _velocity.y == 0:
		play("idle")
		return
		
func action_animate() -> void:
	pass
	
func _direction(_direct: float) -> void:
	if _direct > 0:
		flip_h = false
	if _direct < 0:
		flip_h = true
	return
