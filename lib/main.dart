import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            ding2(color: Colors.red,n:1),
            ding2(color: Colors.orange,n:2),
            ding2(color: Colors.yellow,n:3),
            ding2(color: Colors.green,n:4),
            ding2(color: Colors.blue,n:5),
            ding2(color: Colors.indigo,n:6),
            ding2(color: Colors.purple,n:7),
          ],
        )),
      ),
    );
  }
}

void ding(int n) {
  final player = AudioCache();
  player.play('note$n.wav');
}

Expanded ding2({Color color ,int n}) {
  return Expanded(
    child: FlatButton(
      onPressed: () {
        ding(n);
      },
      child: Container(
        color:color ,
      ),
    ),
  );
}
