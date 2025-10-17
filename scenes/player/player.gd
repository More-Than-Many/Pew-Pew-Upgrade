extends Sprite2D

signal on_rotate

var timer: float = 0.0

func _ready():
	on_rotate.connect(rotateSprite)

func rotateSprite() -> void:
	rotate(PI/2)
	
func _process(delta: float) -> void:
	timer += delta
	if timer >= 3.0:
		timer = 0
		on_rotate.emit()
	
