# Godot Editor Plugin Play

A project made with Godot version v4.0.alpha.custom_build [91a57b5b6] 
to build plugins based on [editor plugins tutorial](https://docs.godotengine.org/en/latest/tutorials/plugins/editor/index.html).

## Plugins

### Custom dock

A simple dock with a button.

### Custom gizmo

A simple gizmo that draw a red line based on `my_custom_value` on the Y axis.

### Custom inspector plugin

A simple plugin that turn any int field from a `SpinBox` into a `Button` which
generate random values when pressed.

### Custom node

A simple `Button` called `MyButton` which have a pressed event listener that
print a message on debug console by default.

### Custom main screen

A simple plugin that make a custom Main screen which have a button that print
a message on console when pressed.

### Custom material import

A plugin that read `.mtxt` file which have 3 values on rgb channel separated by
comma ex: `0,0,255`, and transform them into a material.

### Custom Perlin Noise 3D visual shader node

Add a custom perlin noise visual node to VisualShaderLanguage.
