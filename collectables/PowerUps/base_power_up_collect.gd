extends BaseCollectable
class_name BasePowerUpCollectable

func _setPowerUP(_is_active: bool) -> void:
	pass
	
func _on_power_up_timer_timeout():
	_setPowerUP(false)
