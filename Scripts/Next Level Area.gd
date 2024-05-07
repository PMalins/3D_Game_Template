extends Area3D


@export_file var level_to_load

var player_entered = false
signal update_console

func _unhandled_input(_event):
	if not player_entered: 
		return
	if Input.is_action_just_pressed("Portal"):
		get_tree().change_scene_to_file(level_to_load)
		emit_signal("update_console", "")

func _on_body_entered(_body):
	print(_body)
	player_entered = true
	emit_signal("update_console", "Press G to go to the next area.")

func _on_body_exited(_body):
	player_entered = false
	emit_signal("update_console", "")

