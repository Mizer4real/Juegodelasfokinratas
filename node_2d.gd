extends Node2D
@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D
@onready var animation_player: AnimationPlayer = $Label/AnimationPlayer

@onready var area_2d: Area2D = $Area2D



func _on_area_2d_body_entered(_body: Node2D) -> void:
    $Label/AnimationPlayer.play("show")
    
func _on_area_2d_body_exited(_body: Node2D) -> void:
    if _body.name == "PENE":
       animation_player.stop()
