extends Node2D




func _on_FallArea_body_entered(body):
	if body.is_in_group("player"):
		GlobalSignals.emit_signal("player_reset")
