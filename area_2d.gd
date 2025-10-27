extends Area2D
@onready var animated_sprite_2d: AnimatedSprite2D = $".."
var rolling = false

func _ready() -> void:
    animated_sprite_2d.play("idle")
func interact():

    if rolling:
        return
    rolling = true
    animated_sprite_2d.play("rolling")
    

func _on_body_entered(body: Node2D) -> void:
    if body.name == "J3FFREY":
        body.nearby_object = self
        


func _on_body_exited(body: Node2D) -> void:
    if body.name == "J3FFREY":
        body.nearby_object = null
