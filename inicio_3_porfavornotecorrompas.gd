extends Node2D


func _on_inicio_pressed() -> void:
    get_tree(). change_scene_to_file("res://Animaciones/escena1.tscn")
        


func _on_cerrar_pressed() -> void:
    get_tree(). quit()
