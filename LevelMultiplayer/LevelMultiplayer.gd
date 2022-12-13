extends Node

var PlayerScore = 0
var EnemyScore = 0

func _on_Left_body_entered(body):
	EnemyScore += 1
	reset_ball_position()

func _on_Right_body_entered(body):
	PlayerScore += 1
	reset_ball_position()

func _process(delta):
	$PlayerScore.text = str(PlayerScore)
	$EnemyScore.text = str(EnemyScore)

func _on_CountdownTimer_timeout():
	get_tree().call_group('BallGroup', 'reset_ball_speed')

func reset_ball_position():
	$Ball.position = Vector2(160,90)
	get_tree().call_group('BallGroup', 'stop_ball')
	$CountdownTimer.start()
	$ScoreSound.play()
