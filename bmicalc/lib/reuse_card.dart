import 'package:flutter/material.dart';

class Reusecard extends StatelessWidget {
  final Color colour;
  final Widget? cardchild;
  Reusecard({required this.colour, this.cardchild});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardchild,
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
