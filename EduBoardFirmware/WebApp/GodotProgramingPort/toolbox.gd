extends VBoxContainer

var isExpanded: bool = false
var templates: Array = []


func _ready() -> void:
	clear_children()
	for path in Globals.BlockArray:
		var block: PackedScene = load(path)
		if block == null:
			continue
		var instance = block.instantiate()
		instance.is_template = true
		instance.mouse_filter = Control.MOUSE_FILTER_STOP
		instance.set_meta("template", true)
		templates.append(instance)
		add_child(instance)


func clear_children() -> void:
	for child in get_children():
		child.queue_free()


func _on_expand_pressed() -> void:
	isExpanded = !isExpanded
	visible = true
