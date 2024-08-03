@tool
extends Node2D
class_name Arc2D

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
@export var start_degrees: float = 0.0 :
    set(new_start_degrees):
        if start_degrees == new_start_degrees:
            return
        start_degrees = new_start_degrees
        start_angle = deg_to_rad(start_degrees)
        queue_redraw()
@export var end_degrees: float = 360.0 :
    set(new_end_degrees):
        if end_degrees == new_end_degrees:
            return
        end_degrees = new_end_degrees
        end_angle = deg_to_rad(end_degrees)
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

var start_angle = deg_to_rad(start_degrees)
var end_angle = deg_to_rad(end_degrees)


func _draw() -> void:
    draw_arc(Vector2.ZERO, radius, start_angle, end_angle, detail, color, line_width, antialiased)