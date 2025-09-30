extends Node2D


func _on_texture_button_pressed() -> void:
	print("opciones pressed")


func _on_texture_button_2_pressed() -> void:
	get_tree(). quit()
