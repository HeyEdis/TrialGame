extends Area2D

# $Timer is het pad van de timer
@onready var timer = $Timer

# body is onze speler doordat hij het enigste is dat in de killzone kan belanden
# start de timer
func _on_body_entered(body):
	print("ur dead bruv")
	Engine.time_scale = 0.5 #makes sure we go at half speed
	body.get_node("CollisionShape2D").queue_free() # queue free betekent die node verwijderen
	timer.start()

# this runs when the timer ends
# in the function we restart our game
func _on_timer_timeout():
	#als de timer op is reset naar de juiste snelheid
	Engine.time_scale = 1.0
	get_tree().reload_current_scene()
