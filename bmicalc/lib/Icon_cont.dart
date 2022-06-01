import 'package:flutter/material.dart';

class IconCont extends StatelessWidget {
  final IconData icondat;
  final String iconlabel;
  IconCont({required this.icondat, required this.iconlabel});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icondat,
          size: 80,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          iconlabel,
          style: TextStyle(
            fontSize: 18,
            color: Color.fromARGB(255, 225, 225, 231),
          ),
        )
      ],
    );
  }
}
