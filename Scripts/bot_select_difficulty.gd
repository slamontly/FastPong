extends Node2D



func _on_noob_pressed():
	get_tree().change_scene_to_file("res://Scenes/game_scene.tscn")

func _on_mid_pressed():
	get_tree().change_scene_to_file("res://Scenes/game_scene.tscn")


func _on_tryhard_pressed():
	get_tree().change_scene_to_file("res://Scenes/game_scene.tscn")


func _on_back_pressed():
	get_tree().change_scene_to_file("res://Scenes/start.tscn")
