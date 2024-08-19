extends Node2D


func _on_temp_damage_area_body_entered(_body):
	if _body is BaseCharacter:
		global.change_scene("res://interface/gamer_over.tscn")
