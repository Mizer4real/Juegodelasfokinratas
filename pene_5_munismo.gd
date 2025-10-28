extends Node2D
@onready var animation_player: AnimationPlayer = $BlackBackground1468370534d5s/AnimationPlayer
@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D
func _ready() -> void:
    animated_sprite_2d.play("pene")
    animation_player.play("fade_in")
    await animated_sprite_2d.animation_finished
    get_tree(). change_scene_to_file("res://escena_4bienhecha.tscn")
