extends KinematicBody2D

export var mvSPEED = 500
var direction = Vector2()
onready var interactionManager: InteractionManager = $"InteractionArea"
onready var _animated_sprite = $AnimatedSprite

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
		get_input()
		move_and_slide(direction)

func _unhandled_input(_event) -> void:
		if Input.is_action_just_pressed("Interact"):
			interactionManager.initiate_interaction()
	
func get_input():
	direction = Vector2()
	if Input.is_action_pressed("ui_up"):
		direction.y -= 1
	elif Input.is_action_pressed("ui_down"):
		direction.y += 1	
	elif Input.is_action_pressed("ui_left"):
		direction.x -= 1
		_animated_sprite.flip_h = true
		_animated_sprite.play("run")
	elif Input.is_action_pressed("ui_right"):
		direction.x += 1
		_animated_sprite.flip_h = false
		_animated_sprite.play("run")
	elif direction == Vector2(0,0):
		_animated_sprite.stop()
		
	direction = direction.normalized() * mvSPEED
