import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:audioplayers/src/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void PlaySound(int i) async {
    final AudioCache player = AudioCache();
    player.play('note$i.wav');
    player.clearAll();
  }

  Expanded KeyBuilder({Color color, int sound, String buttonText}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          PlaySound(sound);
        },
        child: Text(buttonText),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                KeyBuilder(color: Colors.red, sound: 1, buttonText: ''),
                KeyBuilder(color: Colors.orange, sound: 2, buttonText: ''),
                KeyBuilder(color: Colors.yellow, sound: 3, buttonText: ''),
                KeyBuilder(color: Colors.green, sound: 4, buttonText: ''),
                KeyBuilder(color: Colors.blue, sound: 5, buttonText: ''),
                KeyBuilder(color: Colors.indigo, sound: 6, buttonText: ''),
                KeyBuilder(color: Colors.purple, sound: 7, buttonText: ''),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
