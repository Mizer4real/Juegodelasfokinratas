extends Node2D




func _input(event):
    if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
        get_tree().change_scene_to_file("res://Escenas/dialogue/fondoescena4.tscn")
