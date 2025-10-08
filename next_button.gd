extends TextureButton



# Lista de escenas en orden
var scenes = [
    "res://escena_4bienhecha.tscn",
    "res://Escenas/fondoescena3.tscn",
    "res://Escenas/escena5.tscn",
    "res://escena6.tscn",
]

# Guardamos en qué escena estamos
var current_scene_index = 0

func _ready():
    # Detecta en qué escena está el botón
    var current_path = get_tree().current_scene.scene_file_path
    current_scene_index = scenes.find(current_path)
    if current_scene_index == -1:
        push_error("⚠En caso de error la escena no esta mierda")
    
    pressed.connect(_on_pressed)

func _on_pressed():
    var next_index = current_scene_index + 1
    if next_index < scenes.size():
        get_tree().change_scene_to_file(scenes[next_index])
    else:
        print("No hay más escenas que mostrar alaverga, no se si esto saldra o no pero te amo maite")
