# Audio Manager with custom audio stream players(Godot 4.1 version)

An Audio Manager for [Godot Engine](https://godotengine.org/).

## 📄 Features
The Audio Manager enables the user to configure a pool of custom AudioStreamPlayers associated with playing non-positional sounds, 2D sounds, 3D sounds, and music. 
When there is a need to play a specific AudioStream, Audio Manager retrieves a suitable custom AudioStreamPlayer from the pool and plays the requested AudioStream on it. Once the AudioStream playback is completed, the custom AudioStreamPlayer is automatically returned to the pool. This allows the user to reuse custom AudioStreamPlayers 
and avoid an excessive number of AudioStreamPlayers on the scene.
