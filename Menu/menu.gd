extends Control


func _on_Singleplayer_pressed():
	get_tree().change_scene("res://Level/Level.tscn")

func _on_Multiplayer_pressed():
	print("Multiplayer Selected")
