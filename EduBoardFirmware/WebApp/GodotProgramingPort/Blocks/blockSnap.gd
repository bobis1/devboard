extends TextureRect

func _get_drag_data(at_position: Vector2):
	var preview = TextureRect.new()
	preview.texture = self.texture
	set_drag_preview(preview)
#	global_position = at_position
	return self
	pass
