extends ColorRect


func _can_drop_data(at_position: Vector2, data: Variant) -> bool:
	if data is Control:
		return true
	return false


func _drop_data(at_position: Vector2, data: Variant) -> void:
	print("Recived")
	data.global_position = get_global_mouse_position()