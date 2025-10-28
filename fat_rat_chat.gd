extends Area2D
@onready var dialogo: Control = $dialogo
var puede_interactuar = false
@onready var animation_player: AnimationPlayer = $Label/AnimationPlayer

func _ready() -> void:
    animation_player.play("nono")

func _on_body_entered(body: Node2D) -> void:
    if body.name == "PENE":
        animation_player.play("mostrar")
        body.nearby_object = self
        puede_interactuar = true


func _on_body_exited(body: Node2D) -> void:
    if body.name == "PENE":
        animation_player.play("nono")
        body.nearby_object = null
        puede_interactuar = false
