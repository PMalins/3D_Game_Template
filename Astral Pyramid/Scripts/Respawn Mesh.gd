extends Area3D

@export var respawn_point: Node3D

func _on_body_entered(body):
	#if player enters, reset position to spawn point :3
	body.position = respawn_point.position 
	
	
	
	
