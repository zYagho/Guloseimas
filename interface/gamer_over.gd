extends Control

func _ready():
	global.current_scene = self
	
func _on_button_restart_button_pressed():
	global.change_scene("res://level/level_1.tscn")

func _on_button_quit_pressed():
	get_tree().quit()
