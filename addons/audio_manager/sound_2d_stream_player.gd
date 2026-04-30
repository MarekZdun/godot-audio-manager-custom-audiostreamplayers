class_name SoundStreamPlayer2D
extends AudioStreamPlayer2D

var priority: int = 0

func is_paused() -> bool:
	return stream_paused

func pause_playback() -> void:
	if playing and not stream_paused:
		stream_paused = true

func resume_playback() -> void:
	if stream_paused:
		stream_paused = false
