extends Control

const MYDIALOGUE_3 = preload("res://prologo.dialogue")

func _ready():
    DialogueManager.show_dialogue_balloon(MYDIALOGUE_3, "start")
