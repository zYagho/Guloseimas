extends BaseCollectable

@export_category("Variables")
@export var _texture: AnimatedSprite2D

func _on_body_entered(_body) -> void:
	if _body is BaseCharacter:
		_consume(_body)
		

func _consume(_body) -> void:
	_texture.play("collect")
	global.score += 100
	print(global.score)
	
	#pensar em colocar efeito após a coleta.


func _on_texture_animation_finished():
	if _texture.animation == "collect":
		queue_free()
