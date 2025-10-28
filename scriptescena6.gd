extends Node2D

const MYDIALOGUE_6 = preload("res://dialogo6.dialogue")
const MYDIALOGUE_61 = preload("res://dialogo6_1.dialogue")
 

func _ready():
    DialogueManager.dialogue_ended.connect(_on_dialogue_ended)
    DialogueManager.show_dialogue_balloon(MYDIALOGUE_61, "start")
   
func _on_dialogue_ended(resource):
    if resource == MYDIALOGUE_61:
        DialogueManager.show_dialogue_balloon(MYDIALOGUE_6, "start")

    

    
    
    
    
    
    
    

    
    

  



    





            


    
            


    
        

    
