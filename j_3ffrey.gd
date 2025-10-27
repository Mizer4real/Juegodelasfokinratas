extends CharacterBody2D
@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D
var nearby_object: Area2D = null 
const SPEED = 250.0
const JUMP_VELOCITY = -700
const acceleration = 70
const max_speed = 320
var climb_speed = 80
var input = Vector2.ZERO
var vel = Vector2.ZERO
var gravity = 10
var jump_speed = 620 
var colliding_ladder = false
var going_up = false

var facing_direction = "side" # "side" o "front"
func update_animations():
    if velocity.x:
        animated_sprite_2d.play("walking")
    else:
        animated_sprite_2d.play("idle")
    if Input.is_action_pressed("ui_up"):
                velocity.y = -climb_speed
                animated_sprite_2d.play("climb")
    else:
        if not is_on_floor():
            if velocity.y <-1:
               animated_sprite_2d.play("jump")
            if velocity.y > 1:
                animated_sprite_2d.play("fall")

            
func _physics_process(_delta):
    if colliding_ladder:
        if Input.is_action_pressed("ui_up"):
            velocity.y = 0
            if Input.is_action_pressed("ui_up"):
                velocity.y = -climb_speed
                animated_sprite_2d.play("climb")
            else:
                velocity.y = 0
                animated_sprite_2d.play("climb_idle")
        velocity.x = input.x * jump_speed
        move_and_slide()
    if !going_up:
        velocity.y += gravity
    climb() 
    _movement(_delta)
    move_and_slide()
    update_animations()
    # Add the gravity.
    if not is_on_floor():    
        velocity += get_gravity() * _delta
    
func _movement(delta):
    if not is_on_floor():
        velocity += get_gravity() * delta
    
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
      
  
    if direction ==1:
        animated_sprite_2d.flip_h =false
    elif direction == -1:
        animated_sprite_2d.flip_h =true
        
        
    if Input.is_action_just_pressed("interact") and nearby_object:
        if nearby_object.has_method("interact"):
            nearby_object.interact()
    if Input.is_action_pressed("interact"):
         animated_sprite_2d.play("push")
        
func climb():
    if colliding_ladder:
        if Input.is_action_pressed("ui_up"):
            going_up = true
            velocity.y = max(velocity.y - acceleration, -max_speed)
            $AnimatedSprite2D.play("climb")
        elif Input.is_action_pressed("ui_down"):
            going_up = true
            velocity.y = min(velocity.y + acceleration, max_speed)
            animated_sprite_2d.play("climb_down")
            
            
func _on_area_2d_area_exited(area: Area2D) -> void:
    area.get_name()
    if area.is_in_group("ladder"):
        colliding_ladder = false
        going_up = false
        


func _on_area_2d_area_entered(area: Area2D) -> void:
    area.get_name()
    if area.is_in_group("Ladder"):
        colliding_ladder = true
