import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class AudioPlayerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyAudioPlayer(),
    );
  }
}

class MyAudioPlayer extends StatefulWidget {
  @override
  _MyAudioPlayerState createState() => _MyAudioPlayerState();
}

class _MyAudioPlayerState extends State<MyAudioPlayer> {
  late AudioPlayer _audioPlayer;
  String _audioPath = "assets/audio/dummy_audio.mp3"; // Path audio di dalam folder assets
  double _playbackSpeed = 1.0;

  @override
  void initState() {
    super.initState();
    _audioPlayer = AudioPlayer();
  }

  @override
  void dispose() {
    _audioPlayer.dispose();
    super.dispose();
  }

  void _playAudio() async {
    await _audioPlayer.setPlaybackRate(_playbackSpeed);
    int result = await _audioPlayer.play(_audioPath, isLocal: true);
    if (result == 1) {
      // Sukses memulai pemutaran
    }
  }

  void _pauseAudio() {
    _audioPlayer.pause();
  }

  void _stopAudio() {
    _audioPlayer.stop();
  }

  void _setPlaybackSpeed(double speed) {
    setState(() {
      _playbackSpeed = speed;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Audio Player"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              icon: Icon(Icons.play_arrow),
              onPressed: _playAudio,
            ),
            IconButton(
              icon: Icon(Icons.pause),
              onPressed: _pauseAudio,
            ),
            IconButton(
              icon: Icon(Icons.stop),
              onPressed: _stopAudio,
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                PlaybackSpeedButton(
                  speed: 1.0,
                  onPressed: _setPlaybackSpeed,
                ),
                PlaybackSpeedButton(
                  speed: 1.5,
                  onPressed: _setPlaybackSpeed,
                ),
                PlaybackSpeedButton(
                  speed: 2.0,
                  onPressed: _setPlaybackSpeed,
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(
              "Playback Speed: ${_playbackSpeed.toStringAsFixed(1)}x",
            ),
          ],
        ),
      ),
    );
  }
}

class PlaybackSpeedButton extends StatelessWidget {
  final double speed;
  final Function(double) onPressed;

  const PlaybackSpeedButton({
    required this.speed,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => onPressed(speed),
      child: Text("$speed x"),
    );
  }
}
