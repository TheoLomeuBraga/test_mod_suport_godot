extends Control


func _ready() -> void:
	
	var success = ProjectSettings.load_resource_pack("res://mods/mod.zip")
	if success:
		var imported_scene : PackedScene = load("res://G.tscn")
		add_child(imported_scene.instantiate())
		
		imported_scene = load("res://B.tscn")
		add_child(imported_scene.instantiate())
	else:
		print("fail to load mods")

func _process(delta: float) -> void:
	pass
