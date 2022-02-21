@tool
extends EditorPlugin

const MainPanel = preload("res://addons/my_main_screen_plugin/my_main_panel.tscn")

var main_panel_instance

func _enter_tree():
	main_panel_instance = MainPanel.instantiate()
	get_editor_interface().get_editor_main_control().add_child(main_panel_instance)
	_make_visible(true)

func _exit_tree():
	if main_panel_instance:
		main_panel_instance.queue_free()

func _has_main_screen():
	return true

func _make_visible(visible):
	if main_panel_instance:
		main_panel_instance.visible = visible

func _get_plugin_name():
	return "My Main Screen Plugin"

func _get_plugin_icon():
	return get_editor_interface().get_base_control().get_theme_icon("Node", "Editoricons")
