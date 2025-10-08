extends Node2D

const MYDIALOGUE_1 = preload("res://dialogues/untitled.dialogue") 
const MYDIALOGUE_9 = preload("res://dialoguedespues.dialogue")

@onready var arrow_button = $ArrowButton 

<<<<<<< HEAD
   
var linea_a_pose = {
    "Buenas, ¿este es el lugar donde se puede conseguir un techo sin tantas preguntas, eh?": "what",
    "Me llamo Giovanni Carlo Emiliano Salvatore di Montemare Rossi, pero me puedes decir Carletto, soy cocinero…": "serius",
    "Y rata...": "yeah",
    "Busco un locale para abrir mi trattoria secreta": "serius",
    "Algo que no llame demasiado la atención, que huela a basilico… y un poquitino de mistero": "what",
    "Necesito algo discreto, niente cubos fríos modernos.": "serius",
    "Debe ser alto, con base rotonda, ni demasiado ancho ni estrecho… ¿me capisce? Algo como…": "serius"
}

func _ready():
    DialogueManager.dialogue_started.connect(on_dialogue_started)
    DialogueManager.dialogue_ended.connect(_on_dialogue_ended)
    DialogueManager.line_changed.connect(Callable(self, "_on_line_changed"))

func _on_line_changed(line_data):
    var line_text = line_data["res://dialogues/untitled.dialogue"]
    if linea_a_pose.has(line_text):
        cambiar_pose(linea_a_pose[line_text])
        
func cambiar_pose(pose_name: String):
    match pose_name:
        "serius": 
            rata_sprite.texture = preload("res://Animaciones/seriouschef.png")
        "angry":
            rata_sprite.texture = preload("res://Animaciones/whatchef.png")
        "yeah":
            rata_sprite.texture.texture = preload("res://Animaciones/hmmchef.png")
        "biceps":
            rata_sprite.texture = preload("res://Animaciones/DAYUMMcheft.png")
        "what":
            rata_sprite.texture = preload("res://Animaciones/whatchef.png")
        _:
          pass
            
          


    


    

const MY_DIALOGUE = preload("res://dialogues/untitled.dialogue")

var is_dialogue_active = false
=======
func _ready(): 
    arrow_button.visible = false
    DialogueManager.dialogue_ended.connect(_on_dialogue_ended)
    
    DialogueManager.show_dialogue_balloon(MYDIALOGUE_1, "start")
    
func _on_dialogue_ended(resource):
    if resource == MYDIALOGUE_1:
        DialogueManager.show_dialogue_balloon(MYDIALOGUE_9, "start")
    elif resource == MYDIALOGUE_9:
        arrow_button.visible = true
        
        
func _on_ArrowButton_pressed() -> void:
    get_tree().change_scene_to_file("res://Escenas/fondoescena3.tscn")



    
>>>>>>> fc2e7d1e92031906f96a3d05447e7d4ae20981e2




<<<<<<< HEAD
    
    
    
    
    

        

    
func _input(event):
    if event.is_action_pressed("ui_accept") and not is_dialogue_active:
        DialogueManager.show_dialogue_balloon(MY_DIALOGUE, "start")
        
        
        
func on_dialogue_started(_dialogue):
           is_dialogue_active = true
            
            
func _on_dialogue_ended(_dialogue):
    await get_tree().create_timer(0.2).timeout
    is_dialogue_active = false
    

    
=======

>>>>>>> fc2e7d1e92031906f96a3d05447e7d4ae20981e2
            


    
<<<<<<< HEAD
        

=======
            


    
        

>>>>>>> fc2e7d1e92031906f96a3d05447e7d4ae20981e2
    
