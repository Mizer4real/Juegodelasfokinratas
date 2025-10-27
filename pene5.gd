extends Sprite2D

@onready var label = $Label


func _ready() -> void:
    # Empieza todo invisible
   
    label.modulate.a = 0.0

    # Creamos un tween y encolamos los pasos en el orden deseado
    var t = create_tween()
    # Fade-in del fondo (negro)
    # Fade-in del texto (después del fondo)
    t.tween_property(label, "modulate:a", 1.0, 2.5)
    # Espera 3 segundos con el texto visible
    t.tween_interval(3.0)
    # Fade-out del texto
    t.tween_property(label, "modulate:a", 0.0, 2.0)
    # Fade-out del fondo
  
