extends Node2D
class_name Circle2D
tool

export(Color) var color = Color(1.0, 1.0, 1.0) setget _set_color;
export(float) var radius = 10.0 setget _set_radius;
export(bool) var filled = false setget _set_filled;
export(float) var line_width = 1.0 setget _set_line_width;
export(bool) var antialiased = false setget _set_antialiased;
export(int) var detail = 30 setget _set_detail;


func _set_color(new_color: Color) -> void:
    color = new_color;
    update();
    

func _set_radius(new_radius: float) -> void:
    radius = new_radius;
    update();


func _set_filled(new_filled: bool) -> void:
    filled = new_filled;
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
    if filled:
        draw_circle(Vector2.ZERO, radius, color);
    else:
        draw_arc(Vector2.ZERO, radius, 0, TAU, detail, color, line_width, antialiased);