extends KinematicBody2D

signal update

export var mvSPEED = 500
var direction = Vector2()

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
