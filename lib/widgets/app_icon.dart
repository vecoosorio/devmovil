import 'package:flutter/material.dart';

class AppIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Image.asset('images/icons8-charla.gif', width: 60.0, height: 60.0),
        Text(
          'flutter chat',
          style: TextStyle(
            fontSize: 40.0,
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    );
  }
}
