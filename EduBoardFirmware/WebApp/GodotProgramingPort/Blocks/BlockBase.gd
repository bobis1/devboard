class_name BlockBase
extends Control

@export var block_color: Color = Color(0.4, 0.6, 0.9)
@export var block_text: String = "Block"
@export var is_hat: bool = false
@export var is_template: bool = false
@export var block_type: String = "block"

const BLOCK_WIDTH := 200.0
const BLOCK_HEIGHT := 52.0


func _ready() -> void:
	custom_minimum_size = Vector2(BLOCK_WIDTH, BLOCK_HEIGHT)
	mouse_filter = Control.MOUSE_FILTER_STOP


func _get_minimum_size() -> Vector2:
	return Vector2(BLOCK_WIDTH, BLOCK_HEIGHT)


func _draw() -> void:
	BlockDraw.draw_block(self, block_color, block_text, is_hat, size)


func _get_drag_data(_at_position: Vector2):
	if not is_template:
		return null

	var preview := BlockPreview.new()
	preview.color = block_color
	preview.text = block_text
	preview.hat = is_hat
	preview.position = Vector2(0, 0)
	preview.size = Vector2(BLOCK_WIDTH, BLOCK_HEIGHT)
	set_drag_preview(preview)
	return { "type": block_type, "scene": scene_file_path }
