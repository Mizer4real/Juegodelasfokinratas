extends Control
@onready var main: MenuButton = $main
@onready var pene: AnimatedSprite2D = $pene
@onready var audio_stream_player_2d: AudioStreamPlayer2D = $main/iniciar_juego/AudioStreamPlayer2D


func _ready() -> void:
    main.visible = true
    pene.visible = false


func iniciar_juego() -> void:
    get_tree(). change_scene_to_file("res://Escenas/escena1.tscn")
    audio_stream_player_2d.playing = true

func _on_iniciar_juego_pressed() -> void:
    get_tree(). change_scene_to_file("res://Animaciones/escena1.tscn")
    audio_stream_player_2d.playing = true


func _on_cerrar_juego_pressed() -> void:
    get_tree(). quit()
    audio_stream_player_2d.playing = true


func _on_opciones_pressed() -> void:
    main.visible = false
    pene.visible = true
    audio_stream_player_2d.playing = true


func _on_atraaass_pressed() -> void:
    _ready()
    audio_stream_player_2d.playing = true
