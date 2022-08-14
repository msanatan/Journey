extends KinematicBody2D

export var ACCELERATION = 768
export var MAX_SPEED = 96
export var FRICTION = 0.25
export var AIR_RESISTANCE = 0.02
export var GRAVITY = 200
export var JUMP_FORCE = 128

onready var animated_sprite = $AnimatedSprite

var motion = Vector2.ZERO
var game_over = false

func _physics_process(delta):
    if game_over:
        animated_sprite.play('idle')
        return

    var x_input = Input.get_action_strength('right') - Input.get_action_strength('left')

    if x_input != 0:
        animated_sprite.play('walk')
        motion.x += x_input * ACCELERATION * delta
        motion.x = clamp(motion.x, -MAX_SPEED, MAX_SPEED)
        animated_sprite.flip_h = x_input < 0
    else:
        animated_sprite.play('idle')

    motion.y += GRAVITY * delta

    if is_on_floor():
        if x_input == 0:
            motion.x = lerp(motion.x, 0, FRICTION)

        if Input.is_action_just_pressed('up'):
            motion.y = -JUMP_FORCE
    else:
        animated_sprite.play('jump')
        if Input.is_action_just_released('up') and motion.y < -JUMP_FORCE / 2:
            motion.y = -JUMP_FORCE / 2

        if x_input == 0:
            motion.x = lerp(motion.x, 0, AIR_RESISTANCE)

    motion = move_and_slide(motion, Vector2.UP)


func toggle_game_over():
    game_over = true
