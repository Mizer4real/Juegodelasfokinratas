extends Node2D

@onready var seriopene: Sprite2D = $player/seriopene



const MYDIALOGUE_8 = preload ("res://dialogo8pene.dialogue")

func _ready():
    DialogueManager.show_dialogue_balloon(MYDIALOGUE_8, "start")
    DialogueManager.dialogue_ended.connect(_on_dialogue_ended)
    
func _on_dialogue_ended(resource):
    if resource == MYDIALOGUE_8:
        var rata = $seriopene
        var tween = create_tween()
        tween.tween_property(rata, "modulate:a", 0.0, 2.0)
