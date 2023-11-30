import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/foundation.dart';

class AudioPlayerManager extends ChangeNotifier {
  final AudioPlayer _audioPlayer = AudioPlayer();
  bool _isMusicOn = true;

  bool get isMusicOn => _isMusicOn;

  Future<void> toggleMusic() async {
    if (_isMusicOn) {
      await _audioPlayer.pause();
    } else {
      await _audioPlayer.resume();
    }

    _isMusicOn = !_isMusicOn;
    notifyListeners();
  }

  Future<void> startMusic(String path) async {
    await _audioPlayer.play(AssetSource(path));
    notifyListeners();
  }

  @override
  void dispose() {
    _audioPlayer.dispose();
    super.dispose();
  }
}
