extends KinematicBody2D

signal update

export var mvSPEED = 500
var direction = Vector2()
onready var interactionManager: InteractionManager = $"InteractionArea"

func ready():
	pass

# Called when the node enters the scene tree for the first time.
func _process(delta):
	emit_signal("update")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	if direction.length() > 0:
		direction = direction.normalized() * mvSPEED
		move_and_collide(direction * delta)

func _unhandled_input(_event) -> void:
		if Input.is_action_just_pressed("Interact"):
			interactionManager.initiate_interaction()
