extends Sprite2D

var speed = 400
var angular_speed = PI
var mo7_xx = 123

func _process(delta):
	# rotation += angular_speed * delta
	# var velocity = Vector2.UP.rotated(rotation) * speed
	# position += velocity * delta
	var direction = 0
	if Input.is_action_pressed("ui_left"):
		direction = -1
	if Input.is_action_pressed("ui_right"):
		direction = 1
	rotation += angular_speed * direction * delta
	var velocity = Vector2.ZERO
	if Input.is_action_pressed("ui_up"):
		velocity = Vector2.UP.rotated(rotation) * speed
	position += velocity * delta


func _on_button_pressed() -> void:
	print("Button pressed", mo7_xx)
	pass # Replace with function body.
