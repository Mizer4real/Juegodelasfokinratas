extends Node2D


func _on_animated_sprite_2d_animation_finished() -> void:
    pass #cambiar escena
    get_tree(). change_scene_to_file("res://Escenas/escena2.tscn")
