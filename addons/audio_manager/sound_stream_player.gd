class_name SoundStreamPlayer
extends AudioStreamPlayer

var priority: int = 0

## Returns true if this player is currently paused
func is_paused() -> bool:
	return stream_paused

## Pauses playback (keeps position)
func pause_playback() -> void:
	if playing and not stream_paused:
		stream_paused = true

## Resumes paused playback
func resume_playback() -> void:
	if stream_paused:
		stream_paused = false
