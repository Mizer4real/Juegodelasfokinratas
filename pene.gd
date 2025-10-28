extends CharacterBody2D
var nearby_object: Area2D = null
@onready var fat_rat_chat: Area2D = $"../peeeene3/fat rat chat"
@onready var animation_player: AnimationPlayer = $"../peeeene3/Label/AnimationPlayer"
@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D
const SPEED = 300.0
const JUMP_VELOCITY = -400.0
var is_facing_right = true
var player_push = false
var busy = false


func update_animations():
    if velocity.x:
        animated_sprite_2d.play("walk")
    else:
        animated_sprite_2d.play("idle")
    if velocity.y < 0:
        animated_sprite_2d.play("jump")
    elif velocity.y > 0:
        animated_sprite_2d.play("fall")
func _physics_process(delta: float) -> void:
    update_animations()
    # Add the gravity.
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
        animated_sprite_2d.flip_h = false
    elif direction ==-1:
        animated_sprite_2d.flip_h = true

    move_and_slide()
func _ready() -> void:
    animated_sprite_2d.animation_finished.connect(_on_animation_finished)
    
func _process(_delta: float) -> void: 
    if Input.is_action_just_pressed("interact") and nearby_object:
        if nearby_object.has_method("interact"):
            nearby_object.interact()
    if Input.is_action_pressed("interact"):
        animated_sprite_2d.play("push")
        busy = true
        player_push = true
func _on_animation_finished():
    if player_push and animated_sprite_2d.animation == "push":
        animated_sprite_2d.play("scared")
        player_push = false
        return
    if animated_sprite_2d.animation == "scared":
        busy = false
        animated_sprite_2d.play("idle")
        
   
        
