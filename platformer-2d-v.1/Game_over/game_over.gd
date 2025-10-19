extends Control
@onready var first_level = preload("res://Level/level.tscn")


func _on_b_start_button_down() -> void:
	get_tree().change_scene_to_packed(first_level)


func _on_b_quit_button_down() -> void:
	get_tree().quit()
