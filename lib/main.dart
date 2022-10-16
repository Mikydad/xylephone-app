import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void PlaySound(int soundNumber) {
    final assetsAudioPlayer = AssetsAudioPlayer();
    assetsAudioPlayer.open(Audio('assets/note$soundNumber.wav'));
  }

  Expanded allFunction({Color color, int soundNumber}) {
    return Expanded(
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(backgroundColor: color),
          onPressed: () {
            PlaySound(soundNumber);
          }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            allFunction(color: Colors.red, soundNumber: 1),
            allFunction(color: Colors.orange, soundNumber: 2),
            allFunction(color: Colors.yellow, soundNumber: 3),
            allFunction(color: Colors.green, soundNumber: 4),
            allFunction(color: Colors.teal, soundNumber: 5),
            allFunction(color: Colors.blue, soundNumber: 6),
            allFunction(color: Colors.purple, soundNumber: 7),
          ]),
        ),
      ),
    );
  }
}
