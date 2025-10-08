extends Node2D


const MYDIALOGUE_2 = preload("res://dialoguearea.dialogue") 
const MYDIALOGUE_3 = preload("res://dialogoareapart2.dialogue")
const MYDIALOGUE_4 = preload("res://dialogoareapart3.dialogue")

func _ready():
    DialogueManager.dialogue_ended.connect(_on_dialogue_ended)
    DialogueManager.show_dialogue_balloon(MYDIALOGUE_2, "start")
    

func _on_dialogue_ended(resource):
    if resource == MYDIALOGUE_2:
        DialogueManager.show_dialogue_balloon(MYDIALOGUE_3, "start")
    elif resource == MYDIALOGUE_3:
        DialogueManager.show_dialogue_balloon(MYDIALOGUE_4, "start")
        
        
        
        
        





    





            


    
            


    
        

    
