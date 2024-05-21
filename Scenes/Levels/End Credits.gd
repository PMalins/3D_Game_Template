extends Area3D
var player_entered = false

signal update_console

func _on_body_entered(_body):
	player_entered = true
	emit_signal("update_console", "Thank you for Playing! There were 15 berries in total to collect. Press esc to close the game.")
