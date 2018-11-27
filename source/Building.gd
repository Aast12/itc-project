extends StaticBody2D

var id = "Build"
var player
var is_healing = false
var heal_factor = 100
var hospital_health = 100
var hospital_regen_rate = 100

signal building_function_available

func init(pos):
	position = pos

func _on_Area2D_body_entered(body):
	print("debug ", body.id)
	if body.id == "player":
		player = body
		is_healing = true

func _on_Area2D_body_exited(body):
	if body.id == "player":
		is_healing = false
		hospital_health += 10

func restart(_player):
	hospital_health = player.max_hp * 0.75
		
func _process(delta):
	if is_healing and (hospital_health >= player.max_hp * 0):
		hospital_health -= 100 * delta
		player.hp = min(player.hp + heal_factor * delta, player.max_hp)
		print(player.hp)
		if hospital_health <= player.max_hp * 0.75:
			modulate = Color(1, 0, 0, 1)

	
