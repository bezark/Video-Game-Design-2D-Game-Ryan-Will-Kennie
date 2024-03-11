extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$CharacterBody2D/AnimatedSprite2D.play('Idol')

func _on_PurplePotionBottle_body_entered(body: Node) -> void:
	# Check if the colliding body is the player
	if body.is_in_group("Player"):
		queue_free()  # Remove the Purple Potion Bottle from the scene
