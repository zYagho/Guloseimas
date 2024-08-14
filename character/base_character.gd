extends CharacterBody2D
class_name BaseCharacter

@export_category("Objects")
@export var _character_texture: AnimatedSprite2D

@export_category("Variables")
@export var _speed: float = 150
@export var _double_jump: bool = false
@export var _jump_velocity: float = 250

var _jump_count: int = 2

func _physics_process(_delta):
	
	_verticalMovement(_delta)
	_horizontalMovement()
	_character_texture.animate(velocity)
	move_and_slide()
	
func _verticalMovement(_delta: float) -> void:
	pass
	
func _horizontalMovement() -> void:
	pass
