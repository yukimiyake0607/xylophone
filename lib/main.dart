import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/widgets.dart';

// いつもこう書いてる
void main() {
  runApp(MaterialApp(
    home: XylophoneApp(),
  ));
}

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  playSound(int number) {
    final player = AudioPlayer(); //cd player
    player.play(AssetSource('note$number.wav')); //cd
  }

// 型がなぜexpanded?
// color型ってなに？
// requiredってなに？
// アイコン作れるサービス
  Expanded buildKey({required int soundNumber, required Color color}) {
    return Expanded(
      child: OutlinedButton(
        onPressed: () {
          playSound(soundNumber);
        },
        style: OutlinedButton.styleFrom(
          backgroundColor: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(0),
            ),
          ),
        ),
        child: Container(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            buildKey(color: Colors.red, soundNumber: 1),
            buildKey(color: Colors.orange, soundNumber: 2),
            buildKey(color: Colors.yellow, soundNumber: 3),
            buildKey(color: Colors.green, soundNumber: 4),
            buildKey(color: Colors.teal, soundNumber: 5),
            buildKey(color: Colors.blue, soundNumber: 6),
            buildKey(color: Colors.purple, soundNumber: 7),
          ],
        ),
      ),
    );
  }
}
