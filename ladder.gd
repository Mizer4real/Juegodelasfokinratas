extends Area2D
@onready var ladder: Area2D = $"."


func _on_body_entered(body: Node2D) -> void:
    if body.name == "J3FFREY":
        body.Ladder = true


func _on_body_exited(body: Node2D) -> void:
    if body.name == "J3FFREY":
        body.Ladder = false
