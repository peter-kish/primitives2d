extends Node2D
class_name Rectangle2D
tool

export(Color) var color = Color(1.0, 1.0, 1.0) setget _set_color;
export(float) var width = 10 setget _set_width;
export(float) var height = 10 setget _set_height;
export(bool) var filled = false setget _set_filled;
export(float) var line_width = 1.0 setget _set_line_width;
export(bool) var antialiased = false setget _set_antialiased;
export(bool) var centered = false setget _set_centered;


func _set_color(new_color: Color) -> void:
    color = new_color;
    update();


func _set_width(new_width: float) -> void:
    width = new_width;
    update();


func _set_height(new_height: float) -> void:
    height = new_height;
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


func _set_centered(new_centered: bool) -> void:
    centered = new_centered;
    update();


func _draw() -> void:
    var rect = Rect2(Vector2.ZERO, Vector2(width, height));
    if centered:
        rect.position -= rect.size / 2;
    draw_rect(rect, color, filled, line_width, antialiased);
