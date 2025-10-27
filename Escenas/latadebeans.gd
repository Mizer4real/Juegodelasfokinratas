extends Sprite2D

@onready var lata_pene: Sprite2D = $"."
@onready var tween = create_tween()


func _ready():
    
    lata_pene.modulate.a = 0.0
    
    fade_in_sprite()
    
func fade_in_sprite():
    tween.tween_property(lata_pene, "modulate:a", 1.0, 2.0) \
    .set_trans(Tween.TRANS_SINE) \
    .set_ease(Tween.EASE_IN_OUT)
