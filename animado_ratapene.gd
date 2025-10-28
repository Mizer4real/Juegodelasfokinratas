extends AnimatedSprite2D
@onready var quierespene: AnimatedSprite2D = $"."


func _ready():
    $".".play("animacion_eldiablo1")
    $".".animation_finished.connect(_on_animation_end)
    
func _on_animation_end():
    get_tree().change_scene_to_file("res://el diabloloco.tscn")
