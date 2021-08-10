extends Area2D

class_name InteractionManager

var current_interaction: InteractionManager

func initiate_interaction() -> void:
	if current_interaction != null:
		current_interaction.receive_interaction()
		
func receive_interaction() -> void:
	print("No Interaction reception behavior defined.")
	
func _on_Interaction_Manager_Area_Entered(area):
	print("player entered")
	current_interaction = area
	
func _on_Interaction_Manager_Area_Exited(area):
	print("player exited")
	if current_interaction == area:
		current_interaction = null
