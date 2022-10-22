extends Node2D
class_name Arc2D
tool

export(Color) var color = Color(1.0, 1.0, 1.0) setget _set_color;
export(float) var radius = 10.0 setget _set_radius;
export(float) var start_degrees = 0.0 setget _set_start_degrees;
export(float) var end_degrees = 360.0 setget _set_end_degrees;
export(float) var line_width = 1.0 setget _set_line_width;
export(bool) var antialiased = false setget _set_antialiased;
export(int) var detail = 30 setget _set_detail;

var start_angle = deg2rad(start_degrees);
var end_angle = deg2rad(end_degrees);


func _set_color(new_color: Color) -> void:
    color = new_color;
    update();
    

func _set_radius(new_radius: float) -> void:
    radius = new_radius;
    update();


func _set_start_degrees(new_start_degrees: float) -> void:
    start_degrees = new_start_degrees;
    start_angle = deg2rad(start_degrees);
    update();


func _set_end_degrees(new_end_degrees: float) -> void:
    end_degrees = new_end_degrees;
    end_angle = deg2rad(end_degrees);
    update();


func _set_line_width(new_line_width: float) -> void:
    line_width = new_line_width;
    update();


func _set_antialiased(new_antialiased: bool) -> void:
    antialiased = new_antialiased;
    update();


func _set_detail(new_detail: int) -> void:
    detail = new_detail;
    update();


func _draw() -> void:
    draw_arc(Vector2.ZERO, radius, start_angle, end_angle, detail, color, line_width, antialiased);