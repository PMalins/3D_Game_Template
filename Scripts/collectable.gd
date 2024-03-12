extends Area3D

var is_collected = false

func _on_body_entered(_body):
	Global.berry_count = Global.berry_count + 1 
	print("Berry Count", Global.berry_count)
	queue_free() #berry collected
