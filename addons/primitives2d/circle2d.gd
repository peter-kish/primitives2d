@tool
extends Node2D
class_name Circle2D

@export var color: Color = Color(1.0, 1.0, 1.0) :
    set(new_color):
        if color == new_color:
            return
        color = new_color
        queue_redraw()
@export var radius: float = 10.0 :
    set(new_radius):
        if radius == new_radius:
            return
        radius = new_radius
        queue_redraw()
@export var filled: bool = false :
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
@export var antialiased: bool = false :
    set(new_antialiased):
        if antialiased == new_antialiased:
            return
        antialiased = new_antialiased
        queue_redraw()
@export var detail: int = 30 :
    set(new_detail):
        if detail == new_detail:
            return
        detail = new_detail
        queue_redraw()


func _draw() -> void:
    if filled:
        draw_circle(Vector2.ZERO, radius, color)
    else:
        draw_arc(Vector2.ZERO, radius, 0, TAU, detail, color, line_width, antialiased)