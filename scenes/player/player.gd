extends CharacterBody2D

@export_group("Player Movement Variables")
@export var speed := 300
var mouse_position = null

func _process(_delta: float) -> void:
	velocity = Vector2.ZERO
	mouse_position = get_global_mouse_position()
	
	if Input.is_action_pressed("forward"):
		var direction = (mouse_position - position)
		if (direction.x * direction.x + direction.y * direction.y >= 10000):
			var dir_vector = direction.normalized()
			velocity = dir_vector * speed

		
	move_and_slide()
	look_at(mouse_position)
	
