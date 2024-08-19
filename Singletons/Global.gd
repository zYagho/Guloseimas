extends Node
class_name Global

#controle de cenas
var current_scene: Node = null

#Pontuação
var score: int = 0

#Controle temporário de vida do personagem.
func game_over() -> void:
	pass

func change_scene(_path) -> void:
	call_deferred("_call_scene", _path)
	
func _call_scene(_path) -> void:
	
	if current_scene != null:
		current_scene.free()
	
	var _new_scene: PackedScene = load(_path)
	current_scene = _new_scene.instantiate()
	
	get_tree().root.add_child(current_scene)
	get_tree().current_scene = current_scene
	
func quit_game() -> void:
	pass
