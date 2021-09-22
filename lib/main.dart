import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int nodeIndex) {
    final player = AudioCache();
    player.play('note$nodeIndex.wav');
  }

  Expanded buildKey({required int index, Color? color}) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: color,
        ),
        onPressed: () {
          playSound(index);
        },
        child: Text(''),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(index: 1, color: Colors.red),
              buildKey(index: 2, color: Colors.amberAccent),
              buildKey(index: 3, color: Colors.green),
              buildKey(index: 4, color: Colors.blue),
              buildKey(index: 5, color: Colors.lightGreenAccent),
              buildKey(index: 6, color: Colors.tealAccent),
              buildKey(index: 7, color: Colors.purpleAccent),
            ],
          ),
        ),
      ),
    );
  }
}
