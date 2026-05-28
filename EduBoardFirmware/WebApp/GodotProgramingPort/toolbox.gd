extends VBoxContainer
var isExpanded: bool = false

# TODO: Get Texturerect from BlockFileInstances, 
# then when it is dragged out se a proper instance

var mouse_button_down = false
	
func _unhandled_input(event):
	if event is InputEventMouseButton: 
		if event.is_pressed():
			mouse_button_down = true
		else:
			mouse_button_down = false
	pass


func _ready() -> void:
	for i in Globals.BlockArray.size():
		var BlockFile = load(Globals.BlockArray[i])
		var BlockFileInstance = BlockFile.instantiate() #Delete the instance later
		add_child(BlockFileInstance)
		pass
	pass

func _process(delta: float) -> void:
	pass


func _on_expand_pressed() -> void:
	if isExpanded:
		visible = true
	else:
		visible = true
	isExpanded = !isExpanded
	pass
