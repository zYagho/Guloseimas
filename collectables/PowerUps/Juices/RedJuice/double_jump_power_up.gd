extends BasePowerUpCollectable
class_name DoubleJumpPowerUp

const _DOUBLE_JUMP = preload("res://character/buffs/DoubleJump/double_jump_buff.tscn")

func _on_body_entered(_body) -> void:
	if _body is GDzinhaCharacter:
		print("Pode Consumir")
		_consume(_body)		#lembrar da animação após ser feito o consumo
		queue_free()
		
func _consume(_body) -> void:
	var _double_jump = _DOUBLE_JUMP.instantiate()
	_body.add_child(_double_jump)
