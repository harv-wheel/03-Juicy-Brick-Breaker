extends StaticBody2D

var decay = 0.01

func _ready():
	pass

func _physics_process(_delta):
	if $ColorRect.color.s > 0:
		$ColorRect.color.s -= decay
	if $ColorRect.color.v < 1:
		$ColorRect.color.v += decay

func hit(_ball):
	$ColorRect.color = Color8(201, 42, 42)
	var wall_s = get_node_or_null("/root/Game/Wall")
	if wall_s != null:
		wall_s.play()
