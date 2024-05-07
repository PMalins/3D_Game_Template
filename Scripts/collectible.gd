extends Area3D

var is_collected = false

func _on_body_entered(_body):
	global.berry_count = global.berry_count + 1 
	print("Berry Count", global.berry_count)
	queue_free() #berry collected
