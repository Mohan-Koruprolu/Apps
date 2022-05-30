import 'package:flutter/material.dart';
import 'QuizQues.dart';
import 'quizbrain.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Quizee"),
        ),
        backgroundColor: Colors.grey[850],
        body: SafeArea(
          child: Quizlet(),
        ),
      ),
    );
  }
}

class Quizlet extends StatefulWidget {
  const Quizlet({Key? key}) : super(key: key);

  @override
  State<Quizlet> createState() => _QuizletState();
}

class _QuizletState extends State<Quizlet> {
  List<Icon> scorekeep = [];
  Quizbrain qb = Quizbrain();

  void Checkans(bool usrpick) {
    if (qb.alert == 0) {
      if (usrpick == qb.getcorrectans()) {
        setState(() {
          scorekeep.add(Icon(Icons.check, color: Colors.green));
        });
      } else {
        setState(() {
          scorekeep.add(Icon(Icons.close, color: Colors.red));
        });
      }
      qb.nextquestion();
    } else {
      Alert(
              context: context,
              title: "End of Quiz",
              desc: "Quiz is now completed")
          .show();
      qb.reset();
      scorekeep = [];
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 5,
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Center(
                  child: Text(
                    qb.getquestTxt(),
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(15),
                child: Container(
                  color: Colors.green,
                  child: TextButton(
                    onPressed: () {
                      bool usrpick = true;
                      Checkans(usrpick);
                    },
                    child: Text(
                      "True",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(15),
                child: Container(
                  color: Colors.red,
                  child: TextButton(
                    onPressed: () {
                      bool usrpick = false;
                      Checkans(usrpick);
                    },
                    child: Text(
                      "false",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
            Row(
              children: scorekeep,
            )
          ],
        ),
      ),
    );
  }
}
