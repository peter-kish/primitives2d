@tool
extends EditorPlugin


func _enter_tree():
    add_custom_type("Rectangle2D", "Node2D", preload("rectangle2d.gd"), preload("icon_rect.svg"))
    add_custom_type("Circle2D", "Node2D", preload("circle2d.gd"), preload("icon_circle.svg"))
    add_custom_type("Arc2D", "Node2D", preload("arc2d.gd"), preload("icon_arc.svg"))


func _exit_tree():
    remove_custom_type("Rectangle2D")
    remove_custom_type("Circle2D")
    remove_custom_type("Arc2D")

