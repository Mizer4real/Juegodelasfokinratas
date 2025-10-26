extends Node2D


func _on_animation_player_animation_finished(anim_name):
    if anim_name == "pene":
     get_tree(). change_scene_to_file("res://inicio.tscn")

@onready var audio_stream_p_layer_2d: AudioStreamPlayer2D = $AudioStreamPLayer2D
func _on_ready() -> void:
    var audio = load("res://JAZZ RATV2_4.wav")
    audio_stream_p_layer_2d.stream = audio
    audio_stream_p_layer_2d.play()
    
