extends ColorRect
var isConnected = false
@onready var line2D = $Line2D
func _ready() -> void:
	pass 


func _process(delta: float) -> void:
	if isConnected != true:
		global_position = get_global_mouse_position()
		line2D.points[0] = get_meta("ParentNode").global_position
		#line2D.points[1] = global_position
		print("Global Pose", global_position)
		
	pass
