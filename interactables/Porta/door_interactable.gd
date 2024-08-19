extends BaseInteractable
class_name DoorInteractable

@export_category("Proxima Cena")
@export var _path: String

var _characters_count: int = 0

func _on_body_entered(_body) -> void:
	if _body is BaseCharacter:
		_characters_count += 1
		if _characters_count == 2:
			_texture.play("opening")
			
func _setInteract(_flag: bool, _position: Vector2, _interact_timing: float) -> void:
	pass
	
func _setRelease():
	pass

func _on_body_exited(_body):
	if _body is BaseCharacter:
		_characters_count -= 1
		if _characters_count == 0 and _texture.animation != "close":
			_texture.play("closing")


func _on_texture_animation_finished():
	if _texture.animation == "closing":
		_texture.play("close")
		_characters_count = 0
		
	if _texture.animation == "opening":
		global.change_scene(_path)
		print("Trocar de cena")
		#ainda falta implementar o segundo nivel em diante...
