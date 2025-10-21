extends CharacterBody2D

@export var speed = 200
var mouse_position = null

func _process(_delta: float) -> void:
	velocity = Vector2.ZERO
	mouse_position = get_global_mouse_position()
	
	if Input.is_action_pressed("forward"):
		var direction = (mouse_position - position)
		if (direction.x * direction.x + direction.y * direction.y >= 10000):
			print(direction)
			velocity = direction.normalized() * speed

		
	move_and_slide()
	look_at(mouse_position)
	
