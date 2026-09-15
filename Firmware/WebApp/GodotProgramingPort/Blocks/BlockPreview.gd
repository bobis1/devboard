class_name BlockPreview
extends Control

var color: Color = Color.WHITE
var text: String = ""
var hat: bool = false

const BLOCK_WIDTH := 200.0
const BLOCK_HEIGHT := 52.0


func _ready() -> void:
	custom_minimum_size = Vector2(BLOCK_WIDTH, BLOCK_HEIGHT)
	mouse_filter = Control.MOUSE_FILTER_IGNORE


func _draw() -> void:
	BlockDraw.draw_block(self, color, text, hat, size)
