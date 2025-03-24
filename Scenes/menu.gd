extends Node2D

func _ready():
	$CanvasLayer/Button.connect("pressed", _on_button_pressed)
	
func _on_button_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/Seleccion de personajes.tscn")
