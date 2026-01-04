extends CharacterBody2D


@export var speed: float = 200.0

func _process(delta: float) -> void:
	# Gets player position.
	var player = get_tree().get_first_node_in_group("player")
	if not player:
		return
	var destination = player.position
	# Moves enemy toward player.
	position = position.move_toward(destination, speed * delta)
	
