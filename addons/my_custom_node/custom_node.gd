@tool
extends EditorPlugin


func _enter_tree():
	add_custom_type("MyButton", "Button", preload("res://addons/my_custom_node/my_button.gd"), preload("res://addons/my_custom_node/custom_node_icon.png"))

func _exit_tree():
	remove_custom_type("MyButton")
