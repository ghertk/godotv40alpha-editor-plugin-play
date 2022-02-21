@tool
extends EditorImportPlugin

enum Presets { DEFAULT }

func _get_importer_name():
	return "demos.mysillymaterial"

func _get_visible_name():
	return "My Silly Material"

func _get_recognized_extensions():
	return ["mtxt"]

func _get_save_extension():
	return "material"

func _get_resource_type():
	return "StandardMaterial3D"

func _get_preset_count():
	return Presets.size()

func _get_preset_name(preset_index):
	match preset_index:
		Presets.DEFAULT:
			return "Default"
		_:
			return "Unknown"

func _get_import_order():
	return 1

func _get_import_options(path, preset):
	match preset:
		Presets.DEFAULT:
			return [{
				"name": "use_red_anyway",
				"default_value": false
			}]
		_:
			return []

func _get_option_visibility(path, option_name, options):
	return true

func _get_priority():
	return 1

func _import(source_file, save_path, options, r_platform_variants, r_gen_files):
	var file = File.new()
	var err = file.open(source_file, File.READ)
	if err != OK:
		return err
	
	var line = file.get_line()
	
	file.close()
	
	var channels = line.split(",")
	if channels.size() != 3:
		return ERR_PARSE_ERROR
	
	var color
	if options.use_red_anyway:
		color = Color8(255, 0, 0)
	else:
		color = Color8(channels[0].to_int(), channels[1].to_int(), channels[2].to_int())
	var material = StandardMaterial3D.new()
	material.albedo_color = color
	
	return ResourceSaver.save("%s.%s" % [save_path, _get_save_extension()], material)
