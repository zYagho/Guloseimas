extends AnimatableBody2D
class_name Platform

@export_category("Variables")
@export var _move_speed: float = 3.0
@export var _distance: int = 192
@export var _move_horizontal: bool = false

var _follow := Vector2.ZERO
var _plataform_center: int = 16

func _physics_process(_delta: float):
	self.position = self.position.lerp(_follow, 0.5)

func interact() -> void:
	var _move_direction := Vector2.RIGHT * _distance if _move_horizontal else Vector2.UP * _distance
	var _duration := _move_direction.length() / float(_move_speed * _plataform_center)
	
	var platform_tween = create_tween()
	platform_tween.tween_property(self, "follow", _move_direction, _duration)
