extends CharacterBody2D

@onready var _animated_sprite = $AnimatedSprite2D

const SPEED = 300.0
const JUMP_VELOCITY = -400.0

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

func _physics_process(delta):
	# Add the gravity.
	if not is_on_floor():
		velocity.y += gravity * delta

	# Handle jump.
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction = Input.get_axis("ui_left", "ui_right")
	if direction == -1 and velocity.y == 0:
		velocity.x = direction * SPEED
		_animated_sprite.play("Run")
		_animated_sprite.flip_h=true
	elif direction == -1 and velocity.y < 0:
		velocity.x = direction * SPEED
		_animated_sprite.play("Jump")
		_animated_sprite.flip_h=true
	elif direction == -1 and velocity.y > 0:
		velocity.x = direction * SPEED
		_animated_sprite.play("Fall")
		_animated_sprite.flip_h=true
	elif direction == 1 and velocity.y == 0:
		velocity.x = direction * SPEED
		_animated_sprite.play("Run")
		_animated_sprite.flip_h=false
	elif direction == 1 and velocity.y < 0:
		velocity.x = direction * SPEED
		_animated_sprite.play("Jump")
		_animated_sprite.flip_h=false
	elif direction == 1 and velocity.y > 0:
		velocity.x = direction * SPEED
		_animated_sprite.play("Fall")
		_animated_sprite.flip_h=false
	elif direction == 0 and velocity.y == 0:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		_animated_sprite.play("Idle")
	elif direction == 0 and velocity.y < 0:
		velocity.x = 0
		_animated_sprite.play("Jump")
	elif direction == 0 and velocity.y > 0:
		velocity.x = 0
		_animated_sprite.play("Fall")
		
		
	
	move_and_slide()
