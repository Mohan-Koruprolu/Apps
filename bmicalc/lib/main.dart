import 'package:flutter/material.dart';
import 'Input_page.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(Bmicalac());
}

class Bmicalac extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        appBarTheme: AppBarTheme(
          color: Color(0xFF0A0E21),
        ),
        scaffoldBackgroundColor: Color(0XFF090C22),
      ),
      home: Inputpage(),
    );
  }
}
