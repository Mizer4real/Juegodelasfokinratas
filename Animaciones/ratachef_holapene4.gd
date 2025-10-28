extends Node2D

const MYDIALOGUE_7 = preload ("res://dialogo_7.dialogue")

func _ready():
    DialogueManager.show_dialogue_balloon(MYDIALOGUE_7, "start")
