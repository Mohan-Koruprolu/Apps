import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(Xylophone());
}

class Xylophone extends StatelessWidget {
  const Xylophone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: Container(
                    color: Colors.red,
                    child: TextButton(
                      onPressed: () {
                        AudioCache player = AudioCache();
                        player.play('note1.wav');
                      },
                      child: Text(
                        "click me",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.orange,
                    child: TextButton(
                        onPressed: () {
                          AudioCache player = AudioCache();
                          player.play('note2.wav');
                        },
                        child: Text("click me 2",
                            style: TextStyle(color: Colors.white))),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.yellow,
                    child: TextButton(
                        onPressed: () {
                          AudioCache player = AudioCache();
                          player.play('note3.wav');
                        },
                        child: Text("click me 3",
                            style: TextStyle(color: Colors.white))),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.green,
                    child: TextButton(
                        onPressed: () {
                          AudioCache player = AudioCache();
                          player.play('note4.wav');
                        },
                        child: Text("click me 4",
                            style: TextStyle(color: Colors.white))),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.blue,
                    child: TextButton(
                      onPressed: () {
                        AudioCache player = AudioCache();
                        player.play('note5.wav');
                      },
                      child: Text(
                        "click me 5",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.purple,
                    child: TextButton(
                      onPressed: () {
                        AudioCache player = AudioCache();
                        player.play('note6.wav');
                      },
                      child: Text("click me 6",
                          style: TextStyle(color: Colors.white)),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
