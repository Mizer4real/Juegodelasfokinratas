extends Node2D


func _on_animation_player_animation_finished(anim_name):
    if anim_name == "fade in":
     get_tree(). change_scene_to_file("res://intro_2.tscn")
    
@onready var audio_stream_player_2d: AudioStreamPlayer2D = $AudioStreamPlayer2D
func _ready():
    var audio = load("res://JAZZ RATV2_2.wav")
    audio_stream_player_2d.stream = audio
    audio_stream_player_2d.playing = true
