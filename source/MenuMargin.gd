extends MarginContainer

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	pass
#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass


func _on_NewGameLabel_pressed():
	get_tree().change_scene("res://Game.tscn")



func _on_QuitLabel_pressed():
	get_tree().quit()
