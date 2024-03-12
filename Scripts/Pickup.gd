extends Area3D

@onready var hand = $"../Hand"
@onready var camera = $".."

var pull_speed = 2
var throw_speed = 6

var pickup_object = null
var is_picked = false

func _physics_process(_delta):
	if pickup_object and is_picked:
		var obj_pos = pickup_object.global_transform.origin
		var hand_pos = hand.global_transform.origin
		var dir = (hand_pos - obj_pos).normalized()
		pickup_object.set_linear_velocity(dir)

#detect user input
func _unhandled_input(_event):
	#if user hits pickup button
	if Input.is_action_just_pressed("pickup"):
		#if object detected
		if pickup_object:
			#if object is already picked up
			if is_picked:
				#drop object
				pickup_object = null
				is_picked = false
			else:
				#pick up object
				is_picked = true
	
	if Input.is_action_just_pressed("throw"):
		var dir = -camera.global_transform.basis.z.normalized()
		dir = dir + Vector3(0, 1, 0)
		pickup_object.apply_impulse(dir)
		pickup_object = null
		is_picked = false

func _on_body_entered(body):
	#check if the item is picked up
	if pickup_object and is_picked:
		#if so, don't pick up more.
		return
		
	pickup_object = body
	print(pickup_object)
