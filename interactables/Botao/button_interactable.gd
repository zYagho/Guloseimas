extends BaseInteractable
class_name ButtonInteractable

func _setInteract() -> void:
	print("Sobe a Plataforma")
	_interactable_object.interact()
	
