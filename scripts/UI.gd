extends Control

var crystal_count = 0


func _ready():
	GlobalSignals.connect("show_sign", self, "_show_sign")
	GlobalSignals.connect("hide_sign", self, "_hide_sign")
	GlobalSignals.connect("crystal_collected", self, "_crystal_collected")
			

func _show_sign(text):
	$SignText.text = text
	$SignText.visible = true

func _hide_sign():
	$SignText.visible = false
	
func _crystal_collected():
	crystal_count += 1
	$CrystalLabel.text = "Crystals: "+str(crystal_count)


