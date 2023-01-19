import 'package:devmovil/srcscreenform/screenslogin/login_screen.dart';
import 'package:flutter/material.dart';

class validation extends StatelessWidget {
  static const String routeName = '/validation';
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: Scaffold(
        body: login(),
      ),
    );
  }
}
