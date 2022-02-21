extends EditorNode3DGizmoPlugin

func _get_gizmo_name():
	return "CustomNode"

func _has_gizmo(for_node_3d):
	return for_node_3d as MyCustomNode3D

func _init():
	create_material("main", Color(1, 0, 0))
	create_handle_material("handles")

func _redraw(gizmo):
	gizmo.clear()
	
	var spatial = gizmo.get_spatial_node()
	var lines = PackedVector3Array()
	
	lines.push_back(Vector3(0, 1, 0))
	lines.push_back(Vector3(0, spatial.my_custom_value, 0))
	
	var handles = PackedVector3Array()
	
	handles.push_back(Vector3(0, 1, 0))
	handles.push_back(Vector3(0, spatial.my_custom_value, 0))
	
	var material = get_material("main", gizmo)
	gizmo.add_lines(lines, material, false)
	
	var handles_material = get_material("handles", gizmo)
	gizmo.add_handles(handles, handles_material, PackedInt32Array())
