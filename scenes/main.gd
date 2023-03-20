extends Node2D

var mhmm = 0
var boost = 1

#costs
var cost1 = 100

func ready():
	$numofmhmm.text = str(mhmm)

func _on_main_Button_pressed():
	mhmm += (boost)
	$numofmhmm.text = str(mhmm)
func _on_boost1_pressed():
	if mhmm >= cost1:
		mhmm -= cost1
