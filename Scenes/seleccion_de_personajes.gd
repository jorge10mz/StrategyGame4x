extends Control

@onready var start_buttom = $Botones/start
@onready var Persia_buttom =  $Botones/Persia
@onready var scene_control_Persia = $"Lideres/Ciro II el grande"
@onready var Sumeria_buttom = $Botones/Sumeria
@onready var scene_control_Sumeria = $Lideres/Gilgamesh
@onready var Mexico_buttom = $Botones/Mexico
@onready var scene_control_Mexico = $"Lideres/Porfirio Diaz"
@onready var Azteca_buttom = $Botones/Azteca
@onready var scene_control_Azteca = $"Lideres/Moctezuma II"
@onready var Francia_buttom = $Botones/Francia
@onready var scene_control_francia = $"Lideres/Juana de arco"
@onready var vikingo_buttom = $Botones/Vikingos
@onready var scene_control_vikingo = $"Lideres/Ragnar Lodbrok"
@onready var scene_control_china = $Lideres/Confucio
@onready var china_buttom = $Botones/china
@onready var grecia_buttom = $Botones/Grecia
@onready var scene_control_grecia = $"Lideres/Alejandro Magno"
@onready var scene_control_roma = $Lideres/Trajano
@onready var roma_button = $Botones/Roma
@onready var egipto_button = $Botones/Egipto
@onready var scene_control_egipto = $Lideres/Anubis

var  current_scene =null

func _ready():
	hide_all_scenes()
	Persia_buttom.connect("pressed", _on_persia_pressed)
	Sumeria_buttom.connect("pressed", _on_sumeria_pressed)
	Mexico_buttom.connect("pressed", _on_mexico_pressed)
	Azteca_buttom.connect("pressed", _on_azteca_pressed)
	Francia_buttom.connect("pressed", _on_francia_pressed)
	vikingo_buttom.connect("pressed", _on_vikingos_pressed)
	china_buttom.connect("pressed", _on_china_pressed)
	grecia_buttom.connect("pressed", _on_grecia_pressed)
	egipto_button.connect("pressed", _on_egipto_pressed)
	roma_button.connect("pressed", _on_roma_pressed)
	start_buttom.connect("pressed", _on_start_pressed)

func hide_all_scenes():
	scene_control_Persia.visible = false
	scene_control_Sumeria.visible = false
	scene_control_Mexico.visible = false
	scene_control_Azteca.visible = false
	scene_control_francia.visible = false
	scene_control_vikingo.visible = false
	scene_control_china.visible = false
	scene_control_grecia.visible = false
	scene_control_egipto.visible = false
	scene_control_roma.visible = false

func show_only(scene):
	hide_all_scenes()
	scene.visible = true
	current_scene = scene

func _on_egipto_pressed() -> void:
	show_only(scene_control_egipto)

func _on_roma_pressed() -> void:
	show_only(scene_control_roma)

func _on_grecia_pressed() -> void:
	show_only(scene_control_grecia)

func _on_china_pressed() -> void:
	show_only(scene_control_china)

func _on_vikingos_pressed() -> void:
	show_only(scene_control_vikingo)

func _on_francia_pressed() -> void:
	show_only(scene_control_francia)

func _on_azteca_pressed() -> void:
	show_only(scene_control_Azteca)

func _on_mexico_pressed() -> void:
	show_only(scene_control_Mexico)

func _on_sumeria_pressed() -> void:
	show_only(scene_control_Sumeria)

func _on_persia_pressed() -> void:
	show_only(scene_control_Persia)

func _on_start_pressed() -> void:
	pass # Replace with function body.
