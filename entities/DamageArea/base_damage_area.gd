extends Area2D
class_name BaseDamageArea

func _on_body_entered(_body) -> void:
	if _body is BaseCharacter:
		global.current_scene_path = "res://interface/gamer_over.tscn"
		transition.fade_in()
