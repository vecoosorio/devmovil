import 'package:flutter/material.dart';

class Battery extends StatelessWidget {
  static const String routeName = "/bateria";
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("Bateria"),
      ),
      body: Container(
        child: Center(
          child: Text("Pantalla de Bateria"),
        ),
      ),
    );
  }
}
