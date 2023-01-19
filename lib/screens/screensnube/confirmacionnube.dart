import 'package:flutter/material.dart';

class ConfirmacionNube extends StatefulWidget {
  static const String routeName = '/confirmacion';
  @override
  _ConfirmacionNubeState createState() => new _ConfirmacionNubeState();
}

class _ConfirmacionNubeState extends State<ConfirmacionNube> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Confirmacion de registro"),
      ),
    );
  }
}
