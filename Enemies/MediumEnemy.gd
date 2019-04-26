extends "res://Enemies/Enemy.gd"

# The medium enemy script. The general parent enemy is based off this one so not much is needed to change

func _ready():
	Global.mediumEnemyCount += 1
	
func death():
	Global.update_enemy_death_count()
	
	target = null
	blackboard.set("target", target, behaviourTree, self)
	Global.mediumEnemyCount -= 1
	emit_signal("enemy_death", score_to_add)
	
	queue_free()
	