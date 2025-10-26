extends CharacterBody2D

var speed = 300
@onready var anim = $AnimatedSprite2D
func _physics_process(_delta):
    velocity = Vector2(speed, 0)
    move_and_slide()
    
    
    if velocity != Vector2.ZERO:
        anim.play("walk")
    else:
        anim.stop()
        anim.frame = 0
        
func _on_texture_button_pressed() -> void:
    get_tree(). change_scene_to_file("res://escena_4bienhecha.tscn")
