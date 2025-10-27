extends Sprite2D

@onready var lata_pene2 = $"."
@onready var tween = create_tween()

func _ready():
    lata_pene2.modulate.a = 0.0
    DialogueManager.dialogue_ended.connect(_on_dialogue_ended)
    fade_in_sprite()


func fade_in_sprite():
    tween.tween_property(lata_pene2, "modulate:a", 1.0, 2.0) \
.set_trans(Tween.TRANS_SINE) \
.set_ease(Tween.EASE_IN_OUT)


func _on_dialogue_ended(resource):
    if resource.resource_path == "res://dialogoareapart4.dialogue":
        fade_out_sprite()


func fade_out_sprite():
    var t = create_tween()
    t.tween_property(lata_pene2, "modulate:a", 0.0, 2.0) \
 .set_trans(Tween.TRANS_SINE) \
 .set_ease(Tween.EASE_IN_OUT)
