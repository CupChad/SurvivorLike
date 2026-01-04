extends CharacterBody2D

# @export is what makes this variable visible in the editor.
# --CANNOT-- be put into a function.
@export var speed: float = 500.0

func _physics_process(_delta: float) -> void:
	var direction = Input.get_vector("move_left", "move_right", "move_up", "move_down")
	# Velocity is built in to CharacterBody2D
	velocity = direction * speed
	move_and_slide()
