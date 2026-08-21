extends TextureRect

func _get_drag_data(at_position: Vector2):
	var preview = TextureRect.new()
	preview.texture = self.texture
	set_drag_preview(preview)
#	global_position = at_position
	return self
	pass


func _can_drop_data(at_position: Vector2, data: Variant) -> bool:
	if data == Control || data == Node2D:
		return true
	return false

func _drop_data(at_position: Vector2, data: Variant) -> void:
	set_position(at_position)
	pass
