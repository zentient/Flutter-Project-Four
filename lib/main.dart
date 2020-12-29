import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatefulWidget {
  XylophoneApp({Key key}) : super(key: key);

  @override
  _XylophoneAppState createState() => _XylophoneAppState();
}

class _XylophoneAppState extends State<XylophoneApp> {
  void playSound(int num) {
    final player = AudioCache();
    player.play('note$num.wav');
  }

  Widget buildKey({Color nColor, int num}) {
    return Expanded(
      child: FlatButton(
          onPressed: () {
            playSound(num);
          },
          color: nColor, child: null,),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(nColor: Colors.red, num: 1),
              buildKey(nColor: Colors.orange, num: 2),
              buildKey(nColor: Colors.yellow, num: 3),
              buildKey(nColor: Colors.green, num: 4),
              buildKey(nColor: Colors.teal, num: 5),
              buildKey(nColor: Colors.blue, num: 6),
              buildKey(nColor: Colors.purple, num: 7),
            ],
          ),
        ),
      ),
    );
  }
}
