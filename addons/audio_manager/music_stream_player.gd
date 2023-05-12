class_name MusicStreamPlayer
extends AudioStreamPlayer

var priority: int
var tween_volume: Tween
	
	
func remove_tween_volume_transition() -> void:
	if tween_volume and tween_volume.is_valid():
		tween_volume.kill()
		
		
func create_tween_volume_transition_in(p_volume_db: float, p_duration: float) -> Tween:
	tween_volume = self.create_tween()
	tween_volume.tween_property(self, "volume_db", linear_to_db(p_volume_db), p_duration).from(AudioManager.MIN_VOLUME_DB)
	tween_volume.finished.connect(remove_tween_volume_transition)
	
	return tween_volume
	
	
func create_tween_volume_transition_out(p_duration: float) -> Tween:
	tween_volume = self.create_tween()
	tween_volume.tween_property(self, "volume_db", AudioManager.MIN_VOLUME_DB, p_duration)
	tween_volume.finished.connect(remove_tween_volume_transition)
	
	return tween_volume
