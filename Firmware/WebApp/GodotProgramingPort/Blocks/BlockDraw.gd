class_name BlockDraw
extends RefCounted


static func draw_block(ci: CanvasItem, color: Color, text: String, is_hat: bool, size: Vector2) -> void:
	var radius := 8.0
	var hat_height := 20.0
	var height := hat_height if is_hat else size.y

	var box := StyleBoxFlat.new()
	box.bg_color = color
	box.corner_radius_top_left = int(radius)
	box.corner_radius_top_right = int(radius)
	box.corner_radius_bottom_left = int(radius)
	box.corner_radius_bottom_right = int(radius)
	box.content_margin_left = 12.0
	if is_hat:
		box.corner_radius_bottom_left = 0
		box.corner_radius_bottom_right = 0

	ci.draw_style_box(box, Rect2(0, 0, size.x, height))

	if is_hat:
		var tail := StyleBoxFlat.new()
		tail.bg_color = color
		tail.corner_radius_bottom_left = int(radius)
		tail.corner_radius_bottom_right = int(radius)
		tail.content_margin_left = 12.0
		ci.draw_style_box(tail, Rect2(0, height, size.x, size.y - height))

	if not text.is_empty():
		var font := ThemeDB.fallback_font
		var font_size := 16
		ci.draw_string(font, Vector2(12, height - 14), text, HORIZONTAL_ALIGNMENT_LEFT, 0, font_size, Color.WHITE)
