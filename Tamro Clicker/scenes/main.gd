extends Node2D

var mhmm = 0
var boost = 1

#costs
var cost1 = 100
var cost2 = 1000
var cost3 = 10000
var cost4 = 100000
var cost5 = 1000000

func ready():
	$numofmhmm.text = str(mhmm)

func _on_main_Button_pressed():
	mhmm += (boost)
	$numofmhmm.text = str(mhmm)


#boosters
func _on_boost1_pressed():
	if mhmm >= cost1:
		mhmm -= cost1
		boost += 5
		$numofmhmm.text = str(mhmm)
func _on_boost2_pressed():
	if mhmm >= cost2:
		mhmm -= cost2
		boost += 100
		$numofmhmm.text = str(mhmm)

func _on_boost3_pressed():
	if mhmm >= cost3:
		mhmm -= cost3
		boost += 100
		$numofmhmm.text = str(mhmm)
