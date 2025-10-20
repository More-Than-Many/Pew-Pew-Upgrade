extends Sprite2D

signal on_rotate

var timer: float = 0.0
var test_scale: int = 1

func _ready():
	test_scale = 2
	self.scale = Vector2(test_scale, test_scale)
	on_rotate.connect(rotateSprite)

func rotateSprite() -> void:
	rotate(PI/2)
	
func _process(delta: float) -> void:
	pass
	
