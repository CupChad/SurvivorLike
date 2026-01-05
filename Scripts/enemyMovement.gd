extends CharacterBody2D


@export var speed: float = 200.0

@onready var player = get_node("/root/main/character/Player")

func _physics_process(_delta):
	# Gets player position.
	var direction = global_position.direction_to(player.global_position)
	# Moves enemy towards player.
	velocity = direction * speed
	move_and_slide()
