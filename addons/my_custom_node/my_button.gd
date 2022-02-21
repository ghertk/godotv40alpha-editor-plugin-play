@tool
extends Button


func _enter_tree():
	connect("pressed", clicked)

func clicked():
	print("You clicked me!")
