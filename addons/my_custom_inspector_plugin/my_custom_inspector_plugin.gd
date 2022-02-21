@tool
extends EditorPlugin

const MyCustomInspector = preload("res://addons/my_custom_inspector_plugin/my_custom_inspector.gd")
var plugin: MyCustomInspector

func _enter_tree():
	plugin = MyCustomInspector.new()
	add_inspector_plugin(plugin)

func _exit_tree():
	remove_inspector_plugin(plugin)
