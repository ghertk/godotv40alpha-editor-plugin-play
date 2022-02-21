extends EditorProperty

var property_control = Button.new()
var current_value = 0
var updating = false

func _init():
	add_child(property_control)
	add_focusable(property_control)
	property_control.text = "Value: " + str(current_value)
	#update_text()
	property_control.connect("pressed", _on_button_pressed)

func _on_button_pressed():
	if updating:
		return
	current_value = randi() % 100
	property_control.text = "Value: " + str(current_value)
	#update_text()
	emit_changed(get_edited_property(), current_value)

func _update_property():
	var new_value = get_edited_object()[get_edited_property()]
	if new_value == current_value:
		return
	
	updating = true
	current_value = new_value
	property_control.text = "Value: " + str(current_value)
	#update_text()
	updating = false

#func update_text():
#	property_control.text = "Value: " + str(current_value)
