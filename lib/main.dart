import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  Widget addBtn(Color color, int note) {
    return Expanded(
      child: FlatButton(
        color: color,
        child: Text(" "),
        onPressed: () {
          final player = AudioCache();
          player.play('note$note.wav');
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                addBtn(Colors.red, 1),
                addBtn(Colors.orange, 2),
                addBtn(Colors.yellow, 3),
                addBtn(Colors.green, 4),
                addBtn(Colors.teal, 5),
                addBtn(Colors.blue, 6),
                addBtn(Colors.purple, 7),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
