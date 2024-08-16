extends Area2D
class_name BaseInteractable

@export_category("Obejcts")
@export var _interactable_object: AnimatableBody2D #talvez terá que ser alterado.
@export var _texture: AnimatedSprite2D
@export var _interact_timer: Timer
@export var _interact_duration: float = 3
@export var _interact_position: Vector2 = Vector2(0, 220)

var _is_active: bool = false

func _on_body_entered(_body) -> void:
	if _body is BaseCharacter and !_is_active:
		_texture.play("interact")
		_setInteract(_is_active, _interact_position, _interact_duration)
		_interact_timer.start(_interact_duration + 3.0)
		_is_active = true

func _setInteract(_flag: bool, _position: Vector2, _interact_timing: float) -> void:
	pass
	
func _setRelease():
	pass

func _on_interact_timer_timeout():
	_texture.play("idle")
	_is_active = false
	_setRelease()
