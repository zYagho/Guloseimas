extends Control

func _ready():
	global.current_scene = self
	
func _on_button_restart_button_pressed():
	global.current_scene_path = "res://level/level_1.tscn"
	global.score = 0
	transition.fade_in()

func _on_button_quit_pressed():
	get_tree().quit()
