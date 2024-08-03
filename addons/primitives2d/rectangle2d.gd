@tool
extends Node2D
class_name Rectangle2D

@export var color: Color = Color(1.0, 1.0, 1.0) :
    set(new_color):
        if color == new_color:
            return
        color = new_color
        queue_redraw()
@export var size: Vector2 = Vector2(10, 10) :
    set(new_size):
        if size == new_size:
            return
        size = new_size
        queue_redraw()
@export var filled: bool = true :
    set(new_filled):
        if filled == new_filled:
            return
        filled = new_filled
        queue_redraw()
@export var line_width: float = -1.0 :
    set(new_line_width):
        if line_width == new_line_width:
            return
        line_width = new_line_width
        queue_redraw()
@export var centered: bool = false :
    set(new_centered):
        if centered == new_centered:
            return
        centered = new_centered
        queue_redraw()


func _draw() -> void:
    var rect = Rect2(Vector2.ZERO, size)
    if centered:
        rect.position -= rect.size / 2
    draw_rect(rect, color, filled, line_width)
