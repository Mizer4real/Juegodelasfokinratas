extends Area2D
@onready var animated_sprite_2d: AnimatedSprite2D = $".."
@onready var animation_player: AnimationPlayer = $"../../AnimationPlayer"
var rolling = false

func _ready() -> void:
    animated_sprite_2d.play("idle")
func interact():

    if rolling:
        return
    rolling = true
    animated_sprite_2d.play("rolling")
    animation_player.play("fade_out")
    await animated_sprite_2d.animation_finished
    get_tree(). change_scene_to_file("res://escena_4bienhecha.tscn")
    

func _on_body_entered(body: Node2D) -> void:
    if body.name == "PENE":
        body.nearby_object = self
        


func _on_body_exited(body: Node2D) -> void:
    if body.name == "PENE":
        body.nearby_object = null



        
    
