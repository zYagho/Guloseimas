extends Control
class_name TitleScreen

@export_category("Level")
@export var _scene_path: String

func _ready():
	global.current_scene_path = _scene_path

func _on_button_start_pressed():
	global.current_scene_path = "res://level/level_1.tscn"
	transition.fade_in()

func _on_button_credits_pressed():
	pass # Replace with function body.

func _on_button_quit_pressed():
	get_tree().quit()
