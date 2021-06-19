extends Area2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var can_interact = false

# Called when the node enters the scene tree for the first time.
func _ready():
	connect("body_entered", self, '_on_NPC_body_entered')
	connect("body_exited", self, '_on_NPC_body_exited')

func _input(event):
	if get_node_or_null('DialogNode') == null:
		if event.is_action_pressed("ui_accept") and can_interact:
			var dialog = Dialogic.start('first')
			dialog.connect('first', self, 'unpause')
			add_child(dialog)
			
			
func _on_NPC_body_entered(body):
	if body.name == 'Player':
		can_interact = true

func _on_NPC_body_exited(body):
	if body.name == 'Player':
		can_interact = false
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
