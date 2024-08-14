extends BaseCharacter
class_name GDzinhaCharacter

var _gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

func _verticalMovement(_delta :float) -> void:
	
	if not is_on_floor():
			velocity.y += _gravity * _delta
			
	if Input.is_action_just_pressed("gdzinha_jump") and is_on_floor():
		velocity.y = - _jump_velocity

func _horizontalMovement() -> void:

	var _direction = Input.get_axis("gdzinha_left", "gdzinha_rigth")
	if _direction:
		velocity.x = _direction * _speed
	else:
		velocity.x = move_toward(velocity.x, 0, _speed)
