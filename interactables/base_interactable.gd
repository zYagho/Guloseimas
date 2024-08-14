extends Area2D
class_name BaseInteractable

@export_category("Obejcts")
@export var _interactable_object: AnimatableBody2D #talvez terá que ser alterado.
@export var _texture: AnimatedSprite2D

var _is_active: bool = false

func _on_body_entered(_body) -> void:
	if _body is BaseCharacter and !_is_active:
		_texture.play("interact")
		_is_active = true
		_setInteract()

func _setInteract() -> void:
	pass
