extends Area2D

func _on_Sword_body_entered(body):
	if body.is_in_group("player"):
		print("sword_collected")
		GlobalSignals.emit_signal("collected_sword")
		queue_free()
		
