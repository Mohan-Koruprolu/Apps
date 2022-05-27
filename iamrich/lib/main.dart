import 'package:flutter/material.dart';

//*main is the starting point of all our apps
void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: Center(
            child: Text("I am Rich"),
          ),
          backgroundColor: Colors.blueGrey[900],
        ),
        body: Center(child: Image(image: AssetImage('images/iamrich.jpg'))),
      ),
    ),
  );
}
