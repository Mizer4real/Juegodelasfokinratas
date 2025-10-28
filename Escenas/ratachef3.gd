extends Node2D

const MYDIALOGUE_3 = preload("res://dialogopenepart4.dialogue") 
const MYDIALOGUE_4 = preload("res://dialogues/dialogo2part2estasipene.dialogue")

func _ready():
    DialogueManager.dialogue_ended.connect(_on_dialogue_ended)
    DialogueManager.show_dialogue_balloon(MYDIALOGUE_3, "start")
    
func _on_dialogue_ended(resource):
    if resource == MYDIALOGUE_3:
        DialogueManager.show_dialogue_balloon(MYDIALOGUE_4, "start")
    
    

    
    

  



    





            


    
            


    
        

    
