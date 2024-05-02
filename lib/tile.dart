import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class Styles {
  static ButtonStyle tileStyle = OutlinedButton.styleFrom(
    backgroundColor: Colors.red,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(0),
      ),
    ),
    side: BorderSide(color: Colors.red),
  );
}

class style extends StatelessWidget {
  style({super.key, number});

  int number = 1;
  void playSound() {
    final player = AudioPlayer(); //cd player
    player.play(AssetSource('note$number.wav')); //cd
  }

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {
        playSound();
      },
      style: OutlinedButton.styleFrom(
        backgroundColor: Colors.yellow,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(0),
          ),
        ),
        side: BorderSide(color: Colors.yellow),
      ),
      child: Text(''),
    );
  }
}
