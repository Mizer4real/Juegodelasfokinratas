extends Node2D
@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D
@onready var animation_player: AnimationPlayer = $"fat rat chat/Label/AnimationPlayer"
@onready var area_2d: Area2D = $Area2D
@onready var dialogo: Control = $dialogo

func _ready() -> void:
    dialogo.visible = false
    animation_player.play("nono")
    
func _on_area_2d_body_entered(_body: Node2D) -> void:
    if _body.name == "PENE":
        animation_player.play("mostrar")
        dialogo.visible = true

func _on_area_2d_body_exited(_body: Node2D) -> void:
    if _body.name == "PENE":
        animation_player.play("nono")
        dialogo.visible = false
