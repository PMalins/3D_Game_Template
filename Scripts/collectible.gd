extends Area3D

@export var type = "Berry"
var is_collected = false
signal item_collected

func _on_body_entered(_body):
	if type == "Berry":
		global.berry_count = global.berry_count + 1 
		print("Berry Count", global.berry_count)
	
	if type == "Starshot":
		global.has_Starshot = true
	emit_signal("item_collected")
	queue_free() #berry collected
