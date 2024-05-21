extends Control

func _ready():
	$CenterContainer2/Console.text = ""

func _on_berry_item_collected():
	$CenterContainer/BerryCount.text = str(global.berry_count)



func _on_pickup_area_update_console(message):
	$CenterContainer2/Console.text = message


func _on_next_level_area_update_console(message):
		$CenterContainer2/Console.text = message

func _on_end_credits_update_console(message):
	$CenterContainer2/Console.text = message


