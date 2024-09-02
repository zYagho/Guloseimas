extends Node2D
class_name BaseLevel

@export_category("Level")
@export var _scene_path: String

func _ready():
	global.current_scene_path = _scene_path
