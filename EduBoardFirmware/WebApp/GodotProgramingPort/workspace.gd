extends ColorRect


func _can_drop_data(_at_position: Vector2, data: Variant) -> bool:
	return data is Dictionary and data.has("scene")


func _drop_data(at_position: Vector2, data: Variant) -> void:
	var scene_path: String = data["scene"]
	var block: PackedScene = load(scene_path)
	if block == null:
		push_error("Could not load block scene: " + scene_path)
		return

	var instance = block.instantiate()
	instance.is_template = false
	instance.position = at_position
	add_child(instance)
