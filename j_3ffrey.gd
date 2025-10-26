extends CharacterBody2D

@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D
var nearby_object: Area2D = null 
const SPEED = 250.0
const JUMP_VELOCITY = -400.0
var facing_direction = "side" # "side" o "front"

var input = Vector2.ZERO

func update_animations():
    if velocity.x:
        animated_sprite_2d.play("walking")
    else:
        animated_sprite_2d.play("idle")
    if not is_on_floor():
        if velocity.y < 0:
          animated_sprite_2d.play("jump")
        else:
          animated_sprite_2d.play("fall")
        return

func _physics_process(delta: float) -> void:
    var input = Vector2. ZERO
    update_animations()
    # Add the gravity.
    if not is_on_floor():    
        velocity += get_gravity() * delta
    if Input.is_action_pressed("ui_up"):
       animated_sprite_2d.play("front")
       return
    
    if input.x != 0:
       facing_direction = "side"
       

    # Handle jump.
    if Input.is_action_just_pressed("ui_accept") and is_on_floor():
        velocity.y = JUMP_VELOCITY

    # Get the input direction and handle the movement/deceleration.
    # As good practice, you should replace UI actions with custom gameplay actions.
    var direction := Input.get_axis("ui_left", "ui_right")
    if direction:
        velocity.x = direction * SPEED
    else:
        velocity.x = move_toward(velocity.x, 0, SPEED)

    move_and_slide()
    
    if direction ==1:
        animated_sprite_2d.flip_h =false
    elif direction == -1:
        animated_sprite_2d.flip_h =true
    if Input.is_action_just_pressed("interact") and nearby_object:
        if nearby_object.has_method("interact"):
            nearby_object.interact()
        
        
        
