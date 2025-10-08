extends Node2D

const MYDIALOGUE_1 = preload("res://dialogues/untitled.dialogue") 
const MYDIALOGUE_9 = preload("res://dialoguedespues.dialogue")



func _ready(): 
   
    DialogueManager.dialogue_ended.connect(_on_dialogue_ended)
    
    DialogueManager.show_dialogue_balloon(MYDIALOGUE_1, "start")
    
func _on_dialogue_ended(resource):
    if resource == MYDIALOGUE_1:
        DialogueManager.show_dialogue_balloon(MYDIALOGUE_9, "start")
   
        




    





            


    
            


    
        

    
