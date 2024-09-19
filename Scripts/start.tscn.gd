extends Node2D

func _on_start_pressed():
	get_tree().change_scene_to_file("res://Scenes/bot_select_difficulty.tscn")

func _on_quit_pressed():
	get_tree().quit()
