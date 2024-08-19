extends Control
class_name TitleScreen

func _ready():
	global.current_scene = self

func _on_button_start_pressed():
	global.change_scene("res://level/level_1.tscn")

func _on_button_credits_pressed():
	pass # Replace with function body.

func _on_button_quit_pressed():
	get_tree().quit()
