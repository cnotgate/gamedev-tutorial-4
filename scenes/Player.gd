extends CharacterBody2D

@export var speed: int = 400
@export var gravity: int = 1200
@export var jump_speed: int = -650
var up_collision: bool = false

# Coyote Time Variables
@onready var coyote_timer = $CoyoteTimer
var was_on_floor: bool = false

func update_up_collision(is_colliding):
	up_collision = is_colliding

func get_input():
	velocity.x = 0
	if Input.is_action_just_pressed("jump") and (is_on_floor() or not coyote_timer.is_stopped()):
		coyote_timer.stop()
		velocity.y = jump_speed
	if Input.is_action_pressed("right"):
		velocity.x += speed
	if Input.is_action_pressed("left"):
		velocity.x -= speed


func _physics_process(delta):
	if not is_on_floor():
		# Detect if we JUST left the floor
		if was_on_floor and velocity.y >= 0:
			coyote_timer.start()
	else:
		# Player is on the ground, reset tracker
		coyote_timer.stop()
	was_on_floor = is_on_floor()
	velocity.y += delta * gravity
	get_input()
	move_and_slide()


func _process(_delta):
	
	if not Input.is_action_just_pressed("down") and up_collision:
		$Animator.play("Duck")
	elif not is_on_floor():
		$Animator.play("Jump")
	elif velocity.x != 0 and not Input.is_action_pressed("down"):
		$Animator.play("Walk")
	elif Input.is_action_pressed("down"):
		$Animator.play("Duck")
	else:
		$Animator.play("Idle")
	
	if velocity.x != 0:
		if velocity.x > 0:
			$Sprite2D.flip_h = false
		else:
			$Sprite2D.flip_h = true
