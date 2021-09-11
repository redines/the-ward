extends Node

var Items = Array()

#func _ready():
#	var directory = Directory.new()
#	directory.open("res://Item/")
#	directory.list_dir_begin()
#
#	var filename = directory.get_next()
#	while(filename):
#		if not directory.current_is_dir():
#			Items.append(load("res://Item/%s" % filename))
#
#		filename = directory.get_next()
		
		
func get_item(item_name):
	for i in Items:
		if i.name == item_name:
			return i
			
	return null
