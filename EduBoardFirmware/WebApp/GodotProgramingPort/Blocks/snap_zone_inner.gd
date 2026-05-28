extends Node2D

var closestNode: Node2D

var mouse_button_down = false
var mouse_hover = false
var isBeingMoved = false

func _unhandled_input(event):
	if event is InputEventMouseButton: 
		if event.is_pressed():
			mouse_button_down = true
		else:
			mouse_button_down = false

func _process(delta: float) -> void:
	var nearestBlock = get_nearest_block()
	if mouse_button_down:
		if isBeingMoved && mouse_hover:
			set_position(get_global_mouse_position())
		if nearestBlock == OK:
			set_position(nearestBlock.global_position)
	pass


func get_nearest_block():
	var OuterSnapZone = get_tree().get_nodes_in_group("OuterSnapeZone")
	
	var shortest_dist = 999999.0 
	var InnerZone
	var nearest_marker_pos = get_global_mouse_position()

	for marker in OuterSnapZone:
		var dist = get_global_mouse_position().distance_to(marker.global_position)
		
		if dist < shortest_dist:
			shortest_dist = dist
			nearest_marker_pos = marker.global_position
			InnerZone = marker
			
	return InnerZone





func _on_texture_rect_mouse_entered() -> void:
	mouse_hover = true
	pass


func _on_texture_rect_mouse_exited() -> void:
	mouse_hover = false
	pass 
