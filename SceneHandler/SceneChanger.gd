extends CanvasLayer

class_name scenechange

signal transitioned

func transition() -> void:
	$AnimationPlayer.play("Fade_to_black")


func _on_AnimationPlayer_animation_finished(anim_name):
	if anim_name == "Fade_to_black":
		emit_signal("transitioned")
		$AnimationPlayer.play("Fade_to_white")
