extends Control

var scene_path_to_load

func _ready():
	$Menu/CenterRow/Buttons/NewGameButton.grab_focus()
	for button in $Menu/CenterRow/Buttons.get_children():
		button.connect("pressed",self, "_on_Button_pressed", [button.target_scene])


func _on_Button_pressed(target_scene):
	scene_path_to_load = target_scene
	$FadeIn.show()
	$FadeIn.fade_in()
	


func _on_FadeIn_fade_finished():
	get_tree().change_scene_to(scene_path_to_load)
