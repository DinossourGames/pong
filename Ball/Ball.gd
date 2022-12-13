extends KinematicBody2D

var speed = 100
var velocity = Vector2.ZERO

func _ready():
	randomize()
	velocity.x = [-1,1][randi() % 2]
	velocity.y = [-0.3,0.3][randi() % 2]

func _physics_process(delta):
	var collision_object = move_and_collide(velocity * speed * delta)
	if collision_object:
		$CollisionSound.play()
		speed = 300
		velocity = velocity.bounce(collision_object.normal)

func stop_ball():
	speed = 0

func reset_ball_speed():
	speed = 100
