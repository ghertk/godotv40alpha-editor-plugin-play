extends EditorInspectorPlugin

var RandomIntEditor = preload("res://addons/my_custom_inspector_plugin/my_custom_random_int_editor.gd")

func _can_handle(object):
	return true

func _parse_property(object, type, name, hint_type, hint_string, usage_flags, wide):
	if type == TYPE_INT:
		add_property_editor(name, RandomIntEditor.new())
		return true
	else:
		return false
