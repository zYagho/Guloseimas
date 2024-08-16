extends BaseInteractable
class_name ButtonInteractable

func _setInteract(_flag: bool, _position: Vector2, _interact_timing: float) -> void:
	if !_flag:
		_interactable_object.interact(_position, _interact_duration)
		return
	
func _setRelease():
	_interactable_object.release()
	return
