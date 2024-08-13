extends CharacterBody2D
class_name BaseCharacter

@export_category("Objects")
@export var _character_texture: AnimatedSprite2D

func _physics_process(_delta):
	
	_verticalMovement(_delta)
	_horizontalMovement()
	_character_texture.animate(velocity)
	move_and_slide()
	
func _verticalMovement(_delta: float) -> void:
	pass
	
func _horizontalMovement() -> void:
	pass
